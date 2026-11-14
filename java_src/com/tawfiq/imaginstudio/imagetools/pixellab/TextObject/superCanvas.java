package com.tawfiq.imaginstudio.imagetools.pixellab.TextObject;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;

/* loaded from: classes.dex */
public class superCanvas extends Canvas {
    public superCanvas() {
    }

    public superCanvas(Bitmap bitmap) {
        super(bitmap);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(float f, float f2, float f3, float f4) {
        return false;
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(float f, float f2, float f3, float f4, Region.Op op) {
        return false;
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(int i, int i2, int i3, int i4) {
        return false;
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(Rect rect) {
        return false;
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(Rect rect, Region.Op op) {
        return false;
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(RectF rectF) {
        return false;
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(RectF rectF, Region.Op op) {
        return false;
    }
}
