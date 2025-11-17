using Google.Cloud.Firestore;
using MauiApp2.Models;

namespace MauiApp2.Services;

public static class FirestoreRecordService
{
    public static async Task SaveRecord(string email, FoodRecord record)
    {
        var firestore = App.Firestore;

        var users = firestore.Collection("users");
        var query = users.WhereEqualTo("email", email);
        var snapshot = await query.GetSnapshotAsync();
        var userDoc = snapshot.Documents.First();

        await userDoc.Reference
            .Collection("foods")
            .AddAsync(new Dictionary<string, object>
            {
                { "food", record.Food },
                { "sodiumMg", record.SodiumMg },
                { "potassiumMg", record.PotassiumMg },
                { "feedback", record.Feedback },
                { "date", Timestamp.FromDateTime(record.Date.ToUniversalTime()) }
            });
    }

    public static async Task<List<FoodRecord>> GetRecordsByDate(string email, DateTime date)
    {
        var firestore = App.Firestore;

        var users = firestore.Collection("users");
        var query = users.WhereEqualTo("email", email);
        var snapshot = await query.GetSnapshotAsync();
        var userDoc = snapshot.Documents.First();

        var start = Timestamp.FromDateTime(date.Date.ToUniversalTime());
        var end = Timestamp.FromDateTime(date.Date.AddDays(1).ToUniversalTime());

        var foodSnap = await userDoc.Reference
            .Collection("foods")
            .WhereGreaterThanOrEqualTo("date", start)
            .WhereLessThan("date", end)
            .GetSnapshotAsync();

        return foodSnap.Documents
            .Select(d => new FoodRecord
            {
                Food = d.GetValue<string>("food"),
                SodiumMg = d.GetValue<int>("sodiumMg"),
                PotassiumMg = d.GetValue<int>("potassiumMg"),
                Feedback = d.GetValue<string>("feedback"),
                Date = d.GetValue<Timestamp>("date").ToDateTime()
            })
            .ToList();
    }

    public static async Task<List<FoodRecord>> GetAllRecords(string email)
    {
        var firestore = App.Firestore;

        var users = firestore.Collection("users");
        var snapshot = await users.WhereEqualTo("email", email).GetSnapshotAsync();
        var userDoc = snapshot.Documents.First();

        var foodSnap = await userDoc.Reference
            .Collection("foods")
            .OrderBy("date")
            .GetSnapshotAsync();

        return foodSnap.Documents
            .Select(d => new FoodRecord
            {
                Food = d.GetValue<string>("food"),
                SodiumMg = d.GetValue<int>("sodiumMg"),
                PotassiumMg = d.GetValue<int>("potassiumMg"),
                Feedback = d.GetValue<string>("feedback"),
                ImageUrl = d.ContainsField("imageUrl") ? d.GetValue<string>("imageUrl") : "",
                Date = d.GetValue<Timestamp>("date").ToDateTime()
            })
            .ToList();
    }
}
