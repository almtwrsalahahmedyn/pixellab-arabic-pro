package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes.dex */
public final class LinearLayoutManager extends RecyclerView.LayoutManager {
    public final AnchorInfo mAnchorInfo;
    public final int mInitialPrefetchItemCount;
    public final LayoutChunkResult mLayoutChunkResult;
    public LayoutState mLayoutState;
    public final int mOrientation;
    public final OrientationHelper mOrientationHelper;
    public final int[] mReusableIntPair;
    public final boolean mReverseLayout;
    public boolean mShouldReverseLayout = false;
    public final boolean mSmoothScrollbarEnabled = true;
    public int mPendingScrollPosition = -1;
    public int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    public SavedState mPendingSavedState = null;

    /* loaded from: classes.dex */
    public final class AnchorInfo {
        public int mCoordinate;
        public boolean mLayoutFromEnd;
        public OrientationHelper mOrientationHelper;
        public int mPosition;
        public boolean mValid;

        public AnchorInfo() {
            reset();
        }

        public final void assignFromView(View view, int i) {
            if (this.mLayoutFromEnd) {
                int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(view);
                OrientationHelper orientationHelper = this.mOrientationHelper;
                this.mCoordinate = (Integer.MIN_VALUE == orientationHelper.mLastTotalSpace ? 0 : orientationHelper.getTotalSpace() - orientationHelper.mLastTotalSpace) + decoratedEnd;
            } else {
                this.mCoordinate = this.mOrientationHelper.getDecoratedStart(view);
            }
            this.mPosition = i;
        }

        public final void assignFromViewAndKeepVisibleRect(View view, int i) {
            int min;
            OrientationHelper orientationHelper = this.mOrientationHelper;
            int totalSpace = Integer.MIN_VALUE == orientationHelper.mLastTotalSpace ? 0 : orientationHelper.getTotalSpace() - orientationHelper.mLastTotalSpace;
            if (totalSpace >= 0) {
                assignFromView(view, i);
                return;
            }
            this.mPosition = i;
            if (this.mLayoutFromEnd) {
                int endAfterPadding = (this.mOrientationHelper.getEndAfterPadding() - totalSpace) - this.mOrientationHelper.getDecoratedEnd(view);
                this.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - endAfterPadding;
                if (endAfterPadding <= 0) {
                    return;
                }
                int decoratedMeasurement = this.mCoordinate - this.mOrientationHelper.getDecoratedMeasurement(view);
                int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                int min2 = decoratedMeasurement - (Math.min(this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding, 0) + startAfterPadding);
                if (min2 >= 0) {
                    return;
                } else {
                    min = Math.min(endAfterPadding, -min2) + this.mCoordinate;
                }
            } else {
                int decoratedStart = this.mOrientationHelper.getDecoratedStart(view);
                int startAfterPadding2 = decoratedStart - this.mOrientationHelper.getStartAfterPadding();
                this.mCoordinate = decoratedStart;
                if (startAfterPadding2 <= 0) {
                    return;
                }
                int endAfterPadding2 = (this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (this.mOrientationHelper.getEndAfterPadding() - totalSpace) - this.mOrientationHelper.getDecoratedEnd(view))) - (this.mOrientationHelper.getDecoratedMeasurement(view) + decoratedStart);
                if (endAfterPadding2 >= 0) {
                    return;
                } else {
                    min = this.mCoordinate - Math.min(startAfterPadding2, -endAfterPadding2);
                }
            }
            this.mCoordinate = min;
        }

        public final void reset() {
            this.mPosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mValid = false;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + '}';
        }
    }

    /* loaded from: classes.dex */
    public final class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;
    }

    /* loaded from: classes.dex */
    public final class LayoutState {
        public int mAvailable;
        public int mCurrentPosition;
        public boolean mInfinite;
        public int mItemDirection;
        public int mLastScrollDelta;
        public int mLayoutDirection;
        public int mOffset;
        public int mScrollingOffset;
        public boolean mRecycle = true;
        public int mExtraFillSpace = 0;
        public int mNoRecycleSpace = 0;
        public List mScrapList = null;

        public final void assignPositionFromScrapList(View view) {
            int viewLayoutPosition;
            int size = this.mScrapList.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = ((RecyclerView.ViewHolder) this.mScrapList.get(i2)).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.mViewHolder.isRemoved() && (viewLayoutPosition = (layoutParams.getViewLayoutPosition() - this.mCurrentPosition) * this.mItemDirection) >= 0 && viewLayoutPosition < i) {
                    view2 = view3;
                    if (viewLayoutPosition == 0) {
                        break;
                    } else {
                        i = viewLayoutPosition;
                    }
                }
            }
            this.mCurrentPosition = view2 == null ? -1 : ((RecyclerView.LayoutParams) view2.getLayoutParams()).getViewLayoutPosition();
        }
    }

    /* loaded from: classes.dex */
    public class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.LinearLayoutManager$SavedState, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                ?? obj = new Object();
                obj.mAnchorPosition = parcel.readInt();
                obj.mAnchorOffset = parcel.readInt();
                obj.mAnchorLayoutFromEnd = parcel.readInt() == 1;
                return obj;
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public boolean mAnchorLayoutFromEnd;
        public int mAnchorOffset;
        public int mAnchorPosition;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    public LinearLayoutManager() {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        AnchorInfo anchorInfo = new AnchorInfo();
        this.mAnchorInfo = anchorInfo;
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        assertNotInLayoutOrScroll(null);
        if (1 != this.mOrientation || this.mOrientationHelper == null) {
            OrientationHelper orientationHelper = new OrientationHelper(this);
            this.mOrientationHelper = orientationHelper;
            anchorInfo.mOrientationHelper = orientationHelper;
            this.mOrientation = 1;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }
        assertNotInLayoutOrScroll(null);
        if (this.mReverseLayout) {
            this.mReverseLayout = false;
            RecyclerView recyclerView2 = this.mRecyclerView;
            if (recyclerView2 != null) {
                recyclerView2.requestLayout();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public final void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
        int i;
        int totalSpace = state.mTargetPosition != -1 ? this.mOrientationHelper.getTotalSpace() : 0;
        if (this.mLayoutState.mLayoutDirection == -1) {
            i = 0;
        } else {
            i = totalSpace;
            totalSpace = 0;
        }
        iArr[0] = totalSpace;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, state);
        LayoutState layoutState = this.mLayoutState;
        int i3 = layoutState.mCurrentPosition;
        if (i3 < 0 || i3 >= state.getItemCount()) {
            return;
        }
        ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).addPosition(i3, Math.max(0, layoutState.mScrollingOffset));
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void collectInitialPrefetchPositions(int r7, androidx.recyclerview.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry r8) {
        /*
            r6 = this;
            androidx.recyclerview.widget.LinearLayoutManager$SavedState r0 = r6.mPendingSavedState
            r1 = 1
            r2 = -1
            r3 = 0
            if (r0 == 0) goto L13
            int r4 = r0.mAnchorPosition
            if (r4 < 0) goto Ld
            r5 = 1
            goto Le
        Ld:
            r5 = 0
        Le:
            if (r5 == 0) goto L13
            boolean r0 = r0.mAnchorLayoutFromEnd
            goto L22
        L13:
            r6.resolveShouldLayoutReverse()
            boolean r0 = r6.mShouldReverseLayout
            int r4 = r6.mPendingScrollPosition
            if (r4 != r2) goto L22
            if (r0 == 0) goto L21
            int r4 = r7 + (-1)
            goto L22
        L21:
            r4 = 0
        L22:
            if (r0 == 0) goto L25
            r1 = -1
        L25:
            r0 = 0
        L26:
            int r2 = r6.mInitialPrefetchItemCount
            if (r0 >= r2) goto L38
            if (r4 < 0) goto L38
            if (r4 >= r7) goto L38
            r2 = r8
            androidx.recyclerview.widget.GapWorker$LayoutPrefetchRegistryImpl r2 = (androidx.recyclerview.widget.GapWorker.LayoutPrefetchRegistryImpl) r2
            r2.addPosition(r4, r3)
            int r4 = r4 + r1
            int r0 = r0 + 1
            goto L26
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.collectInitialPrefetchPositions(int, androidx.recyclerview.widget.RecyclerView$LayoutManager$LayoutPrefetchRegistry):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        OrientationHelper orientationHelper = this.mOrientationHelper;
        boolean z = this.mSmoothScrollbarEnabled;
        boolean z2 = !z;
        View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(z2);
        View findFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(z2);
        if (getChildCount() == 0 || state.getItemCount() == 0 || findFirstVisibleChildClosestToStart == null || findFirstVisibleChildClosestToEnd == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart) - RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd)) + 1;
        }
        return Math.min(orientationHelper.getTotalSpace(), orientationHelper.getDecoratedEnd(findFirstVisibleChildClosestToEnd) - orientationHelper.getDecoratedStart(findFirstVisibleChildClosestToStart));
    }

    public final int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        OrientationHelper orientationHelper = this.mOrientationHelper;
        boolean z = this.mSmoothScrollbarEnabled;
        boolean z2 = !z;
        View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(z2);
        View findFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(z2);
        boolean z3 = this.mShouldReverseLayout;
        if (getChildCount() == 0 || state.getItemCount() == 0 || findFirstVisibleChildClosestToStart == null || findFirstVisibleChildClosestToEnd == null) {
            return 0;
        }
        int max = z3 ? Math.max(0, (state.getItemCount() - Math.max(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart), RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd))) - 1) : Math.max(0, Math.min(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart), RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd)));
        if (z) {
            return Math.round((max * (Math.abs(orientationHelper.getDecoratedEnd(findFirstVisibleChildClosestToEnd) - orientationHelper.getDecoratedStart(findFirstVisibleChildClosestToStart)) / (Math.abs(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart) - RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd)) + 1))) + (orientationHelper.getStartAfterPadding() - orientationHelper.getDecoratedStart(findFirstVisibleChildClosestToStart)));
        }
        return max;
    }

    public final int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        OrientationHelper orientationHelper = this.mOrientationHelper;
        boolean z = this.mSmoothScrollbarEnabled;
        boolean z2 = !z;
        View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(z2);
        View findFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(z2);
        if (getChildCount() == 0 || state.getItemCount() == 0 || findFirstVisibleChildClosestToStart == null || findFirstVisibleChildClosestToEnd == null) {
            return 0;
        }
        if (!z) {
            return state.getItemCount();
        }
        return (int) (((orientationHelper.getDecoratedEnd(findFirstVisibleChildClosestToEnd) - orientationHelper.getDecoratedStart(findFirstVisibleChildClosestToStart)) / (Math.abs(RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToStart) - RecyclerView.LayoutManager.getPosition(findFirstVisibleChildClosestToEnd)) + 1)) * state.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = new LayoutState();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0269, code lost:
    
        if (r21.mInPreLayout == false) goto L110;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int fill(androidx.recyclerview.widget.RecyclerView.Recycler r19, androidx.recyclerview.widget.LinearLayoutManager.LayoutState r20, androidx.recyclerview.widget.RecyclerView.State r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.fill(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.LinearLayoutManager$LayoutState, androidx.recyclerview.widget.RecyclerView$State, boolean):int");
    }

    public final View findFirstVisibleChildClosestToEnd(boolean z) {
        int childCount;
        int i;
        if (this.mShouldReverseLayout) {
            i = getChildCount();
            childCount = 0;
        } else {
            childCount = getChildCount() - 1;
            i = -1;
        }
        return findOneVisibleChild(childCount, i, z);
    }

    public final View findFirstVisibleChildClosestToStart(boolean z) {
        int childCount;
        int i;
        if (this.mShouldReverseLayout) {
            childCount = -1;
            i = getChildCount() - 1;
        } else {
            childCount = getChildCount();
            i = 0;
        }
        return findOneVisibleChild(i, childCount, z);
    }

    public final View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        int i3;
        int i4;
        ensureLayoutState();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i)) < this.mOrientationHelper.getStartAfterPadding()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return (this.mOrientation == 0 ? this.mHorizontalBoundCheck : this.mVerticalBoundCheck).findOneViewWithinBoundFlags(i, i2, i3, i4);
    }

    public final View findOneVisibleChild(int i, int i2, boolean z) {
        ensureLayoutState();
        return (this.mOrientation == 0 ? this.mHorizontalBoundCheck : this.mVerticalBoundCheck).findOneViewWithinBoundFlags(i, i2, z ? 24579 : 320, 320);
    }

    public final View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - RecyclerView.LayoutManager.getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (RecyclerView.LayoutManager.getPosition(childAt) == i) {
                return childAt;
            }
        }
        int childCount2 = getChildCount();
        for (int i2 = 0; i2 < childCount2; i2++) {
            View childAt2 = getChildAt(i2);
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt2);
            if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.mInPreLayout || !childViewHolderInt.isRemoved())) {
                return childAt2;
            }
        }
        return null;
    }

    public final int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(-endAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    public final int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(startAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (startAfterPadding = i3 - this.mOrientationHelper.getStartAfterPadding()) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(-startAfterPadding);
        return i2 - startAfterPadding;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams();
    }

    public final View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    public final View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onDetachedFromWindow() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0032, code lost:
    
        if (r7.mOrientation == 1) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0037, code lost:
    
        if (r7.mOrientation == 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x004f, code lost:
    
        if ((r8.getLayoutDirection() == 1) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0064, code lost:
    
        if ((r8.getLayoutDirection() == 1) != false) goto L48;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onFocusSearchFailed(int r8, androidx.recyclerview.widget.RecyclerView.Recycler r9, androidx.recyclerview.widget.RecyclerView.State r10) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.onFocusSearchFailed(int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false);
            accessibilityEvent.setFromIndex(findOneVisibleChild == null ? -1 : RecyclerView.LayoutManager.getPosition(findOneVisibleChild));
            View findOneVisibleChild2 = findOneVisibleChild(getChildCount() - 1, -1, false);
            accessibilityEvent.setToIndex(findOneVisibleChild2 != null ? RecyclerView.LayoutManager.getPosition(findOneVisibleChild2) : -1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:167:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02b0  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayoutChildren(androidx.recyclerview.widget.RecyclerView.Recycler r19, androidx.recyclerview.widget.RecyclerView.State r20) {
        /*
            Method dump skipped, instructions count: 1277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.onLayoutChildren(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted() {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.reset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.mAnchorPosition = -1;
            }
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.os.Parcelable, androidx.recyclerview.widget.LinearLayoutManager$SavedState, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            SavedState savedState = this.mPendingSavedState;
            ?? obj = new Object();
            obj.mAnchorPosition = savedState.mAnchorPosition;
            obj.mAnchorOffset = savedState.mAnchorOffset;
            obj.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            return obj;
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mShouldReverseLayout;
            savedState2.mAnchorLayoutFromEnd = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState2.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                savedState2.mAnchorPosition = RecyclerView.LayoutManager.getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState2.mAnchorPosition = RecyclerView.LayoutManager.getPosition(childClosestToStart);
                savedState2.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
            }
        } else {
            savedState2.mAnchorPosition = -1;
        }
        return savedState2;
    }

    public final void recycleByLayoutState(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        int i = layoutState.mScrollingOffset;
        int i2 = layoutState.mNoRecycleSpace;
        if (layoutState.mLayoutDirection == -1) {
            int childCount = getChildCount();
            if (i < 0) {
                return;
            }
            int end = (this.mOrientationHelper.getEnd() - i) + i2;
            if (this.mShouldReverseLayout) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (this.mOrientationHelper.getDecoratedStart(childAt) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt) < end) {
                        recycleChildren(recycler, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = childCount - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View childAt2 = getChildAt(i5);
                if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                    recycleChildren(recycler, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int childCount2 = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i7 = 0; i7 < childCount2; i7++) {
                View childAt3 = getChildAt(i7);
                if (this.mOrientationHelper.getDecoratedEnd(childAt3) > i6 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt3) > i6) {
                    recycleChildren(recycler, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = childCount2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View childAt4 = getChildAt(i9);
            if (this.mOrientationHelper.getDecoratedEnd(childAt4) > i6 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt4) > i6) {
                recycleChildren(recycler, i8, i9);
                return;
            }
        }
    }

    public final void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                View childAt = getChildAt(i);
                removeViewAt(i);
                recycler.recycleView(childAt);
                i--;
            }
            return;
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            View childAt2 = getChildAt(i2);
            removeViewAt(i2);
            recycler.recycleView(childAt2);
        }
    }

    public final void resolveShouldLayoutReverse() {
        boolean z;
        if (this.mOrientation != 1) {
            RecyclerView recyclerView = this.mRecyclerView;
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            if (recyclerView.getLayoutDirection() == 1) {
                z = !this.mReverseLayout;
                this.mShouldReverseLayout = z;
            }
        }
        z = this.mReverseLayout;
        this.mShouldReverseLayout = z;
    }

    public final int scrollBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        updateLayoutState(i2, abs, true, state);
        LayoutState layoutState = this.mLayoutState;
        int fill = fill(recycler, layoutState, state, false) + layoutState.mScrollingOffset;
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i = i2 * fill;
        }
        this.mOrientationHelper.offsetChildren(-i);
        this.mLayoutState.mLastScrollDelta = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean shouldMeasureTwice() {
        boolean z;
        if (this.mHeightMode == 1073741824 || this.mWidthMode == 1073741824) {
            return false;
        }
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null;
    }

    public final void updateLayoutState(int i, int i2, boolean z, RecyclerView.State state) {
        int startAfterPadding;
        this.mLayoutState.mInfinite = this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
        this.mLayoutState.mLayoutDirection = i;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        LayoutState layoutState = this.mLayoutState;
        int i3 = z2 ? max2 : max;
        layoutState.mExtraFillSpace = i3;
        if (!z2) {
            max = max2;
        }
        layoutState.mNoRecycleSpace = max;
        if (z2) {
            layoutState.mExtraFillSpace = this.mOrientationHelper.getEndPadding() + i3;
            View childClosestToEnd = getChildClosestToEnd();
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            int position = RecyclerView.LayoutManager.getPosition(childClosestToEnd);
            LayoutState layoutState3 = this.mLayoutState;
            layoutState2.mCurrentPosition = position + layoutState3.mItemDirection;
            layoutState3.mOffset = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mExtraFillSpace = this.mOrientationHelper.getStartAfterPadding() + layoutState4.mExtraFillSpace;
            LayoutState layoutState5 = this.mLayoutState;
            layoutState5.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            int position2 = RecyclerView.LayoutManager.getPosition(childClosestToStart);
            LayoutState layoutState6 = this.mLayoutState;
            layoutState5.mCurrentPosition = position2 + layoutState6.mItemDirection;
            layoutState6.mOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        LayoutState layoutState7 = this.mLayoutState;
        layoutState7.mAvailable = i2;
        if (z) {
            layoutState7.mAvailable = i2 - startAfterPadding;
        }
        layoutState7.mScrollingOffset = startAfterPadding;
    }

    public final void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - i2;
        LayoutState layoutState = this.mLayoutState;
        layoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        layoutState.mCurrentPosition = i;
        layoutState.mLayoutDirection = 1;
        layoutState.mOffset = i2;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    public final void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.mAvailable = i2 - this.mOrientationHelper.getStartAfterPadding();
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = i;
        layoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        layoutState.mLayoutDirection = -1;
        layoutState.mOffset = i2;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }
}
