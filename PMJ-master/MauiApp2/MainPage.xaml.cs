using MauiApp2;
using MauiApp2.Pages;

namespace MauiApp2
{
    public partial class MainPage : ContentPage
    {
        public MainPage() { InitializeComponent(); }
        async void OnStart(object s, EventArgs e) => await Navigation.PushAsync(new LoginPage());
    }
}
