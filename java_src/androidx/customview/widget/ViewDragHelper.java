package androidx.customview.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.ViewCompat;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class ViewDragHelper {
    public static final AnonymousClass1 sInterpolator = new Interpolator() { // from class: androidx.customview.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };
    public final Callback mCallback;
    public View mCapturedView;
    public int mDragState;
    public int[] mEdgeDragsInProgress;
    public int[] mEdgeDragsLocked;
    public final int mEdgeSize;
    public int[] mInitialEdgesTouched;
    public float[] mInitialMotionX;
    public float[] mInitialMotionY;
    public float[] mLastMotionX;
    public float[] mLastMotionY;
    public final float mMaxVelocity;
    public float mMinVelocity;
    public final ViewGroup mParentView;
    public int mPointersDown;
    public boolean mReleaseInProgress;
    public final OverScroller mScroller;
    public int mTouchSlop;
    public int mTrackingEdges;
    public VelocityTracker mVelocityTracker;
    public int mActivePointerId = -1;
    public final AnonymousClass2 mSetIdleRunnable = new Runnable() { // from class: androidx.customview.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public final void run() {
            ViewDragHelper.this.setDragState(0);
        }
    };

    /* loaded from: classes.dex */
    public abstract class Callback {
        public int clampViewPositionHorizontal(View view, int i) {
            return 0;
        }

        public int clampViewPositionVertical(View view) {
            return 0;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public void onEdgeTouched() {
        }

        public void onViewCaptured(View view) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i) {
        }

        public void onViewReleased(View view, float f) {
        }

        public abstract boolean tryCaptureView(View view);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.customview.widget.ViewDragHelper$2] */
    public ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        this.mParentView = viewGroup;
        this.mCallback = callback;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mEdgeSize = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaxVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mMinVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mScroller = new OverScroller(context, sInterpolator);
    }

    public static ViewDragHelper create(ViewGroup viewGroup, float f, Callback callback) {
        ViewDragHelper viewDragHelper = new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
        viewDragHelper.mTouchSlop = (int) ((1.0f / f) * viewDragHelper.mTouchSlop);
        return viewDragHelper;
    }

    public static boolean isViewUnder(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public final void abort() {
        cancel();
        if (this.mDragState == 2) {
            OverScroller overScroller = this.mScroller;
            overScroller.getCurrX();
            overScroller.getCurrY();
            overScroller.abortAnimation();
            int currX = overScroller.getCurrX();
            overScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX);
        }
        setDragState(0);
    }

    public final void cancel() {
        this.mActivePointerId = -1;
        float[] fArr = this.mInitialMotionX;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.mInitialMotionY, 0.0f);
            Arrays.fill(this.mLastMotionX, 0.0f);
            Arrays.fill(this.mLastMotionY, 0.0f);
            Arrays.fill(this.mInitialEdgesTouched, 0);
            Arrays.fill(this.mEdgeDragsInProgress, 0);
            Arrays.fill(this.mEdgeDragsLocked, 0);
            this.mPointersDown = 0;
        }
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public final void captureChildView(View view, int i) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.mParentView;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.mCapturedView = view;
        this.mActivePointerId = i;
        this.mCallback.onViewCaptured(view);
        setDragState(1);
    }

    public final boolean checkNewEdgeDrag(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.mInitialEdgesTouched[i] & i2) == i2 && (this.mTrackingEdges & i2) != 0 && (this.mEdgeDragsLocked[i] & i2) != i2 && (this.mEdgeDragsInProgress[i] & i2) != i2) {
            float f3 = this.mTouchSlop;
            if (abs > f3 || abs2 > f3) {
                if (abs < abs2 * 0.5f) {
                    this.mCallback.getClass();
                }
                if ((this.mEdgeDragsInProgress[i] & i2) == 0 && abs > this.mTouchSlop) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean checkTouchSlop(View view, float f) {
        if (view == null) {
            return false;
        }
        return (this.mCallback.getViewHorizontalDragRange(view) > 0) && Math.abs(f) > ((float) this.mTouchSlop);
    }

    public final void clearMotionHistory(int i) {
        float[] fArr = this.mInitialMotionX;
        if (fArr != null) {
            int i2 = this.mPointersDown;
            int i3 = 1 << i;
            if ((i3 & i2) != 0) {
                fArr[i] = 0.0f;
                this.mInitialMotionY[i] = 0.0f;
                this.mLastMotionX[i] = 0.0f;
                this.mLastMotionY[i] = 0.0f;
                this.mInitialEdgesTouched[i] = 0;
                this.mEdgeDragsInProgress[i] = 0;
                this.mEdgeDragsLocked[i] = 0;
                this.mPointersDown = (~i3) & i2;
            }
        }
    }

    public final int computeAxisDuration(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        float width = this.mParentView.getWidth() / 2;
        float sin = (((float) Math.sin((Math.min(1.0f, Math.abs(i) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(sin / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    public final boolean continueSettling() {
        if (this.mDragState == 2) {
            OverScroller overScroller = this.mScroller;
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.mCapturedView, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.mCapturedView, top);
            }
            if (left != 0 || top != 0) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX);
            }
            if (computeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                this.mParentView.post(this.mSetIdleRunnable);
            }
        }
        return this.mDragState == 2;
    }

    public final View findTopChildUnder(int i, int i2) {
        ViewGroup viewGroup = this.mParentView;
        int childCount = viewGroup.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return null;
            }
            this.mCallback.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
    }

    public final boolean forceSettleCapturedViewAt(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        OverScroller overScroller = this.mScroller;
        if (i5 == 0 && i6 == 0) {
            overScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        View view = this.mCapturedView;
        int i7 = (int) this.mMinVelocity;
        int i8 = (int) this.mMaxVelocity;
        int abs = Math.abs(i3);
        if (abs < i7) {
            i3 = 0;
        } else if (abs > i8) {
            i3 = i3 > 0 ? i8 : -i8;
        }
        int i9 = (int) this.mMinVelocity;
        int abs2 = Math.abs(i4);
        if (abs2 < i9) {
            i4 = 0;
        } else if (abs2 > i8) {
            i4 = i4 > 0 ? i8 : -i8;
        }
        int abs3 = Math.abs(i5);
        int abs4 = Math.abs(i6);
        int abs5 = Math.abs(i3);
        int abs6 = Math.abs(i4);
        int i10 = abs5 + abs6;
        int i11 = abs3 + abs4;
        if (i3 != 0) {
            f = abs5;
            f2 = i10;
        } else {
            f = abs3;
            f2 = i11;
        }
        float f5 = f / f2;
        if (i4 != 0) {
            f3 = abs6;
            f4 = i10;
        } else {
            f3 = abs4;
            f4 = i11;
        }
        overScroller.startScroll(left, top, i5, i6, (int) ((computeAxisDuration(i6, i4, 0) * (f3 / f4)) + (computeAxisDuration(i5, i3, this.mCallback.getViewHorizontalDragRange(view)) * f5)));
        setDragState(2);
        return true;
    }

    public final void processTouchEvent(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        Callback callback = this.mCallback;
        int i2 = 0;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.mDragState == 1) {
                        if (((1 << this.mActivePointerId) & this.mPointersDown) != 0) {
                            i2 = 1;
                        }
                        if (i2 == 0) {
                            return;
                        }
                        int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                        float x = motionEvent.getX(findPointerIndex);
                        float y = motionEvent.getY(findPointerIndex);
                        float[] fArr = this.mLastMotionX;
                        int i3 = this.mActivePointerId;
                        int i4 = (int) (x - fArr[i3]);
                        int i5 = (int) (y - this.mLastMotionY[i3]);
                        int left = this.mCapturedView.getLeft() + i4;
                        this.mCapturedView.getTop();
                        int left2 = this.mCapturedView.getLeft();
                        int top = this.mCapturedView.getTop();
                        if (i4 != 0) {
                            left = callback.clampViewPositionHorizontal(this.mCapturedView, left);
                            ViewCompat.offsetLeftAndRight(this.mCapturedView, left - left2);
                        }
                        if (i5 != 0) {
                            ViewCompat.offsetTopAndBottom(this.mCapturedView, callback.clampViewPositionVertical(this.mCapturedView) - top);
                        }
                        if (i4 != 0 || i5 != 0) {
                            callback.onViewPositionChanged(this.mCapturedView, left);
                        }
                    } else {
                        int pointerCount = motionEvent.getPointerCount();
                        for (int i6 = 0; i6 < pointerCount; i6++) {
                            int pointerId = motionEvent.getPointerId(i6);
                            if ((this.mPointersDown & (1 << pointerId)) != 0) {
                                float x2 = motionEvent.getX(i6);
                                float y2 = motionEvent.getY(i6);
                                float f = x2 - this.mInitialMotionX[pointerId];
                                reportNewEdgeDrags(f, y2 - this.mInitialMotionY[pointerId], pointerId);
                                if (this.mDragState == 1) {
                                    break;
                                }
                                View findTopChildUnder = findTopChildUnder((int) x2, (int) y2);
                                if (checkTouchSlop(findTopChildUnder, f) && tryCaptureViewForDrag(findTopChildUnder, pointerId)) {
                                    break;
                                }
                            }
                        }
                    }
                    saveLastMotion(motionEvent);
                    return;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 5) {
                        if (actionMasked != 6) {
                            return;
                        }
                        int pointerId2 = motionEvent.getPointerId(actionIndex);
                        if (this.mDragState == 1 && pointerId2 == this.mActivePointerId) {
                            int pointerCount2 = motionEvent.getPointerCount();
                            while (true) {
                                if (i2 >= pointerCount2) {
                                    i = -1;
                                    break;
                                }
                                int pointerId3 = motionEvent.getPointerId(i2);
                                if (pointerId3 != this.mActivePointerId) {
                                    View findTopChildUnder2 = findTopChildUnder((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                                    View view = this.mCapturedView;
                                    if (findTopChildUnder2 == view && tryCaptureViewForDrag(view, pointerId3)) {
                                        i = this.mActivePointerId;
                                        break;
                                    }
                                }
                                i2++;
                            }
                            if (i == -1) {
                                releaseViewForPointerUp();
                            }
                        }
                        clearMotionHistory(pointerId2);
                        return;
                    }
                    int pointerId4 = motionEvent.getPointerId(actionIndex);
                    float x3 = motionEvent.getX(actionIndex);
                    float y3 = motionEvent.getY(actionIndex);
                    saveInitialMotion(x3, y3, pointerId4);
                    if (this.mDragState != 0) {
                        if (isViewUnder(this.mCapturedView, (int) x3, (int) y3)) {
                            tryCaptureViewForDrag(this.mCapturedView, pointerId4);
                            return;
                        }
                        return;
                    } else {
                        tryCaptureViewForDrag(findTopChildUnder((int) x3, (int) y3), pointerId4);
                        if ((this.mInitialEdgesTouched[pointerId4] & this.mTrackingEdges) == 0) {
                            return;
                        }
                    }
                } else if (this.mDragState == 1) {
                    this.mReleaseInProgress = true;
                    callback.onViewReleased(this.mCapturedView, 0.0f);
                    this.mReleaseInProgress = false;
                    if (this.mDragState == 1) {
                        setDragState(0);
                    }
                }
            } else if (this.mDragState == 1) {
                releaseViewForPointerUp();
            }
            cancel();
            return;
        }
        float x4 = motionEvent.getX();
        float y4 = motionEvent.getY();
        int pointerId5 = motionEvent.getPointerId(0);
        View findTopChildUnder3 = findTopChildUnder((int) x4, (int) y4);
        saveInitialMotion(x4, y4, pointerId5);
        tryCaptureViewForDrag(findTopChildUnder3, pointerId5);
        if ((this.mInitialEdgesTouched[pointerId5] & this.mTrackingEdges) == 0) {
            return;
        }
        callback.onEdgeTouched();
    }

    public final void releaseViewForPointerUp() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        float f = this.mMaxVelocity;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
        float f2 = this.mMinVelocity;
        float abs = Math.abs(xVelocity);
        if (abs < f2) {
            xVelocity = 0.0f;
        } else if (abs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
        float f3 = this.mMinVelocity;
        float abs2 = Math.abs(yVelocity);
        if (abs2 >= f3) {
            int i = (abs2 > f ? 1 : (abs2 == f ? 0 : -1));
        }
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, xVelocity);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            setDragState(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.customview.widget.ViewDragHelper$Callback] */
    public final void reportNewEdgeDrags(float f, float f2, int i) {
        boolean checkNewEdgeDrag = checkNewEdgeDrag(f, f2, i, 1);
        boolean z = checkNewEdgeDrag;
        if (checkNewEdgeDrag(f2, f, i, 4)) {
            z = (checkNewEdgeDrag ? 1 : 0) | 4;
        }
        boolean z2 = z;
        if (checkNewEdgeDrag(f, f2, i, 2)) {
            z2 = (z ? 1 : 0) | 2;
        }
        ?? r0 = z2;
        if (checkNewEdgeDrag(f2, f, i, 8)) {
            r0 = (z2 ? 1 : 0) | 8;
        }
        if (r0 != 0) {
            int[] iArr = this.mEdgeDragsInProgress;
            iArr[i] = iArr[i] | r0;
            this.mCallback.onEdgeDragStarted(r0, i);
        }
    }

    public final void saveInitialMotion(float f, float f2, int i) {
        float[] fArr = this.mInitialMotionX;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.mInitialMotionY;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.mLastMotionX;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.mLastMotionY;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.mInitialEdgesTouched;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.mEdgeDragsInProgress;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.mEdgeDragsLocked;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.mInitialMotionX = fArr2;
            this.mInitialMotionY = fArr3;
            this.mLastMotionX = fArr4;
            this.mLastMotionY = fArr5;
            this.mInitialEdgesTouched = iArr;
            this.mEdgeDragsInProgress = iArr2;
            this.mEdgeDragsLocked = iArr3;
        }
        float[] fArr9 = this.mInitialMotionX;
        this.mLastMotionX[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.mInitialMotionY;
        this.mLastMotionY[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.mInitialEdgesTouched;
        int i3 = (int) f;
        int i4 = (int) f2;
        ViewGroup viewGroup = this.mParentView;
        int left = viewGroup.getLeft();
        int i5 = this.mEdgeSize;
        int i6 = i3 < left + i5 ? 1 : 0;
        if (i4 < viewGroup.getTop() + i5) {
            i6 |= 4;
        }
        if (i3 > viewGroup.getRight() - i5) {
            i6 |= 2;
        }
        if (i4 > viewGroup.getBottom() - i5) {
            i6 |= 8;
        }
        iArr7[i] = i6;
        this.mPointersDown |= 1 << i;
    }

    public final void saveLastMotion(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if ((this.mPointersDown & (1 << pointerId)) != 0) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.mLastMotionX[pointerId] = x;
                this.mLastMotionY[pointerId] = y;
            }
        }
    }

    public final void setDragState(int i) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != i) {
            this.mDragState = i;
            this.mCallback.onViewDragStateChanged(i);
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    public final void settleCapturedViewAt(int i, int i2) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        forceSettleCapturedViewAt(i, i2, (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0055, code lost:
    
        if ((r13.mInitialEdgesTouched[r0] & r13.mTrackingEdges) != 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x011a, code lost:
    
        r4.onEdgeTouched();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0118, code lost:
    
        if ((r13.mInitialEdgesTouched[r14] & r13.mTrackingEdges) != 0) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldInterceptTouchEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public final boolean smoothSlideViewTo(View view, int i, int i2) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        boolean forceSettleCapturedViewAt = forceSettleCapturedViewAt(i, i2, 0, 0);
        if (!forceSettleCapturedViewAt && this.mDragState == 0 && this.mCapturedView != null) {
            this.mCapturedView = null;
        }
        return forceSettleCapturedViewAt;
    }

    public final boolean tryCaptureViewForDrag(View view, int i) {
        if (view == this.mCapturedView && this.mActivePointerId == i) {
            return true;
        }
        if (view == null || !this.mCallback.tryCaptureView(view)) {
            return false;
        }
        this.mActivePointerId = i;
        captureChildView(view, i);
        return true;
    }
}
