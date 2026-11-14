package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.ImageView;
import android.widget.ListView;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.swiperefreshlayout.widget.CircularProgressDrawable;

/* loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup {
    public static final int[] LAYOUT_ATTRS = {R.attr.enabled};
    public int mActivePointerId;
    public AnonymousClass4 mAlphaMaxAnimation;
    public AnonymousClass4 mAlphaStartAnimation;
    public final AnonymousClass6 mAnimateToCorrectPosition;
    public final AnonymousClass7 mAnimateToStartPosition;
    public final int mCircleDiameter;
    public final CircleImageView mCircleView;
    public int mCircleViewIndex;
    public int mCurrentTargetOffsetTop;
    public final DecelerateInterpolator mDecelerateInterpolator;
    public int mFrom;
    public float mInitialDownY;
    public float mInitialMotionY;
    public boolean mIsBeingDragged;
    public boolean mNestedScrollInProgress;
    public final NestedScrollingChildHelper mNestedScrollingChildHelper;
    public final NestedScrollingParentHelper mNestedScrollingParentHelper;
    public boolean mNotify;
    public final int mOriginalOffsetTop;
    public final int[] mParentOffsetInWindow;
    public final int[] mParentScrollConsumed;
    public final CircularProgressDrawable mProgress;
    public final AnonymousClass1 mRefreshListener;
    public boolean mRefreshing;
    public AnonymousClass3 mScaleDownAnimation;
    public final int mSpinnerOffsetEnd;
    public View mTarget;
    public final float mTotalDragDistance;
    public float mTotalUnconsumed;
    public final int mTouchSlop;

    /* JADX WARN: Type inference failed for: r1v17, types: [androidx.core.view.NestedScrollingParentHelper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.swiperefreshlayout.widget.SwipeRefreshLayout$1] */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.swiperefreshlayout.widget.SwipeRefreshLayout$6] */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.swiperefreshlayout.widget.SwipeRefreshLayout$7] */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.swiperefreshlayout.widget.CircleImageView, android.widget.ImageView, android.view.View] */
    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRefreshing = false;
        this.mTotalDragDistance = -1.0f;
        this.mParentScrollConsumed = new int[2];
        this.mParentOffsetInWindow = new int[2];
        this.mActivePointerId = -1;
        this.mCircleViewIndex = -1;
        this.mRefreshListener = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                if (!swipeRefreshLayout.mRefreshing) {
                    swipeRefreshLayout.reset();
                    return;
                }
                swipeRefreshLayout.mProgress.setAlpha(255);
                swipeRefreshLayout.mProgress.start();
                if (swipeRefreshLayout.mNotify) {
                    swipeRefreshLayout.getClass();
                }
                swipeRefreshLayout.mCurrentTargetOffsetTop = swipeRefreshLayout.mCircleView.getTop();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        };
        this.mAnimateToCorrectPosition = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                swipeRefreshLayout.getClass();
                int abs = swipeRefreshLayout.mSpinnerOffsetEnd - Math.abs(swipeRefreshLayout.mOriginalOffsetTop);
                swipeRefreshLayout.setTargetOffsetTopAndBottom((swipeRefreshLayout.mFrom + ((int) ((abs - r1) * f))) - swipeRefreshLayout.mCircleView.getTop());
                CircularProgressDrawable circularProgressDrawable = swipeRefreshLayout.mProgress;
                float f2 = 1.0f - f;
                CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
                if (f2 != ring.mArrowScale) {
                    ring.mArrowScale = f2;
                }
                circularProgressDrawable.invalidateSelf();
            }
        };
        this.mAnimateToStartPosition = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.moveToStart(f);
            }
        };
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.mDecelerateInterpolator = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i = (int) (displayMetrics.density * 40.0f);
        this.mCircleDiameter = i;
        ?? imageView = new ImageView(getContext());
        float f = imageView.getContext().getResources().getDisplayMetrics().density;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        imageView.setElevation(f * 4.0f);
        shapeDrawable.getPaint().setColor(-328966);
        imageView.setBackground(shapeDrawable);
        this.mCircleView = imageView;
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(getContext());
        this.mProgress = circularProgressDrawable;
        float f2 = circularProgressDrawable.mResources.getDisplayMetrics().density;
        float f3 = 2.5f * f2;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
        ring.mStrokeWidth = f3;
        ring.mPaint.setStrokeWidth(f3);
        ring.mRingCenterRadius = 7.5f * f2;
        ring.mColorIndex = 0;
        ring.mCurrentColor = ring.mColors[0];
        ring.mArrowWidth = (int) (10.0f * f2);
        ring.mArrowHeight = (int) (f2 * 5.0f);
        circularProgressDrawable.invalidateSelf();
        this.mCircleView.setImageDrawable(this.mProgress);
        this.mCircleView.setVisibility(8);
        addView(this.mCircleView);
        setChildrenDrawingOrderEnabled(true);
        int i2 = (int) (displayMetrics.density * 64.0f);
        this.mSpinnerOffsetEnd = i2;
        this.mTotalDragDistance = i2;
        this.mNestedScrollingParentHelper = new Object();
        this.mNestedScrollingChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i3 = -i;
        this.mCurrentTargetOffsetTop = i3;
        this.mOriginalOffsetTop = i3;
        moveToStart(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    public final boolean canChildScrollUp() {
        View view = this.mTarget;
        return view instanceof ListView ? ((ListView) view).canScrollList(-1) : view.canScrollVertically(-1);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mNestedScrollingChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.mNestedScrollingChildHelper.dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mNestedScrollingChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mNestedScrollingChildHelper.dispatchNestedScrollInternal(i, i2, i3, i4, iArr, 0, null);
    }

    public final void ensureTarget() {
        if (this.mTarget == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.mCircleView)) {
                    this.mTarget = childAt;
                    return;
                }
            }
        }
    }

    public final void finishSpinner(float f) {
        float f2 = this.mTotalDragDistance;
        DecelerateInterpolator decelerateInterpolator = this.mDecelerateInterpolator;
        if (f > f2) {
            if (!this.mRefreshing) {
                this.mNotify = true;
                ensureTarget();
                this.mRefreshing = true;
                this.mFrom = this.mCurrentTargetOffsetTop;
                AnonymousClass6 anonymousClass6 = this.mAnimateToCorrectPosition;
                anonymousClass6.reset();
                anonymousClass6.setDuration(200L);
                anonymousClass6.setInterpolator(decelerateInterpolator);
                AnonymousClass1 anonymousClass1 = this.mRefreshListener;
                if (anonymousClass1 != null) {
                    this.mCircleView.mListener = anonymousClass1;
                }
                this.mCircleView.clearAnimation();
                this.mCircleView.startAnimation(anonymousClass6);
                return;
            }
            return;
        }
        this.mRefreshing = false;
        CircularProgressDrawable circularProgressDrawable = this.mProgress;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
        ring.mStartTrim = 0.0f;
        ring.mEndTrim = 0.0f;
        circularProgressDrawable.invalidateSelf();
        Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.5
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.swiperefreshlayout.widget.SwipeRefreshLayout$3, android.view.animation.Animation] */
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                final SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                swipeRefreshLayout.getClass();
                ?? r0 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.3
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f3, Transformation transformation) {
                        float f4 = 1.0f - f3;
                        SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                        swipeRefreshLayout2.mCircleView.setScaleX(f4);
                        swipeRefreshLayout2.mCircleView.setScaleY(f4);
                    }
                };
                swipeRefreshLayout.mScaleDownAnimation = r0;
                r0.setDuration(150L);
                CircleImageView circleImageView = swipeRefreshLayout.mCircleView;
                circleImageView.mListener = null;
                circleImageView.clearAnimation();
                swipeRefreshLayout.mCircleView.startAnimation(swipeRefreshLayout.mScaleDownAnimation);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        };
        this.mFrom = this.mCurrentTargetOffsetTop;
        AnonymousClass7 anonymousClass7 = this.mAnimateToStartPosition;
        anonymousClass7.reset();
        anonymousClass7.setDuration(200L);
        anonymousClass7.setInterpolator(decelerateInterpolator);
        CircleImageView circleImageView = this.mCircleView;
        circleImageView.mListener = animationListener;
        circleImageView.clearAnimation();
        this.mCircleView.startAnimation(anonymousClass7);
        CircularProgressDrawable circularProgressDrawable2 = this.mProgress;
        CircularProgressDrawable.Ring ring2 = circularProgressDrawable2.mRing;
        if (ring2.mShowArrow) {
            ring2.mShowArrow = false;
        }
        circularProgressDrawable2.invalidateSelf();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        int i3 = this.mCircleViewIndex;
        return i3 < 0 ? i2 : i2 == i + (-1) ? i3 : i2 >= i3 ? i2 + 1 : i2;
    }

    @Override // android.view.ViewGroup
    public final int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.mNestedScrollingParentHelper;
        return nestedScrollingParentHelper.mNestedScrollAxesNonTouch | nestedScrollingParentHelper.mNestedScrollAxesTouch;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.mNestedScrollingChildHelper.getNestedScrollingParentForType(0) != null;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.mNestedScrollingChildHelper.mIsNestedScrollingEnabled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.swiperefreshlayout.widget.SwipeRefreshLayout$4, android.view.animation.Animation] */
    /* JADX WARN: Type inference failed for: r3v6, types: [androidx.swiperefreshlayout.widget.SwipeRefreshLayout$4, android.view.animation.Animation] */
    public final void moveSpinner(float f) {
        CircularProgressDrawable circularProgressDrawable = this.mProgress;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.mRing;
        if (!ring.mShowArrow) {
            ring.mShowArrow = true;
        }
        circularProgressDrawable.invalidateSelf();
        float f2 = this.mTotalDragDistance;
        float min = Math.min(1.0f, Math.abs(f / f2));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f) - f2;
        float f3 = this.mSpinnerOffsetEnd;
        double max2 = Math.max(0.0f, Math.min(abs, f3 * 2.0f) / f3) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i = this.mOriginalOffsetTop + ((int) ((f3 * min) + (f3 * pow * 2.0f)));
        if (this.mCircleView.getVisibility() != 0) {
            this.mCircleView.setVisibility(0);
        }
        this.mCircleView.setScaleX(1.0f);
        this.mCircleView.setScaleY(1.0f);
        if (f < f2) {
            final int i2 = 76;
            if (this.mProgress.mRing.mAlpha > 76) {
                AnonymousClass4 anonymousClass4 = this.mAlphaStartAnimation;
                if (!((anonymousClass4 == null || !anonymousClass4.hasStarted() || anonymousClass4.hasEnded()) ? false : true)) {
                    final int i3 = this.mProgress.mRing.mAlpha;
                    ?? r3 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
                        @Override // android.view.animation.Animation
                        public final void applyTransformation(float f4, Transformation transformation) {
                            SwipeRefreshLayout.this.mProgress.setAlpha((int) (((i2 - r0) * f4) + i3));
                        }
                    };
                    r3.setDuration(300L);
                    CircleImageView circleImageView = this.mCircleView;
                    circleImageView.mListener = null;
                    circleImageView.clearAnimation();
                    this.mCircleView.startAnimation(r3);
                    this.mAlphaStartAnimation = r3;
                }
            }
        } else {
            final int i4 = 255;
            if (this.mProgress.mRing.mAlpha < 255) {
                AnonymousClass4 anonymousClass42 = this.mAlphaMaxAnimation;
                if (!((anonymousClass42 == null || !anonymousClass42.hasStarted() || anonymousClass42.hasEnded()) ? false : true)) {
                    final int i5 = this.mProgress.mRing.mAlpha;
                    ?? r32 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
                        @Override // android.view.animation.Animation
                        public final void applyTransformation(float f4, Transformation transformation) {
                            SwipeRefreshLayout.this.mProgress.setAlpha((int) (((i4 - r0) * f4) + i5));
                        }
                    };
                    r32.setDuration(300L);
                    CircleImageView circleImageView2 = this.mCircleView;
                    circleImageView2.mListener = null;
                    circleImageView2.clearAnimation();
                    this.mCircleView.startAnimation(r32);
                    this.mAlphaMaxAnimation = r32;
                }
            }
        }
        CircularProgressDrawable circularProgressDrawable2 = this.mProgress;
        float min2 = Math.min(0.8f, max * 0.8f);
        CircularProgressDrawable.Ring ring2 = circularProgressDrawable2.mRing;
        ring2.mStartTrim = 0.0f;
        ring2.mEndTrim = min2;
        circularProgressDrawable2.invalidateSelf();
        CircularProgressDrawable circularProgressDrawable3 = this.mProgress;
        float min3 = Math.min(1.0f, max);
        CircularProgressDrawable.Ring ring3 = circularProgressDrawable3.mRing;
        if (min3 != ring3.mArrowScale) {
            ring3.mArrowScale = min3;
        }
        circularProgressDrawable3.invalidateSelf();
        CircularProgressDrawable circularProgressDrawable4 = this.mProgress;
        circularProgressDrawable4.mRing.mRotation = ((pow * 2.0f) + ((max * 0.4f) - 0.25f)) * 0.5f;
        circularProgressDrawable4.invalidateSelf();
        setTargetOffsetTopAndBottom(i - this.mCurrentTargetOffsetTop);
    }

    public final void moveToStart(float f) {
        setTargetOffsetTopAndBottom((this.mFrom + ((int) ((this.mOriginalOffsetTop - r0) * f))) - this.mCircleView.getTop());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        reset();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        ensureTarget();
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || canChildScrollUp() || this.mRefreshing || this.mNestedScrollInProgress) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.mActivePointerId;
                    if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) < 0) {
                        return false;
                    }
                    float y = motionEvent.getY(findPointerIndex);
                    float f = this.mInitialDownY;
                    float f2 = y - f;
                    float f3 = this.mTouchSlop;
                    if (f2 > f3 && !this.mIsBeingDragged) {
                        this.mInitialMotionY = f + f3;
                        this.mIsBeingDragged = true;
                        this.mProgress.setAlpha(76);
                    }
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                            this.mActivePointerId = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        }
                    }
                }
            }
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
        } else {
            setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.mCircleView.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.mActivePointerId = pointerId;
            this.mIsBeingDragged = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.mInitialDownY = motionEvent.getY(findPointerIndex2);
        }
        return this.mIsBeingDragged;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.mTarget == null) {
            ensureTarget();
        }
        View view = this.mTarget;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.mCircleView.getMeasuredWidth();
        int measuredHeight2 = this.mCircleView.getMeasuredHeight();
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.mCurrentTargetOffsetTop;
        this.mCircleView.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mTarget == null) {
            ensureTarget();
        }
        View view = this.mTarget;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        CircleImageView circleImageView = this.mCircleView;
        int i3 = this.mCircleDiameter;
        circleImageView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        this.mCircleViewIndex = -1;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if (getChildAt(i4) == this.mCircleView) {
                this.mCircleViewIndex = i4;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.mTotalUnconsumed;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.mTotalUnconsumed = 0.0f;
                } else {
                    this.mTotalUnconsumed = f - f2;
                    iArr[1] = i2;
                }
                moveSpinner(this.mTotalUnconsumed);
            }
        }
        int i3 = i - iArr[0];
        int i4 = i2 - iArr[1];
        int[] iArr2 = this.mParentScrollConsumed;
        if (dispatchNestedPreScroll(i3, i4, iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.mParentOffsetInWindow);
        if (i4 + this.mParentOffsetInWindow[1] >= 0 || canChildScrollUp()) {
            return;
        }
        float abs = this.mTotalUnconsumed + Math.abs(r11);
        this.mTotalUnconsumed = abs;
        moveSpinner(abs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        this.mNestedScrollingParentHelper.mNestedScrollAxesTouch = i;
        startNestedScroll(i & 2);
        this.mTotalUnconsumed = 0.0f;
        this.mNestedScrollInProgress = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return (!isEnabled() || this.mRefreshing || (i & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        this.mNestedScrollingParentHelper.mNestedScrollAxesTouch = 0;
        this.mNestedScrollInProgress = false;
        float f = this.mTotalUnconsumed;
        if (f > 0.0f) {
            finishSpinner(f);
            this.mTotalUnconsumed = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || canChildScrollUp() || this.mRefreshing || this.mNestedScrollInProgress) {
            return false;
        }
        if (actionMasked == 0) {
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mIsBeingDragged = false;
        } else {
            if (actionMasked == 1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (findPointerIndex < 0) {
                    return false;
                }
                if (this.mIsBeingDragged) {
                    float y = (motionEvent.getY(findPointerIndex) - this.mInitialMotionY) * 0.5f;
                    this.mIsBeingDragged = false;
                    finishSpinner(y);
                }
                this.mActivePointerId = -1;
                return false;
            }
            if (actionMasked == 2) {
                int findPointerIndex2 = motionEvent.findPointerIndex(this.mActivePointerId);
                if (findPointerIndex2 < 0) {
                    return false;
                }
                float y2 = motionEvent.getY(findPointerIndex2);
                float f = this.mInitialDownY;
                float f2 = y2 - f;
                float f3 = this.mTouchSlop;
                if (f2 > f3 && !this.mIsBeingDragged) {
                    this.mInitialMotionY = f + f3;
                    this.mIsBeingDragged = true;
                    this.mProgress.setAlpha(76);
                }
                if (this.mIsBeingDragged) {
                    float f4 = (y2 - this.mInitialMotionY) * 0.5f;
                    if (f4 <= 0.0f) {
                        return false;
                    }
                    moveSpinner(f4);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        return false;
                    }
                    this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    int actionIndex2 = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex2) == this.mActivePointerId) {
                        this.mActivePointerId = motionEvent.getPointerId(actionIndex2 == 0 ? 1 : 0);
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        View view = this.mTarget;
        if (view != null) {
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            if (!view.isNestedScrollingEnabled()) {
                return;
            }
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public final void reset() {
        this.mCircleView.clearAnimation();
        this.mProgress.stop();
        this.mCircleView.setVisibility(8);
        this.mCircleView.getBackground().setAlpha(255);
        this.mProgress.setAlpha(255);
        setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.mCurrentTargetOffsetTop);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        reset();
    }

    @Override // android.view.View
    public final void setNestedScrollingEnabled(boolean z) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.mNestedScrollingChildHelper;
        if (nestedScrollingChildHelper.mIsNestedScrollingEnabled) {
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            nestedScrollingChildHelper.mView.stopNestedScroll();
        }
        nestedScrollingChildHelper.mIsNestedScrollingEnabled = z;
    }

    public final void setTargetOffsetTopAndBottom(int i) {
        this.mCircleView.bringToFront();
        ViewCompat.offsetTopAndBottom(this.mCircleView, i);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return this.mNestedScrollingChildHelper.startNestedScroll(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        this.mNestedScrollingChildHelper.stopNestedScroll(0);
    }
}
