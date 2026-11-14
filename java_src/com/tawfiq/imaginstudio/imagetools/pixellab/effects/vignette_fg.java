package com.tawfiq.imaginstudio.imagetools.pixellab.effects;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class vignette_fg extends View {
    int vignetteColorA;
    int vignetteColorB;
    int vignetteColorG;
    int vignetteColorR;

    public vignette_fg(Context context) {
        super(context);
        this.vignetteColorR = 0;
        this.vignetteColorB = 0;
        this.vignetteColorG = 0;
        this.vignetteColorA = 170;
        init();
    }

    public vignette_fg(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.vignetteColorR = 0;
        this.vignetteColorB = 0;
        this.vignetteColorG = 0;
        this.vignetteColorA = 170;
        init();
    }

    public int getVignetteColor() {
        return Color.rgb(this.vignetteColorR, this.vignetteColorG, this.vignetteColorB);
    }

    public int getVignetteColorAlpha() {
        return this.vignetteColorA;
    }

    public void init() {
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float[] fArr = new float[9];
        canvas.getMatrix().getValues(fArr);
        Math.max(1.0f, fArr[0]);
        Math.max(1.0f, fArr[4]);
        Paint paint = new Paint(1);
        int argb = Color.argb(this.vignetteColorA, this.vignetteColorR, this.vignetteColorG, this.vignetteColorB);
        int argb2 = Color.argb(0, this.vignetteColorR, this.vignetteColorG, this.vignetteColorB);
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        if (rect.width() < 1 || rect.height() < 1) {
            return;
        }
        RadialGradient radialGradient = new RadialGradient(rect.centerX(), rect.centerY(), (((float) Math.sqrt(Math.pow(rect.height(), 2.0d) + Math.pow(rect.width(), 2.0d))) / 2.0f) * 0.8f, new int[]{argb2, argb2, argb}, new float[]{0.0f, 0.7f, 1.0f}, Shader.TileMode.CLAMP);
        float max = Math.max(getWidth(), getHeight());
        Matrix matrix = new Matrix();
        matrix.setScale(getWidth() / max, getHeight() / max, rect.centerX(), rect.centerY());
        radialGradient.setLocalMatrix(matrix);
        paint.setShader(radialGradient);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint);
    }

    public void setVignetteAlpha(int i) {
        this.vignetteColorA = i;
        invalidate();
    }

    public void setVignetteColor(int i) {
        this.vignetteColorB = Color.blue(i);
        this.vignetteColorR = Color.red(i);
        this.vignetteColorG = Color.green(i);
        invalidate();
    }
}
