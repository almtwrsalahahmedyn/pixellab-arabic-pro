package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class StateDrawable extends Drawable {
    private int mCurrentColor;
    private ColorStateList mTintStateList;
    private int mAlpha = 255;
    private final Paint mPaint = new Paint(1);

    public StateDrawable(ColorStateList colorStateList) {
        this.mTintStateList = colorStateList;
        this.mCurrentColor = colorStateList.getDefaultColor();
    }

    private boolean updateTint(int[] iArr) {
        int colorForState = this.mTintStateList.getColorForState(iArr, this.mCurrentColor);
        if (colorForState == this.mCurrentColor) {
            return false;
        }
        this.mCurrentColor = colorForState;
        invalidateSelf();
        return true;
    }

    public abstract void doDraw(Canvas canvas, Paint paint);

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mPaint.setColor(this.mCurrentColor);
        this.mPaint.setAlpha(modulateAlpha(Color.alpha(this.mCurrentColor)));
        doDraw(canvas, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mTintStateList.isStateful() || super.isStateful();
    }

    public int modulateAlpha(int i) {
        int i2 = this.mAlpha;
        return ((i2 + (i2 >> 7)) * i) >> 8;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mAlpha = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setColorStateList(ColorStateList colorStateList) {
        this.mTintStateList = colorStateList;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return updateTint(iArr) || super.setState(iArr);
    }
}
