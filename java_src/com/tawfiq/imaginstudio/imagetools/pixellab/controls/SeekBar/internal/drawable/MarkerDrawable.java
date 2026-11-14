package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.os.SystemClock;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public class MarkerDrawable extends StateDrawable implements Animatable {
    private static final int ANIMATION_DURATION = 250;
    private static final long FRAME_DURATION = 16;
    private float mAnimationInitialValue;
    private float mClosedStateSize;
    private float mCurrentScale;
    private int mDuration;
    private int mEndColor;
    private int mExternalOffset;
    private Interpolator mInterpolator;
    private MarkerAnimationListener mMarkerListener;
    Matrix mMatrix;
    Path mPath;
    RectF mRect;
    private boolean mReverse;
    private boolean mRunning;
    private int mStartColor;
    private long mStartTime;
    private final Runnable mUpdater;

    /* loaded from: classes.dex */
    public interface MarkerAnimationListener {
        void onClosingComplete();

        void onOpeningComplete();
    }

    public MarkerDrawable(ColorStateList colorStateList, int i) {
        super(colorStateList);
        this.mCurrentScale = 0.0f;
        this.mReverse = false;
        this.mRunning = false;
        this.mDuration = ANIMATION_DURATION;
        this.mPath = new Path();
        this.mRect = new RectF();
        this.mMatrix = new Matrix();
        this.mUpdater = new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                long uptimeMillis = SystemClock.uptimeMillis();
                long j = uptimeMillis - MarkerDrawable.this.mStartTime;
                if (j < MarkerDrawable.this.mDuration) {
                    float interpolation = MarkerDrawable.this.mInterpolator.getInterpolation(((float) j) / MarkerDrawable.this.mDuration);
                    MarkerDrawable markerDrawable = MarkerDrawable.this;
                    markerDrawable.scheduleSelf(markerDrawable.mUpdater, uptimeMillis + MarkerDrawable.FRAME_DURATION);
                    MarkerDrawable.this.updateAnimation(interpolation);
                    return;
                }
                MarkerDrawable markerDrawable2 = MarkerDrawable.this;
                markerDrawable2.unscheduleSelf(markerDrawable2.mUpdater);
                MarkerDrawable.this.mRunning = false;
                MarkerDrawable.this.updateAnimation(1.0f);
                MarkerDrawable.this.notifyFinishedToListener();
            }
        };
        this.mInterpolator = new AccelerateDecelerateInterpolator();
        this.mClosedStateSize = i;
        this.mStartColor = colorStateList.getColorForState(new int[]{R.attr.state_pressed}, colorStateList.getDefaultColor());
        this.mEndColor = colorStateList.getDefaultColor();
    }

    private static int blendColors(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i2) * f2) + (Color.alpha(i) * f)), (int) ((Color.red(i2) * f2) + (Color.red(i) * f)), (int) ((Color.green(i2) * f2) + (Color.green(i) * f)), (int) ((Color.blue(i2) * f2) + (Color.blue(i) * f)));
    }

    private void computePath(Rect rect) {
        float f = this.mCurrentScale;
        Path path = this.mPath;
        RectF rectF = this.mRect;
        Matrix matrix = this.mMatrix;
        path.reset();
        int min = Math.min(rect.width(), rect.height());
        float f2 = this.mClosedStateSize;
        float f3 = ((min - f2) * f) + f2;
        float f4 = f3 / 2.0f;
        float f5 = 1.0f - f;
        float f6 = f4 * f5;
        float[] fArr = {f4, f4, f4, f4, f4, f4, f6, f6};
        int i = rect.left;
        int i2 = rect.top;
        rectF.set(i, i2, i + f3, i2 + f3);
        path.addRoundRect(rectF, fArr, Path.Direction.CCW);
        matrix.reset();
        matrix.postRotate(-45.0f, rect.left + f4, rect.top + f4);
        matrix.postTranslate((rect.width() - f3) / 2.0f, 0.0f);
        matrix.postTranslate(0.0f, ((rect.bottom - f3) - this.mExternalOffset) * f5);
        path.transform(matrix);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFinishedToListener() {
        MarkerAnimationListener markerAnimationListener = this.mMarkerListener;
        if (markerAnimationListener != null) {
            if (this.mReverse) {
                markerAnimationListener.onClosingComplete();
            } else {
                markerAnimationListener.onOpeningComplete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAnimation(float f) {
        float f2 = this.mAnimationInitialValue;
        this.mCurrentScale = (((this.mReverse ? 0.0f : 1.0f) - f2) * f) + f2;
        computePath(getBounds());
        invalidateSelf();
    }

    public void animateToNormal() {
        this.mReverse = true;
        unscheduleSelf(this.mUpdater);
        float f = this.mCurrentScale;
        if (f <= 0.0f) {
            notifyFinishedToListener();
            return;
        }
        this.mRunning = true;
        this.mAnimationInitialValue = f;
        this.mDuration = 250 - ((int) ((1.0f - f) * 250.0f));
        long uptimeMillis = SystemClock.uptimeMillis();
        this.mStartTime = uptimeMillis;
        scheduleSelf(this.mUpdater, uptimeMillis + FRAME_DURATION);
    }

    public void animateToPressed() {
        unscheduleSelf(this.mUpdater);
        this.mReverse = false;
        float f = this.mCurrentScale;
        if (f >= 1.0f) {
            notifyFinishedToListener();
            return;
        }
        this.mRunning = true;
        this.mAnimationInitialValue = f;
        this.mDuration = (int) ((1.0f - f) * 250.0f);
        long uptimeMillis = SystemClock.uptimeMillis();
        this.mStartTime = uptimeMillis;
        scheduleSelf(this.mUpdater, uptimeMillis + FRAME_DURATION);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.StateDrawable
    public void doDraw(Canvas canvas, Paint paint) {
        if (this.mPath.isEmpty()) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(blendColors(this.mStartColor, this.mEndColor, this.mCurrentScale));
        canvas.drawPath(this.mPath, paint);
    }

    public Path getPath() {
        return this.mPath;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        computePath(rect);
    }

    public void setColors(int i, int i2) {
        this.mStartColor = i;
        this.mEndColor = i2;
    }

    public void setExternalOffset(int i) {
        this.mExternalOffset = i;
    }

    public void setMarkerListener(MarkerAnimationListener markerAnimationListener) {
        this.mMarkerListener = markerAnimationListener;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        unscheduleSelf(this.mUpdater);
    }
}
