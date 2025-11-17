using SQLite;

namespace MauiApp2.Models;

public class FeedbackRecord
{
    [PrimaryKey, AutoIncrement]
    public int Id { get; set; }

    public string? Food { get; set; }
    public int SodiumMg { get; set; }
    public int PotassiumMg { get; set; }
    public string? Feedback { get; set; }
    public DateTime Date { get; set; }
}