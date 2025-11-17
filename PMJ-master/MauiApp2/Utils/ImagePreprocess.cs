using SkiaSharp;

public static class ImagePreprocess
{
    public static (float[] chw, float scale, int padX, int padY, int srcW, int srcH)
        LetterboxToCHW(byte[] imageBytes, int dst = 640)
    {
        using var bmp = SKBitmap.Decode(imageBytes);
        int srcW = bmp.Width, srcH = bmp.Height;

        float r = Math.Min((float)dst / srcW, (float)dst / srcH);
        int newW = (int)(srcW * r), newH = (int)(srcH * r);
        int padX = (dst - newW) / 2, padY = (dst - newH) / 2;

        using var canvasBmp = new SKBitmap(dst, dst);
        using (var c = new SKCanvas(canvasBmp))
        {
            c.Clear(SKColors.Black);
            var dest = new SKRect(padX, padY, padX + newW, padY + newH);
            c.DrawBitmap(bmp, dest);
        }

        var px = canvasBmp.Pixels;
        float[] chw = new float[3 * dst * dst];
        int area = dst * dst, iR = 0, iG = area, iB = 2 * area;
        for (int y = 0; y < dst; y++)
            for (int x = 0; x < dst; x++)
            {
                var p = px[y * dst + x];
                int idx = y * dst + x;
                chw[iR + idx] = p.Red / 255f;
                chw[iG + idx] = p.Green / 255f;
                chw[iB + idx] = p.Blue / 255f;
            }
        return (chw, r, padX, padY, srcW, srcH);
    }
}
