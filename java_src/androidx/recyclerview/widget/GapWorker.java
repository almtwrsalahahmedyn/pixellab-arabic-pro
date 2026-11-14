package androidx.recyclerview.widget;

import android.os.Trace;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class GapWorker implements Runnable {
    public static final ThreadLocal sGapWorker = new ThreadLocal();
    public static final AnonymousClass1 sTaskComparator = new Comparator() { // from class: androidx.recyclerview.widget.GapWorker.1
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
        
            r1 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
        
            return r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
        
            if (r0 != false) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        
            if (r0 == null) goto L18;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int compare(java.lang.Object r7, java.lang.Object r8) {
            /*
                r6 = this;
                androidx.recyclerview.widget.GapWorker$Task r7 = (androidx.recyclerview.widget.GapWorker.Task) r7
                androidx.recyclerview.widget.GapWorker$Task r8 = (androidx.recyclerview.widget.GapWorker.Task) r8
                androidx.recyclerview.widget.RecyclerView r0 = r7.view
                r1 = 1
                r2 = 0
                if (r0 != 0) goto Lc
                r3 = 1
                goto Ld
            Lc:
                r3 = 0
            Ld:
                androidx.recyclerview.widget.RecyclerView r4 = r8.view
                if (r4 != 0) goto L13
                r4 = 1
                goto L14
            L13:
                r4 = 0
            L14:
                r5 = -1
                if (r3 == r4) goto L1a
                if (r0 != 0) goto L22
                goto L23
            L1a:
                boolean r0 = r7.immediate
                boolean r3 = r8.immediate
                if (r0 == r3) goto L25
                if (r0 == 0) goto L23
            L22:
                r1 = -1
            L23:
                r2 = r1
                goto L36
            L25:
                int r0 = r8.viewVelocity
                int r1 = r7.viewVelocity
                int r0 = r0 - r1
                if (r0 == 0) goto L2e
                r2 = r0
                goto L36
            L2e:
                int r7 = r7.distanceToItem
                int r8 = r8.distanceToItem
                int r7 = r7 - r8
                if (r7 == 0) goto L36
                r2 = r7
            L36:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GapWorker.AnonymousClass1.compare(java.lang.Object, java.lang.Object):int");
        }
    };
    public long mFrameIntervalNs;
    public long mPostTimeNs;
    public final ArrayList mRecyclerViews = new ArrayList();
    public final ArrayList mTasks = new ArrayList();

    /* loaded from: classes.dex */
    public final class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {
        public int mCount;
        public int[] mPrefetchArray;
        public int mPrefetchDx;
        public int mPrefetchDy;

        public final void addPosition(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.mCount * 2;
            int[] iArr = this.mPrefetchArray;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.mPrefetchArray = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i3 >= iArr.length) {
                int[] iArr3 = new int[i3 * 2];
                this.mPrefetchArray = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.mPrefetchArray;
            iArr4[i3] = i;
            iArr4[i3 + 1] = i2;
            this.mCount++;
        }

        public final void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z) {
            this.mCount = 0;
            int[] iArr = this.mPrefetchArray;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.mItemPrefetchEnabled) {
                return;
            }
            if (!z) {
                if (!(!recyclerView.mFirstLayoutComplete || recyclerView.mDataSetHasChangedAfterLayout || recyclerView.mAdapterHelper.hasPendingUpdates())) {
                    layoutManager.collectAdjacentPrefetchPositions(this.mPrefetchDx, this.mPrefetchDy, recyclerView.mState, this);
                }
            } else if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
            int i = this.mCount;
            if (i > layoutManager.mPrefetchMaxCountObserved) {
                layoutManager.mPrefetchMaxCountObserved = i;
                layoutManager.mPrefetchMaxObservedInInitialPrefetch = z;
                recyclerView.mRecycler.updateViewCacheSize();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class Task {
        public int distanceToItem;
        public boolean immediate;
        public int position;
        public RecyclerView view;
        public int viewVelocity;
    }

    public static RecyclerView.ViewHolder prefetchPositionWithDeadline(RecyclerView recyclerView, int i, long j) {
        boolean z;
        int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= unfilteredChildCount) {
                z = false;
                break;
            }
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder tryGetViewHolderForPositionByDeadline = recycler.tryGetViewHolderForPositionByDeadline(i, j);
            if (tryGetViewHolderForPositionByDeadline != null) {
                if (!tryGetViewHolderForPositionByDeadline.isBound() || tryGetViewHolderForPositionByDeadline.isInvalid()) {
                    recycler.addViewHolderToRecycledViewPool(tryGetViewHolderForPositionByDeadline, false);
                } else {
                    recycler.recycleView(tryGetViewHolderForPositionByDeadline.itemView);
                }
            }
            return tryGetViewHolderForPositionByDeadline;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public final void postFromTraversal(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.mPostTimeNs == 0) {
            this.mPostTimeNs = RecyclerView.getNanoTime();
            recyclerView.post(this);
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
        layoutPrefetchRegistryImpl.mPrefetchDx = i;
        layoutPrefetchRegistryImpl.mPrefetchDy = i2;
    }

    public final void prefetch(long j) {
        Task task;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        Task task2;
        ArrayList arrayList = this.mRecyclerViews;
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i2);
            if (recyclerView3.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView3.mPrefetchRegistry;
                layoutPrefetchRegistryImpl.collectPrefetchPositionsFromView(recyclerView3, false);
                i += layoutPrefetchRegistryImpl.mCount;
            }
        }
        ArrayList arrayList2 = this.mTasks;
        arrayList2.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i4);
            if (recyclerView4.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl2 = recyclerView4.mPrefetchRegistry;
                int abs = Math.abs(layoutPrefetchRegistryImpl2.mPrefetchDy) + Math.abs(layoutPrefetchRegistryImpl2.mPrefetchDx);
                for (int i5 = 0; i5 < layoutPrefetchRegistryImpl2.mCount * 2; i5 += 2) {
                    if (i3 >= arrayList2.size()) {
                        task2 = new Task();
                        arrayList2.add(task2);
                    } else {
                        task2 = (Task) arrayList2.get(i3);
                    }
                    int[] iArr = layoutPrefetchRegistryImpl2.mPrefetchArray;
                    int i6 = iArr[i5 + 1];
                    task2.immediate = i6 <= abs;
                    task2.viewVelocity = abs;
                    task2.distanceToItem = i6;
                    task2.view = recyclerView4;
                    task2.position = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(arrayList2, sTaskComparator);
        for (int i7 = 0; i7 < arrayList2.size() && (recyclerView = (task = (Task) arrayList2.get(i7)).view) != null; i7++) {
            RecyclerView.ViewHolder prefetchPositionWithDeadline = prefetchPositionWithDeadline(recyclerView, task.position, task.immediate ? Long.MAX_VALUE : j);
            if (prefetchPositionWithDeadline != null && prefetchPositionWithDeadline.mNestedRecyclerView != null && prefetchPositionWithDeadline.isBound() && !prefetchPositionWithDeadline.isInvalid() && (recyclerView2 = prefetchPositionWithDeadline.mNestedRecyclerView.get()) != null) {
                if (recyclerView2.mDataSetHasChangedAfterLayout && recyclerView2.mChildHelper.getUnfilteredChildCount() != 0) {
                    DefaultItemAnimator defaultItemAnimator = recyclerView2.mItemAnimator;
                    if (defaultItemAnimator != null) {
                        defaultItemAnimator.endAnimations();
                    }
                    RecyclerView.LayoutManager layoutManager = recyclerView2.mLayout;
                    RecyclerView.Recycler recycler = recyclerView2.mRecycler;
                    if (layoutManager != null) {
                        layoutManager.removeAndRecycleAllViews(recycler);
                        recyclerView2.mLayout.removeAndRecycleScrapInt(recycler);
                    }
                    recycler.mAttachedScrap.clear();
                    recycler.recycleAndClearCachedViews();
                }
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl3 = recyclerView2.mPrefetchRegistry;
                layoutPrefetchRegistryImpl3.collectPrefetchPositionsFromView(recyclerView2, true);
                if (layoutPrefetchRegistryImpl3.mCount != 0) {
                    try {
                        int i8 = TraceCompat.$r8$clinit;
                        Trace.beginSection("RV Nested Prefetch");
                        RecyclerView.State state = recyclerView2.mState;
                        RecyclerView.Adapter adapter = recyclerView2.mAdapter;
                        state.mLayoutStep = 1;
                        state.mItemCount = adapter.getItemCount();
                        state.mInPreLayout = false;
                        state.mTrackOldChangeHolders = false;
                        state.mIsMeasuring = false;
                        for (int i9 = 0; i9 < layoutPrefetchRegistryImpl3.mCount * 2; i9 += 2) {
                            prefetchPositionWithDeadline(recyclerView2, layoutPrefetchRegistryImpl3.mPrefetchArray[i9], j);
                        }
                        Trace.endSection();
                        task.immediate = false;
                        task.viewVelocity = 0;
                        task.distanceToItem = 0;
                        task.view = null;
                        task.position = 0;
                    } catch (Throwable th) {
                        int i10 = TraceCompat.$r8$clinit;
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            task.immediate = false;
            task.viewVelocity = 0;
            task.distanceToItem = 0;
            task.view = null;
            task.position = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i = TraceCompat.$r8$clinit;
            Trace.beginSection("RV Prefetch");
            ArrayList arrayList = this.mRecyclerViews;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long j = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    prefetch(TimeUnit.MILLISECONDS.toNanos(j) + this.mFrameIntervalNs);
                    this.mPostTimeNs = 0L;
                    Trace.endSection();
                    return;
                }
            }
            this.mPostTimeNs = 0L;
            Trace.endSection();
        } catch (Throwable th) {
            this.mPostTimeNs = 0L;
            int i3 = TraceCompat.$r8$clinit;
            Trace.endSection();
            throw th;
        }
    }
}
