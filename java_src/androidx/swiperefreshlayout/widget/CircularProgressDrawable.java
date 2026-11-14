package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class CircularProgressDrawable extends Drawable implements Animatable {
    public final ValueAnimator mAnimator;
    public boolean mFinishing;
    public final Resources mResources;
    public final Ring mRing;
    public float mRotation;
    public float mRotationCount;
    public static final LinearInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final FastOutSlowInInterpolator MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
    public static final int[] COLORS = {-16777216};

    /* loaded from: classes.dex */
    public final class Ring {
        public int mAlpha;
        public Path mArrow;
        public int mArrowHeight;
        public final Paint mArrowPaint;
        public float mArrowScale;
        public int mArrowWidth;
        public final Paint mCirclePaint;
        public int mColorIndex;
        public int[] mColors;
        public int mCurrentColor;
        public float mEndTrim;
        public final Paint mPaint;
        public float mRingCenterRadius;
        public float mRotation;
        public boolean mShowArrow;
        public float mStartTrim;
        public float mStartingEndTrim;
        public float mStartingRotation;
        public float mStartingStartTrim;
        public float mStrokeWidth;
        public final RectF mTempBounds = new RectF();

        public Ring() {
            Paint paint = new Paint();
            this.mPaint = paint;
            Paint paint2 = new Paint();
            this.mArrowPaint = paint2;
            Paint paint3 = new Paint();
            this.mCirclePaint = paint3;
            this.mStartTrim = 0.0f;
            this.mEndTrim = 0.0f;
            this.mRotation = 0.0f;
            this.mStrokeWidth = 5.0f;
            this.mArrowScale = 1.0f;
            this.mAlpha = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        public final float getStartingRotation() {
            return this.mStartingRotation;
        }

        public final float getStartingStartTrim() {
            return this.mStartingStartTrim;
        }

        public final void setEndTrim(float f) {
            this.mEndTrim = f;
        }

        public final void setRotation(float f) {
            this.mRotation = f;
        }

        public final void setStartTrim(float f) {
            this.mStartTrim = f;
        }
    }

    public CircularProgressDrawable(Context context) {
        Objects.requireNonNull(context);
        this.mResources = context.getResources();
        final Ring ring = new Ring();
        this.mRing = ring;
        int[] iArr = COLORS;
        ring.mColors = iArr;
        ring.mColorIndex = 0;
        ring.mCurrentColor = iArr[0];
        ring.mStrokeWidth = 2.5f;
        ring.mPaint.setStrokeWidth(2.5f);
        invalidateSelf();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
                circularProgressDrawable.getClass();
                Ring ring2 = ring;
                CircularProgressDrawable.updateRingColor(floatValue, ring2);
                circularProgressDrawable.applyTransformation(floatValue, ring2, false);
                circularProgressDrawable.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(LINEAR_INTERPOLATOR);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
                Ring ring2 = ring;
                circularProgressDrawable.applyTransformation(1.0f, ring2, true);
                ring2.mStartingStartTrim = ring2.mStartTrim;
                ring2.mStartingEndTrim = ring2.mEndTrim;
                ring2.mStartingRotation = ring2.mRotation;
                int i = ring2.mColorIndex + 1;
                int[] iArr2 = ring2.mColors;
                int length = i % iArr2.length;
                ring2.mColorIndex = length;
                ring2.mCurrentColor = iArr2[length];
                if (!circularProgressDrawable.mFinishing) {
                    circularProgressDrawable.mRotationCount += 1.0f;
                    return;
                }
                circularProgressDrawable.mFinishing = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                if (ring2.mShowArrow) {
                    ring2.mShowArrow = false;
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                CircularProgressDrawable.this.mRotationCount = 0.0f;
            }
        });
        this.mAnimator = ofFloat;
    }

    public static void updateRingColor(float f, Ring ring) {
        int i;
        if (f > 0.75f) {
            float f2 = (f - 0.75f) / 0.25f;
            int[] iArr = ring.mColors;
            int i2 = ring.mColorIndex;
            int i3 = iArr[i2];
            int i4 = iArr[(i2 + 1) % iArr.length];
            int i5 = (i3 >> 24) & 255;
            int i6 = (i3 >> 16) & 255;
            int i7 = (i3 >> 8) & 255;
            i = ((i3 & 255) + ((int) (f2 * ((i4 & 255) - r2)))) | ((i5 + ((int) ((((i4 >> 24) & 255) - i5) * f2))) << 24) | ((i6 + ((int) ((((i4 >> 16) & 255) - i6) * f2))) << 16) | ((i7 + ((int) ((((i4 >> 8) & 255) - i7) * f2))) << 8);
        } else {
            i = ring.mColors[ring.mColorIndex];
        }
        ring.mCurrentColor = i;
    }

    public final void applyTransformation(float f, Ring ring, boolean z) {
        float interpolation;
        float f2;
        if (this.mFinishing) {
            updateRingColor(f, ring);
            float floor = (float) (Math.floor(ring.mStartingRotation / 0.8f) + 1.0d);
            float f3 = ring.mStartingStartTrim;
            float f4 = ring.mStartingEndTrim;
            ring.mStartTrim = (((f4 - 0.01f) - f3) * f) + f3;
            ring.mEndTrim = f4;
            float f5 = ring.mStartingRotation;
            ring.mRotation = ((floor - f5) * f) + f5;
            return;
        }
        if (f != 1.0f || z) {
            float startingRotation = ring.getStartingRotation();
            FastOutSlowInInterpolator fastOutSlowInInterpolator = MATERIAL_INTERPOLATOR;
            if (f < 0.5f) {
                interpolation = ring.getStartingStartTrim();
                f2 = (fastOutSlowInInterpolator.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float startingStartTrim = ring.getStartingStartTrim() + 0.79f;
                interpolation = startingStartTrim - (((1.0f - fastOutSlowInInterpolator.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f2 = startingStartTrim;
            }
            float f6 = (0.20999998f * f) + startingRotation;
            float f7 = (f + this.mRotationCount) * 216.0f;
            ring.setStartTrim(interpolation);
            ring.setEndTrim(f2);
            ring.setRotation(f6);
            this.mRotation = f7;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.mRotation, bounds.exactCenterX(), bounds.exactCenterY());
        Ring ring = this.mRing;
        RectF rectF = ring.mTempBounds;
        float f = ring.mRingCenterRadius;
        float f2 = (ring.mStrokeWidth / 2.0f) + f;
        if (f <= 0.0f) {
            f2 = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((ring.mArrowWidth * ring.mArrowScale) / 2.0f, ring.mStrokeWidth / 2.0f);
        }
        rectF.set(bounds.centerX() - f2, bounds.centerY() - f2, bounds.centerX() + f2, bounds.centerY() + f2);
        float f3 = ring.mStartTrim;
        float f4 = ring.mRotation;
        float f5 = (f3 + f4) * 360.0f;
        float f6 = ((ring.mEndTrim + f4) * 360.0f) - f5;
        Paint paint = ring.mPaint;
        paint.setColor(ring.mCurrentColor);
        paint.setAlpha(ring.mAlpha);
        float f7 = ring.mStrokeWidth / 2.0f;
        rectF.inset(f7, f7);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, ring.mCirclePaint);
        float f8 = -f7;
        rectF.inset(f8, f8);
        canvas.drawArc(rectF, f5, f6, false, paint);
        if (ring.mShowArrow) {
            Path path = ring.mArrow;
            if (path == null) {
                Path path2 = new Path();
                ring.mArrow = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f9 = (ring.mArrowWidth * ring.mArrowScale) / 2.0f;
            ring.mArrow.moveTo(0.0f, 0.0f);
            ring.mArrow.lineTo(ring.mArrowWidth * ring.mArrowScale, 0.0f);
            Path path3 = ring.mArrow;
            float f10 = ring.mArrowWidth;
            float f11 = ring.mArrowScale;
            path3.lineTo((f10 * f11) / 2.0f, ring.mArrowHeight * f11);
            ring.mArrow.offset((rectF.centerX() + min) - f9, (ring.mStrokeWidth / 2.0f) + rectF.centerY());
            ring.mArrow.close();
            Paint paint2 = ring.mArrowPaint;
            paint2.setColor(ring.mCurrentColor);
            paint2.setAlpha(ring.mAlpha);
            canvas.save();
            canvas.rotate(f5 + f6, rectF.centerX(), rectF.centerY());
            canvas.drawPath(ring.mArrow, paint2);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.mRing.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.mAnimator.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.mRing.mAlpha = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.mRing.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        ValueAnimator valueAnimator;
        long j;
        this.mAnimator.cancel();
        Ring ring = this.mRing;
        float f = ring.mStartTrim;
        ring.mStartingStartTrim = f;
        float f2 = ring.mEndTrim;
        ring.mStartingEndTrim = f2;
        ring.mStartingRotation = ring.mRotation;
        if (f2 != f) {
            this.mFinishing = true;
            valueAnimator = this.mAnimator;
            j = 666;
        } else {
            ring.mColorIndex = 0;
            ring.mCurrentColor = ring.mColors[0];
            ring.mStartingStartTrim = 0.0f;
            ring.mStartingEndTrim = 0.0f;
            ring.mStartingRotation = 0.0f;
            ring.mStartTrim = 0.0f;
            ring.mEndTrim = 0.0f;
            ring.mRotation = 0.0f;
            valueAnimator = this.mAnimator;
            j = 1332;
        }
        valueAnimator.setDuration(j);
        this.mAnimator.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.mAnimator.cancel();
        this.mRotation = 0.0f;
        Ring ring = this.mRing;
        if (ring.mShowArrow) {
            ring.mShowArrow = false;
        }
        ring.mColorIndex = 0;
        ring.mCurrentColor = ring.mColors[0];
        ring.mStartingStartTrim = 0.0f;
        ring.mStartingEndTrim = 0.0f;
        ring.mStartingRotation = 0.0f;
        ring.mStartTrim = 0.0f;
        ring.mEndTrim = 0.0f;
        ring.mRotation = 0.0f;
        invalidateSelf();
    }
}
