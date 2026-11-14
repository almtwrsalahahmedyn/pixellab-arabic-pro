package com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions;

/* loaded from: classes.dex */
public class Line2D {
    private float x1 = 0.0f;
    private float y1 = 0.0f;
    private float x2 = 0.0f;
    private float y2 = 0.0f;

    public Line2D() {
    }

    public Line2D(float f, float f2, float f3, float f4) {
        set(f, f2, f3, f4);
    }

    public float getX1() {
        return this.x1;
    }

    public float getX2() {
        return this.x2;
    }

    public float getY1() {
        return this.y1;
    }

    public float getY2() {
        return this.y2;
    }

    public void set(float f, float f2, float f3, float f4) {
        this.x1 = f;
        this.y1 = f2;
        this.x2 = f3;
        this.y2 = f4;
    }
}
