using LiveChartsCore;
using LiveChartsCore.SkiaSharpView;
using LiveChartsCore.SkiaSharpView.Maui;
using LiveChartsCore.SkiaSharpView.Painting;
using MauiApp2.Services;
using SkiaSharp;

namespace MauiApp2.Pages;

public partial class StatisticsPage : ContentPage
{
    public StatisticsPage()
    {
        InitializeComponent();
        _ = LoadChart();
    }

    private async Task LoadChart()
    {
        string email = Preferences.Get("LoggedInEmail", "");
        var records = await FirestoreRecordService.GetAllRecords(email);

        if (!records.Any())
        {
            await DisplayAlert("정보", "저장된 기록이 없습니다.", "확인");
            return;
        }

        var list = records
            .GroupBy(r => r.Date.Date)
            .Select(g => new
            {
                Date = g.Key,
                Sodium = g.Average(x => x.SodiumMg),
                Potassium = g.Average(x => x.PotassiumMg)
            })
            .OrderBy(x => x.Date)
            .ToList();
        var grouped = list;

        var labels = grouped.Select(g => g.Date.ToString("MM/dd")).ToArray();

        NutrientChart.XAxes = new[] { new Axis { Labels = labels } };
        NutrientChart.YAxes = new[] { new Axis { MinLimit = 0 } };

        NutrientChart.Series = new ISeries[]
        {
            new LineSeries<double>
            {
                Name = "나트륨",
                Values = grouped.Select(x => (double)x.Sodium).ToArray(),
                Stroke = new SolidColorPaint(SKColors.Orange, 3)
            },
            new LineSeries<double>
            {
                Name = "칼륨",
                Values = grouped.Select(x => (double)x.Potassium).ToArray(),
                Stroke = new SolidColorPaint(SKColors.DeepSkyBlue, 3)
            }
        };
    }
}
