package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class SeekArc extends View {
    private static int INVALID_PROGRESS_VALUE = -1;
    private static final String TAG = "SeekArc";
    private boolean drawMiddle;
    private ScrollView ignoreTouchFor;
    private final int mAngleOffset;
    private Paint mArcPaint;
    private int mArcRadius;
    private RectF mArcRect;
    private int mArcWidth;
    private boolean mClockwise;
    private int mMax;
    private OnSeekArcChangeListener mOnSeekArcChangeListener;
    private int mProgress;
    private Paint mProgressPaint;
    private Boolean mProgressShow;
    private float mProgressSweep;
    private int mProgressWidth;
    private int mRotation;
    private boolean mRoundedEdges;
    private int mStartAngle;
    private int mSweepAngle;
    private Drawable mThumb;
    private int mThumbXPos;
    private int mThumbYPos;
    private double mTouchAngle;
    private float mTouchIgnoreRadius;
    private boolean mTouchInside;
    private int mTranslateX;
    private int mTranslateY;

    /* loaded from: classes.dex */
    public interface OnSeekArcChangeListener {
        void onProgressChanged(SeekArc seekArc, int i, boolean z);

        void onStartTrackingTouch(SeekArc seekArc);

        void onStopTrackingTouch(SeekArc seekArc);
    }

    public SeekArc(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAngleOffset = -90;
        this.mProgressShow = Boolean.TRUE;
        this.mMax = 100;
        this.mProgress = 0;
        this.mProgressWidth = 4;
        this.mArcWidth = 2;
        this.mStartAngle = 0;
        this.mSweepAngle = 360;
        this.mRotation = 0;
        this.mRoundedEdges = false;
        this.mTouchInside = true;
        this.mClockwise = true;
        this.mArcRadius = 0;
        this.mProgressSweep = 0.0f;
        this.mArcRect = new RectF();
        this.drawMiddle = true;
        this.ignoreTouchFor = null;
        init(context, attributeSet, R.attr.seekArcStyle);
    }

    public SeekArc(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAngleOffset = -90;
        this.mProgressShow = Boolean.TRUE;
        this.mMax = 100;
        this.mProgress = 0;
        this.mProgressWidth = 4;
        this.mArcWidth = 2;
        this.mStartAngle = 0;
        this.mSweepAngle = 360;
        this.mRotation = 0;
        this.mRoundedEdges = false;
        this.mTouchInside = true;
        this.mClockwise = true;
        this.mArcRadius = 0;
        this.mProgressSweep = 0.0f;
        this.mArcRect = new RectF();
        this.drawMiddle = true;
        this.ignoreTouchFor = null;
        init(context, attributeSet, i);
    }

    public SeekArc(Context context, Boolean bool) {
        super(context);
        this.mAngleOffset = -90;
        this.mProgressShow = Boolean.TRUE;
        this.mMax = 100;
        this.mProgress = 0;
        this.mProgressWidth = 4;
        this.mArcWidth = 2;
        this.mStartAngle = 0;
        this.mSweepAngle = 360;
        this.mRotation = 0;
        this.mRoundedEdges = false;
        this.mTouchInside = true;
        this.mClockwise = true;
        this.mArcRadius = 0;
        this.mProgressSweep = 0.0f;
        this.mArcRect = new RectF();
        this.drawMiddle = true;
        this.ignoreTouchFor = null;
        this.mProgressShow = bool;
        init(context, null, 0);
    }

    private int getProgressForAngle(double d) {
        int round = (int) Math.round(valuePerDegree() * d);
        if (round < 0) {
            round = INVALID_PROGRESS_VALUE;
        }
        return round > this.mMax ? INVALID_PROGRESS_VALUE : round;
    }

    private double getTouchDegrees(float f, float f2) {
        float f3 = f - this.mTranslateX;
        float f4 = f2 - this.mTranslateY;
        if (!this.mClockwise) {
            f3 = -f3;
        }
        double degrees = Math.toDegrees((Math.atan2(f4, f3) + 1.5707963267948966d) - Math.toRadians(this.mRotation));
        if (degrees < 0.0d) {
            degrees += 360.0d;
        }
        return degrees - this.mStartAngle;
    }

    private boolean ignoreTouch(float f, float f2) {
        float f3 = f - this.mTranslateX;
        float f4 = f2 - this.mTranslateY;
        return ((float) Math.sqrt((double) ((f4 * f4) + (f3 * f3)))) < this.mTouchIgnoreRadius;
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        Resources resources = getResources();
        float f = context.getResources().getDisplayMetrics().density;
        int color = resources.getColor(R.color.progress_gray_dark);
        int color2 = resources.getColor(android.R.color.holo_blue_light);
        this.mThumb = resources.getDrawable(R.drawable.seek_arc_control_selector);
        this.mProgressWidth = (int) (this.mProgressWidth * f);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SeekArc, i, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(11);
            if (drawable != null) {
                this.mThumb = drawable;
            }
            int intrinsicHeight = this.mThumb.getIntrinsicHeight() / 2;
            int intrinsicWidth = this.mThumb.getIntrinsicWidth() / 2;
            this.mThumb.setBounds(-intrinsicWidth, -intrinsicHeight, intrinsicWidth, intrinsicHeight);
            this.mMax = obtainStyledAttributes.getInteger(3, this.mMax);
            this.mProgress = obtainStyledAttributes.getInteger(4, this.mProgress);
            this.mProgressWidth = (int) obtainStyledAttributes.getDimension(6, this.mProgressWidth);
            this.mArcWidth = (int) obtainStyledAttributes.getDimension(1, this.mArcWidth);
            this.mStartAngle = obtainStyledAttributes.getInt(9, this.mStartAngle);
            this.mSweepAngle = obtainStyledAttributes.getInt(10, this.mSweepAngle);
            this.mRotation = obtainStyledAttributes.getInt(7, this.mRotation);
            this.mRoundedEdges = obtainStyledAttributes.getBoolean(8, this.mRoundedEdges);
            this.mTouchInside = obtainStyledAttributes.getBoolean(13, this.mTouchInside);
            this.mClockwise = obtainStyledAttributes.getBoolean(2, this.mClockwise);
            color = obtainStyledAttributes.getColor(0, color);
            color2 = obtainStyledAttributes.getColor(5, color2);
            obtainStyledAttributes.recycle();
        }
        int i2 = this.mProgress;
        int i3 = this.mMax;
        if (i2 > i3) {
            i2 = i3;
        }
        this.mProgress = i2;
        if (i2 < 0) {
            i2 = 0;
        }
        this.mProgress = i2;
        int i4 = this.mSweepAngle;
        if (i4 > 360) {
            i4 = 360;
        }
        this.mSweepAngle = i4;
        if (i4 < 0) {
            i4 = 0;
        }
        this.mSweepAngle = i4;
        int i5 = this.mStartAngle;
        if (i5 > 360) {
            i5 = 0;
        }
        this.mStartAngle = i5;
        this.mStartAngle = i5 >= 0 ? i5 : 0;
        Paint paint = new Paint();
        this.mArcPaint = paint;
        paint.setColor(color);
        this.mArcPaint.setAntiAlias(true);
        Paint paint2 = this.mArcPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.mArcPaint.setStrokeWidth(this.mArcWidth);
        Paint paint3 = new Paint();
        this.mProgressPaint = paint3;
        paint3.setColor(color2);
        this.mProgressPaint.setAntiAlias(true);
        this.mProgressPaint.setStyle(style);
        this.mProgressPaint.setStrokeWidth(this.mProgressWidth);
        if (this.mRoundedEdges) {
            Paint paint4 = this.mArcPaint;
            Paint.Cap cap = Paint.Cap.ROUND;
            paint4.setStrokeCap(cap);
            this.mProgressPaint.setStrokeCap(cap);
        }
    }

    private void onProgressRefresh(int i, boolean z) {
        updateProgress(i, z);
    }

    private void onStartTrackingTouch() {
        OnSeekArcChangeListener onSeekArcChangeListener = this.mOnSeekArcChangeListener;
        if (onSeekArcChangeListener != null) {
            onSeekArcChangeListener.onStartTrackingTouch(this);
        }
    }

    private void onStopTrackingTouch() {
        OnSeekArcChangeListener onSeekArcChangeListener = this.mOnSeekArcChangeListener;
        if (onSeekArcChangeListener != null) {
            onSeekArcChangeListener.onStopTrackingTouch(this);
        }
    }

    private void updateOnTouch(MotionEvent motionEvent) {
        if (ignoreTouch(motionEvent.getX(), motionEvent.getY())) {
            return;
        }
        setPressed(true);
        double touchDegrees = getTouchDegrees(motionEvent.getX(), motionEvent.getY());
        this.mTouchAngle = touchDegrees;
        onProgressRefresh(getProgressForAngle(touchDegrees), true);
    }

    private void updateProgress(int i, boolean z) {
        if (i == INVALID_PROGRESS_VALUE) {
            return;
        }
        OnSeekArcChangeListener onSeekArcChangeListener = this.mOnSeekArcChangeListener;
        if (onSeekArcChangeListener != null) {
            onSeekArcChangeListener.onProgressChanged(this, i, z);
        }
        int i2 = this.mMax;
        if (i > i2) {
            i = i2;
        }
        if (this.mProgress < 0) {
            i = 0;
        }
        this.mProgress = i;
        this.mProgressSweep = (i / i2) * this.mSweepAngle;
        updateThumbPosition();
        invalidate();
    }

    private void updateThumbPosition() {
        double d = (int) (this.mStartAngle + this.mProgressSweep + this.mRotation + 90.0f);
        this.mThumbXPos = (int) (Math.cos(Math.toRadians(d)) * this.mArcRadius);
        this.mThumbYPos = (int) (Math.sin(Math.toRadians(d)) * this.mArcRadius);
    }

    private float valuePerDegree() {
        return this.mMax / this.mSweepAngle;
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mThumb;
        if (drawable != null && drawable.isStateful()) {
            this.mThumb.setState(getDrawableState());
        }
        invalidate();
    }

    public int getArcRotation() {
        return this.mRotation;
    }

    public int getArcWidth() {
        return this.mArcWidth;
    }

    public int getProgressWidth() {
        return this.mProgressWidth;
    }

    public int getStartAngle() {
        return this.mStartAngle;
    }

    public int getSweepAngle() {
        return this.mSweepAngle;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.drawMiddle) {
            Paint paint = new Paint(1);
            paint.setDither(true);
            paint.setColor(getResources().getColor(R.color.progress_gray_dark));
            paint.setTextSize(dpToPixels(20));
            canvas.drawText("" + this.mProgress, this.mArcRect.centerX() - (paint.measureText("" + this.mProgress) / 2.0f), (Math.abs(paint.getFontMetrics().ascent) / 2.0f) + this.mArcRect.centerY(), paint);
        }
        if (!this.mClockwise) {
            canvas.scale(-1.0f, 1.0f, this.mArcRect.centerX(), this.mArcRect.centerY());
        }
        float f = (this.mStartAngle - 90) + this.mRotation;
        canvas.drawArc(this.mArcRect, f, this.mSweepAngle, false, this.mArcPaint);
        if (this.mProgressShow.booleanValue()) {
            canvas.drawArc(this.mArcRect, f, this.mProgressSweep, false, this.mProgressPaint);
        }
        canvas.translate(this.mTranslateX - this.mThumbXPos, this.mTranslateY - this.mThumbYPos);
        this.mThumb.draw(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int defaultSize = View.getDefaultSize(getSuggestedMinimumHeight(), i2);
        int defaultSize2 = View.getDefaultSize(getSuggestedMinimumWidth(), i);
        int min = Math.min(defaultSize2, defaultSize);
        this.mTranslateX = (int) (defaultSize2 * 0.5f);
        this.mTranslateY = (int) (defaultSize * 0.5f);
        int paddingLeft = min - getPaddingLeft();
        int i3 = paddingLeft / 2;
        this.mArcRadius = i3;
        float f = (defaultSize / 2) - i3;
        float f2 = (defaultSize2 / 2) - i3;
        float f3 = paddingLeft;
        this.mArcRect.set(f2, f, f2 + f3, f3 + f);
        double d = ((int) this.mProgressSweep) + this.mStartAngle + this.mRotation + 90;
        this.mThumbXPos = (int) (Math.cos(Math.toRadians(d)) * this.mArcRadius);
        this.mThumbYPos = (int) (Math.sin(Math.toRadians(d)) * this.mArcRadius);
        setTouchInSide(this.mTouchInside);
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r0 != 3) goto L18;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getAction()
            r1 = 1
            if (r0 == 0) goto L1c
            r2 = 0
            if (r0 == r1) goto L15
            r3 = 2
            if (r0 == r3) goto L11
            r5 = 3
            if (r0 == r5) goto L15
            goto L37
        L11:
            r4.updateOnTouch(r5)
            goto L37
        L15:
            r4.onStopTrackingTouch()
            r4.setPressed(r2)
            goto L37
        L1c:
            r4.onStartTrackingTouch()
            r4.updateOnTouch(r5)
            float r0 = r5.getX()
            float r5 = r5.getY()
            boolean r5 = r4.ignoreTouch(r0, r5)
            if (r5 != 0) goto L37
            android.widget.ScrollView r5 = r4.ignoreTouchFor
            if (r5 == 0) goto L37
            r5.requestDisallowInterceptTouchEvent(r1)
        L37:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setArcRotation(int i) {
        this.mRotation = i;
        updateThumbPosition();
    }

    public void setArcWidth(int i) {
        this.mArcWidth = i;
        this.mArcPaint.setStrokeWidth(i);
    }

    public void setClockwise(boolean z) {
        this.mClockwise = z;
    }

    public void setIgnoreTouchFor(ScrollView scrollView) {
        this.ignoreTouchFor = scrollView;
    }

    public void setOnSeekArcChangeListener(OnSeekArcChangeListener onSeekArcChangeListener) {
        this.mOnSeekArcChangeListener = onSeekArcChangeListener;
    }

    public void setProgress(int i) {
        updateProgress(i, false);
    }

    public void setProgressWidth(int i) {
        this.mProgressWidth = i;
        this.mProgressPaint.setStrokeWidth(i);
    }

    public void setRoundedEdges(boolean z) {
        Paint paint;
        Paint.Cap cap;
        this.mRoundedEdges = z;
        if (z) {
            paint = this.mArcPaint;
            cap = Paint.Cap.ROUND;
        } else {
            paint = this.mArcPaint;
            cap = Paint.Cap.SQUARE;
        }
        paint.setStrokeCap(cap);
        this.mProgressPaint.setStrokeCap(cap);
    }

    public void setStartAngle(int i) {
        this.mStartAngle = i;
        updateThumbPosition();
    }

    public void setSweepAngle(int i) {
        this.mSweepAngle = i;
        updateThumbPosition();
    }

    public void setTouchInSide(boolean z) {
        int intrinsicHeight = this.mThumb.getIntrinsicHeight() / 2;
        int intrinsicWidth = this.mThumb.getIntrinsicWidth() / 2;
        this.mTouchInside = z;
        this.mTouchIgnoreRadius = z ? this.mArcRadius / 4.0f : this.mArcRadius - Math.min(intrinsicWidth, intrinsicHeight);
    }

    public void setmProgressShow(Boolean bool) {
        this.mProgressShow = bool;
    }
}
