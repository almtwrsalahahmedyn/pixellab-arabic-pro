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
public class stripes_bg extends View {
    int effectAlpha;
    int numberToRepeat;
    Bitmap originalRes;

    public stripes_bg(Context context) {
        super(context);
        this.numberToRepeat = 10;
        this.effectAlpha = 90;
        init();
    }

    public stripes_bg(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.numberToRepeat = 10;
        this.effectAlpha = 90;
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
        this.originalRes = getBitmapFromAsset(getContext(), "effects/stripe.png");
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float[] fArr = new float[9];
        canvas.getMatrix().getValues(fArr);
        Math.max(1.0f, fArr[0]);
        Math.max(1.0f, fArr[4]);
        float width = (getWidth() / this.numberToRepeat) / this.originalRes.getWidth();
        Paint paint = new Paint(2);
        paint.setAlpha(this.effectAlpha);
        Bitmap bitmap = this.originalRes;
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setScale(width, width);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
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
