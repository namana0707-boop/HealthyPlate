using Microsoft.Maui.Controls;
using Microsoft.Maui.Graphics;
using Microsoft.Maui.Media;
using System;
using System.IO;
using System.Linq;
using SkiaSharp;

namespace MauiApp2.Pages
{
    public partial class CapturePage : ContentPage
    {
        private readonly YoloOnnxPredictor _predictor = new();
        private readonly OverlayDrawable _drawable = new();

        private byte[]? _photoBytes;
        private int _imgW, _imgH;
        private List<Detection>? _lastDetections;

        public CapturePage()
        {
            InitializeComponent();
            Overlay.Drawable = _drawable;
            _ = InitAsync();
            SizeChanged += (_, __) => UpdateTargetRect();
        }

        private async Task InitAsync() => await _predictor.InitAsync();

        private async void OnCapture(object? sender, EventArgs e)
        {
            try
            {
                var photo = await MediaPicker.CapturePhotoAsync();
                if (photo is null) return;

                using var s = await photo.OpenReadAsync();
                using var ms = new MemoryStream();
                await s.CopyToAsync(ms);
                _photoBytes = ms.ToArray();

                Preview.Source = ImageSource.FromStream(() => new MemoryStream(_photoBytes));
                using var sk = SKBitmap.Decode(_photoBytes);
                _imgW = sk.Width; _imgH = sk.Height;

                AnalyzeBtn.IsEnabled = true;
                FeedbackBtn.IsEnabled = false; // 새 사진 찍으면 초기화
                _drawable.Detections = new();
                _drawable.GlobalRisk = RiskLevel.Unknown;
                Overlay.Invalidate();

                UpdateTargetRect();
            }
            catch (Exception ex)
            {
                await DisplayAlert("오류", ex.Message, "확인");
            }
        }

        private async void OnPickFromGallery(object? sender, EventArgs e)
        {
            try
            {
                var photo = await MediaPicker.PickPhotoAsync();
                if (photo is null) return;

                using var s = await photo.OpenReadAsync();
                using var ms = new MemoryStream();
                await s.CopyToAsync(ms);
                _photoBytes = ms.ToArray();

                Preview.Source = ImageSource.FromStream(() => new MemoryStream(_photoBytes));
                using var sk = SKBitmap.Decode(_photoBytes);
                _imgW = sk.Width; _imgH = sk.Height;

                AnalyzeBtn.IsEnabled = true;
                FeedbackBtn.IsEnabled = false;
                _drawable.Detections = new();
                _drawable.GlobalRisk = RiskLevel.Unknown;
                Overlay.Invalidate();

                UpdateTargetRect();
            }
            catch (Exception ex)
            {
                await DisplayAlert("오류", ex.Message, "확인");
            }
        }

        // ?? 음식 분석하기
        private async void OnAnalyze(object? sender, EventArgs e)
        {
            if (_photoBytes is null)
            {
                await DisplayAlert("알림", "사진을 먼저 선택하거나 촬영하세요.", "확인");
                return;
            }

            try
            {
                var dets = await Task.Run(() => _predictor.Predict(_photoBytes, 0.25f));
                _lastDetections = dets;

                _drawable.Detections = dets;
                _drawable.GlobalRisk = FoodRiskEvaluator.ToRisk(
                    FoodRiskEvaluator.EstimateSodiumMg(dets).sodium
                );

                Overlay.Invalidate();
                FeedbackBtn.IsEnabled = true;

                await DisplayAlert("분석 완료", $"{dets.Count}개의 음식이 감지되었습니다.\n결과를 확인 후 '피드백 보기'를 눌러주세요.", "확인");
            }
            catch (Exception ex)
            {
                await DisplayAlert("오류", ex.Message, "확인");
            }
        }

        // ?? 피드백 보기 클릭
        private async void OnShowFeedback(object sender, EventArgs e)
        {
            if (_lastDetections == null || !_lastDetections.Any())
            {
                await DisplayAlert("안내", "분석된 결과가 없습니다.", "확인");
                return;
            }

            var topFood = _lastDetections[0].Name;
            var (sodium, _) = FoodRiskEvaluator.EstimateSodiumMg(_lastDetections);

            // ? 칼륨값 계산 추가
            int potassium = 0;
            foreach (var d in _lastDetections)
            {
                if (FoodRiskEvaluator.Kmg.TryGetValue(d.Name, out var k))
                    potassium += k;
            }

            // ? 칼륨을 실제 계산된 값으로 전달
            await Navigation.PushAsync(new FeedbackPage(topFood, sodium, potassium, "AI 피드백 생성 중..."));
        }

        private void UpdateTargetRect()
        {
            if (_imgW == 0 || _imgH == 0) return;

            var vw = (float)Preview.Width;
            var vh = (float)Preview.Height;
            if (vw <= 0 || vh <= 0) return;

            float r = Math.Min(vw / _imgW, vh / _imgH);
            float drawW = _imgW * r;
            float drawH = _imgH * r;
            float offX = (vw - drawW) / 2f + (float)Preview.X;
            float offY = (vh - drawH) / 2f + (float)Preview.Y;

            _drawable.TargetRect = new RectF(offX, offY, drawW, drawH);
            _drawable.SourceSize = (_imgW, _imgH);
            Overlay.Invalidate();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            UpdateTargetRect();
        }
    }
}
