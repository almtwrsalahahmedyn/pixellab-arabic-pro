package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class FastScroller extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    public int mAnimationState;
    public final AnonymousClass1 mHideRunnable;
    public float mHorizontalDragX;
    public int mHorizontalThumbCenterX;
    public final StateListDrawable mHorizontalThumbDrawable;
    public final int mHorizontalThumbHeight;
    public int mHorizontalThumbWidth;
    public final Drawable mHorizontalTrackDrawable;
    public final int mHorizontalTrackHeight;
    public final int mMargin;
    public final RecyclerView mRecyclerView;
    public final int mScrollbarMinimumRange;
    public final ValueAnimator mShowHideAnimator;
    public float mVerticalDragY;
    public int mVerticalThumbCenterY;
    public final StateListDrawable mVerticalThumbDrawable;
    public int mVerticalThumbHeight;
    public final int mVerticalThumbWidth;
    public final Drawable mVerticalTrackDrawable;
    public final int mVerticalTrackWidth;
    public static final int[] PRESSED_STATE_SET = {R.attr.state_pressed};
    public static final int[] EMPTY_STATE_SET = new int[0];
    public int mRecyclerViewWidth = 0;
    public int mRecyclerViewHeight = 0;
    public boolean mNeedVerticalScrollbar = false;
    public boolean mNeedHorizontalScrollbar = false;
    public int mState = 0;
    public int mDragState = 0;
    public final int[] mVerticalRange = new int[2];
    public final int[] mHorizontalRange = new int[2];

    /* loaded from: classes.dex */
    public final class AnimatorListener extends AnimatorListenerAdapter {
        public boolean mCanceled = false;

        public AnimatorListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.mCanceled) {
                this.mCanceled = false;
                return;
            }
            FastScroller fastScroller = FastScroller.this;
            if (((Float) fastScroller.mShowHideAnimator.getAnimatedValue()).floatValue() == 0.0f) {
                fastScroller.mAnimationState = 0;
                fastScroller.setState(0);
            } else {
                fastScroller.mAnimationState = 2;
                fastScroller.mRecyclerView.invalidate();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class AnimatorUpdater implements ValueAnimator.AnimatorUpdateListener {
        public AnimatorUpdater() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            FastScroller fastScroller = FastScroller.this;
            fastScroller.mVerticalThumbDrawable.setAlpha(floatValue);
            fastScroller.mVerticalTrackDrawable.setAlpha(floatValue);
            fastScroller.mRecyclerView.invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Runnable, androidx.recyclerview.widget.FastScroller$1] */
    public FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mShowHideAnimator = ofFloat;
        this.mAnimationState = 0;
        ?? r3 = new Runnable() { // from class: androidx.recyclerview.widget.FastScroller.1
            @Override // java.lang.Runnable
            public final void run() {
                FastScroller fastScroller = FastScroller.this;
                int i4 = fastScroller.mAnimationState;
                ValueAnimator valueAnimator = fastScroller.mShowHideAnimator;
                if (i4 == 1) {
                    valueAnimator.cancel();
                } else if (i4 != 2) {
                    return;
                }
                fastScroller.mAnimationState = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
            }
        };
        this.mHideRunnable = r3;
        RecyclerView.OnScrollListener onScrollListener = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void onScrolled(RecyclerView recyclerView2) {
                int computeHorizontalScrollOffset = recyclerView2.computeHorizontalScrollOffset();
                int computeVerticalScrollOffset = recyclerView2.computeVerticalScrollOffset();
                FastScroller fastScroller = FastScroller.this;
                int computeVerticalScrollRange = fastScroller.mRecyclerView.computeVerticalScrollRange();
                int i4 = fastScroller.mRecyclerViewHeight;
                int i5 = computeVerticalScrollRange - i4;
                int i6 = fastScroller.mScrollbarMinimumRange;
                fastScroller.mNeedVerticalScrollbar = i5 > 0 && i4 >= i6;
                int computeHorizontalScrollRange = fastScroller.mRecyclerView.computeHorizontalScrollRange();
                int i7 = fastScroller.mRecyclerViewWidth;
                boolean z = computeHorizontalScrollRange - i7 > 0 && i7 >= i6;
                fastScroller.mNeedHorizontalScrollbar = z;
                boolean z2 = fastScroller.mNeedVerticalScrollbar;
                if (!z2 && !z) {
                    if (fastScroller.mState != 0) {
                        fastScroller.setState(0);
                        return;
                    }
                    return;
                }
                if (z2) {
                    float f = i4;
                    fastScroller.mVerticalThumbCenterY = (int) ((((f / 2.0f) + computeVerticalScrollOffset) * f) / computeVerticalScrollRange);
                    fastScroller.mVerticalThumbHeight = Math.min(i4, (i4 * i4) / computeVerticalScrollRange);
                }
                if (fastScroller.mNeedHorizontalScrollbar) {
                    float f2 = computeHorizontalScrollOffset;
                    float f3 = i7;
                    fastScroller.mHorizontalThumbCenterX = (int) ((((f3 / 2.0f) + f2) * f3) / computeHorizontalScrollRange);
                    fastScroller.mHorizontalThumbWidth = Math.min(i7, (i7 * i7) / computeHorizontalScrollRange);
                }
                int i8 = fastScroller.mState;
                if (i8 == 0 || i8 == 1) {
                    fastScroller.setState(1);
                }
            }
        };
        this.mVerticalThumbDrawable = stateListDrawable;
        this.mVerticalTrackDrawable = drawable;
        this.mHorizontalThumbDrawable = stateListDrawable2;
        this.mHorizontalTrackDrawable = drawable2;
        this.mVerticalThumbWidth = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.mVerticalTrackWidth = Math.max(i, drawable.getIntrinsicWidth());
        this.mHorizontalThumbHeight = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.mHorizontalTrackHeight = Math.max(i, drawable2.getIntrinsicWidth());
        this.mScrollbarMinimumRange = i2;
        this.mMargin = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new AnimatorListener());
        ofFloat.addUpdateListener(new AnimatorUpdater());
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView2.mLayout;
            if (layoutManager != null) {
                layoutManager.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
            }
            ArrayList arrayList = recyclerView2.mItemDecorations;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.markItemDecorInsetsDirty();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.mRecyclerView;
            recyclerView3.mOnItemTouchListeners.remove(this);
            if (recyclerView3.mInterceptingOnItemTouchListener == this) {
                recyclerView3.mInterceptingOnItemTouchListener = null;
            }
            ArrayList arrayList2 = this.mRecyclerView.mScrollListeners;
            if (arrayList2 != null) {
                arrayList2.remove(onScrollListener);
            }
            this.mRecyclerView.removeCallbacks(r3);
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            RecyclerView.LayoutManager layoutManager2 = recyclerView.mLayout;
            if (layoutManager2 != null) {
                layoutManager2.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
            }
            ArrayList arrayList3 = recyclerView.mItemDecorations;
            if (arrayList3.isEmpty()) {
                recyclerView.setWillNotDraw(false);
            }
            arrayList3.add(this);
            recyclerView.markItemDecorInsetsDirty();
            recyclerView.requestLayout();
            this.mRecyclerView.mOnItemTouchListeners.add(this);
            RecyclerView recyclerView4 = this.mRecyclerView;
            if (recyclerView4.mScrollListeners == null) {
                recyclerView4.mScrollListeners = new ArrayList();
            }
            recyclerView4.mScrollListeners.add(onScrollListener);
        }
    }

    public final boolean isPointInsideHorizontalThumb(float f, float f2) {
        if (f2 >= this.mRecyclerViewHeight - this.mHorizontalThumbHeight) {
            int i = this.mHorizontalThumbCenterX;
            int i2 = this.mHorizontalThumbWidth / 2;
            if (f >= i - i2 && f <= i + i2) {
                return true;
            }
        }
        return false;
    }

    public final boolean isPointInsideVerticalThumb(float f, float f2) {
        RecyclerView recyclerView = this.mRecyclerView;
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        boolean z = recyclerView.getLayoutDirection() == 1;
        int i = this.mVerticalThumbWidth;
        if (z) {
            if (f > i) {
                return false;
            }
        } else if (f < this.mRecyclerViewWidth - i) {
            return false;
        }
        int i2 = this.mVerticalThumbCenterY;
        int i3 = this.mVerticalThumbHeight / 2;
        return f2 >= ((float) (i2 - i3)) && f2 <= ((float) (i2 + i3));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDrawOver(Canvas canvas) {
        int i;
        if (this.mRecyclerViewWidth != this.mRecyclerView.getWidth() || this.mRecyclerViewHeight != this.mRecyclerView.getHeight()) {
            this.mRecyclerViewWidth = this.mRecyclerView.getWidth();
            this.mRecyclerViewHeight = this.mRecyclerView.getHeight();
            setState(0);
            return;
        }
        if (this.mAnimationState != 0) {
            if (this.mNeedVerticalScrollbar) {
                int i2 = this.mRecyclerViewWidth;
                int i3 = this.mVerticalThumbWidth;
                int i4 = i2 - i3;
                int i5 = this.mVerticalThumbCenterY;
                int i6 = this.mVerticalThumbHeight;
                int i7 = i5 - (i6 / 2);
                StateListDrawable stateListDrawable = this.mVerticalThumbDrawable;
                stateListDrawable.setBounds(0, 0, i3, i6);
                int i8 = this.mRecyclerViewHeight;
                int i9 = this.mVerticalTrackWidth;
                Drawable drawable = this.mVerticalTrackDrawable;
                drawable.setBounds(0, 0, i9, i8);
                RecyclerView recyclerView = this.mRecyclerView;
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                if (recyclerView.getLayoutDirection() == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i3, i7);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    i = -i3;
                } else {
                    canvas.translate(i4, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i7);
                    stateListDrawable.draw(canvas);
                    i = -i4;
                }
                canvas.translate(i, -i7);
            }
            if (this.mNeedHorizontalScrollbar) {
                int i10 = this.mRecyclerViewHeight;
                int i11 = this.mHorizontalThumbHeight;
                int i12 = i10 - i11;
                int i13 = this.mHorizontalThumbCenterX;
                int i14 = this.mHorizontalThumbWidth;
                int i15 = i13 - (i14 / 2);
                StateListDrawable stateListDrawable2 = this.mHorizontalThumbDrawable;
                stateListDrawable2.setBounds(0, 0, i14, i11);
                int i16 = this.mRecyclerViewWidth;
                int i17 = this.mHorizontalTrackHeight;
                Drawable drawable2 = this.mHorizontalTrackDrawable;
                drawable2.setBounds(0, 0, i16, i17);
                canvas.translate(0.0f, i12);
                drawable2.draw(canvas);
                canvas.translate(i15, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i15, -i12);
            }
        }
    }

    public final void resetHideDelay(int i) {
        RecyclerView recyclerView = this.mRecyclerView;
        AnonymousClass1 anonymousClass1 = this.mHideRunnable;
        recyclerView.removeCallbacks(anonymousClass1);
        this.mRecyclerView.postDelayed(anonymousClass1, i);
    }

    public final void setState(int i) {
        int i2;
        StateListDrawable stateListDrawable = this.mVerticalThumbDrawable;
        if (i == 2 && this.mState != 2) {
            stateListDrawable.setState(PRESSED_STATE_SET);
            this.mRecyclerView.removeCallbacks(this.mHideRunnable);
        }
        if (i == 0) {
            this.mRecyclerView.invalidate();
        } else {
            show();
        }
        if (this.mState != 2 || i == 2) {
            i2 = i == 1 ? 1500 : 1200;
            this.mState = i;
        }
        stateListDrawable.setState(EMPTY_STATE_SET);
        resetHideDelay(i2);
        this.mState = i;
    }

    public final void show() {
        int i = this.mAnimationState;
        ValueAnimator valueAnimator = this.mShowHideAnimator;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.mAnimationState = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
