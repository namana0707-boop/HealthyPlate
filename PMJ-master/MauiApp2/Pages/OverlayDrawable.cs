using Microsoft.Maui.Graphics;
using SkiaSharp;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;

namespace MauiApp2.Pages
{
    public class OverlayDrawable : IDrawable
    {
        public List<Detection> Detections { get; set; } = new();
        public (int W, int H) SourceSize { get; set; }
        public RectF TargetRect { get; set; }
        public RiskLevel GlobalRisk { get; set; } = RiskLevel.Unknown;

        // ----------------------------
        // ① MAUI 화면 렌더링
        // ----------------------------
        public void Draw(ICanvas canvas, RectF dirtyRect)
        {
            Console.WriteLine($"🖍️ Draw called: {Detections.Count} items");

            if (Detections == null || Detections.Count == 0)
                return;

            foreach (var d in Detections)
            {

                // 음식명 기반 나트륨 mg 가져오기
                if (!FoodRiskEvaluator.NaMg.TryGetValue(d.Name, out var mg))
                    mg = 0;

                // 개별 위험도 계산
                var risk = FoodRiskEvaluator.ToRisk(mg);
                var color = FoodRiskEvaluator.RiskColor(risk);

                // 원본 이미지 → 화면 렌더링 크기 변환
                var scaleX = TargetRect.Width / SourceSize.W;
                var scaleY = TargetRect.Height / SourceSize.H;
                var bx = TargetRect.X + d.Box.X * scaleX;
                var by = TargetRect.Y + d.Box.Y * scaleY;
                var bw = d.Box.Width * scaleX;
                var bh = d.Box.Height * scaleY;

                // 박스 테두리
                canvas.StrokeColor = color;
                canvas.StrokeSize = 3;
                canvas.Alpha = 0.9f;
                canvas.DrawRectangle(bx, by, bw, bh);

                // YOLO 스타일 라벨박스
                DrawLabelBox(canvas, d.Name, d.Confidence, mg, bx, by, color);
            }

            // 전체 위험도 표시 (상단 중앙)
            var overallColor = FoodRiskEvaluator.RiskColor(GlobalRisk);
            var text = $"전체 위험도: {GlobalRisk}";
            canvas.FontColor = overallColor;
            canvas.FontSize = 18;
            canvas.DrawString(text, TargetRect.Center.X, TargetRect.Top + 10, HorizontalAlignment.Center);
        }

        // ----------------------------
        // ② 라벨 박스 (YOLO 스타일 + 나트륨 표시)
        // ----------------------------
        private void DrawLabelBox(ICanvas canvas, string label, float conf, int mg, float x, float y, Color color)
        {
            string text = $"{label} {conf * 100:F0}% · {mg}mg";
            float padding = 5f;
            float fontSize = 14f;
            canvas.FontSize = fontSize;

            // 텍스트 크기 계산
            var textSize = canvas.GetStringSize(text, Microsoft.Maui.Graphics.Font.Default, fontSize);
            var textWidth = textSize.Width + padding * 2;
            var textHeight = 20f;

            // 라벨 배경 (반투명 위험도 색상)
            canvas.FillColor = new Color(color.Red, color.Green, color.Blue, 0.85f);
            canvas.FillRectangle(x, y - textHeight, textWidth, textHeight);

            // 텍스트 (흰색)
            canvas.FontColor = Colors.White;
            canvas.DrawString(text, x + padding, y - textHeight + 3, HorizontalAlignment.Left);
        }

        // ----------------------------
        // ③ 결과 이미지 파일로 저장 (PNG)
        // ----------------------------
        public async Task ExportToImageAsync(string outputPath)
        {
            if (Detections == null || Detections.Count == 0)
                throw new InvalidOperationException("분석 결과가 없습니다.");

            // SkiaSharp Surface 생성 (원본 크기 기준)
            using var surface = SKSurface.Create(new SKImageInfo(SourceSize.W, SourceSize.H));
            var skCanvas = surface.Canvas;
            skCanvas.Clear(SKColors.Transparent);

            foreach (var d in Detections)
            {
                if (!FoodRiskEvaluator.NaMg.TryGetValue(d.Name, out var mg))
                    mg = 0;

                var risk = FoodRiskEvaluator.ToRisk(mg);
                var color = FoodRiskEvaluator.RiskColor(risk);
                var skColor = new SKColor((byte)(color.Red * 255), (byte)(color.Green * 255), (byte)(color.Blue * 255));

                // 박스 그리기
                using var paint = new SKPaint
                {
                    Color = skColor,
                    Style = SKPaintStyle.Stroke,
                    StrokeWidth = 3,
                    IsAntialias = true
                };
                skCanvas.DrawRect(d.Box.X, d.Box.Y, d.Box.Width, d.Box.Height, paint);

                // 라벨 텍스트 (YOLO 스타일)
                string text = $"{d.Name} {d.Confidence * 100:F0}% · {mg}mg";
                using var textPaint = new SKPaint
                {
                    Color = SKColors.White,
                    TextSize = 24,
                    Typeface = SKTypeface.FromFamilyName("Arial"),
                    IsAntialias = true
                };
                var bgPaint = new SKPaint
                {
                    Color = skColor.WithAlpha(180),
                    Style = SKPaintStyle.Fill
                };

                var textWidth = textPaint.MeasureText(text);
                var textHeight = textPaint.TextSize + 6;

                // 배경 사각형
                skCanvas.DrawRect(d.Box.X, d.Box.Y - textHeight, textWidth + 10, textHeight, bgPaint);
                // 글자 출력
                skCanvas.DrawText(text, d.Box.X + 5, d.Box.Y - 6, textPaint);
            }

            skCanvas.Flush();

            // PNG 파일로 저장
            using var image = surface.Snapshot();
            using var data = image.Encode(SKEncodedImageFormat.Png, 100);
            using var stream = File.OpenWrite(outputPath);
            await data.AsStream().CopyToAsync(stream);
        }
    }
}
