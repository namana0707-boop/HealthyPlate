using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

using Microsoft.ML.OnnxRuntime;
using Microsoft.ML.OnnxRuntime.Tensors;

using Microsoft.Maui.Graphics;
using Microsoft.Maui.Storage;

public class YoloOnnxPredictor : IDisposable
{
    private InferenceSession? _session;              // nullable로 변경
    private const int _img = 640;
    private const string _modelFileName = "best.onnx";

    // YOLO 클래스 이름
    private readonly string[] _names =
    {
        "bibimbap",      // 0
        "burger",        // 1
        "tteokbokki",  // 2
        "gimbap",        // 3
        "jajangmyeon",   // 4
        "french_fries",   // 5 
        "pizza",         // 6
        "hot_dog",         // 7 
        "chicken"  // 8     
    };

    /// <summary>
    /// 앱 패키지(Resources/Raw)에서 ONNX 모델을 캐시로 복사 후 세션 초기화
    /// </summary>
    public async Task InitAsync()
    {
        // 1) 모델 파일을 패키지에서 연다 (Resources/Raw/_modelFileName 필요)
        try
        {
            using var fs = await FileSystem.OpenAppPackageFileAsync(_modelFileName);
            var cachePath = Path.Combine(FileSystem.CacheDirectory, _modelFileName);

            // 2) 캐시에 복사
            using (var outFs = File.Create(cachePath))
                await fs.CopyToAsync(outFs);

            // 3) 세션 옵션 + EP 등록(가능한 경우)
            var opts = new SessionOptions();
#if ANDROID
            try { opts.AppendExecutionProvider_Nnapi(); } catch { /* 장치에 따라 실패 가능 */ }
#endif
#if IOS
            try { opts.AppendExecutionProvider_CoreML(); } catch { /* iOS에서만 유효 */ }
#endif
            _session = new InferenceSession(cachePath, opts);
        }
        catch (FileNotFoundException)
        {
            throw new FileNotFoundException(
                $"{_modelFileName} 파일을 찾을 수 없습니다. 프로젝트의 Resources/Raw 폴더에 " +
                $"{_modelFileName} 를 추가하고 .csproj에 <MauiAsset Include=\"Resources\\Raw\\**\\*.*\" />가 포함되어 있는지 확인하세요.");
        }
    }

    /// <summary>
    /// 바이트 이미지 입력 → YOLO 추론 → Detection 리스트 반환
    /// </summary>
    public List<Detection> Predict(byte[] imageBytes, float confTh = 0.25f)
    {
        if (_session is null)
            throw new InvalidOperationException("ONNX 세션이 초기화되지 않았습니다. 먼저 InitAsync()를 호출하세요.");

        // 1) 전처리 (Letterbox 640x640, CHW float[1x3xHxW] 반환)
        var (chw, scale, padX, padY, srcW, srcH) = ImagePreprocess.LetterboxToCHW(imageBytes, _img);

        // 2) DenseTensor<float> 생성 및 데이터 복사
        //    (주의: BlockCopy는 float 배열에 적합하지 않으므로 Span 복사 사용)
        var input = new DenseTensor<float>(new[] { 1, 3, _img, _img });
        chw.AsSpan().CopyTo(input.Buffer.Span);

        // 3) 입력 이름 확인
        var inputName = _session.InputMetadata.Keys.FirstOrDefault()
            ?? throw new InvalidOperationException("ONNX 모델 입력 이름을 찾을 수 없습니다.");

        // 4) 추론 실행
        using var results = _session.Run(new[] { NamedOnnxValue.CreateFromTensor(inputName, input) });
        if (results is null || results.Count == 0)
            throw new InvalidOperationException("ONNX 추론 결과가 비어 있습니다.");

        // 5) 출력 텐서 파싱
        //    가정: NMS가 모델 내에 포함되어 [N,6] (x1,y1,x2,y2,conf,cls) 형태로 반환
        //    (모델에 따라 다를 수 있음)
        var first = results.First().AsTensor<float>();
        var data = first.ToArray();

        var dets = new List<Detection>();
        for (int i = 0; i + 5 < data.Length; i += 6)
        {
            float x1 = data[i];
            float y1 = data[i + 1];
            float x2 = data[i + 2];
            float y2 = data[i + 3];
            float conf = data[i + 4];
            int cls = (int)data[i + 5];

            if (conf < confTh) continue;

            // 클래스 이름 보호
            string name = (cls >= 0 && cls < _names.Length) ? _names[cls] : $"cls_{cls}";

            // 6) Letterbox 역변환(원본 좌표계로 복귀) + 클램프
            float bx1 = (x1 - padX) / scale;
            float by1 = (y1 - padY) / scale;
            float bx2 = (x2 - padX) / scale;
            float by2 = (y2 - padY) / scale;

            bx1 = Math.Clamp(bx1, 0, srcW);
            by1 = Math.Clamp(by1, 0, srcH);
            bx2 = Math.Clamp(bx2, 0, srcW);
            by2 = Math.Clamp(by2, 0, srcH);

            var rect = new RectF(bx1, by1, bx2 - bx1, by2 - by1);
            dets.Add(new Detection(name, conf, rect));
        }

        return dets;
    }

    public void Dispose() => _session?.Dispose();
}
