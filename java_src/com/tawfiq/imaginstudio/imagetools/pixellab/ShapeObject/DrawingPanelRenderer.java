package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class DrawingPanelRenderer {
    public static Bitmap autoCropBitmap(Bitmap bitmap, Rect rect) {
        Bitmap createBitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawBitmap(bitmap, -rect.left, -rect.top, new Paint(2));
        return createBitmap;
    }

    public static Rect getAutoCropBound(Bitmap bitmap) {
        int bitmapTopPadding = getBitmapTopPadding(bitmap);
        return new Rect(getBitmapLeftPadding(bitmap), bitmapTopPadding, getBitmapRightPadding(bitmap), getBitmapBottomPadding(bitmap));
    }

    private static int getBitmapBottomPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int[] iArr = new int[width];
        for (int height = bitmap.getHeight() - 1; height >= 0; height--) {
            bitmap.getPixels(iArr, 0, width, 0, height, width, 1);
            for (int i = 0; i < width; i++) {
                if (Color.alpha(iArr[i]) != 0) {
                    int i2 = height + 1;
                    return i2 < bitmap.getHeight() ? i2 : bitmap.getHeight();
                }
            }
        }
        return -1;
    }

    public static Bitmap getBitmapFromDrawing(DrawingPanel drawingPanel, int i) {
        Bitmap createBitmap = Bitmap.createBitmap(drawingPanel.getWidth() * i, drawingPanel.getHeight() * i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        float f = i;
        canvas.scale(f, f);
        drawingPanel.draw(canvas);
        return createBitmap;
    }

    private static int getBitmapLeftPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[height];
        for (int i = 0; i < width; i++) {
            bitmap.getPixels(iArr, 0, 1, i, 0, 1, height);
            for (int i2 = 0; i2 < height; i2++) {
                if (Color.alpha(iArr[i2]) != 0) {
                    int i3 = i - 1;
                    if (i3 > 0) {
                        return i3;
                    }
                    return 0;
                }
            }
        }
        return -1;
    }

    private static int getBitmapRightPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[height];
        for (int i = width - 1; i >= 0; i--) {
            bitmap.getPixels(iArr, 0, 1, i, 0, 1, height);
            for (int i2 = 0; i2 < height; i2++) {
                if (Color.alpha(iArr[i2]) != 0) {
                    int i3 = i + 1;
                    return i3 < bitmap.getWidth() ? i3 : bitmap.getWidth();
                }
            }
        }
        return -1;
    }

    private static int getBitmapTopPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width];
        for (int i = 0; i < height; i++) {
            bitmap.getPixels(iArr, 0, width, 0, i, width, 1);
            for (int i2 = 0; i2 < width; i2++) {
                if (Color.alpha(iArr[i2]) != 0) {
                    int i3 = i - 1;
                    if (i3 > 0) {
                        return i3;
                    }
                    return 0;
                }
            }
        }
        return -1;
    }
}
