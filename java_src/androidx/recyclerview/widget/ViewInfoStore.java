package androidx.recyclerview.widget;

import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools$SimplePool;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class ViewInfoStore {
    public final SimpleArrayMap mLayoutHolderMap = new SimpleArrayMap();
    public final LongSparseArray mOldChangedHolders = new LongSparseArray();

    /* loaded from: classes.dex */
    public final class InfoRecord {
        public static final Pools$SimplePool sPool = new Pools$SimplePool(20);
        public int flags;
        public RecyclerView.ItemAnimator.ItemHolderInfo postInfo;
        public RecyclerView.ItemAnimator.ItemHolderInfo preInfo;

        private InfoRecord() {
        }

        public static InfoRecord obtain() {
            InfoRecord infoRecord = (InfoRecord) sPool.acquire();
            return infoRecord == null ? new InfoRecord() : infoRecord;
        }
    }

    public final RecyclerView.ItemAnimator.ItemHolderInfo popFromLayoutStep(RecyclerView.ViewHolder viewHolder, int i) {
        InfoRecord infoRecord;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        SimpleArrayMap simpleArrayMap = this.mLayoutHolderMap;
        int indexOfKey = simpleArrayMap.indexOfKey(viewHolder);
        if (indexOfKey >= 0 && (infoRecord = (InfoRecord) simpleArrayMap.valueAt(indexOfKey)) != null) {
            int i2 = infoRecord.flags;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                infoRecord.flags = i3;
                if (i == 4) {
                    itemHolderInfo = infoRecord.preInfo;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    itemHolderInfo = infoRecord.postInfo;
                }
                if ((i3 & 12) == 0) {
                    simpleArrayMap.removeAt(indexOfKey);
                    infoRecord.flags = 0;
                    infoRecord.preInfo = null;
                    infoRecord.postInfo = null;
                    InfoRecord.sPool.release(infoRecord);
                }
                return itemHolderInfo;
            }
        }
        return null;
    }

    public final void removeFromDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = (InfoRecord) this.mLayoutHolderMap.getOrDefault(viewHolder, null);
        if (infoRecord == null) {
            return;
        }
        infoRecord.flags &= -2;
    }

    public final void removeViewHolder(RecyclerView.ViewHolder viewHolder) {
        LongSparseArray longSparseArray = this.mOldChangedHolders;
        if (longSparseArray.mGarbage) {
            longSparseArray.gc();
        }
        int i = longSparseArray.mSize;
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            if (longSparseArray.mGarbage) {
                longSparseArray.gc();
            }
            Object[] objArr = longSparseArray.mValues;
            Object obj = objArr[i];
            if (viewHolder == obj) {
                Object obj2 = LongSparseArray.DELETED;
                if (obj != obj2) {
                    objArr[i] = obj2;
                    longSparseArray.mGarbage = true;
                }
            }
        }
        InfoRecord infoRecord = (InfoRecord) this.mLayoutHolderMap.remove(viewHolder);
        if (infoRecord != null) {
            infoRecord.flags = 0;
            infoRecord.preInfo = null;
            infoRecord.postInfo = null;
            InfoRecord.sPool.release(infoRecord);
        }
    }
}
