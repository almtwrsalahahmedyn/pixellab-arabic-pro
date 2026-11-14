package com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions;

/* loaded from: classes.dex */
public class uniformScale {
    public static int removeColorTolerance(int i) {
        return (int) (i > 75 ? (i * 1.6f) - 90.0f : i * 0.4f);
    }

    public static int removeColorToleranceInverse(int i) {
        return (int) (i > 30 ? (i * 0.625f) + 56.25d : i * 2.5f);
    }

    public static int scaleBezier(int i) {
        return i <= 45 ? (i * 2) + 10 : (i * 6) - 170;
    }

    public static int scaleBezierInverse(int i) {
        return i <= 100 ? (i - 10) / 2 : (i + 170) / 6;
    }

    public static int scaleObjects(int i) {
        return i < 20 ? i * 5 : (i * 6) - 20;
    }

    public static int textSize(int i) {
        return (int) (i < 100 ? (i * 1.6f) + 20.0f : (i * 2.5f) - 70.0f);
    }

    public static int textSizeInverse(int i) {
        return (int) (i < 180 ? (i * 0.625f) - 12.5f : (i * 0.4f) + 28.0f);
    }

    public static int textureSize(int i) {
        return i < 10 ? i * 10 : (i * 100) - 900;
    }

    public static int textureSizeInverse(int i) {
        return (int) (i < 100 ? i * 0.1f : (i * 0.01f) + 9.0f);
    }

    public static int textureSizeShape(int i) {
        return i < 10 ? i * 10 : (i * 15) - 50;
    }

    public static int textureSizeShapeInverse(int i) {
        return (int) (i < 100 ? i * 0.1f : (i + 50) / 15.0f);
    }
}
