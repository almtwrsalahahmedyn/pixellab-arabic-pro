package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.TraceCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.fragment.app.Fragment$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.AdapterHelper;
import androidx.recyclerview.widget.ChildHelper;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.recyclerview.widget.ViewBoundsCheck;
import androidx.recyclerview.widget.ViewInfoStore;
import com.gun0912.tedpermission.TedPermissionUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup {
    public static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    public static final boolean ALLOW_THREAD_GAP_WORK;
    public static final Class[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    public static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    public static final boolean POST_UPDATES_ON_ANIMATION;
    public static final AnonymousClass3 sQuinticInterpolator;
    public final RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
    public final AccessibilityManager mAccessibilityManager;
    public Adapter mAdapter;
    public final AdapterHelper mAdapterHelper;
    public boolean mAdapterUpdateDuringMeasure;
    public EdgeEffect mBottomGlow;
    public final ChildHelper mChildHelper;
    public boolean mClipToPadding;
    public boolean mDataSetHasChangedAfterLayout;
    public boolean mDispatchItemsChangedEvent;
    public int mDispatchScrollCounter;
    public int mEatenAccessibilityChangeFlags;
    public final EdgeEffectFactory mEdgeEffectFactory;
    public boolean mFirstLayoutComplete;
    public GapWorker mGapWorker;
    public boolean mIgnoreMotionEventTillDown;
    public int mInitialTouchX;
    public int mInitialTouchY;
    public int mInterceptRequestLayoutDepth;
    public OnItemTouchListener mInterceptingOnItemTouchListener;
    public boolean mIsAttached;
    public final DefaultItemAnimator mItemAnimator;
    public final AnonymousClass2 mItemAnimatorRunner;
    public final ArrayList mItemDecorations;
    public boolean mItemsAddedOrRemoved;
    public boolean mItemsChanged;
    public int mLastAutoMeasureNonExactMeasuredHeight;
    public int mLastAutoMeasureNonExactMeasuredWidth;
    public boolean mLastAutoMeasureSkippedDueToExact;
    public int mLastTouchX;
    public int mLastTouchY;
    public LayoutManager mLayout;
    public int mLayoutOrScrollCounter;
    public boolean mLayoutSuppressed;
    public boolean mLayoutWasDefered;
    public EdgeEffect mLeftGlow;
    public final int mMaxFlingVelocity;
    public final int mMinFlingVelocity;
    public final int[] mMinMaxLayoutPositions;
    public final int[] mNestedOffsets;
    public final RecyclerViewDataObserver mObserver;
    public final ArrayList mOnItemTouchListeners;
    public final ArrayList mPendingAccessibilityImportanceChange;
    public SavedState mPendingSavedState;
    public boolean mPostedAnimatorRunner;
    public final GapWorker.LayoutPrefetchRegistryImpl mPrefetchRegistry;
    public final boolean mPreserveFocusAfterLayout;
    public final Recycler mRecycler;
    public final ArrayList mRecyclerListeners;
    public final int[] mReusableIntPair;
    public EdgeEffect mRightGlow;
    public final float mScaledHorizontalScrollFactor;
    public final float mScaledVerticalScrollFactor;
    public ArrayList mScrollListeners;
    public final int[] mScrollOffset;
    public int mScrollPointerId;
    public int mScrollState;
    public NestedScrollingChildHelper mScrollingChildHelper;
    public final State mState;
    public final Rect mTempRect;
    public final Rect mTempRect2;
    public final RectF mTempRectF;
    public EdgeEffect mTopGlow;
    public final int mTouchSlop;
    public VelocityTracker mVelocityTracker;
    public final ViewFlinger mViewFlinger;
    public final AnonymousClass6 mViewInfoProcessCallback;
    public final ViewInfoStore mViewInfoStore;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 implements AdapterHelper.Callback, ChildHelper.Callback, ItemAnimator.ItemAnimatorListener {
        public /* synthetic */ AnonymousClass6() {
        }

        public void dispatchUpdate(AdapterHelper.UpdateOp updateOp) {
            int i = updateOp.cmd;
            RecyclerView recyclerView = RecyclerView.this;
            if (i == 1 || i == 2 || i == 4 || i == 8) {
                recyclerView.mLayout.getClass();
            }
        }

        public ViewHolder findViewHolder(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
            int i2 = 0;
            ViewHolder viewHolder = null;
            while (true) {
                if (i2 >= unfilteredChildCount) {
                    break;
                }
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i2));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.mPosition == i) {
                    if (!recyclerView.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                        viewHolder = childViewHolderInt;
                        break;
                    }
                    viewHolder = childViewHolderInt;
                }
                i2++;
            }
            if (viewHolder == null || recyclerView.mChildHelper.isHidden(viewHolder.itemView)) {
                return null;
            }
            return viewHolder;
        }

        public int getChildCount() {
            return RecyclerView.this.getChildCount();
        }

        public void markViewHoldersUpdated(int i, int i2, Object obj) {
            int i3;
            int i4;
            RecyclerView recyclerView = RecyclerView.this;
            int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
            int i5 = i2 + i;
            for (int i6 = 0; i6 < unfilteredChildCount; i6++) {
                View unfilteredChildAt = recyclerView.mChildHelper.getUnfilteredChildAt(i6);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(unfilteredChildAt);
                if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i4 = childViewHolderInt.mPosition) >= i && i4 < i5) {
                    childViewHolderInt.addFlags(2);
                    childViewHolderInt.addChangePayload(obj);
                    ((LayoutParams) unfilteredChildAt.getLayoutParams()).mInsetsDirty = true;
                }
            }
            Recycler recycler = recyclerView.mRecycler;
            ArrayList arrayList = recycler.mCachedViews;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    recyclerView.mItemsChanged = true;
                    return;
                }
                ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
                if (viewHolder != null && (i3 = viewHolder.mPosition) >= i && i3 < i5) {
                    viewHolder.addFlags(2);
                    recycler.recycleCachedViewAt(size);
                }
            }
        }

        public void offsetPositionsForAdd(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
            for (int i3 = 0; i3 < unfilteredChildCount; i3++) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i3));
                if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i) {
                    childViewHolderInt.offsetPosition(i2, false);
                    recyclerView.mState.mStructureChanged = true;
                }
            }
            ArrayList arrayList = recyclerView.mRecycler.mCachedViews;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(i4);
                if (viewHolder != null && viewHolder.mPosition >= i) {
                    viewHolder.offsetPosition(i2, false);
                }
            }
            recyclerView.requestLayout();
            recyclerView.mItemsAddedOrRemoved = true;
        }

        public void offsetPositionsForMove(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            RecyclerView recyclerView = RecyclerView.this;
            int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
            int i10 = -1;
            if (i < i2) {
                i4 = i;
                i3 = i2;
                i5 = -1;
            } else {
                i3 = i;
                i4 = i2;
                i5 = 1;
            }
            for (int i11 = 0; i11 < unfilteredChildCount; i11++) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i11));
                if (childViewHolderInt != null && (i9 = childViewHolderInt.mPosition) >= i4 && i9 <= i3) {
                    if (i9 == i) {
                        childViewHolderInt.offsetPosition(i2 - i, false);
                    } else {
                        childViewHolderInt.offsetPosition(i5, false);
                    }
                    recyclerView.mState.mStructureChanged = true;
                }
            }
            Recycler recycler = recyclerView.mRecycler;
            recycler.getClass();
            if (i < i2) {
                i7 = i;
                i6 = i2;
            } else {
                i6 = i;
                i7 = i2;
                i10 = 1;
            }
            ArrayList arrayList = recycler.mCachedViews;
            int size = arrayList.size();
            for (int i12 = 0; i12 < size; i12++) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(i12);
                if (viewHolder != null && (i8 = viewHolder.mPosition) >= i7 && i8 <= i6) {
                    if (i8 == i) {
                        viewHolder.offsetPosition(i2 - i, false);
                    } else {
                        viewHolder.offsetPosition(i10, false);
                    }
                }
            }
            recyclerView.requestLayout();
            recyclerView.mItemsAddedOrRemoved = true;
        }

        public void removeViewAt(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            View childAt = recyclerView.getChildAt(i);
            if (childAt != null) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                Adapter adapter = recyclerView.mAdapter;
                if (adapter != null && childViewHolderInt != null) {
                    adapter.onViewDetachedFromWindow(childViewHolderInt);
                }
                childAt.clearAnimation();
            }
            recyclerView.removeViewAt(i);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass7 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy;

        static {
            int[] iArr = new int[Adapter.StateRestorationPolicy.values().length];
            $SwitchMap$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy = iArr;
            try {
                Adapter.StateRestorationPolicy[] stateRestorationPolicyArr = Adapter.StateRestorationPolicy.$VALUES;
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy;
                Adapter.StateRestorationPolicy[] stateRestorationPolicyArr2 = Adapter.StateRestorationPolicy.$VALUES;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    public abstract class Adapter {
        private final AdapterDataObservable mObservable = new AdapterDataObservable();
        private boolean mHasStableIds = false;
        private StateRestorationPolicy mStateRestorationPolicy = StateRestorationPolicy.ALLOW;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public final class StateRestorationPolicy {
            public static final /* synthetic */ StateRestorationPolicy[] $VALUES;
            public static final StateRestorationPolicy ALLOW;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.RecyclerView$Adapter$StateRestorationPolicy, java.lang.Enum] */
            static {
                ?? r0 = new Enum("ALLOW", 0);
                ALLOW = r0;
                $VALUES = new StateRestorationPolicy[]{r0, new Enum("PREVENT_WHEN_EMPTY", 1), new Enum("PREVENT", 2)};
            }

            public static StateRestorationPolicy valueOf(String str) {
                return (StateRestorationPolicy) Enum.valueOf(StateRestorationPolicy.class, str);
            }

            public static StateRestorationPolicy[] values() {
                return (StateRestorationPolicy[]) $VALUES.clone();
            }
        }

        public final void bindViewHolder(ViewHolder viewHolder, int i) {
            boolean z = viewHolder.mBindingAdapter == null;
            if (z) {
                viewHolder.mPosition = i;
                if (hasStableIds()) {
                    viewHolder.mItemId = getItemId(i);
                }
                viewHolder.setFlags(1, 519);
                int i2 = TraceCompat.$r8$clinit;
                Trace.beginSection("RV OnBindView");
            }
            viewHolder.mBindingAdapter = this;
            onBindViewHolder(viewHolder, i, viewHolder.getUnmodifiedPayloads());
            if (z) {
                viewHolder.clearPayload();
                ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
                if (layoutParams instanceof LayoutParams) {
                    ((LayoutParams) layoutParams).mInsetsDirty = true;
                }
                int i3 = TraceCompat.$r8$clinit;
                Trace.endSection();
            }
        }

        public boolean canRestoreState() {
            int i = AnonymousClass7.$SwitchMap$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy[this.mStateRestorationPolicy.ordinal()];
            return i != 1 && (i != 2 || getItemCount() > 0);
        }

        public final ViewHolder createViewHolder(ViewGroup viewGroup, int i) {
            try {
                int i2 = TraceCompat.$r8$clinit;
                Trace.beginSection("RV CreateView");
                ViewHolder onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                onCreateViewHolder.mItemViewType = i;
                Trace.endSection();
                return onCreateViewHolder;
            } catch (Throwable th) {
                int i3 = TraceCompat.$r8$clinit;
                Trace.endSection();
                throw th;
            }
        }

        public int findRelativeAdapterPositionIn(Adapter adapter, ViewHolder viewHolder, int i) {
            if (adapter == this) {
                return i;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1L;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public final StateRestorationPolicy getStateRestorationPolicy() {
            return this.mStateRestorationPolicy;
        }

        public final boolean hasObservers() {
            return this.mObservable.hasObservers();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.notifyChanged();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.notifyItemRangeChanged(i, 1, null);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.mObservable.notifyItemRangeChanged(i, 1, obj);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.notifyItemRangeInserted(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.notifyItemMoved(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.notifyItemRangeChanged(i, i2, null);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.mObservable.notifyItemRangeChanged(i, i2, obj);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.notifyItemRangeInserted(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.notifyItemRangeRemoved(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.notifyItemRangeRemoved(i, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(ViewHolder viewHolder, int i);

        public void onBindViewHolder(ViewHolder viewHolder, int i, List<Object> list) {
            onBindViewHolder(viewHolder, i);
        }

        public abstract ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(ViewHolder viewHolder) {
            return false;
        }

        public void onViewAttachedToWindow(ViewHolder viewHolder) {
        }

        public void onViewDetachedFromWindow(ViewHolder viewHolder) {
        }

        public void onViewRecycled(ViewHolder viewHolder) {
        }

        public void registerAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.registerObserver(adapterDataObserver);
        }

        public void setHasStableIds(boolean z) {
            if (hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = z;
        }

        public void setStateRestorationPolicy(StateRestorationPolicy stateRestorationPolicy) {
            this.mStateRestorationPolicy = stateRestorationPolicy;
            this.mObservable.notifyStateRestorationPolicyChanged();
        }

        public void unregisterAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.unregisterObserver(adapterDataObserver);
        }
    }

    /* loaded from: classes.dex */
    public final class AdapterDataObservable extends Observable {
        public final boolean hasObservers() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public final void notifyChanged() {
            int size = ((Observable) this).mObservers.size();
            while (true) {
                size--;
                if (size < 0) {
                    return;
                } else {
                    ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onChanged();
                }
            }
        }

        public final void notifyItemMoved(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i, i2);
            }
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            int size = ((Observable) this).mObservers.size();
            while (true) {
                size--;
                if (size < 0) {
                    return;
                } else {
                    ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i, i2, obj);
                }
            }
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            int size = ((Observable) this).mObservers.size();
            while (true) {
                size--;
                if (size < 0) {
                    return;
                } else {
                    ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i, i2);
                }
            }
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            int size = ((Observable) this).mObservers.size();
            while (true) {
                size--;
                if (size < 0) {
                    return;
                } else {
                    ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i, i2);
                }
            }
        }

        public final void notifyStateRestorationPolicyChanged() {
            int size = ((Observable) this).mObservers.size();
            while (true) {
                size--;
                if (size < 0) {
                    return;
                } else {
                    ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public abstract class AdapterDataObserver {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i, int i2, Object obj) {
        }

        public void onItemRangeInserted(int i, int i2) {
        }

        public void onItemRangeMoved(int i, int i2) {
        }

        public void onItemRangeRemoved(int i, int i2) {
        }

        public void onStateRestorationPolicyChanged() {
        }
    }

    /* loaded from: classes.dex */
    public final class EdgeEffectFactory {
    }

    /* loaded from: classes.dex */
    public abstract class ItemAnimator {
        public ItemAnimatorListener mListener = null;
        public final ArrayList mFinishedListeners = new ArrayList();
        public final long mAddDuration = 120;
        public final long mRemoveDuration = 120;
        public final long mMoveDuration = 250;
        public final long mChangeDuration = 250;

        /* loaded from: classes.dex */
        public interface ItemAnimatorListener {
        }

        /* loaded from: classes.dex */
        public final class ItemHolderInfo {
            public int left;
            public int top;
        }

        public static int buildAdapterChangeFlagsForAnimations(ViewHolder viewHolder) {
            int i = viewHolder.mFlags & 14;
            if (viewHolder.isInvalid()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int oldPosition = viewHolder.getOldPosition();
            int absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition();
            return (oldPosition == -1 || absoluteAdapterPosition == -1 || oldPosition == absoluteAdapterPosition) ? i : i | 2048;
        }

        public final void dispatchAnimationFinished(ViewHolder viewHolder) {
            ItemAnimatorListener itemAnimatorListener = this.mListener;
            if (itemAnimatorListener != null) {
                AnonymousClass6 anonymousClass6 = (AnonymousClass6) itemAnimatorListener;
                boolean z = true;
                viewHolder.setIsRecyclable(true);
                if (viewHolder.mShadowedHolder != null && viewHolder.mShadowingHolder == null) {
                    viewHolder.mShadowedHolder = null;
                }
                viewHolder.mShadowingHolder = null;
                if (viewHolder.shouldBeKeptAsChild()) {
                    return;
                }
                View view = viewHolder.itemView;
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.startInterceptRequestLayout();
                ChildHelper childHelper = recyclerView.mChildHelper;
                AnonymousClass6 anonymousClass62 = (AnonymousClass6) childHelper.mCallback;
                int indexOfChild = RecyclerView.this.indexOfChild(view);
                if (indexOfChild == -1) {
                    childHelper.unhideViewInternal(view);
                } else {
                    ChildHelper.Bucket bucket = childHelper.mBucket;
                    if (bucket.get(indexOfChild)) {
                        bucket.remove(indexOfChild);
                        childHelper.unhideViewInternal(view);
                        anonymousClass62.removeViewAt(indexOfChild);
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                    Recycler recycler = recyclerView.mRecycler;
                    recycler.unscrapView(childViewHolderInt);
                    recycler.recycleViewHolderInternal(childViewHolderInt);
                }
                recyclerView.stopInterceptRequestLayout(!z);
                if (z || !viewHolder.isTmpDetached()) {
                    return;
                }
                recyclerView.removeDetachedView(viewHolder.itemView, false);
            }
        }
    }

    /* loaded from: classes.dex */
    public abstract class ItemDecoration {
        public void onDrawOver(Canvas canvas) {
        }
    }

    /* loaded from: classes.dex */
    public abstract class LayoutManager {
        public ChildHelper mChildHelper;
        public int mHeight;
        public int mHeightMode;
        public final ViewBoundsCheck mHorizontalBoundCheck;
        public final boolean mItemPrefetchEnabled;
        public final boolean mMeasurementCacheEnabled;
        public int mPrefetchMaxCountObserved;
        public boolean mPrefetchMaxObservedInInitialPrefetch;
        public RecyclerView mRecyclerView;
        public final ViewBoundsCheck mVerticalBoundCheck;
        public int mWidth;
        public int mWidthMode;

        /* loaded from: classes.dex */
        public interface LayoutPrefetchRegistry {
        }

        public LayoutManager() {
            ViewBoundsCheck.Callback callback = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.1
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final View getChildAt(int i) {
                    return LayoutManager.this.getChildAt(i);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int getChildEnd(View view) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    LayoutManager.this.getClass();
                    return view.getRight() + ((LayoutParams) view.getLayoutParams()).mDecorInsets.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int getChildStart(View view) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    LayoutManager.this.getClass();
                    return (view.getLeft() - ((LayoutParams) view.getLayoutParams()).mDecorInsets.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int getParentEnd() {
                    LayoutManager layoutManager = LayoutManager.this;
                    return layoutManager.mWidth - layoutManager.getPaddingRight();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int getParentStart() {
                    return LayoutManager.this.getPaddingLeft();
                }
            };
            ViewBoundsCheck.Callback callback2 = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.2
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final View getChildAt(int i) {
                    return LayoutManager.this.getChildAt(i);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int getChildEnd(View view) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    LayoutManager.this.getClass();
                    return view.getBottom() + ((LayoutParams) view.getLayoutParams()).mDecorInsets.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int getChildStart(View view) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    LayoutManager.this.getClass();
                    return (view.getTop() - ((LayoutParams) view.getLayoutParams()).mDecorInsets.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int getParentEnd() {
                    LayoutManager layoutManager = LayoutManager.this;
                    return layoutManager.mHeight - layoutManager.getPaddingBottom();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int getParentStart() {
                    return LayoutManager.this.getPaddingTop();
                }
            };
            this.mHorizontalBoundCheck = new ViewBoundsCheck(callback);
            this.mVerticalBoundCheck = new ViewBoundsCheck(callback2);
            this.mMeasurementCacheEnabled = true;
            this.mItemPrefetchEnabled = true;
        }

        public static int chooseSize(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
        
            if (r5 == 1073741824) goto L22;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(boolean r3, int r4, int r5, int r6, int r7) {
            /*
                int r4 = r4 - r6
                r6 = 0
                int r4 = java.lang.Math.max(r6, r4)
                r0 = -1
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r2 = 1073741824(0x40000000, float:2.0)
                if (r3 == 0) goto L19
                if (r7 < 0) goto L10
                goto L1b
            L10:
                if (r7 != r0) goto L30
                if (r5 == r1) goto L2d
                if (r5 == 0) goto L30
                if (r5 == r2) goto L2d
                goto L30
            L19:
                if (r7 < 0) goto L1e
            L1b:
                r6 = 1073741824(0x40000000, float:2.0)
                goto L31
            L1e:
                if (r7 != r0) goto L21
                goto L2d
            L21:
                r3 = -2
                if (r7 != r3) goto L30
                if (r5 == r1) goto L2b
                if (r5 != r2) goto L29
                goto L2b
            L29:
                r5 = 0
                goto L2d
            L2b:
                r5 = -2147483648(0xffffffff80000000, float:-0.0)
            L2d:
                r7 = r4
                r6 = r5
                goto L31
            L30:
                r7 = 0
            L31:
                int r3 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r6)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.getChildMeasureSpec(boolean, int, int, int, int):int");
        }

        public static void getDecoratedBoundsWithMargins(View view, Rect rect) {
            boolean z = RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect2 = layoutParams.mDecorInsets;
            rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public static int getPosition(View view) {
            return ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
        }

        public static boolean isMeasurementUpToDate(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void addViewInt(android.view.View r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 305
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.addViewInt(android.view.View, int, boolean):void");
        }

        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public void collectAdjacentPrefetchPositions(int i, int i2, State state, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public void collectInitialPrefetchPositions(int i, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public int computeHorizontalScrollExtent(State state) {
            return 0;
        }

        public int computeHorizontalScrollOffset(State state) {
            return 0;
        }

        public int computeHorizontalScrollRange(State state) {
            return 0;
        }

        public int computeVerticalScrollExtent(State state) {
            return 0;
        }

        public int computeVerticalScrollOffset(State state) {
            return 0;
        }

        public int computeVerticalScrollRange(State state) {
            return 0;
        }

        public abstract LayoutParams generateDefaultLayoutParams();

        public final View getChildAt(int i) {
            ChildHelper childHelper = this.mChildHelper;
            if (childHelper != null) {
                return childHelper.getChildAt(i);
            }
            return null;
        }

        public final int getChildCount() {
            ChildHelper childHelper = this.mChildHelper;
            if (childHelper != null) {
                return childHelper.getChildCount();
            }
            return 0;
        }

        public final int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public final int getPaddingLeft() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public final int getPaddingRight() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public final int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public final void getTransformedBoundingBox(View view, Rect rect) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public boolean isAutoMeasureEnabled() {
            return false;
        }

        public void onDetachedFromWindow() {
        }

        public View onFocusSearchFailed(int i, Recycler recycler, State state) {
            return null;
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            Recycler recycler = recyclerView.mRecycler;
            State state = recyclerView.mState;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            Adapter adapter = this.mRecyclerView.mAdapter;
            if (adapter != null) {
                accessibilityEvent.setItemCount(adapter.getItemCount());
            }
        }

        public void onLayoutChildren(Recycler recycler, State state) {
        }

        public void onLayoutCompleted() {
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public final void removeAndRecycleAllViews(Recycler recycler) {
            int childCount = getChildCount();
            while (true) {
                childCount--;
                if (childCount < 0) {
                    return;
                }
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    View childAt = getChildAt(childCount);
                    removeViewAt(childCount);
                    recycler.recycleView(childAt);
                }
            }
        }

        public final void removeAndRecycleScrapInt(Recycler recycler) {
            ArrayList arrayList;
            int size = recycler.mAttachedScrap.size();
            int i = size - 1;
            while (true) {
                arrayList = recycler.mAttachedScrap;
                if (i < 0) {
                    break;
                }
                View view = ((ViewHolder) arrayList.get(i)).itemView;
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(view, false);
                    }
                    DefaultItemAnimator defaultItemAnimator = this.mRecyclerView.mItemAnimator;
                    if (defaultItemAnimator != null) {
                        defaultItemAnimator.endAnimation(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                    childViewHolderInt2.mScrapContainer = null;
                    childViewHolderInt2.mInChangeScrap = false;
                    childViewHolderInt2.clearReturnedFromScrapFlag();
                    recycler.recycleViewHolderInternal(childViewHolderInt2);
                }
                i--;
            }
            arrayList.clear();
            ArrayList arrayList2 = recycler.mChangedScrap;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            if (size > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public final void removeViewAt(int i) {
            if (getChildAt(i) != null) {
                ChildHelper childHelper = this.mChildHelper;
                int offset = childHelper.getOffset(i);
                AnonymousClass6 anonymousClass6 = (AnonymousClass6) childHelper.mCallback;
                View childAt = RecyclerView.this.getChildAt(offset);
                if (childAt == null) {
                    return;
                }
                if (childHelper.mBucket.remove(offset)) {
                    childHelper.unhideViewInternal(childAt);
                }
                anonymousClass6.removeViewAt(offset);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x00ad, code lost:
        
            if (r10 == false) goto L33;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
            /*
                r8 = this;
                int r0 = r8.getPaddingLeft()
                int r1 = r8.getPaddingTop()
                int r2 = r8.mWidth
                int r3 = r8.getPaddingRight()
                int r2 = r2 - r3
                int r3 = r8.mHeight
                int r4 = r8.getPaddingBottom()
                int r3 = r3 - r4
                int r4 = r10.getLeft()
                int r5 = r11.left
                int r4 = r4 + r5
                int r5 = r10.getScrollX()
                int r4 = r4 - r5
                int r5 = r10.getTop()
                int r6 = r11.top
                int r5 = r5 + r6
                int r10 = r10.getScrollY()
                int r5 = r5 - r10
                int r10 = r11.width()
                int r10 = r10 + r4
                int r11 = r11.height()
                int r11 = r11 + r5
                int r4 = r4 - r0
                r0 = 0
                int r6 = java.lang.Math.min(r0, r4)
                int r5 = r5 - r1
                int r1 = java.lang.Math.min(r0, r5)
                int r10 = r10 - r2
                int r2 = java.lang.Math.max(r0, r10)
                int r11 = r11 - r3
                int r11 = java.lang.Math.max(r0, r11)
                androidx.recyclerview.widget.RecyclerView r3 = r8.mRecyclerView
                androidx.core.view.ViewCompat$1 r7 = androidx.core.view.ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR
                int r3 = r3.getLayoutDirection()
                r7 = 1
                if (r3 != r7) goto L60
                if (r2 == 0) goto L5b
                goto L68
            L5b:
                int r2 = java.lang.Math.max(r6, r10)
                goto L68
            L60:
                if (r6 == 0) goto L63
                goto L67
            L63:
                int r6 = java.lang.Math.min(r4, r2)
            L67:
                r2 = r6
            L68:
                if (r1 == 0) goto L6b
                goto L6f
            L6b:
                int r1 = java.lang.Math.min(r5, r11)
            L6f:
                if (r13 == 0) goto Laf
                android.view.View r10 = r9.getFocusedChild()
                if (r10 != 0) goto L78
                goto Lac
            L78:
                int r11 = r8.getPaddingLeft()
                int r13 = r8.getPaddingTop()
                int r3 = r8.mWidth
                int r4 = r8.getPaddingRight()
                int r3 = r3 - r4
                int r4 = r8.mHeight
                int r5 = r8.getPaddingBottom()
                int r4 = r4 - r5
                androidx.recyclerview.widget.RecyclerView r5 = r8.mRecyclerView
                android.graphics.Rect r5 = r5.mTempRect
                getDecoratedBoundsWithMargins(r10, r5)
                int r10 = r5.left
                int r10 = r10 - r2
                if (r10 >= r3) goto Lac
                int r10 = r5.right
                int r10 = r10 - r2
                if (r10 <= r11) goto Lac
                int r10 = r5.top
                int r10 = r10 - r1
                if (r10 >= r4) goto Lac
                int r10 = r5.bottom
                int r10 = r10 - r1
                if (r10 > r13) goto Laa
                goto Lac
            Laa:
                r10 = 1
                goto Lad
            Lac:
                r10 = 0
            Lad:
                if (r10 == 0) goto Lb4
            Laf:
                if (r2 != 0) goto Lb5
                if (r1 == 0) goto Lb4
                goto Lb5
            Lb4:
                return r0
            Lb5:
                if (r12 == 0) goto Lbb
                r9.scrollBy(r2, r1)
                goto Lbe
            Lbb:
                r9.smoothScrollBy$1(r2, r1, r0)
            Lbe:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public int scrollHorizontallyBy(int i, Recycler recycler, State state) {
            return 0;
        }

        public int scrollVerticallyBy(int i, Recycler recycler, State state) {
            return 0;
        }

        public final void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void setMeasureSpecs(int i, int i2) {
            this.mWidth = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.mWidthMode = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.mHeightMode = mode2;
            if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.mHeight = 0;
        }

        public final void setMeasuredDimensionFromChildren(int i, int i2) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i8 = rect.left;
                if (i8 < i5) {
                    i5 = i8;
                }
                int i9 = rect.right;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                if (i10 < i6) {
                    i6 = i10;
                }
                int i11 = rect.bottom;
                if (i11 > i4) {
                    i4 = i11;
                }
            }
            this.mRecyclerView.mTempRect.set(i5, i6, i3, i4);
            Rect rect2 = this.mRecyclerView.mTempRect;
            int paddingRight = getPaddingRight() + getPaddingLeft() + rect2.width();
            int paddingBottom = getPaddingBottom() + getPaddingTop() + rect2.height();
            RecyclerView recyclerView = this.mRecyclerView;
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            this.mRecyclerView.setMeasuredDimension(chooseSize(i, paddingRight, recyclerView.getMinimumWidth()), chooseSize(i2, paddingBottom, this.mRecyclerView.getMinimumHeight()));
        }

        public final void setRecyclerView(RecyclerView recyclerView) {
            int height;
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                height = 0;
                this.mWidth = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                height = recyclerView.getHeight();
            }
            this.mHeight = height;
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        public boolean shouldMeasureTwice() {
            return false;
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public final Rect mDecorInsets;
        public boolean mInsetsDirty;
        public boolean mPendingInvalidate;
        public ViewHolder mViewHolder;

        public LayoutParams() {
            super(-2, -2);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public final int getViewLayoutPosition() {
            return this.mViewHolder.getLayoutPosition();
        }
    }

    /* loaded from: classes.dex */
    public interface OnItemTouchListener {
    }

    /* loaded from: classes.dex */
    public abstract class OnScrollListener {
        public void onScrolled(RecyclerView recyclerView) {
        }
    }

    /* loaded from: classes.dex */
    public final class RecycledViewPool {
        public final SparseArray mScrap = new SparseArray();
        public int mAttachCount = 0;

        /* loaded from: classes.dex */
        public final class ScrapData {
            public final ArrayList mScrapHeap = new ArrayList();
            public final int mMaxScrap = 5;
            public long mCreateRunningAverageNs = 0;
            public long mBindRunningAverageNs = 0;
        }

        public final ScrapData getScrapDataForType(int i) {
            SparseArray sparseArray = this.mScrap;
            ScrapData scrapData = (ScrapData) sparseArray.get(i);
            if (scrapData != null) {
                return scrapData;
            }
            ScrapData scrapData2 = new ScrapData();
            sparseArray.put(i, scrapData2);
            return scrapData2;
        }
    }

    /* loaded from: classes.dex */
    public final class Recycler {
        public final ArrayList mAttachedScrap;
        public final ArrayList mCachedViews;
        public ArrayList mChangedScrap;
        public RecycledViewPool mRecyclerPool;
        public final int mRequestedCacheMax;
        public final List mUnmodifiableAttachedScrap;
        public int mViewCacheMax;

        public Recycler() {
            ArrayList arrayList = new ArrayList();
            this.mAttachedScrap = arrayList;
            this.mChangedScrap = null;
            this.mCachedViews = new ArrayList();
            this.mUnmodifiableAttachedScrap = Collections.unmodifiableList(arrayList);
            this.mRequestedCacheMax = 2;
            this.mViewCacheMax = 2;
        }

        public final void addViewHolderToRecycledViewPool(ViewHolder viewHolder, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(viewHolder);
            View view = viewHolder.itemView;
            RecyclerView recyclerView = RecyclerView.this;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = recyclerView.mAccessibilityDelegate;
            if (recyclerViewAccessibilityDelegate != null) {
                RecyclerViewAccessibilityDelegate.ItemDelegate itemDelegate = recyclerViewAccessibilityDelegate.mItemDelegate;
                ViewCompat.setAccessibilityDelegate(view, itemDelegate instanceof RecyclerViewAccessibilityDelegate.ItemDelegate ? (AccessibilityDelegateCompat) itemDelegate.mOriginalItemDelegates.remove(view) : null);
            }
            if (z) {
                ArrayList arrayList = recyclerView.mRecyclerListeners;
                if (arrayList.size() > 0) {
                    Fragment$$ExternalSyntheticOutline0.m(arrayList.get(0));
                    throw null;
                }
                Adapter adapter = recyclerView.mAdapter;
                if (adapter != null) {
                    adapter.onViewRecycled(viewHolder);
                }
                if (recyclerView.mState != null) {
                    recyclerView.mViewInfoStore.removeViewHolder(viewHolder);
                }
            }
            viewHolder.mBindingAdapter = null;
            viewHolder.mOwnerRecyclerView = null;
            if (this.mRecyclerPool == null) {
                this.mRecyclerPool = new RecycledViewPool();
            }
            RecycledViewPool recycledViewPool = this.mRecyclerPool;
            recycledViewPool.getClass();
            int itemViewType = viewHolder.getItemViewType();
            ArrayList arrayList2 = recycledViewPool.getScrapDataForType(itemViewType).mScrapHeap;
            if (((RecycledViewPool.ScrapData) recycledViewPool.mScrap.get(itemViewType)).mMaxScrap <= arrayList2.size()) {
                return;
            }
            viewHolder.resetInternal();
            arrayList2.add(viewHolder);
        }

        public final void recycleAndClearCachedViews() {
            ArrayList arrayList = this.mCachedViews;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    recycleCachedViewAt(size);
                }
            }
            arrayList.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = RecyclerView.this.mPrefetchRegistry;
                int[] iArr = layoutPrefetchRegistryImpl.mPrefetchArray;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                layoutPrefetchRegistryImpl.mCount = 0;
            }
        }

        public final void recycleCachedViewAt(int i) {
            ArrayList arrayList = this.mCachedViews;
            addViewHolderToRecycledViewPool((ViewHolder) arrayList.get(i), true);
            arrayList.remove(i);
        }

        public final void recycleView(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            boolean isTmpDetached = childViewHolderInt.isTmpDetached();
            RecyclerView recyclerView = RecyclerView.this;
            if (isTmpDetached) {
                recyclerView.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            recycleViewHolderInternal(childViewHolderInt);
            if (recyclerView.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
                return;
            }
            recyclerView.mItemAnimator.endAnimation(childViewHolderInt);
        }

        /* JADX WARN: Code restructure failed: missing block: B:49:0x007d, code lost:
        
            if (r6 == false) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x007f, code lost:
        
            r5 = r5 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0081, code lost:
        
            if (r5 < 0) goto L79;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0083, code lost:
        
            r6 = ((androidx.recyclerview.widget.RecyclerView.ViewHolder) r4.get(r5)).mPosition;
            r7 = r1.mPrefetchRegistry;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x008f, code lost:
        
            if (r7.mPrefetchArray == null) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
        
            r8 = r7.mCount * 2;
            r9 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0096, code lost:
        
            if (r9 >= r8) goto L84;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x009c, code lost:
        
            if (r7.mPrefetchArray[r9] != r6) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00a0, code lost:
        
            r9 = r9 + 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x009e, code lost:
        
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00a4, code lost:
        
            if (r6 != false) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00a6, code lost:
        
            r5 = r5 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00a3, code lost:
        
            r6 = false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void recycleViewHolderInternal(androidx.recyclerview.widget.RecyclerView.ViewHolder r12) {
            /*
                Method dump skipped, instructions count: 298
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.recycleViewHolderInternal(androidx.recyclerview.widget.RecyclerView$ViewHolder):void");
        }

        public final void scrapView(View view) {
            ArrayList arrayList;
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            boolean hasAnyOfTheFlags = childViewHolderInt.hasAnyOfTheFlags(12);
            RecyclerView recyclerView = RecyclerView.this;
            if (!hasAnyOfTheFlags && childViewHolderInt.isUpdated()) {
                DefaultItemAnimator defaultItemAnimator = recyclerView.mItemAnimator;
                if (!(defaultItemAnimator == null || defaultItemAnimator.canReuseUpdatedViewHolder(childViewHolderInt, childViewHolderInt.getUnmodifiedPayloads()))) {
                    if (this.mChangedScrap == null) {
                        this.mChangedScrap = new ArrayList();
                    }
                    childViewHolderInt.setScrapContainer(this, true);
                    arrayList = this.mChangedScrap;
                    arrayList.add(childViewHolderInt);
                }
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !recyclerView.mAdapter.hasStableIds()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + recyclerView.exceptionLabel());
            }
            childViewHolderInt.setScrapContainer(this, false);
            arrayList = this.mAttachedScrap;
            arrayList.add(childViewHolderInt);
        }

        /* JADX WARN: Code restructure failed: missing block: B:257:0x043f, code lost:
        
            if ((r12 == 0 || r12 + r10 < r27) == false) goto L241;
         */
        /* JADX WARN: Removed duplicated region for block: B:127:0x0240  */
        /* JADX WARN: Removed duplicated region for block: B:191:0x0328  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:217:0x03ba  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x03cd  */
        /* JADX WARN: Removed duplicated region for block: B:226:0x03f8  */
        /* JADX WARN: Removed duplicated region for block: B:232:0x04ca  */
        /* JADX WARN: Removed duplicated region for block: B:236:0x04e8 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:240:0x04cf  */
        /* JADX WARN: Removed duplicated region for block: B:246:0x0407  */
        /* JADX WARN: Removed duplicated region for block: B:252:0x042a  */
        /* JADX WARN: Removed duplicated region for block: B:261:0x0460  */
        /* JADX WARN: Removed duplicated region for block: B:264:0x046f  */
        /* JADX WARN: Removed duplicated region for block: B:268:0x047a  */
        /* JADX WARN: Removed duplicated region for block: B:287:0x04bf  */
        /* JADX WARN: Removed duplicated region for block: B:290:0x04ba  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0147  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.recyclerview.widget.RecyclerView.ViewHolder tryGetViewHolderForPositionByDeadline(int r26, long r27) {
            /*
                Method dump skipped, instructions count: 1311
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.tryGetViewHolderForPositionByDeadline(int, long):androidx.recyclerview.widget.RecyclerView$ViewHolder");
        }

        public final void unscrapView(ViewHolder viewHolder) {
            (viewHolder.mInChangeScrap ? this.mChangedScrap : this.mAttachedScrap).remove(viewHolder);
            viewHolder.mScrapContainer = null;
            viewHolder.mInChangeScrap = false;
            viewHolder.clearReturnedFromScrapFlag();
        }

        public final void updateViewCacheSize() {
            LayoutManager layoutManager = RecyclerView.this.mLayout;
            this.mViewCacheMax = this.mRequestedCacheMax + (layoutManager != null ? layoutManager.mPrefetchMaxCountObserved : 0);
            ArrayList arrayList = this.mCachedViews;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0 || arrayList.size() <= this.mViewCacheMax) {
                    return;
                } else {
                    recycleCachedViewAt(size);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class RecyclerViewDataObserver extends AdapterDataObserver {
        public RecyclerViewDataObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onChanged() {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            recyclerView.mState.mStructureChanged = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (recyclerView.mAdapterHelper.hasPendingUpdates()) {
                return;
            }
            recyclerView.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            AdapterHelper adapterHelper = recyclerView.mAdapterHelper;
            boolean z = false;
            if (i2 < 1) {
                adapterHelper.getClass();
            } else {
                ArrayList arrayList = adapterHelper.mPendingUpdates;
                arrayList.add(adapterHelper.obtainUpdateOp(4, i, i2, obj));
                adapterHelper.mExistingUpdateTypes |= 4;
                z = arrayList.size() == 1;
            }
            if (z) {
                triggerUpdateProcessor();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            AdapterHelper adapterHelper = recyclerView.mAdapterHelper;
            boolean z = false;
            if (i2 < 1) {
                adapterHelper.getClass();
            } else {
                ArrayList arrayList = adapterHelper.mPendingUpdates;
                arrayList.add(adapterHelper.obtainUpdateOp(1, i, i2, null));
                adapterHelper.mExistingUpdateTypes |= 1;
                z = arrayList.size() == 1;
            }
            if (z) {
                triggerUpdateProcessor();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0023, code lost:
        
            if (r2.size() == 1) goto L9;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onItemRangeMoved(int r5, int r6) {
            /*
                r4 = this;
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                r1 = 0
                r0.assertNotInLayoutOrScroll(r1)
                androidx.recyclerview.widget.AdapterHelper r0 = r0.mAdapterHelper
                r0.getClass()
                if (r5 != r6) goto Le
                goto L26
            Le:
                java.util.ArrayList r2 = r0.mPendingUpdates
                r3 = 8
                androidx.recyclerview.widget.AdapterHelper$UpdateOp r5 = r0.obtainUpdateOp(r3, r5, r6, r1)
                r2.add(r5)
                int r5 = r0.mExistingUpdateTypes
                r5 = r5 | r3
                r0.mExistingUpdateTypes = r5
                int r5 = r2.size()
                r6 = 1
                if (r5 != r6) goto L26
                goto L27
            L26:
                r6 = 0
            L27:
                if (r6 == 0) goto L2c
                r4.triggerUpdateProcessor()
            L2c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.RecyclerViewDataObserver.onItemRangeMoved(int, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            AdapterHelper adapterHelper = recyclerView.mAdapterHelper;
            boolean z = false;
            if (i2 < 1) {
                adapterHelper.getClass();
            } else {
                ArrayList arrayList = adapterHelper.mPendingUpdates;
                arrayList.add(adapterHelper.obtainUpdateOp(2, i, i2, null));
                adapterHelper.mExistingUpdateTypes |= 2;
                z = arrayList.size() == 1;
            }
            if (z) {
                triggerUpdateProcessor();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onStateRestorationPolicyChanged() {
            Adapter adapter;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mPendingSavedState == null || (adapter = recyclerView.mAdapter) == null || !adapter.canRestoreState()) {
                return;
            }
            recyclerView.requestLayout();
        }

        public final void triggerUpdateProcessor() {
            boolean z = RecyclerView.POST_UPDATES_ON_ANIMATION;
            RecyclerView recyclerView = RecyclerView.this;
            if (z) {
                recyclerView.getClass();
            }
            recyclerView.mAdapterUpdateDuringMeasure = true;
            recyclerView.requestLayout();
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator() { // from class: androidx.recyclerview.widget.RecyclerView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public Parcelable mLayoutState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mLayoutState = parcel.readParcelable(classLoader == null ? LayoutManager.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mSuperState, i);
            parcel.writeParcelable(this.mLayoutState, 0);
        }
    }

    /* loaded from: classes.dex */
    public final class State {
        public long mFocusedItemId;
        public int mFocusedItemPosition;
        public int mFocusedSubChildId;
        public final int mTargetPosition = -1;
        public int mPreviousLayoutItemCount = 0;
        public int mDeletedInvisibleItemCountSincePreviousLayout = 0;
        public int mLayoutStep = 1;
        public int mItemCount = 0;
        public boolean mStructureChanged = false;
        public boolean mInPreLayout = false;
        public boolean mTrackOldChangeHolders = false;
        public boolean mIsMeasuring = false;
        public boolean mRunSimpleAnimations = false;
        public boolean mRunPredictiveAnimations = false;

        public final void assertLayoutStep(int i) {
            if ((this.mLayoutStep & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.mLayoutStep));
        }

        public final int getItemCount() {
            return this.mInPreLayout ? this.mPreviousLayoutItemCount - this.mDeletedInvisibleItemCountSincePreviousLayout : this.mItemCount;
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.mTargetPosition + ", mData=null, mItemCount=" + this.mItemCount + ", mIsMeasuring=" + this.mIsMeasuring + ", mPreviousLayoutItemCount=" + this.mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + this.mStructureChanged + ", mInPreLayout=" + this.mInPreLayout + ", mRunSimpleAnimations=" + this.mRunSimpleAnimations + ", mRunPredictiveAnimations=" + this.mRunPredictiveAnimations + '}';
        }
    }

    /* loaded from: classes.dex */
    public final class ViewFlinger implements Runnable {
        public boolean mEatRunOnAnimationRequest;
        public Interpolator mInterpolator;
        public int mLastFlingX;
        public int mLastFlingY;
        public OverScroller mOverScroller;
        public boolean mReSchedulePostAnimationCallback;

        public ViewFlinger() {
            AnonymousClass3 anonymousClass3 = RecyclerView.sQuinticInterpolator;
            this.mInterpolator = anonymousClass3;
            this.mEatRunOnAnimationRequest = false;
            this.mReSchedulePostAnimationCallback = false;
            this.mOverScroller = new OverScroller(RecyclerView.this.getContext(), anonymousClass3);
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout == null) {
                recyclerView.removeCallbacks(this);
                this.mOverScroller.abortAnimation();
                return;
            }
            this.mReSchedulePostAnimationCallback = false;
            this.mEatRunOnAnimationRequest = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.mOverScroller;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.mLastFlingX;
                int i4 = currY - this.mLastFlingY;
                this.mLastFlingX = currX;
                this.mLastFlingY = currY;
                int[] iArr = recyclerView.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView.getScrollingChildHelper().dispatchNestedPreScroll(i3, i4, iArr, null, 1)) {
                    i3 -= iArr[0];
                    i4 -= iArr[1];
                }
                if (recyclerView.getOverScrollMode() != 2) {
                    recyclerView.considerReleasingGlowsOnScroll(i3, i4);
                }
                if (recyclerView.mAdapter != null) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    recyclerView.scrollStep(iArr, i3, i4);
                    i = iArr[0];
                    i2 = iArr[1];
                    i3 -= i;
                    i4 -= i2;
                    recyclerView.mLayout.getClass();
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (!recyclerView.mItemDecorations.isEmpty()) {
                    recyclerView.invalidate();
                }
                iArr[0] = 0;
                iArr[1] = 0;
                recyclerView.getScrollingChildHelper().dispatchNestedScrollInternal(i, i2, i3, i4, null, 1, iArr);
                int i5 = i3 - iArr[0];
                int i6 = i4 - iArr[1];
                if (i != 0 || i2 != 0) {
                    recyclerView.dispatchOnScrolled(i, i2);
                }
                if (!recyclerView.awakenScrollBars()) {
                    recyclerView.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                recyclerView.mLayout.getClass();
                if (z) {
                    if (recyclerView.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                        if (i6 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i6 <= 0) {
                            currVelocity = 0;
                        }
                        if (i7 < 0) {
                            recyclerView.ensureLeftGlow();
                            if (recyclerView.mLeftGlow.isFinished()) {
                                recyclerView.mLeftGlow.onAbsorb(-i7);
                            }
                        } else if (i7 > 0) {
                            recyclerView.ensureRightGlow();
                            if (recyclerView.mRightGlow.isFinished()) {
                                recyclerView.mRightGlow.onAbsorb(i7);
                            }
                        }
                        if (currVelocity < 0) {
                            recyclerView.ensureTopGlow();
                            if (recyclerView.mTopGlow.isFinished()) {
                                recyclerView.mTopGlow.onAbsorb(-currVelocity);
                            }
                        } else if (currVelocity > 0) {
                            recyclerView.ensureBottomGlow();
                            if (recyclerView.mBottomGlow.isFinished()) {
                                recyclerView.mBottomGlow.onAbsorb(currVelocity);
                            }
                        }
                        if (i7 != 0 || currVelocity != 0) {
                            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                            recyclerView.postInvalidateOnAnimation();
                        }
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
                        int[] iArr2 = layoutPrefetchRegistryImpl.mPrefetchArray;
                        if (iArr2 != null) {
                            Arrays.fill(iArr2, -1);
                        }
                        layoutPrefetchRegistryImpl.mCount = 0;
                    }
                } else {
                    if (this.mEatRunOnAnimationRequest) {
                        this.mReSchedulePostAnimationCallback = true;
                    } else {
                        recyclerView.removeCallbacks(this);
                        ViewCompat.AnonymousClass1 anonymousClass12 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                        recyclerView.postOnAnimation(this);
                    }
                    GapWorker gapWorker = recyclerView.mGapWorker;
                    if (gapWorker != null) {
                        gapWorker.postFromTraversal(recyclerView, i, i2);
                    }
                }
            }
            recyclerView.mLayout.getClass();
            this.mEatRunOnAnimationRequest = false;
            if (!this.mReSchedulePostAnimationCallback) {
                recyclerView.setScrollState(0);
                recyclerView.getScrollingChildHelper().stopNestedScroll(1);
            } else {
                recyclerView.removeCallbacks(this);
                ViewCompat.AnonymousClass1 anonymousClass13 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                recyclerView.postOnAnimation(this);
            }
        }

        public final void smoothScrollBy(int i, int i2, int i3, Interpolator interpolator) {
            RecyclerView recyclerView = RecyclerView.this;
            if (i3 == Integer.MIN_VALUE) {
                int abs = Math.abs(i);
                int abs2 = Math.abs(i2);
                boolean z = abs > abs2;
                int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
                if (!z) {
                    abs = abs2;
                }
                i3 = Math.min((int) (((abs / width) + 1.0f) * 300.0f), TedPermissionUtil.REQ_CODE_REQUEST_SETTING);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            if (this.mInterpolator != interpolator) {
                this.mInterpolator = interpolator;
                this.mOverScroller = new OverScroller(recyclerView.getContext(), interpolator);
            }
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            recyclerView.setScrollState(2);
            this.mOverScroller.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.mOverScroller.computeScrollOffset();
            }
            if (this.mEatRunOnAnimationRequest) {
                this.mReSchedulePostAnimationCallback = true;
                return;
            }
            recyclerView.removeCallbacks(this);
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            recyclerView.postOnAnimation(this);
        }
    }

    /* loaded from: classes.dex */
    public abstract class ViewHolder {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        Adapter mBindingAdapter;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        ViewHolder mShadowedHolder = null;
        ViewHolder mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        Recycler mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public ViewHolder(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(FLAG_ADAPTER_FULLUPDATE);
                return;
            }
            if ((FLAG_ADAPTER_FULLUPDATE & this.mFlags) == 0) {
                if (this.mPayloads == null) {
                    ArrayList arrayList = new ArrayList();
                    this.mPayloads = arrayList;
                    this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
                }
                this.mPayloads.add(obj);
            }
        }

        public void addFlags(int i) {
            this.mFlags = i | this.mFlags;
        }

        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        public boolean doesTransientStatePreventRecycling() {
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                if (view.hasTransientState()) {
                    return true;
                }
            }
            return false;
        }

        public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionInRecyclerView(this);
        }

        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final Adapter getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            Adapter adapter;
            int adapterPositionInRecyclerView;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.mAdapter) == null || (adapterPositionInRecyclerView = recyclerView.getAdapterPositionInRecyclerView(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.mBindingAdapter, this, adapterPositionInRecyclerView);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i = this.mPreLayoutPosition;
            return i == -1 ? this.mPosition : i;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        public final int getPosition() {
            int i = this.mPreLayoutPosition;
            return i == -1 ? this.mPosition : i;
        }

        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & FLAG_ADAPTER_FULLUPDATE) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        public boolean hasAnyOfTheFlags(int i) {
            return (i & this.mFlags) != 0;
        }

        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                if (!view.hasTransientState()) {
                    return true;
                }
            }
            return false;
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        public boolean isTmpDetached() {
            return (this.mFlags & FLAG_TMP_DETACHED) != 0;
        }

        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        public void offsetPosition(int i, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i;
            }
            this.mPosition += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).mInsetsDirty = true;
            }
        }

        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i = this.mPendingAccessibilityState;
            if (i == -1) {
                View view = this.itemView;
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                i = view.getImportantForAccessibility();
            }
            this.mWasImportantForAccessibilityBeforeHidden = i;
            if (recyclerView.isComputingLayout()) {
                this.mPendingAccessibilityState = 4;
                recyclerView.mPendingAccessibilityImportanceChange.add(this);
            } else {
                View view2 = this.itemView;
                ViewCompat.AnonymousClass1 anonymousClass12 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                view2.setImportantForAccessibility(4);
            }
        }

        public void onLeftHiddenState(RecyclerView recyclerView) {
            int i = this.mWasImportantForAccessibilityBeforeHidden;
            if (recyclerView.isComputingLayout()) {
                this.mPendingAccessibilityState = i;
                recyclerView.mPendingAccessibilityImportanceChange.add(this);
            } else {
                View view = this.itemView;
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                view.setImportantForAccessibility(i);
            }
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        public void setFlags(int i, int i2) {
            this.mFlags = (i & i2) | (this.mFlags & (~i2));
        }

        public final void setIsRecyclable(boolean z) {
            int i;
            int i2 = this.mIsRecyclableCount;
            int i3 = z ? i2 - 1 : i2 + 1;
            this.mIsRecyclableCount = i3;
            if (i3 < 0) {
                this.mIsRecyclableCount = 0;
                toString();
                return;
            }
            if (!z && i3 == 1) {
                i = this.mFlags | 16;
            } else if (!z || i3 != 0) {
                return;
            } else {
                i = this.mFlags & (-17);
            }
            this.mFlags = i;
        }

        public void setScrapContainer(Recycler recycler, boolean z) {
            this.mScrapContainer = recycler;
            this.mInChangeScrap = z;
        }

        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & FLAG_IGNORE) != 0;
        }

        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public void unScrap() {
            this.mScrapContainer.unscrapView(this);
        }

        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.recyclerview.widget.RecyclerView$3] */
    static {
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = Build.VERSION.SDK_INT >= 23;
        POST_UPDATES_ON_ANIMATION = true;
        ALLOW_THREAD_GAP_WORK = true;
        Class cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new Interpolator() { // from class: androidx.recyclerview.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.tawfiq.imaginstudio.imagetools.pixellab.R.attr.recyclerViewStyle);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:(1:40)(12:80|(1:82)|42|43|44|(1:46)(1:64)|47|48|49|50|51|52)|43|44|(0)(0)|47|48|49|50|51|52) */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x027d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x027f, code lost:
    
        r0 = r4.getConstructor(new java.lang.Class[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0285, code lost:
    
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0295, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0296, code lost:
    
        r0.initCause(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02b6, code lost:
    
        throw new java.lang.IllegalStateException(r21.getPositionDescription() + ": Error creating LayoutManager " + r3, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x024b A[Catch: ClassCastException -> 0x02b7, IllegalAccessException -> 0x02d6, InstantiationException -> 0x02f5, InvocationTargetException -> 0x0312, ClassNotFoundException -> 0x032f, TryCatch #4 {ClassCastException -> 0x02b7, ClassNotFoundException -> 0x032f, IllegalAccessException -> 0x02d6, InstantiationException -> 0x02f5, InvocationTargetException -> 0x0312, blocks: (B:44:0x0245, B:46:0x024b, B:47:0x0258, B:49:0x0262, B:52:0x0287, B:57:0x027f, B:61:0x0296, B:62:0x02b6, B:64:0x0254), top: B:43:0x0245 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0254 A[Catch: ClassCastException -> 0x02b7, IllegalAccessException -> 0x02d6, InstantiationException -> 0x02f5, InvocationTargetException -> 0x0312, ClassNotFoundException -> 0x032f, TryCatch #4 {ClassCastException -> 0x02b7, ClassNotFoundException -> 0x032f, IllegalAccessException -> 0x02d6, InstantiationException -> 0x02f5, InvocationTargetException -> 0x0312, blocks: (B:44:0x0245, B:46:0x024b, B:47:0x0258, B:49:0x0262, B:52:0x0287, B:57:0x027f, B:61:0x0296, B:62:0x02b6, B:64:0x0254), top: B:43:0x0245 }] */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.recyclerview.widget.RecyclerView$2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RecyclerView(android.content.Context r20, android.util.AttributeSet r21, int r22) {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public static void clearNestedRecyclerViewIfNotNested(ViewHolder viewHolder) {
        WeakReference<RecyclerView> weakReference = viewHolder.mNestedRecyclerView;
        if (weakReference != null) {
            Object obj = weakReference.get();
            while (true) {
                for (View view = (View) obj; view != null; view = null) {
                    if (view == viewHolder.itemView) {
                        return;
                    }
                    obj = view.getParent();
                    if (obj instanceof View) {
                        break;
                    }
                }
                viewHolder.mNestedRecyclerView = null;
                return;
            }
        }
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i));
            if (findNestedRecyclerView != null) {
                return findNestedRecyclerView;
            }
        }
        return null;
    }

    public static ViewHolder getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).mViewHolder;
    }

    public static long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public final void addAnimatingView(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.unscrapView(getChildViewHolder(view));
        if (viewHolder.isTmpDetached()) {
            this.mChildHelper.attachViewToParent(view, -1, view.getLayoutParams(), true);
            return;
        }
        ChildHelper childHelper = this.mChildHelper;
        if (!z) {
            childHelper.addView(view, -1, true);
            return;
        }
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild >= 0) {
            childHelper.mBucket.set(indexOfChild);
            childHelper.hideViewInternal(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        super.addFocusables(arrayList, i, i2);
    }

    public final void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        if (this.mDispatchScrollCounter > 0) {
            new IllegalStateException("" + exceptionLabel());
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (!(layoutParams instanceof LayoutParams)) {
            return false;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        this.mLayout.getClass();
        return layoutParams2 != null;
    }

    public final void clearOldPositions() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.mCachedViews;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((ViewHolder) arrayList.get(i2)).clearOldPosition();
        }
        ArrayList arrayList2 = recycler.mAttachedScrap;
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((ViewHolder) arrayList2.get(i3)).clearOldPosition();
        }
        ArrayList arrayList3 = recycler.mChangedScrap;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                ((ViewHolder) recycler.mChangedScrap.get(i4)).clearOldPosition();
            }
        }
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    public final void considerReleasingGlowsOnScroll(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.mLeftGlow.onRelease();
            z = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.mRightGlow.onRelease();
            z |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.mTopGlow.onRelease();
            z |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.mBottomGlow.onRelease();
            z |= this.mBottomGlow.isFinished();
        }
        if (z) {
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            postInvalidateOnAnimation();
        }
    }

    public final void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            int i = TraceCompat.$r8$clinit;
            Trace.beginSection("RV FullInvalidate");
            dispatchLayout();
            Trace.endSection();
            return;
        }
        if (this.mAdapterHelper.hasPendingUpdates()) {
            AdapterHelper adapterHelper = this.mAdapterHelper;
            int i2 = adapterHelper.mExistingUpdateTypes;
            boolean z = false;
            if ((4 & i2) != 0) {
                if (!((i2 & 11) != 0)) {
                    int i3 = TraceCompat.$r8$clinit;
                    Trace.beginSection("RV PartialInvalidate");
                    startInterceptRequestLayout();
                    onEnterLayoutOrScroll();
                    this.mAdapterHelper.preProcess();
                    if (!this.mLayoutWasDefered) {
                        int childCount = this.mChildHelper.getChildCount();
                        int i4 = 0;
                        while (true) {
                            if (i4 < childCount) {
                                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i4));
                                if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                                    z = true;
                                    break;
                                }
                                i4++;
                            } else {
                                break;
                            }
                        }
                        if (z) {
                            dispatchLayout();
                        } else {
                            this.mAdapterHelper.consumePostponedUpdates();
                        }
                    }
                    stopInterceptRequestLayout(true);
                    onExitLayoutOrScroll(true);
                    Trace.endSection();
                }
            }
            if (adapterHelper.hasPendingUpdates()) {
                int i5 = TraceCompat.$r8$clinit;
                Trace.beginSection("RV FullInvalidate");
                dispatchLayout();
                Trace.endSection();
            }
        }
    }

    public final void defaultOnMeasure(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        setMeasuredDimension(LayoutManager.chooseSize(i, paddingRight, getMinimumWidth()), LayoutManager.chooseSize(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:172:0x035d, code lost:
    
        if (r18.mChildHelper.isHidden(getFocusedChild()) == false) goto L241;
     */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0300 A[LOOP:3: B:147:0x02fe->B:148:0x0300, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x03b2 A[EDGE_INSN: B:242:0x03b2->B:196:0x03b2 BREAK  A[LOOP:4: B:182:0x0384->B:193:0x03ae], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dispatchLayout() {
        /*
            Method dump skipped, instructions count: 1076
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.dispatchLayout():void");
    }

    public final void dispatchLayoutStep1() {
        int id;
        View findContainingItemView;
        State state = this.mState;
        state.assertLayoutStep(1);
        fillRemainingScrollValues(state);
        state.mIsMeasuring = false;
        startInterceptRequestLayout();
        ViewInfoStore viewInfoStore = this.mViewInfoStore;
        viewInfoStore.mLayoutHolderMap.clear();
        LongSparseArray longSparseArray = viewInfoStore.mOldChangedHolders;
        int i = longSparseArray.mSize;
        Object[] objArr = longSparseArray.mValues;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        longSparseArray.mSize = 0;
        longSparseArray.mGarbage = false;
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        ViewHolder childViewHolder = (focusedChild == null || (findContainingItemView = findContainingItemView(focusedChild)) == null) ? null : getChildViewHolder(findContainingItemView);
        if (childViewHolder == null) {
            state.mFocusedItemId = -1L;
            state.mFocusedItemPosition = -1;
            state.mFocusedSubChildId = -1;
        } else {
            state.mFocusedItemId = this.mAdapter.hasStableIds() ? childViewHolder.getItemId() : -1L;
            state.mFocusedItemPosition = this.mDataSetHasChangedAfterLayout ? -1 : childViewHolder.isRemoved() ? childViewHolder.mOldPosition : childViewHolder.getAbsoluteAdapterPosition();
            View view = childViewHolder.itemView;
            loop4: while (true) {
                id = view.getId();
                while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                    view = ((ViewGroup) view).getFocusedChild();
                    if (view.getId() != -1) {
                        break;
                    }
                }
            }
            state.mFocusedSubChildId = id;
        }
        state.mTrackOldChangeHolders = state.mRunSimpleAnimations && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        state.mInPreLayout = state.mRunPredictiveAnimations;
        state.mItemCount = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        boolean z = state.mRunSimpleAnimations;
        DefaultItemAnimator defaultItemAnimator = this.mItemAnimator;
        SimpleArrayMap simpleArrayMap = viewInfoStore.mLayoutHolderMap;
        if (z) {
            int childCount = this.mChildHelper.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i3));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    ItemAnimator.buildAdapterChangeFlagsForAnimations(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    defaultItemAnimator.getClass();
                    ItemAnimator.ItemHolderInfo itemHolderInfo = new ItemAnimator.ItemHolderInfo();
                    View view2 = childViewHolderInt.itemView;
                    itemHolderInfo.left = view2.getLeft();
                    itemHolderInfo.top = view2.getTop();
                    view2.getRight();
                    view2.getBottom();
                    ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap.getOrDefault(childViewHolderInt, null);
                    if (infoRecord == null) {
                        infoRecord = ViewInfoStore.InfoRecord.obtain();
                        simpleArrayMap.put(childViewHolderInt, infoRecord);
                    }
                    infoRecord.preInfo = itemHolderInfo;
                    infoRecord.flags |= 4;
                    if (state.mTrackOldChangeHolders && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        viewInfoStore.mOldChangedHolders.put(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (state.mRunPredictiveAnimations) {
            int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
            for (int i4 = 0; i4 < unfilteredChildCount; i4++) {
                ViewHolder childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i4));
                if (!childViewHolderInt2.shouldIgnore()) {
                    childViewHolderInt2.saveOldPosition();
                }
            }
            boolean z2 = state.mStructureChanged;
            state.mStructureChanged = false;
            this.mLayout.onLayoutChildren(this.mRecycler, state);
            state.mStructureChanged = z2;
            for (int i5 = 0; i5 < this.mChildHelper.getChildCount(); i5++) {
                ViewHolder childViewHolderInt3 = getChildViewHolderInt(this.mChildHelper.getChildAt(i5));
                if (!childViewHolderInt3.shouldIgnore()) {
                    ViewInfoStore.InfoRecord infoRecord2 = (ViewInfoStore.InfoRecord) simpleArrayMap.getOrDefault(childViewHolderInt3, null);
                    if (!((infoRecord2 == null || (infoRecord2.flags & 4) == 0) ? false : true)) {
                        ItemAnimator.buildAdapterChangeFlagsForAnimations(childViewHolderInt3);
                        boolean hasAnyOfTheFlags = childViewHolderInt3.hasAnyOfTheFlags(8192);
                        childViewHolderInt3.getUnmodifiedPayloads();
                        defaultItemAnimator.getClass();
                        ItemAnimator.ItemHolderInfo itemHolderInfo2 = new ItemAnimator.ItemHolderInfo();
                        View view3 = childViewHolderInt3.itemView;
                        itemHolderInfo2.left = view3.getLeft();
                        itemHolderInfo2.top = view3.getTop();
                        view3.getRight();
                        view3.getBottom();
                        if (hasAnyOfTheFlags) {
                            recordAnimationInfoIfBouncedHiddenView(childViewHolderInt3, itemHolderInfo2);
                        } else {
                            ViewInfoStore.InfoRecord infoRecord3 = (ViewInfoStore.InfoRecord) simpleArrayMap.getOrDefault(childViewHolderInt3, null);
                            if (infoRecord3 == null) {
                                infoRecord3 = ViewInfoStore.InfoRecord.obtain();
                                simpleArrayMap.put(childViewHolderInt3, infoRecord3);
                            }
                            infoRecord3.flags |= 2;
                            infoRecord3.preInfo = itemHolderInfo2;
                        }
                    }
                }
            }
        }
        clearOldPositions();
        onExitLayoutOrScroll(true);
        stopInterceptRequestLayout(false);
        state.mLayoutStep = 2;
    }

    public final void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        State state = this.mState;
        state.assertLayoutStep(6);
        this.mAdapterHelper.consumeUpdatesInOnePass();
        state.mItemCount = this.mAdapter.getItemCount();
        state.mDeletedInvisibleItemCountSincePreviousLayout = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.mLayoutState;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        state.mInPreLayout = false;
        this.mLayout.onLayoutChildren(this.mRecycler, state);
        state.mStructureChanged = false;
        state.mRunSimpleAnimations = state.mRunSimpleAnimations && this.mItemAnimator != null;
        state.mLayoutStep = 4;
        onExitLayoutOrScroll(true);
        stopInterceptRequestLayout(false);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScrollInternal(i, i2, i3, i4, iArr, 0, null);
    }

    public final void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        ArrayList arrayList = this.mScrollListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((OnScrollListener) this.mScrollListeners.get(size)).onScrolled(this);
                }
            }
        }
        this.mDispatchScrollCounter--;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        DefaultItemAnimator defaultItemAnimator;
        float f;
        float f2;
        super.draw(canvas);
        ArrayList arrayList = this.mItemDecorations;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            ((ItemDecoration) arrayList.get(i)).onDrawOver(canvas);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                f = getPaddingRight() + (-getWidth());
                f2 = getPaddingBottom() + (-getHeight());
            } else {
                f = -getWidth();
                f2 = -getHeight();
            }
            canvas.translate(f, f2);
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || (defaultItemAnimator = this.mItemAnimator) == null || arrayList.size() <= 0 || !defaultItemAnimator.isRunning()) ? z : true) {
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void ensureBottomGlow() {
        int measuredWidth;
        int measuredHeight;
        if (this.mBottomGlow != null) {
            return;
        }
        this.mEdgeEffectFactory.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mBottomGlow = edgeEffect;
        if (this.mClipToPadding) {
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        edgeEffect.setSize(measuredWidth, measuredHeight);
    }

    public final void ensureLeftGlow() {
        int measuredHeight;
        int measuredWidth;
        if (this.mLeftGlow != null) {
            return;
        }
        this.mEdgeEffectFactory.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mLeftGlow = edgeEffect;
        if (this.mClipToPadding) {
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            measuredHeight = getMeasuredHeight();
            measuredWidth = getMeasuredWidth();
        }
        edgeEffect.setSize(measuredHeight, measuredWidth);
    }

    public final void ensureRightGlow() {
        int measuredHeight;
        int measuredWidth;
        if (this.mRightGlow != null) {
            return;
        }
        this.mEdgeEffectFactory.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mRightGlow = edgeEffect;
        if (this.mClipToPadding) {
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            measuredHeight = getMeasuredHeight();
            measuredWidth = getMeasuredWidth();
        }
        edgeEffect.setSize(measuredHeight, measuredWidth);
    }

    public final void ensureTopGlow() {
        int measuredWidth;
        int measuredHeight;
        if (this.mTopGlow != null) {
            return;
        }
        this.mEdgeEffectFactory.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mTopGlow = edgeEffect;
        if (this.mClipToPadding) {
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        edgeEffect.setSize(measuredWidth, measuredHeight);
    }

    public final String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final void fillRemainingScrollValues(State state) {
        if (this.mScrollState != 2) {
            state.getClass();
            return;
        }
        OverScroller overScroller = this.mViewFlinger.mOverScroller;
        overScroller.getFinalX();
        overScroller.getCurrX();
        state.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View findContainingItemView(android.view.View r3) {
        /*
            r2 = this;
        L0:
            android.view.ViewParent r0 = r3.getParent()
            if (r0 == 0) goto L10
            if (r0 == r2) goto L10
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L10
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            goto L0
        L10:
            if (r0 != r2) goto L13
            goto L14
        L13:
            r3 = 0
        L14:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findContainingItemView(android.view.View):android.view.View");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        if (r7 == 2) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean findInterceptingOnItemTouchListener(android.view.MotionEvent r13) {
        /*
            r12 = this;
            int r0 = r13.getAction()
            java.util.ArrayList r1 = r12.mOnItemTouchListeners
            int r2 = r1.size()
            r3 = 0
            r4 = 0
        Lc:
            if (r4 >= r2) goto L6c
            java.lang.Object r5 = r1.get(r4)
            androidx.recyclerview.widget.RecyclerView$OnItemTouchListener r5 = (androidx.recyclerview.widget.RecyclerView.OnItemTouchListener) r5
            r6 = r5
            androidx.recyclerview.widget.FastScroller r6 = (androidx.recyclerview.widget.FastScroller) r6
            int r7 = r6.mState
            r8 = 1
            r9 = 2
            if (r7 != r8) goto L5c
            float r7 = r13.getX()
            float r10 = r13.getY()
            boolean r7 = r6.isPointInsideVerticalThumb(r7, r10)
            float r10 = r13.getX()
            float r11 = r13.getY()
            boolean r10 = r6.isPointInsideHorizontalThumb(r10, r11)
            int r11 = r13.getAction()
            if (r11 != 0) goto L60
            if (r7 != 0) goto L3f
            if (r10 == 0) goto L60
        L3f:
            if (r10 == 0) goto L4c
            r6.mDragState = r8
            float r7 = r13.getX()
            int r7 = (int) r7
            float r7 = (float) r7
            r6.mHorizontalDragX = r7
            goto L58
        L4c:
            if (r7 == 0) goto L58
            r6.mDragState = r9
            float r7 = r13.getY()
            int r7 = (int) r7
            float r7 = (float) r7
            r6.mVerticalDragY = r7
        L58:
            r6.setState(r9)
            goto L5e
        L5c:
            if (r7 != r9) goto L60
        L5e:
            r6 = 1
            goto L61
        L60:
            r6 = 0
        L61:
            if (r6 == 0) goto L69
            r6 = 3
            if (r0 == r6) goto L69
            r12.mInterceptingOnItemTouchListener = r5
            return r8
        L69:
            int r4 = r4 + 1
            goto Lc
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findInterceptingOnItemTouchListener(android.view.MotionEvent):boolean");
    }

    public final void findMinMaxChildLayoutPositions(int[] iArr) {
        int childCount = this.mChildHelper.getChildCount();
        if (childCount == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < childCount; i3++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i3));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i) {
                    i = layoutPosition;
                }
                if (layoutPosition > i2) {
                    i2 = layoutPosition;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public final ViewHolder findViewHolderForAdapterPosition(int i) {
        ViewHolder viewHolder = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < unfilteredChildCount; i2++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i2));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i) {
                if (!this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                viewHolder = childViewHolderInt;
            }
        }
        return viewHolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x019f, code lost:
    
        if ((r4 * r6) >= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0169, code lost:
    
        if (r11 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0187, code lost:
    
        if (r4 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x018a, code lost:
    
        if (r11 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x018d, code lost:
    
        if (r4 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0196, code lost:
    
        if ((r4 * r6) <= 0) goto L136;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007f  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View focusSearch(android.view.View r17, int r18) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.mLayout != null) {
            return new LayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.mLayout != null) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public final int getAdapterPositionInRecyclerView(ViewHolder viewHolder) {
        if (viewHolder.hasAnyOfTheFlags(524) || !viewHolder.isBound()) {
            return -1;
        }
        AdapterHelper adapterHelper = this.mAdapterHelper;
        int i = viewHolder.mPosition;
        ArrayList arrayList = adapterHelper.mPendingUpdates;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            AdapterHelper.UpdateOp updateOp = (AdapterHelper.UpdateOp) arrayList.get(i2);
            int i3 = updateOp.cmd;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = updateOp.positionStart;
                    if (i4 <= i) {
                        int i5 = updateOp.itemCount;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = updateOp.positionStart;
                    if (i6 == i) {
                        i = updateOp.itemCount;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (updateOp.itemCount <= i) {
                            i++;
                        }
                    }
                }
            } else if (updateOp.positionStart <= i) {
                i += updateOp.itemCount;
            }
        }
        return i;
    }

    @Override // android.view.View
    public final int getBaseline() {
        if (this.mLayout != null) {
            return -1;
        }
        return super.getBaseline();
    }

    public final long getChangedHolderKey(ViewHolder viewHolder) {
        return this.mAdapter.hasStableIds() ? viewHolder.getItemId() : viewHolder.mPosition;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    public final ViewHolder getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public final boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public final NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new NestedScrollingChildHelper(this);
        }
        return this.mScrollingChildHelper;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().getNestedScrollingParentForType(0) != null;
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public final boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().mIsNestedScrollingEnabled;
    }

    public final void markItemDecorInsetsDirty() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ((LayoutParams) this.mChildHelper.getUnfilteredChildAt(i).getLayoutParams()).mInsetsDirty = true;
        }
        ArrayList arrayList = this.mRecycler.mCachedViews;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            LayoutParams layoutParams = (LayoutParams) ((ViewHolder) arrayList.get(i2)).itemView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.mInsetsDirty = true;
            }
        }
    }

    public final void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int i3 = i + i2;
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i4 = 0; i4 < unfilteredChildCount; i4++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i5 = childViewHolderInt.mPosition;
                if (i5 >= i3) {
                    childViewHolderInt.offsetPosition(-i2, z);
                } else if (i5 >= i) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i - 1, -i2, z);
                }
                this.mState.mStructureChanged = true;
            }
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.mCachedViews;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                requestLayout();
                return;
            }
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            if (viewHolder != null) {
                int i6 = viewHolder.mPosition;
                if (i6 >= i3) {
                    viewHolder.offsetPosition(-i2, z);
                } else if (i6 >= i) {
                    viewHolder.addFlags(8);
                    recycler.recycleCachedViewAt(size);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
    
        if (r1 >= 30.0f) goto L19;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.mLayoutOrScrollCounter = r0
            r1 = 1
            r5.mIsAttached = r1
            boolean r2 = r5.mFirstLayoutComplete
            if (r2 == 0) goto L14
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L14
            goto L15
        L14:
            r1 = 0
        L15:
            r5.mFirstLayoutComplete = r1
            r5.mPostedAnimatorRunner = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto L5e
            java.lang.ThreadLocal r0 = androidx.recyclerview.widget.GapWorker.sGapWorker
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.GapWorker r1 = (androidx.recyclerview.widget.GapWorker) r1
            r5.mGapWorker = r1
            if (r1 != 0) goto L57
            androidx.recyclerview.widget.GapWorker r1 = new androidx.recyclerview.widget.GapWorker
            r1.<init>()
            r5.mGapWorker = r1
            androidx.core.view.ViewCompat$1 r1 = androidx.core.view.ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR
            android.view.Display r1 = r5.getDisplay()
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L49
            if (r1 == 0) goto L49
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L49
            goto L4b
        L49:
            r1 = 1114636288(0x42700000, float:60.0)
        L4b:
            androidx.recyclerview.widget.GapWorker r2 = r5.mGapWorker
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.mFrameIntervalNs = r3
            r0.set(r2)
        L57:
            androidx.recyclerview.widget.GapWorker r0 = r5.mGapWorker
            java.util.ArrayList r0 = r0.mRecyclerViews
            r0.add(r5)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        DefaultItemAnimator defaultItemAnimator = this.mItemAnimator;
        if (defaultItemAnimator != null) {
            defaultItemAnimator.endAnimations();
        }
        setScrollState(0);
        ViewFlinger viewFlinger = this.mViewFlinger;
        RecyclerView.this.removeCallbacks(viewFlinger);
        viewFlinger.mOverScroller.abortAnimation();
        this.mIsAttached = false;
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.onDetachedFromWindow();
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.getClass();
        do {
        } while (ViewInfoStore.InfoRecord.sPool.acquire() != null);
        if (!ALLOW_THREAD_GAP_WORK || (gapWorker = this.mGapWorker) == null) {
            return;
        }
        gapWorker.mRecyclerViews.remove(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.mItemDecorations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ItemDecoration) arrayList.get(i)).getClass();
        }
    }

    public final void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public final void onExitLayoutOrScroll(boolean z) {
        int i;
        int i2 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i2;
        if (i2 < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (z) {
                int i3 = this.mEatenAccessibilityChangeFlags;
                this.mEatenAccessibilityChangeFlags = 0;
                if (i3 != 0) {
                    AccessibilityManager accessibilityManager = this.mAccessibilityManager;
                    if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                        AccessibilityEvent obtain = AccessibilityEvent.obtain();
                        obtain.setEventType(2048);
                        obtain.setContentChangeTypes(i3);
                        sendAccessibilityEventUnchecked(obtain);
                    }
                }
                ArrayList arrayList = this.mPendingAccessibilityImportanceChange;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
                    if (viewHolder.itemView.getParent() == this && !viewHolder.shouldIgnore() && (i = viewHolder.mPendingAccessibilityState) != -1) {
                        View view = viewHolder.itemView;
                        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                        view.setImportantForAccessibility(i);
                        viewHolder.mPendingAccessibilityState = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0098  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            resetScroll();
            setScrollState(0);
            return true;
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            return false;
        }
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
            if (this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                getScrollingChildHelper().stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i = canScrollHorizontally;
            if (canScrollVertically) {
                i = (canScrollHorizontally ? 1 : 0) | 2;
            }
            getScrollingChildHelper().startNestedScroll(i, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            getScrollingChildHelper().stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i2 = x2 - this.mInitialTouchX;
                int i3 = y2 - this.mInitialTouchY;
                int i4 = this.mTouchSlop;
                if (canScrollHorizontally == 0 || Math.abs(i2) <= i4) {
                    z = false;
                } else {
                    this.mLastTouchX = x2;
                    z = true;
                }
                if (canScrollVertically && Math.abs(i3) > i4) {
                    this.mLastTouchY = y2;
                    z = true;
                }
                if (z) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            resetScroll();
            setScrollState(0);
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x3;
            this.mInitialTouchX = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y3;
            this.mInitialTouchY = y3;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = TraceCompat.$r8$clinit;
        Trace.beginSection("RV OnLayout");
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            defaultOnMeasure(i, i2);
            return;
        }
        boolean isAutoMeasureEnabled = layoutManager.isAutoMeasureEnabled();
        State state = this.mState;
        boolean z = false;
        if (!isAutoMeasureEnabled) {
            if (this.mAdapterUpdateDuringMeasure) {
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                processAdapterUpdatesAndSetAnimationFlags();
                onExitLayoutOrScroll(true);
                if (state.mRunPredictiveAnimations) {
                    state.mInPreLayout = true;
                } else {
                    this.mAdapterHelper.consumeUpdatesInOnePass();
                    state.mInPreLayout = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                stopInterceptRequestLayout(false);
            } else if (state.mRunPredictiveAnimations) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            Adapter adapter = this.mAdapter;
            if (adapter != null) {
                state.mItemCount = adapter.getItemCount();
            } else {
                state.mItemCount = 0;
            }
            startInterceptRequestLayout();
            this.mLayout.mRecyclerView.defaultOnMeasure(i, i2);
            stopInterceptRequestLayout(false);
            state.mInPreLayout = false;
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.mLayout.mRecyclerView.defaultOnMeasure(i, i2);
        if (mode == 1073741824 && mode2 == 1073741824) {
            z = true;
        }
        this.mLastAutoMeasureSkippedDueToExact = z;
        if (z || this.mAdapter == null) {
            return;
        }
        if (state.mLayoutStep == 1) {
            dispatchLayoutStep1();
        }
        this.mLayout.setMeasureSpecs(i, i2);
        state.mIsMeasuring = true;
        dispatchLayoutStep2();
        this.mLayout.setMeasuredDimensionFromChildren(i, i2);
        if (this.mLayout.shouldMeasureTwice()) {
            this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            state.mIsMeasuring = true;
            dispatchLayoutStep2();
            this.mLayout.setMeasuredDimensionFromChildren(i, i2);
        }
        this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
        this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
    }

    public final void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.mSuperState);
        requestLayout();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, androidx.recyclerview.widget.RecyclerView$SavedState, androidx.customview.view.AbsSavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            absSavedState.mLayoutState = savedState.mLayoutState;
        } else {
            LayoutManager layoutManager = this.mLayout;
            absSavedState.mLayoutState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        }
        return absSavedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0363, code lost:
    
        if (r1 != false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x00e2, code lost:
    
        if (r14 >= 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x013a, code lost:
    
        if (r12 >= 0) goto L60;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0216  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r23) {
        /*
            Method dump skipped, instructions count: 926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        postOnAnimation(this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void processAdapterUpdatesAndSetAnimationFlags() {
        /*
            r5 = this;
            boolean r0 = r5.mDataSetHasChangedAfterLayout
            r1 = 0
            if (r0 == 0) goto L1c
            androidx.recyclerview.widget.AdapterHelper r0 = r5.mAdapterHelper
            java.util.ArrayList r2 = r0.mPendingUpdates
            r0.recycleUpdateOpsAndClearList(r2)
            java.util.ArrayList r2 = r0.mPostponedList
            r0.recycleUpdateOpsAndClearList(r2)
            r0.mExistingUpdateTypes = r1
            boolean r0 = r5.mDispatchItemsChangedEvent
            if (r0 == 0) goto L1c
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r5.mLayout
            r0.getClass()
        L1c:
            androidx.recyclerview.widget.DefaultItemAnimator r0 = r5.mItemAnimator
            r2 = 1
            if (r0 == 0) goto L2b
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r5.mLayout
            boolean r0 = r0.supportsPredictiveItemAnimations()
            if (r0 == 0) goto L2b
            r0 = 1
            goto L2c
        L2b:
            r0 = 0
        L2c:
            if (r0 == 0) goto L34
            androidx.recyclerview.widget.AdapterHelper r0 = r5.mAdapterHelper
            r0.preProcess()
            goto L39
        L34:
            androidx.recyclerview.widget.AdapterHelper r0 = r5.mAdapterHelper
            r0.consumeUpdatesInOnePass()
        L39:
            boolean r0 = r5.mItemsAddedOrRemoved
            if (r0 != 0) goto L44
            boolean r0 = r5.mItemsChanged
            if (r0 == 0) goto L42
            goto L44
        L42:
            r0 = 0
            goto L45
        L44:
            r0 = 1
        L45:
            boolean r3 = r5.mFirstLayoutComplete
            if (r3 == 0) goto L65
            androidx.recyclerview.widget.DefaultItemAnimator r3 = r5.mItemAnimator
            if (r3 == 0) goto L65
            boolean r3 = r5.mDataSetHasChangedAfterLayout
            if (r3 != 0) goto L59
            if (r0 != 0) goto L59
            androidx.recyclerview.widget.RecyclerView$LayoutManager r3 = r5.mLayout
            r3.getClass()
            goto L65
        L59:
            if (r3 == 0) goto L63
            androidx.recyclerview.widget.RecyclerView$Adapter r3 = r5.mAdapter
            boolean r3 = r3.hasStableIds()
            if (r3 == 0) goto L65
        L63:
            r3 = 1
            goto L66
        L65:
            r3 = 0
        L66:
            androidx.recyclerview.widget.RecyclerView$State r4 = r5.mState
            r4.mRunSimpleAnimations = r3
            if (r3 == 0) goto L84
            if (r0 == 0) goto L84
            boolean r0 = r5.mDataSetHasChangedAfterLayout
            if (r0 != 0) goto L84
            androidx.recyclerview.widget.DefaultItemAnimator r0 = r5.mItemAnimator
            if (r0 == 0) goto L80
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r5.mLayout
            boolean r0 = r0.supportsPredictiveItemAnimations()
            if (r0 == 0) goto L80
            r0 = 1
            goto L81
        L80:
            r0 = 0
        L81:
            if (r0 == 0) goto L84
            r1 = 1
        L84:
            r4.mRunPredictiveAnimations = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.processAdapterUpdatesAndSetAnimationFlags():void");
    }

    public final void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.mCachedViews;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i2);
            if (viewHolder != null) {
                viewHolder.addFlags(6);
                viewHolder.addChangePayload(null);
            }
        }
        Adapter adapter = RecyclerView.this.mAdapter;
        if (adapter == null || !adapter.hasStableIds()) {
            recycler.recycleAndClearCachedViews();
        }
    }

    public final void recordAnimationInfoIfBouncedHiddenView(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo) {
        viewHolder.setFlags(0, 8192);
        boolean z = this.mState.mTrackOldChangeHolders;
        ViewInfoStore viewInfoStore = this.mViewInfoStore;
        if (z && viewHolder.isUpdated() && !viewHolder.isRemoved() && !viewHolder.shouldIgnore()) {
            viewInfoStore.mOldChangedHolders.put(getChangedHolderKey(viewHolder), viewHolder);
        }
        SimpleArrayMap simpleArrayMap = viewInfoStore.mLayoutHolderMap;
        ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap.getOrDefault(viewHolder, null);
        if (infoRecord == null) {
            infoRecord = ViewInfoStore.InfoRecord.obtain();
            simpleArrayMap.put(viewHolder, infoRecord);
        }
        infoRecord.preInfo = itemHolderInfo;
        infoRecord.flags |= 4;
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        }
        view.clearAnimation();
        ViewHolder childViewHolderInt2 = getChildViewHolderInt(view);
        Adapter adapter = this.mAdapter;
        if (adapter != null && childViewHolderInt2 != null) {
            adapter.onViewDetachedFromWindow(childViewHolderInt2);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        this.mLayout.getClass();
        if (!isComputingLayout() && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    public final void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.mTempRect;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.mInsetsDirty) {
                int i = rect.left;
                Rect rect2 = layoutParams2.mDecorInsets;
                rect.left = i - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.mOnItemTouchListeners;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((OnItemTouchListener) arrayList.get(i)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public final void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        getScrollingChildHelper().stopNestedScroll(0);
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.mBottomGlow.isFinished();
        }
        if (z) {
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return;
        }
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.mLayout.canScrollVertically();
        if (canScrollHorizontally || canScrollVertically) {
            if (!canScrollHorizontally) {
                i = 0;
            }
            if (!canScrollVertically) {
                i2 = 0;
            }
            scrollByInternal(i, i2, null, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean scrollByInternal(int r19, int r20, android.view.MotionEvent r21, int r22) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.scrollByInternal(int, int, android.view.MotionEvent, int):boolean");
    }

    public final void scrollStep(int[] iArr, int i, int i2) {
        ViewHolder viewHolder;
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        int i3 = TraceCompat.$r8$clinit;
        Trace.beginSection("RV Scroll");
        State state = this.mState;
        fillRemainingScrollValues(state);
        Recycler recycler = this.mRecycler;
        int scrollHorizontallyBy = i != 0 ? this.mLayout.scrollHorizontallyBy(i, recycler, state) : 0;
        int scrollVerticallyBy = i2 != 0 ? this.mLayout.scrollVerticallyBy(i2, recycler, state) : 0;
        Trace.endSection();
        int childCount = this.mChildHelper.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.mChildHelper.getChildAt(i4);
            ViewHolder childViewHolder = getChildViewHolder(childAt);
            if (childViewHolder != null && (viewHolder = childViewHolder.mShadowingHolder) != null) {
                View view = viewHolder.itemView;
                int left = childAt.getLeft();
                int top = childAt.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        onExitLayoutOrScroll(true);
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (isComputingLayout()) {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
            r1 = 1;
        }
        if (r1 != 0) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    @Override // android.view.ViewGroup
    public final void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            this.mBottomGlow = null;
            this.mTopGlow = null;
            this.mRightGlow = null;
            this.mLeftGlow = null;
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public final void setLayoutManager(LayoutManager layoutManager) {
        ChildHelper.Callback callback;
        RecyclerView recyclerView;
        if (layoutManager == this.mLayout) {
            return;
        }
        int i = 0;
        setScrollState(0);
        ViewFlinger viewFlinger = this.mViewFlinger;
        RecyclerView.this.removeCallbacks(viewFlinger);
        viewFlinger.mOverScroller.abortAnimation();
        LayoutManager layoutManager2 = this.mLayout;
        Recycler recycler = this.mRecycler;
        if (layoutManager2 != null) {
            DefaultItemAnimator defaultItemAnimator = this.mItemAnimator;
            if (defaultItemAnimator != null) {
                defaultItemAnimator.endAnimations();
            }
            this.mLayout.removeAndRecycleAllViews(recycler);
            this.mLayout.removeAndRecycleScrapInt(recycler);
            recycler.mAttachedScrap.clear();
            recycler.recycleAndClearCachedViews();
            if (this.mIsAttached) {
                this.mLayout.onDetachedFromWindow();
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            recycler.mAttachedScrap.clear();
            recycler.recycleAndClearCachedViews();
        }
        ChildHelper childHelper = this.mChildHelper;
        childHelper.mBucket.reset();
        ArrayList arrayList = childHelper.mHiddenViews;
        int size = arrayList.size();
        while (true) {
            size--;
            callback = childHelper.mCallback;
            if (size < 0) {
                break;
            }
            View view = (View) arrayList.get(size);
            AnonymousClass6 anonymousClass6 = (AnonymousClass6) callback;
            anonymousClass6.getClass();
            ViewHolder childViewHolderInt = getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
            arrayList.remove(size);
        }
        AnonymousClass6 anonymousClass62 = (AnonymousClass6) callback;
        int childCount = anonymousClass62.getChildCount();
        while (true) {
            recyclerView = RecyclerView.this;
            if (i >= childCount) {
                break;
            }
            View childAt = recyclerView.getChildAt(i);
            recyclerView.getClass();
            ViewHolder childViewHolderInt2 = getChildViewHolderInt(childAt);
            Adapter adapter = recyclerView.mAdapter;
            if (adapter != null && childViewHolderInt2 != null) {
                adapter.onViewDetachedFromWindow(childViewHolderInt2);
            }
            childAt.clearAnimation();
            i++;
        }
        recyclerView.removeAllViews();
        this.mLayout = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.mRecyclerView != null) {
                throw new IllegalArgumentException("LayoutManager " + layoutManager + " is already attached to a RecyclerView:" + layoutManager.mRecyclerView.exceptionLabel());
            }
            layoutManager.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.getClass();
            }
        }
        recycler.updateViewCacheSize();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public final void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public final void setNestedScrollingEnabled(boolean z) {
        NestedScrollingChildHelper scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.mIsNestedScrollingEnabled) {
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            scrollingChildHelper.mView.stopNestedScroll();
        }
        scrollingChildHelper.mIsNestedScrollingEnabled = z;
    }

    public final void setScrollState(int i) {
        if (i == this.mScrollState) {
            return;
        }
        this.mScrollState = i;
        if (i != 2) {
            ViewFlinger viewFlinger = this.mViewFlinger;
            RecyclerView.this.removeCallbacks(viewFlinger);
            viewFlinger.mOverScroller.abortAnimation();
        }
        ArrayList arrayList = this.mScrollListeners;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((OnScrollListener) this.mScrollListeners.get(size)).getClass();
            }
        }
    }

    public final void smoothScrollBy$1(int i, int i2, boolean z) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return;
        }
        if (!layoutManager.canScrollHorizontally()) {
            i = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (z) {
            int i3 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i3 |= 2;
            }
            getScrollingChildHelper().startNestedScroll(i3, 1);
        }
        this.mViewFlinger.smoothScrollBy(i, i2, Integer.MIN_VALUE, null);
    }

    public final void startInterceptRequestLayout() {
        int i = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i;
        if (i != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().startNestedScroll(i, 0);
    }

    public final void stopInterceptRequestLayout(boolean z) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.mLayoutSuppressed = false;
                if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                    requestLayout();
                }
                this.mLayoutWasDefered = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.mLayoutSuppressed = true;
            this.mIgnoreMotionEventTillDown = true;
            setScrollState(0);
            ViewFlinger viewFlinger = this.mViewFlinger;
            RecyclerView.this.removeCallbacks(viewFlinger);
            viewFlinger.mOverScroller.abortAnimation();
        }
    }
}
