using OpenAI;
using OpenAI.Chat;
using Microsoft.Maui.Controls;
using MauiApp2.Services;
using MauiApp2.Models;


namespace MauiApp2.Pages;

public partial class FeedbackPage : ContentPage
{
    private readonly string _apiKey = "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"; // 🔑 OpenAI API Key 입력
    private readonly string _food;
    private readonly int _sodiumMg;
    private readonly int _potassiumMg;
    private string _feedback = "AI 분석 중입니다... 🤖";

    public FeedbackPage(string food, int sodiumMg, int potassiumMg, string feedback)
    {
        InitializeComponent();

        _food = food;
        _sodiumMg = sodiumMg;
        _potassiumMg = potassiumMg;
        _feedback = feedback;

        FoodTitle.Text = $"🍽 {food}";
        NutrientText.Text = $"나트륨: {sodiumMg}mg\n칼륨: {potassiumMg}mg";
        FeedbackText.Text = _feedback;

        _ = LoadAiFeedback(food, sodiumMg);
    }

    // ✅ AI 피드백 생성
    private async Task LoadAiFeedback(string food, int sodium)
    {
        try
        {
            string aiText = await GetAiFeedback(food, sodium);
            _feedback = aiText;
            MainThread.BeginInvokeOnMainThread(() => FeedbackText.Text = aiText);
        }
        catch (Exception ex)
        {
            await DisplayAlert("오류", ex.Message, "확인");
        }
    }

    private async Task<string> GetAiFeedback(string food, int sodium)
    {
        var client = new OpenAIClient(_apiKey);
        var chat = client.GetChatClient("gpt-4o-mini");

        var response = await chat.CompleteChatAsync([
            new UserChatMessage($@"
            당신은 영양사이자 식단 코치입니다.
            고혈압 환자를 위한 식사 피드백을 작성해 주세요.
            음식명: {food}, 나트륨: {sodium}mg.
            톤: 따뜻하고 간결하게.
            예시: 🍜 짬뽕은 염분이 많아요. 물 한 컵 더 마시고, 저녁엔 저염식으로 균형을 맞춰보세요.")
        ]);

        return response.Value.Content.FirstOrDefault()?.Text?.Trim() ?? "AI 피드백 생성 실패";
    }

    // ✅ DB 저장 버튼
    private async void OnSaveToDatabase(object sender, EventArgs e)
    {
        var email = Preferences.Get("LoggedInEmail", "");
        if (string.IsNullOrEmpty(email))
        {
            await DisplayAlert("오류", "로그인 정보가 없습니다.", "확인");
            return;
        }

        var record = new FoodRecord
        {
            Food = _food,
            SodiumMg = _sodiumMg,
            PotassiumMg = _potassiumMg,
            Feedback = _feedback,
            Date = DateTime.Now
        };

        await FirestoreRecordService.SaveRecord(email, record);

        await DisplayAlert("저장 완료", "식단이 Firestore에 저장되었습니다.", "확인");
    }



    private async void OnBackToCapture(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }
    private async void OnViewStatistics(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new StatisticsPage());
    }
}
