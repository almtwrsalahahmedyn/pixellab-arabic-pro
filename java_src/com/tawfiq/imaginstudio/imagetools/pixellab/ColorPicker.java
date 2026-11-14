package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class ColorPicker extends View {
    private int alphaVal;
    private float[] colorHSV;
    private Paint colorPointerPaint;
    private int colorPointerRad;
    private Bitmap colorWheelBitmap;
    private Paint colorWheelPaint;
    private int colorWheelRadius;
    ColorChangedListener mColorChangedListener;
    private int padding;

    /* loaded from: classes.dex */
    public interface ColorChangedListener {
        void colorChange();
    }

    public ColorPicker(Context context) {
        super(context);
        this.padding = dpToPixels(10);
        this.colorPointerRad = dpToPixels(5);
        this.colorHSV = new float[]{0.0f, 0.0f, 1.0f};
        this.alphaVal = 255;
        init();
    }

    public ColorPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.padding = dpToPixels(10);
        this.colorPointerRad = dpToPixels(5);
        this.colorHSV = new float[]{0.0f, 0.0f, 1.0f};
        this.alphaVal = 255;
        init();
    }

    public ColorPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.padding = dpToPixels(10);
        this.colorPointerRad = dpToPixels(5);
        this.colorHSV = new float[]{0.0f, 0.0f, 1.0f};
        this.alphaVal = 255;
        init();
    }

    private Bitmap createColorWheelBitmap(int i) {
        if (i < 1) {
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        int[] iArr = new int[13];
        float[] fArr = {0.0f, 1.0f, 1.0f};
        for (int i2 = 0; i2 < 13; i2++) {
            fArr[0] = ((i2 * 30) + 180) % 360;
            iArr[i2] = Color.HSVToColor(fArr);
        }
        iArr[12] = iArr[0];
        float f = i / 2;
        this.colorWheelPaint.setShader(new ComposeShader(new SweepGradient(f, f, iArr, (float[]) null), new RadialGradient(f, f, this.colorWheelRadius, -1, 16777215, Shader.TileMode.CLAMP), PorterDuff.Mode.SRC_OVER));
        new Canvas(createBitmap).drawCircle(f, f, this.colorWheelRadius, this.colorWheelPaint);
        return createBitmap;
    }

    private void init() {
        Paint paint = new Paint(1);
        this.colorPointerPaint = paint;
        paint.setDither(true);
        this.colorPointerPaint.setStyle(Paint.Style.STROKE);
        this.colorPointerPaint.setStrokeWidth(dpToPixels(2));
        this.colorPointerPaint.setARGB(128, 0, 0, 0);
        Paint paint2 = new Paint();
        this.colorWheelPaint = paint2;
        paint2.setAntiAlias(true);
        this.colorWheelPaint.setDither(true);
        this.colorWheelPaint.setFilterBitmap(true);
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public int getAlphaVal() {
        return this.alphaVal;
    }

    public int getColor() {
        return Color.HSVToColor(this.alphaVal, this.colorHSV);
    }

    public float[] getColorHSV() {
        return this.colorHSV;
    }

    public float getSaturation() {
        return this.colorHSV[1];
    }

    public float getValue() {
        return this.colorHSV[2];
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.colorWheelBitmap.getWidth() < 4) {
            return;
        }
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        Bitmap bitmap = this.colorWheelBitmap;
        float f = this.colorWheelRadius;
        canvas.drawBitmap(bitmap, width - f, height - f, this.colorWheelPaint);
        canvas.drawCircle(width, height, this.colorWheelRadius, this.colorPointerPaint);
        double radians = (float) Math.toRadians(this.colorHSV[0]);
        canvas.drawCircle((float) (((-Math.cos(radians)) * this.colorHSV[1] * this.colorWheelRadius) + width), (float) (((-Math.sin(radians)) * this.colorHSV[1] * this.colorWheelRadius) + height), this.colorPointerRad, this.colorPointerPaint);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int min = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        setMeasuredDimension(min, min);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5 = (i / 2) - this.padding;
        this.colorWheelRadius = i5;
        this.colorWheelBitmap = createColorWheelBitmap(i5 * 2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && action != 2) {
            return super.onTouchEvent(motionEvent);
        }
        float x = motionEvent.getX();
        float width = x - (getWidth() / 2);
        float y = motionEvent.getY() - (getHeight() / 2);
        double sqrt = Math.sqrt((y * y) + (width * width));
        if (sqrt <= this.colorWheelRadius) {
            this.colorHSV[0] = (float) (Math.toDegrees(Math.atan2(y, width)) + 180.0d);
            this.colorHSV[1] = Math.max(0.0f, Math.min(1.0f, (float) (sqrt / this.colorWheelRadius)));
            ColorChangedListener colorChangedListener = this.mColorChangedListener;
            if (colorChangedListener != null) {
                colorChangedListener.colorChange();
            }
            invalidate();
        }
        return true;
    }

    public void setAlphaVal(int i) {
        this.alphaVal = i;
        ColorChangedListener colorChangedListener = this.mColorChangedListener;
        if (colorChangedListener != null) {
            colorChangedListener.colorChange();
        }
        invalidate();
    }

    public void setBlue(int i) {
        int color = getColor();
        setColor(Color.rgb(Color.red(color), Color.green(color), i));
    }

    public void setColor(int i) {
        setColor(i, this.alphaVal);
    }

    public void setColor(int i, int i2) {
        Color.colorToHSV(i, this.colorHSV);
        setAlphaVal(i2);
        ColorChangedListener colorChangedListener = this.mColorChangedListener;
        if (colorChangedListener != null) {
            colorChangedListener.colorChange();
        }
        invalidate();
    }

    public void setGreen(int i) {
        int color = getColor();
        setColor(Color.rgb(Color.red(color), i, Color.blue(color)));
    }

    public void setOnColorChangedListener(ColorChangedListener colorChangedListener) {
        this.mColorChangedListener = colorChangedListener;
    }

    public void setRed(int i) {
        int color = getColor();
        setColor(Color.rgb(i, Color.green(color), Color.blue(color)));
    }

    public void setSaturation(float f) {
        this.colorHSV[1] = f;
        ColorChangedListener colorChangedListener = this.mColorChangedListener;
        if (colorChangedListener != null) {
            colorChangedListener.colorChange();
        }
        invalidate();
    }

    public void setValue(float f) {
        this.colorHSV[2] = f;
        ColorChangedListener colorChangedListener = this.mColorChangedListener;
        if (colorChangedListener != null) {
            colorChangedListener.colorChange();
        }
        invalidate();
    }
}
