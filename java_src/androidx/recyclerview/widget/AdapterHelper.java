package androidx.recyclerview.widget;

import androidx.core.util.Pools$SimplePool;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class AdapterHelper implements OpReorderer.Callback {
    public final Callback mCallback;
    public final Pools$SimplePool mUpdateOpPool = new Pools$SimplePool(30);
    public final ArrayList mPendingUpdates = new ArrayList();
    public final ArrayList mPostponedList = new ArrayList();
    public int mExistingUpdateTypes = 0;
    public final OpReorderer mOpReorderer = new OpReorderer(this);

    /* loaded from: classes.dex */
    public interface Callback {
    }

    /* loaded from: classes.dex */
    public final class UpdateOp {
        public int cmd;
        public int itemCount;
        public Object payload;
        public int positionStart;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateOp)) {
                return false;
            }
            UpdateOp updateOp = (UpdateOp) obj;
            int i = this.cmd;
            if (i != updateOp.cmd) {
                return false;
            }
            if (i == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == updateOp.positionStart && this.positionStart == updateOp.itemCount) {
                return true;
            }
            if (this.itemCount != updateOp.itemCount || this.positionStart != updateOp.positionStart) {
                return false;
            }
            Object obj2 = this.payload;
            Object obj3 = updateOp.payload;
            if (obj2 != null) {
                if (!obj2.equals(obj3)) {
                    return false;
                }
            } else if (obj3 != null) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.cmd;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.positionStart);
            sb.append("c:");
            sb.append(this.itemCount);
            sb.append(",p:");
            sb.append(this.payload);
            sb.append("]");
            return sb.toString();
        }
    }

    public AdapterHelper(RecyclerView.AnonymousClass6 anonymousClass6) {
        this.mCallback = anonymousClass6;
    }

    public final boolean canFindInPreLayout(int i) {
        ArrayList arrayList = this.mPostponedList;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i2);
            int i3 = updateOp.cmd;
            if (i3 == 8) {
                if (findPositionOffset(updateOp.itemCount, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = updateOp.positionStart;
                int i5 = updateOp.itemCount + i4;
                while (i4 < i5) {
                    if (findPositionOffset(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final void consumePostponedUpdates() {
        ArrayList arrayList = this.mPostponedList;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((RecyclerView.AnonymousClass6) this.mCallback).dispatchUpdate((UpdateOp) arrayList.get(i));
        }
        recycleUpdateOpsAndClearList(arrayList);
        this.mExistingUpdateTypes = 0;
    }

    public final void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        ArrayList arrayList = this.mPendingUpdates;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i);
            int i2 = updateOp.cmd;
            Callback callback = this.mCallback;
            if (i2 == 1) {
                RecyclerView.AnonymousClass6 anonymousClass6 = (RecyclerView.AnonymousClass6) callback;
                anonymousClass6.dispatchUpdate(updateOp);
                anonymousClass6.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
            } else if (i2 == 2) {
                RecyclerView.AnonymousClass6 anonymousClass62 = (RecyclerView.AnonymousClass6) callback;
                anonymousClass62.dispatchUpdate(updateOp);
                int i3 = updateOp.positionStart;
                int i4 = updateOp.itemCount;
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.offsetPositionRecordsForRemove(i3, i4, true);
                recyclerView.mItemsAddedOrRemoved = true;
                recyclerView.mState.mDeletedInvisibleItemCountSincePreviousLayout += i4;
            } else if (i2 == 4) {
                RecyclerView.AnonymousClass6 anonymousClass63 = (RecyclerView.AnonymousClass6) callback;
                anonymousClass63.dispatchUpdate(updateOp);
                anonymousClass63.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
            } else if (i2 == 8) {
                RecyclerView.AnonymousClass6 anonymousClass64 = (RecyclerView.AnonymousClass6) callback;
                anonymousClass64.dispatchUpdate(updateOp);
                anonymousClass64.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
            }
        }
        recycleUpdateOpsAndClearList(arrayList);
        this.mExistingUpdateTypes = 0;
    }

    public final void dispatchAndUpdateViewHolders(UpdateOp updateOp) {
        int i;
        int i2 = updateOp.cmd;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int updatePositionWithPostponed = updatePositionWithPostponed(updateOp.positionStart, i2);
        int i3 = updateOp.positionStart;
        int i4 = updateOp.cmd;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + updateOp);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < updateOp.itemCount; i6++) {
            int updatePositionWithPostponed2 = updatePositionWithPostponed((i * i6) + updateOp.positionStart, updateOp.cmd);
            int i7 = updateOp.cmd;
            if (i7 == 2 ? updatePositionWithPostponed2 == updatePositionWithPostponed : i7 == 4 && updatePositionWithPostponed2 == updatePositionWithPostponed + 1) {
                i5++;
            } else {
                UpdateOp obtainUpdateOp = obtainUpdateOp(i7, updatePositionWithPostponed, i5, updateOp.payload);
                dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp, i3);
                obtainUpdateOp.payload = null;
                this.mUpdateOpPool.release(obtainUpdateOp);
                if (updateOp.cmd == 4) {
                    i3 += i5;
                }
                updatePositionWithPostponed = updatePositionWithPostponed2;
                i5 = 1;
            }
        }
        Object obj = updateOp.payload;
        updateOp.payload = null;
        this.mUpdateOpPool.release(updateOp);
        if (i5 > 0) {
            UpdateOp obtainUpdateOp2 = obtainUpdateOp(updateOp.cmd, updatePositionWithPostponed, i5, obj);
            dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp2, i3);
            obtainUpdateOp2.payload = null;
            this.mUpdateOpPool.release(obtainUpdateOp2);
        }
    }

    public final void dispatchFirstPassAndUpdateViewHolders(UpdateOp updateOp, int i) {
        RecyclerView.AnonymousClass6 anonymousClass6 = (RecyclerView.AnonymousClass6) this.mCallback;
        anonymousClass6.dispatchUpdate(updateOp);
        int i2 = updateOp.cmd;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            anonymousClass6.markViewHoldersUpdated(i, updateOp.itemCount, updateOp.payload);
        } else {
            int i3 = updateOp.itemCount;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.offsetPositionRecordsForRemove(i, i3, true);
            recyclerView.mItemsAddedOrRemoved = true;
            recyclerView.mState.mDeletedInvisibleItemCountSincePreviousLayout += i3;
        }
    }

    public final int findPositionOffset(int i, int i2) {
        ArrayList arrayList = this.mPostponedList;
        int size = arrayList.size();
        while (i2 < size) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i2);
            int i3 = updateOp.cmd;
            if (i3 == 8) {
                int i4 = updateOp.positionStart;
                if (i4 == i) {
                    i = updateOp.itemCount;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (updateOp.itemCount <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = updateOp.positionStart;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = updateOp.itemCount;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += updateOp.itemCount;
                }
            }
            i2++;
        }
        return i;
    }

    public final boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.recyclerview.widget.AdapterHelper$UpdateOp, java.lang.Object] */
    public final UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj) {
        UpdateOp updateOp = (UpdateOp) this.mUpdateOpPool.acquire();
        if (updateOp != null) {
            updateOp.cmd = i;
            updateOp.positionStart = i2;
            updateOp.itemCount = i3;
            updateOp.payload = obj;
            return updateOp;
        }
        ?? obj2 = new Object();
        obj2.cmd = i;
        obj2.positionStart = i2;
        obj2.itemCount = i3;
        obj2.payload = obj;
        return obj2;
    }

    public final void postponeAndUpdateViewHolders(UpdateOp updateOp) {
        this.mPostponedList.add(updateOp);
        int i = updateOp.cmd;
        Callback callback = this.mCallback;
        if (i == 1) {
            ((RecyclerView.AnonymousClass6) callback).offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
            return;
        }
        if (i == 2) {
            int i2 = updateOp.positionStart;
            int i3 = updateOp.itemCount;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.offsetPositionRecordsForRemove(i2, i3, false);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i == 4) {
            ((RecyclerView.AnonymousClass6) callback).markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
        } else if (i == 8) {
            ((RecyclerView.AnonymousClass6) callback).offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + updateOp);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x015e, code lost:
    
        if (r5 > r12.positionStart) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x018f, code lost:
    
        r1.set(r3, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0196, code lost:
    
        if (r11.positionStart == r11.itemCount) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0198, code lost:
    
        r1.set(r7, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x019f, code lost:
    
        if (r4 == null) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a1, code lost:
    
        r1.add(r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x019c, code lost:
    
        r1.remove(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x018a, code lost:
    
        r11.itemCount = r5 - r12.itemCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0188, code lost:
    
        if (r5 >= r12.positionStart) goto L99;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0121 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00d5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void preProcess() {
        /*
            Method dump skipped, instructions count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AdapterHelper.preProcess():void");
    }

    public final void recycleUpdateOp(UpdateOp updateOp) {
        updateOp.payload = null;
        this.mUpdateOpPool.release(updateOp);
    }

    public final void recycleUpdateOpsAndClearList(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            recycleUpdateOp((UpdateOp) arrayList.get(i));
        }
        arrayList.clear();
    }

    public final int updatePositionWithPostponed(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ArrayList arrayList = this.mPostponedList;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(size);
            int i9 = updateOp.cmd;
            if (i9 == 8) {
                int i10 = updateOp.positionStart;
                int i11 = updateOp.itemCount;
                if (i10 < i11) {
                    i5 = i10;
                    i4 = i11;
                } else {
                    i4 = i10;
                    i5 = i11;
                }
                if (i < i5 || i > i4) {
                    if (i < i10) {
                        if (i2 == 1) {
                            updateOp.positionStart = i10 + 1;
                            i6 = i11 + 1;
                        } else if (i2 == 2) {
                            updateOp.positionStart = i10 - 1;
                            i6 = i11 - 1;
                        }
                        updateOp.itemCount = i6;
                    }
                } else if (i5 == i10) {
                    if (i2 == 1) {
                        i8 = i11 + 1;
                    } else {
                        if (i2 == 2) {
                            i8 = i11 - 1;
                        }
                        i++;
                    }
                    updateOp.itemCount = i8;
                    i++;
                } else {
                    if (i2 == 1) {
                        i7 = i10 + 1;
                    } else {
                        if (i2 == 2) {
                            i7 = i10 - 1;
                        }
                        i--;
                    }
                    updateOp.positionStart = i7;
                    i--;
                }
            } else {
                int i12 = updateOp.positionStart;
                if (i12 > i) {
                    if (i2 == 1) {
                        i3 = i12 + 1;
                    } else if (i2 == 2) {
                        i3 = i12 - 1;
                    }
                    updateOp.positionStart = i3;
                } else if (i9 == 1) {
                    i -= updateOp.itemCount;
                } else if (i9 == 2) {
                    i += updateOp.itemCount;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = (UpdateOp) arrayList.get(size2);
            if (updateOp2.cmd == 8) {
                int i13 = updateOp2.itemCount;
                if (i13 != updateOp2.positionStart && i13 >= 0) {
                }
                arrayList.remove(size2);
                recycleUpdateOp(updateOp2);
            } else {
                if (updateOp2.itemCount > 0) {
                }
                arrayList.remove(size2);
                recycleUpdateOp(updateOp2);
            }
        }
        return i;
    }
}
