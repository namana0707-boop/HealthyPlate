using Google.Cloud.Firestore;
using Plugin.Firebase.Auth;
using Plugin.Firebase.Core;
using Plugin.Firebase.Firestore;

namespace MauiApp2;

public partial class App : Application
{
    public static FirestoreDb Firestore { get; private set; }

    public App()
    {
        InitializeComponent();
        InitializeFirestore();
        MainPage = new NavigationPage(new MainPage());
    }
    private void InitializeFirestore()
    {
        try
        {
            string projectId = "healthyplate-12095";

            // 인증 JSON 파일 지정 (파일명에 맞게!)
            string credentialsPath = Path.Combine(AppContext.BaseDirectory,
                "healthyplate-12095-firebase-adminsdk-fbsvc-51c6aa5631.json");

            Environment.SetEnvironmentVariable("GOOGLE_APPLICATION_CREDENTIALS", credentialsPath);

            Firestore = FirestoreDb.Create(projectId);
            System.Diagnostics.Debug.WriteLine("✅ Firestore 초기화 완료");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"❌ Firestore 초기화 실패: {ex.Message}");
        }
    }
}
