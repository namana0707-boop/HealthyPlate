namespace MauiApp2.Models;

public class FoodRecord
{
    public string Food { get; set; } = "";
    public int SodiumMg { get; set; }
    public int PotassiumMg { get; set; }
    public string Feedback { get; set; } = "";
    public string ImageUrl { get; set; } = "";
    public DateTime Date { get; set; } = DateTime.Now;

    public string UserEmail { get; set; } = "";
}
