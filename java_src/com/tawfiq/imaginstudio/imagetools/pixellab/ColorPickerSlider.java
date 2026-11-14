package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class ColorPickerSlider extends View {
    static final int COMPONENT_ALPHA = 3;
    static final int COMPONENT_SATURATION = 1;
    static final int COMPONENT_VALUE = 2;
    float HandlePos;
    private float _xDelta;
    Drawable backgroundCheckers;
    private int colorAlpha;
    private float colorHue;
    colorSliderEvent colorListener;
    private float colorSaturation;
    private float colorValue;
    int controlledComponent;
    int handleRad;

    /* loaded from: classes.dex */
    public interface colorSliderEvent {
        void onColorChanged(float f);
    }

    public ColorPickerSlider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.colorListener = null;
        this.HandlePos = 50.0f;
        this.controlledComponent = 1;
        this.handleRad = 0;
        this.backgroundCheckers = getResources().getDrawable(R.drawable.checkered_bg);
    }

    public float clipVal(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    public float convertToAbsolutePosition(float f) {
        return (getWidth() - (this.handleRad * 2.0f)) * (f / 100.0f);
    }

    public float convertToRelativePosition(float f) {
        return clipVal((f / (getWidth() - (this.handleRad * 2.0f))) * 100.0f, 0.0f, 100.0f);
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public LinearGradient getDisplayGradient(float f) {
        int HSVToColor;
        int HSVToColor2;
        int i;
        int i2;
        int i3 = this.controlledComponent;
        if (i3 == 1) {
            HSVToColor = Color.HSVToColor(new float[]{this.colorHue, 0.0f, this.colorValue});
            HSVToColor2 = Color.HSVToColor(new float[]{this.colorHue, 1.0f, this.colorValue});
        } else if (i3 == 2) {
            HSVToColor = Color.HSVToColor(new float[]{this.colorHue, this.colorSaturation, 0.0f});
            HSVToColor2 = Color.HSVToColor(new float[]{this.colorHue, this.colorSaturation, 1.0f});
        } else {
            if (i3 != 3) {
                i2 = 0;
                i = 0;
                return new LinearGradient(0.0f, 0.0f, f, 0.0f, i2, i, Shader.TileMode.CLAMP);
            }
            HSVToColor = Color.HSVToColor(0, new float[]{this.colorHue, this.colorSaturation, this.colorValue});
            HSVToColor2 = Color.HSVToColor(255, new float[]{this.colorHue, this.colorSaturation, this.colorValue});
        }
        i = HSVToColor2;
        i2 = HSVToColor;
        return new LinearGradient(0.0f, 0.0f, f, 0.0f, i2, i, Shader.TileMode.CLAMP);
    }

    public void initialize(int i, int i2) {
        this.controlledComponent = i2;
        setColor(i);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = new RectF(0.0f, 0.0f, getWidth() - (this.handleRad * 2), getHeight());
        Paint paint = new Paint(1);
        paint.setShader(getDisplayGradient(rectF.width()));
        canvas.translate(this.handleRad, 0.0f);
        Paint paint2 = new Paint(1);
        paint2.setColor(-7829368);
        canvas.drawRect(rectF, paint2);
        rectF.inset(dpToPixels(1), dpToPixels(1));
        paint2.setColor(-3355444);
        canvas.drawRect(rectF, paint2);
        rectF.inset(dpToPixels(1), dpToPixels(1));
        if (this.controlledComponent == 3) {
            this.backgroundCheckers.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.backgroundCheckers.draw(canvas);
        }
        canvas.drawRect(rectF, paint);
        float convertToAbsolutePosition = convertToAbsolutePosition(this.HandlePos);
        Paint paint3 = new Paint(1);
        paint3.setColor(-12303292);
        canvas.drawCircle(convertToAbsolutePosition, rectF.centerY(), this.handleRad, paint3);
        paint3.setColor(-1);
        canvas.drawCircle(convertToAbsolutePosition, rectF.centerY(), this.handleRad - dpToPixels(1), paint3);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.handleRad = Math.min(i, i2) / 3;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float rawX = motionEvent.getRawX();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float convertToRelativePosition = convertToRelativePosition(motionEvent.getX() - this.handleRad);
            this.HandlePos = convertToRelativePosition;
            colorSliderEvent colorsliderevent = this.colorListener;
            if (colorsliderevent != null) {
                colorsliderevent.onColorChanged(convertToRelativePosition / 100.0f);
            }
            invalidate();
            this._xDelta = rawX - (motionEvent.getX() - this.handleRad);
            return true;
        }
        if (action != 2) {
            return true;
        }
        float convertToRelativePosition2 = convertToRelativePosition(Math.max(Math.min(rawX - this._xDelta, getWidth() - (this.handleRad * 2.0f)), 0.0f));
        this.HandlePos = convertToRelativePosition2;
        colorSliderEvent colorsliderevent2 = this.colorListener;
        if (colorsliderevent2 != null) {
            colorsliderevent2.onColorChanged(convertToRelativePosition2 / 100.0f);
        }
        invalidate();
        return true;
    }

    public void setColor(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        setColor(Color.alpha(i), fArr);
    }

    public void setColor(int i, float[] fArr) {
        this.colorHue = fArr[0];
        float f = fArr[1];
        this.colorSaturation = f;
        float f2 = fArr[2];
        this.colorValue = f2;
        this.colorAlpha = i;
        int i2 = this.controlledComponent;
        if (i2 == 1) {
            setValue(f * 100.0f);
        } else if (i2 == 2) {
            setValue(f2 * 100.0f);
        } else if (i2 == 3) {
            setValue((i / 255.0f) * 100.0f);
        }
    }

    public void setColorListener(colorSliderEvent colorsliderevent) {
        this.colorListener = colorsliderevent;
    }

    public void setValue(float f) {
        this.HandlePos = f;
        invalidate();
    }
}
