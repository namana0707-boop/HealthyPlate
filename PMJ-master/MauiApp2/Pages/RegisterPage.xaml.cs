using Google.Cloud.Firestore;
using System.Xml.Linq;

namespace MauiApp2.Pages;

public partial class RegisterPage : ContentPage
{
    public RegisterPage()
    {
        InitializeComponent();
    }
    private async void OnLoginBack(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new LoginPage());
    }

    // 회원가입 버튼 클릭 이벤트
    private async void OnRegisterClicked(object sender, EventArgs e)
    {
        try
        {
            // ? Firestore 인스턴스 확인
            var firestore = App.Firestore;
            if (firestore == null)
            {
                await DisplayAlert("오류", "Firestore가 초기화되지 않았습니다.", "확인");
                return;
            }

            // ? 입력값 유효성 검사
            if (string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtPassword.Text) ||
                string.IsNullOrWhiteSpace(txtName.Text) ||
                string.IsNullOrWhiteSpace(txtBirth.Text) ||
                string.IsNullOrWhiteSpace(txtPhone.Text))
            {
                await DisplayAlert("입력 오류", "모든 항목을 입력해주세요.", "확인");
                return;
            }

            // ? Firestore 컬렉션 지정
            var users = firestore.Collection("users");

            // ? Firestore에 회원정보 저장
            var newUser = new Dictionary<string, object>
            {
                { "email", txtEmail.Text },
                { "password", txtPassword.Text },
                { "name", txtName.Text },
                { "birth", txtBirth.Text },
                { "phone", txtPhone.Text },
                { "createdAt", Timestamp.GetCurrentTimestamp() }
            };

            await users.AddAsync(newUser);

            await DisplayAlert("회원가입 완료", "정상적으로 등록되었습니다.", "확인");

            // 로그인 페이지로 이동
            await Navigation.PopAsync();
        }
        catch (Exception ex)
        {
            await DisplayAlert("오류", $"등록 실패: {ex.Message}", "확인");
        }
    }
}
