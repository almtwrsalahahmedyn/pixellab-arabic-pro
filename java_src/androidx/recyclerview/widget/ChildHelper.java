package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ChildHelper {
    public final Callback mCallback;
    public final Bucket mBucket = new Bucket();
    public final ArrayList mHiddenViews = new ArrayList();

    /* loaded from: classes.dex */
    public final class Bucket {
        public long mData = 0;
        public Bucket mNext;

        public final void clear(int i) {
            if (i < 64) {
                this.mData &= ~(1 << i);
                return;
            }
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.clear(i - 64);
            }
        }

        public final int countOnesBefore(int i) {
            long j;
            Bucket bucket = this.mNext;
            if (bucket == null) {
                if (i >= 64) {
                    j = this.mData;
                    return Long.bitCount(j);
                }
            } else if (i >= 64) {
                return Long.bitCount(this.mData) + bucket.countOnesBefore(i - 64);
            }
            j = this.mData & ((1 << i) - 1);
            return Long.bitCount(j);
        }

        public final void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        public final boolean get(int i) {
            if (i < 64) {
                return (this.mData & (1 << i)) != 0;
            }
            ensureNext();
            return this.mNext.get(i - 64);
        }

        public final void insert(int i, boolean z) {
            if (i >= 64) {
                ensureNext();
                this.mNext.insert(i - 64, z);
                return;
            }
            long j = this.mData;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.mData = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                set(i);
            } else {
                clear(i);
            }
            if (z2 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z2);
            }
        }

        public final boolean remove(int i) {
            if (i >= 64) {
                ensureNext();
                return this.mNext.remove(i - 64);
            }
            long j = 1 << i;
            long j2 = this.mData;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (~j);
            this.mData = j3;
            long j4 = j - 1;
            this.mData = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            Bucket bucket = this.mNext;
            if (bucket != null) {
                if (bucket.get(0)) {
                    set(63);
                }
                this.mNext.remove(0);
            }
            return z;
        }

        public final void reset() {
            this.mData = 0L;
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.reset();
            }
        }

        public final void set(int i) {
            if (i < 64) {
                this.mData |= 1 << i;
            } else {
                ensureNext();
                this.mNext.set(i - 64);
            }
        }

        public final String toString() {
            if (this.mNext == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
        }
    }

    /* loaded from: classes.dex */
    public interface Callback {
    }

    public ChildHelper(RecyclerView.AnonymousClass6 anonymousClass6) {
        this.mCallback = anonymousClass6;
    }

    public final void addView(View view, int i, boolean z) {
        Callback callback = this.mCallback;
        int childCount = i < 0 ? ((RecyclerView.AnonymousClass6) callback).getChildCount() : getOffset(i);
        this.mBucket.insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        RecyclerView recyclerView = RecyclerView.this;
        recyclerView.addView(view, childCount);
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView.Adapter adapter = recyclerView.mAdapter;
        if (adapter == null || childViewHolderInt == null) {
            return;
        }
        adapter.onViewAttachedToWindow(childViewHolderInt);
    }

    public final void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        Callback callback = this.mCallback;
        int childCount = i < 0 ? ((RecyclerView.AnonymousClass6) callback).getChildCount() : getOffset(i);
        this.mBucket.insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        RecyclerView.AnonymousClass6 anonymousClass6 = (RecyclerView.AnonymousClass6) callback;
        anonymousClass6.getClass();
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView recyclerView = RecyclerView.this;
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + recyclerView.exceptionLabel());
            }
            childViewHolderInt.clearTmpDetachFlag();
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void detachViewFromParent(int i) {
        RecyclerView.ViewHolder childViewHolderInt;
        int offset = getOffset(i);
        this.mBucket.remove(offset);
        RecyclerView.AnonymousClass6 anonymousClass6 = (RecyclerView.AnonymousClass6) this.mCallback;
        View childAt = RecyclerView.this.getChildAt(offset);
        RecyclerView recyclerView = RecyclerView.this;
        if (childAt != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt)) != null) {
            if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + recyclerView.exceptionLabel());
            }
            childViewHolderInt.addFlags(256);
        }
        recyclerView.detachViewFromParent(offset);
    }

    public final View getChildAt(int i) {
        return RecyclerView.this.getChildAt(getOffset(i));
    }

    public final int getChildCount() {
        return ((RecyclerView.AnonymousClass6) this.mCallback).getChildCount() - this.mHiddenViews.size();
    }

    public final int getOffset(int i) {
        if (i < 0) {
            return -1;
        }
        int childCount = ((RecyclerView.AnonymousClass6) this.mCallback).getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            Bucket bucket = this.mBucket;
            int countOnesBefore = i - (i2 - bucket.countOnesBefore(i2));
            if (countOnesBefore == 0) {
                while (bucket.get(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += countOnesBefore;
        }
        return -1;
    }

    public final View getUnfilteredChildAt(int i) {
        return RecyclerView.this.getChildAt(i);
    }

    public final int getUnfilteredChildCount() {
        return ((RecyclerView.AnonymousClass6) this.mCallback).getChildCount();
    }

    public final void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        RecyclerView.AnonymousClass6 anonymousClass6 = (RecyclerView.AnonymousClass6) this.mCallback;
        anonymousClass6.getClass();
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
        }
    }

    public final boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    public final String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    public final void unhideViewInternal(View view) {
        if (this.mHiddenViews.remove(view)) {
            RecyclerView.AnonymousClass6 anonymousClass6 = (RecyclerView.AnonymousClass6) this.mCallback;
            anonymousClass6.getClass();
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
        }
    }
}
