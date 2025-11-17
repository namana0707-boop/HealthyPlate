using Google.Cloud.Firestore;

namespace MauiApp2.Pages;

public partial class LoginPage : ContentPage
{
    public LoginPage()
    {
        InitializeComponent();
    }

    private async void OnRegister(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RegisterPage());
    }

    private async void OnLoginClicked(object sender, EventArgs e)
    {
        try
        {
            var firestore = App.Firestore;
            if (firestore == null)
            {
                await DisplayAlert("오류", "Firestore가 초기화되지 않았습니다.", "확인");
                return;
            }

            if (string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                await DisplayAlert("입력 오류", "이메일과 비밀번호를 입력해주세요.", "확인");
                return;
            }

            var users = firestore.Collection("users");
            var query = users.WhereEqualTo("email", txtEmail.Text);
            var snapshot = await query.GetSnapshotAsync();

            if (snapshot.Count == 0)
            {
                await DisplayAlert("로그인 실패", "존재하지 않는 이메일입니다.", "확인");
                return;
            }

            var userDoc = snapshot.Documents.First();
            var savedPassword = userDoc.GetValue<string>("password");

            if (savedPassword == txtPassword.Text)
            {
                // 🔥 로그인한 이메일 저장 → 필수!!!
                Preferences.Set("LoggedInEmail", txtEmail.Text);

                await DisplayAlert("로그인 성공",
                    $"{userDoc.GetValue<string>("name")}님 환영합니다!",
                    "확인");

                // 다음 페이지로 이동
                await Navigation.PushAsync(new CapturePage());
            }
            else
            {
                await DisplayAlert("로그인 실패", "비밀번호가 일치하지 않습니다.", "확인");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("오류", $"로그인 실패: {ex.Message}", "확인");
        }
    }
}
