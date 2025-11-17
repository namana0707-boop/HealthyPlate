using Firebase.Storage;

namespace MauiApp2.Services;

public class FirebaseStorageService
{
    private readonly FirebaseStorage _storage;

    public FirebaseStorageService()
    {
        // Firebase Storage 버킷 이름 입력 (Firebase Console에서 확인)
        _storage = new FirebaseStorage("healthyplate-12095.appspot.com");
    }

    // 파일 업로드
    public async Task<string> UploadFileAsync(string localPath, string folder = "uploads")
    {
        try
        {
            string fileName = Path.GetFileName(localPath);

            using var stream = File.OpenRead(localPath);

            // Storage 경로 설정 후 업로드
            var downloadUrl = await _storage
                .Child(folder)
                .Child(fileName)
                .PutAsync(stream);

            System.Diagnostics.Debug.WriteLine($"? 업로드 성공: {downloadUrl}");
            return downloadUrl;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"? 업로드 실패: {ex.Message}");
            throw;
        }
    }

    // 파일 다운로드 URL 얻기
    public async Task<string> GetDownloadUrlAsync(string folder, string fileName)
    {
        try
        {
            var url = await _storage
                .Child(folder)
                .Child(fileName)
                .GetDownloadUrlAsync();

            System.Diagnostics.Debug.WriteLine($"? 다운로드 URL: {url}");
            return url;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"? 다운로드 URL 가져오기 실패: {ex.Message}");
            throw;
        }
    }
}
