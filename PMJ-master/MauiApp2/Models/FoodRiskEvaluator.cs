using Microsoft.Maui.Graphics;
using System.Collections.Generic;

public enum RiskLevel { Low, Medium, High, Unknown }

public static class FoodRiskEvaluator
{
    public static readonly Dictionary<string, int> NaMg = new()
    {
        ["bibimbap"] = 1000,
        ["burger"] = 950,
        ["tteokbokki"] = 1200,
        ["fremch_fries"] = 300,
        ["gimbap"] = 600,
        ["jajangmyeon"] = 2392,
        ["french_fries"] = 300,
        ["pizza"] = 1550,
        ["hot_dog"] = 600,
        ["chicken"] = 1000
    };
    public static readonly Dictionary<string, int> Kmg = new()
    {
        ["bibimbap"] = 600,
        ["burger"] = 300,
        ["tteokbokki"] = 200,
        ["fremch_fries"] = 300,
        ["gimbap"] = 300,
        ["jajangmyeon"] = 250,
        ["french_fries"] = 450,
        ["pizza"] = 900,
        ["hot_dog"] = 200,
        ["chicken"] = 1000
    };

    public const int LowUpper = 400;   // √ ∑œ: <400mg
    public const int MediumUpper = 800;// ≥Î∂˚: 400~800mg

    public static (int sodium, Dictionary<string, int> perFood) EstimateSodiumMg(IEnumerable<Detection> dets)
    {
        int total = 0;
        var per = new Dictionary<string, int>();
        foreach (var d in dets)
        {
            if (!NaMg.TryGetValue(d.Name, out var mg)) mg = 0;
            total += mg;
            per[d.Name] = per.TryGetValue(d.Name, out var cur) ? cur + mg : mg;
        }
        return (total, per);
    }

    public static RiskLevel ToRisk(int mg)
    {
        if (mg <= 0) return RiskLevel.Unknown;
        if (mg < LowUpper) return RiskLevel.Low;
        if (mg <= MediumUpper) return RiskLevel.Medium;
        return RiskLevel.High;
    }

    public static Color RiskColor(RiskLevel r) => r switch
    {
        RiskLevel.Low => Colors.LimeGreen,
        RiskLevel.Medium => Colors.Gold,
        RiskLevel.High => Colors.Red,
        _ => Colors.Gray
    };
}