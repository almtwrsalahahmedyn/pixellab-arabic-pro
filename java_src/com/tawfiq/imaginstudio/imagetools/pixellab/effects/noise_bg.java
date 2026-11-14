package com.tawfiq.imaginstudio.imagetools.pixellab.effects;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class noise_bg extends View {
    int effectAlpha;
    int numberToRepeat;
    Bitmap originalRes;

    public noise_bg(Context context) {
        super(context);
        this.numberToRepeat = 7;
        this.effectAlpha = 50;
        init();
    }

    public noise_bg(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.numberToRepeat = 7;
        this.effectAlpha = 50;
        init();
    }

    private static Bitmap getBitmapFromAsset(Context context, String str) {
        try {
            InputStream open = context.getAssets().open(str);
            new BitmapFactory.Options().inDither = true;
            return BitmapFactory.decodeStream(open);
        } catch (IOException unused) {
            return null;
        }
    }

    public int getEffectAlpha() {
        return this.effectAlpha;
    }

    public int getNumberToRepeat() {
        return this.numberToRepeat;
    }

    public void init() {
        this.originalRes = getBitmapFromAsset(getContext(), "effects/noise.png");
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float[] fArr = new float[9];
        canvas.getMatrix().getValues(fArr);
        Math.max(1.0f, fArr[0]);
        Math.max(1.0f, fArr[4]);
        float max = (Math.max(getWidth(), getHeight()) / this.numberToRepeat) / this.originalRes.getWidth();
        Paint paint = new Paint(2);
        paint.setAlpha((int) (this.effectAlpha * 1.5f));
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint);
        Bitmap bitmap = this.originalRes;
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setScale(max, max);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        paint.setAlpha(this.effectAlpha);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint);
    }

    public void setEffectAlpha(int i) {
        this.effectAlpha = i;
        invalidate();
    }

    public void setNumberToRepeat(int i) {
        this.numberToRepeat = i;
        invalidate();
    }
}
