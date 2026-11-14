package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.os.SystemClock;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public class AlmostRippleDrawable extends StateDrawable implements Animatable {
    private static final float ACTIVE_SCALE = 1.0f;
    private static final int ANIMATION_DURATION = 250;
    private static final long FRAME_DURATION = 16;
    private static final float INACTIVE_SCALE = 0.0f;
    private float mAnimationInitialValue;
    private float mCurrentScale;
    private int mDisabledColor;
    private int mDuration;
    private int mFocusedColor;
    private Interpolator mInterpolator;
    private int mPressedColor;
    private boolean mReverse;
    private int mRippleBgColor;
    private int mRippleColor;
    private boolean mRunning;
    private long mStartTime;
    private final Runnable mUpdater;

    public AlmostRippleDrawable(ColorStateList colorStateList) {
        super(colorStateList);
        this.mCurrentScale = 0.0f;
        this.mReverse = false;
        this.mRunning = false;
        this.mDuration = ANIMATION_DURATION;
        this.mUpdater = new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.AlmostRippleDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                long uptimeMillis = SystemClock.uptimeMillis();
                long j = uptimeMillis - AlmostRippleDrawable.this.mStartTime;
                if (j < AlmostRippleDrawable.this.mDuration) {
                    float interpolation = AlmostRippleDrawable.this.mInterpolator.getInterpolation(((float) j) / AlmostRippleDrawable.this.mDuration);
                    AlmostRippleDrawable almostRippleDrawable = AlmostRippleDrawable.this;
                    almostRippleDrawable.scheduleSelf(almostRippleDrawable.mUpdater, uptimeMillis + AlmostRippleDrawable.FRAME_DURATION);
                    AlmostRippleDrawable.this.updateAnimation(interpolation);
                    return;
                }
                AlmostRippleDrawable almostRippleDrawable2 = AlmostRippleDrawable.this;
                almostRippleDrawable2.unscheduleSelf(almostRippleDrawable2.mUpdater);
                AlmostRippleDrawable.this.mRunning = false;
                AlmostRippleDrawable.this.updateAnimation(AlmostRippleDrawable.ACTIVE_SCALE);
            }
        };
        this.mInterpolator = new AccelerateDecelerateInterpolator();
        this.mFocusedColor = colorStateList.getColorForState(new int[]{R.attr.state_focused}, -65536);
        this.mPressedColor = colorStateList.getColorForState(new int[]{R.attr.state_pressed}, -65536);
        this.mDisabledColor = colorStateList.getColorForState(new int[]{-16842910}, -65536);
    }

    private int decreasedAlpha(int i) {
        return (i * 100) >> 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAnimation(float f) {
        float f2 = this.mAnimationInitialValue;
        this.mCurrentScale = (((this.mReverse ? 0.0f : ACTIVE_SCALE) - f2) * f) + f2;
        invalidateSelf();
    }

    public void animateToNormal() {
        unscheduleSelf(this.mUpdater);
        float f = this.mCurrentScale;
        if (f > 0.0f) {
            this.mReverse = true;
            this.mRunning = true;
            this.mAnimationInitialValue = f;
            this.mDuration = (int) ((ACTIVE_SCALE - ((f - ACTIVE_SCALE) / (-1.0f))) * 250.0f);
            long uptimeMillis = SystemClock.uptimeMillis();
            this.mStartTime = uptimeMillis;
            scheduleSelf(this.mUpdater, uptimeMillis + FRAME_DURATION);
        }
    }

    public void animateToPressed() {
        unscheduleSelf(this.mUpdater);
        float f = this.mCurrentScale;
        if (f < ACTIVE_SCALE) {
            this.mReverse = false;
            this.mRunning = true;
            this.mAnimationInitialValue = f;
            this.mDuration = (int) ((ACTIVE_SCALE - ((f - 0.0f) / ACTIVE_SCALE)) * 250.0f);
            long uptimeMillis = SystemClock.uptimeMillis();
            this.mStartTime = uptimeMillis;
            scheduleSelf(this.mUpdater, uptimeMillis + FRAME_DURATION);
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.StateDrawable
    public void doDraw(Canvas canvas, Paint paint) {
        Rect bounds = getBounds();
        int min = Math.min(bounds.width(), bounds.height());
        float f = this.mCurrentScale;
        int i = this.mRippleColor;
        int i2 = this.mRippleBgColor;
        float f2 = min / 2;
        float f3 = f2 * f;
        if (f > 0.0f) {
            if (i2 != 0) {
                paint.setColor(i2);
                paint.setAlpha(decreasedAlpha(Color.alpha(i2)));
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), f2, paint);
            }
            if (i != 0) {
                paint.setColor(i);
                paint.setAlpha(modulateAlpha(Color.alpha(i)));
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), f3, paint);
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.StateDrawable, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        float f;
        boolean z = false;
        for (int i : getState()) {
            if (i == 16842919) {
                z = true;
            }
        }
        super.setState(iArr);
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        for (int i2 : iArr) {
            if (i2 == 16842908) {
                z4 = true;
            } else if (i2 == 16842919) {
                z3 = true;
            } else if (i2 == 16842910) {
                z2 = false;
            }
        }
        if (!z2) {
            if (z3) {
                animateToPressed();
                int i3 = this.mPressedColor;
                this.mRippleBgColor = i3;
                this.mRippleColor = i3;
            } else if (z) {
                int i4 = this.mPressedColor;
                this.mRippleBgColor = i4;
                this.mRippleColor = i4;
                animateToNormal();
            } else if (z4) {
                this.mRippleColor = this.mFocusedColor;
                this.mRippleBgColor = 0;
                f = ACTIVE_SCALE;
            } else {
                this.mRippleColor = 0;
                this.mRippleBgColor = 0;
                f = 0.0f;
            }
            return true;
        }
        unscheduleSelf(this.mUpdater);
        this.mRippleColor = this.mDisabledColor;
        this.mRippleBgColor = 0;
        f = 0.5f;
        this.mCurrentScale = f;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
    }
}
