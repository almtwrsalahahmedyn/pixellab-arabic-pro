package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import androidx.fragment.app.Fragment$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class DefaultItemAnimator extends SimpleItemAnimator {
    public static TimeInterpolator sDefaultInterpolator;
    public final ArrayList mPendingRemovals = new ArrayList();
    public final ArrayList mPendingAdditions = new ArrayList();
    public final ArrayList mPendingMoves = new ArrayList();
    public final ArrayList mPendingChanges = new ArrayList();
    public final ArrayList mAdditionsList = new ArrayList();
    public final ArrayList mMovesList = new ArrayList();
    public final ArrayList mChangesList = new ArrayList();
    public final ArrayList mAddAnimations = new ArrayList();
    public final ArrayList mMoveAnimations = new ArrayList();
    public final ArrayList mRemoveAnimations = new ArrayList();
    public final ArrayList mChangeAnimations = new ArrayList();

    /* loaded from: classes.dex */
    public final class ChangeInfo {
        public int fromX;
        public int fromY;
        public RecyclerView.ViewHolder newHolder;
        public RecyclerView.ViewHolder oldHolder;
        public int toX;
        public int toY;

        public final String toString() {
            return "ChangeInfo{oldHolder=" + this.oldHolder + ", newHolder=" + this.newHolder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
        }
    }

    /* loaded from: classes.dex */
    public final class MoveInfo {
        public int fromX;
        public int fromY;
        public RecyclerView.ViewHolder holder;
        public int toX;
        public int toY;
    }

    public static void cancelAll(ArrayList arrayList) {
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((RecyclerView.ViewHolder) arrayList.get(size)).itemView.animate().cancel();
            }
        }
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final void animateAdd(RecyclerView.ViewHolder viewHolder) {
        resetAnimation(viewHolder);
        viewHolder.itemView.setAlpha(0.0f);
        this.mPendingAdditions.add(viewHolder);
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, androidx.recyclerview.widget.DefaultItemAnimator$ChangeInfo] */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, i, i2, i3, i4);
        }
        float translationX = viewHolder.itemView.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        resetAnimation(viewHolder);
        viewHolder.itemView.setTranslationX(translationX);
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        resetAnimation(viewHolder2);
        viewHolder2.itemView.setTranslationX(-((int) ((i3 - i) - translationX)));
        viewHolder2.itemView.setTranslationY(-((int) ((i4 - i2) - translationY)));
        viewHolder2.itemView.setAlpha(0.0f);
        ArrayList arrayList = this.mPendingChanges;
        ?? obj = new Object();
        obj.oldHolder = viewHolder;
        obj.newHolder = viewHolder2;
        obj.fromX = i;
        obj.fromY = i2;
        obj.toX = i3;
        obj.toY = i4;
        arrayList.add(obj);
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, androidx.recyclerview.widget.DefaultItemAnimator$MoveInfo] */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final boolean animateMove(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) viewHolder.itemView.getTranslationY());
        resetAnimation(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            dispatchAnimationFinished(viewHolder);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.mPendingMoves;
        ?? obj = new Object();
        obj.holder = viewHolder;
        obj.fromX = translationX;
        obj.fromY = translationY;
        obj.toX = i3;
        obj.toY = i4;
        arrayList.add(obj);
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final void animateRemove(RecyclerView.ViewHolder viewHolder) {
        resetAnimation(viewHolder);
        this.mPendingRemovals.add(viewHolder);
    }

    public final boolean canReuseUpdatedViewHolder(RecyclerView.ViewHolder viewHolder, List list) {
        return !list.isEmpty() || canReuseUpdatedViewHolder(viewHolder);
    }

    public final void dispatchFinishedWhenDone() {
        if (isRunning()) {
            return;
        }
        ArrayList arrayList = this.mFinishedListeners;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            Fragment$$ExternalSyntheticOutline0.m(arrayList.get(0));
            throw null;
        }
    }

    public final void endAnimation(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        view.animate().cancel();
        ArrayList arrayList = this.mPendingMoves;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((MoveInfo) arrayList.get(size)).holder == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchAnimationFinished(viewHolder);
                arrayList.remove(size);
            }
        }
        endChangeAnimation(viewHolder, this.mPendingChanges);
        if (this.mPendingRemovals.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchAnimationFinished(viewHolder);
        }
        if (this.mPendingAdditions.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchAnimationFinished(viewHolder);
        }
        ArrayList arrayList2 = this.mChangesList;
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            endChangeAnimation(viewHolder, arrayList3);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.mMovesList;
        int size3 = arrayList4.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            int size4 = arrayList5.size();
            while (true) {
                size4--;
                if (size4 < 0) {
                    break;
                }
                if (((MoveInfo) arrayList5.get(size4)).holder == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchAnimationFinished(viewHolder);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                }
            }
        }
        ArrayList arrayList6 = this.mAdditionsList;
        int size5 = arrayList6.size();
        while (true) {
            size5--;
            if (size5 < 0) {
                this.mRemoveAnimations.remove(viewHolder);
                this.mAddAnimations.remove(viewHolder);
                this.mChangeAnimations.remove(viewHolder);
                this.mMoveAnimations.remove(viewHolder);
                dispatchFinishedWhenDone();
                return;
            }
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(viewHolder)) {
                view.setAlpha(1.0f);
                dispatchAnimationFinished(viewHolder);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
    }

    public final void endAnimations() {
        ArrayList arrayList = this.mPendingMoves;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            MoveInfo moveInfo = (MoveInfo) arrayList.get(size);
            View view = moveInfo.holder.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchAnimationFinished(moveInfo.holder);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.mPendingRemovals;
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            dispatchAnimationFinished((RecyclerView.ViewHolder) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.mPendingAdditions;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) arrayList3.get(size3);
            viewHolder.itemView.setAlpha(1.0f);
            dispatchAnimationFinished(viewHolder);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.mPendingChanges;
        int size4 = arrayList4.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            ChangeInfo changeInfo = (ChangeInfo) arrayList4.get(size4);
            RecyclerView.ViewHolder viewHolder2 = changeInfo.oldHolder;
            if (viewHolder2 != null) {
                endChangeAnimationIfNecessary(changeInfo, viewHolder2);
            }
            RecyclerView.ViewHolder viewHolder3 = changeInfo.newHolder;
            if (viewHolder3 != null) {
                endChangeAnimationIfNecessary(changeInfo, viewHolder3);
            }
        }
        arrayList4.clear();
        if (isRunning()) {
            ArrayList arrayList5 = this.mMovesList;
            int size5 = arrayList5.size();
            while (true) {
                size5--;
                if (size5 < 0) {
                    break;
                }
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                int size6 = arrayList6.size();
                while (true) {
                    size6--;
                    if (size6 >= 0) {
                        MoveInfo moveInfo2 = (MoveInfo) arrayList6.get(size6);
                        View view2 = moveInfo2.holder.itemView;
                        view2.setTranslationY(0.0f);
                        view2.setTranslationX(0.0f);
                        dispatchAnimationFinished(moveInfo2.holder);
                        arrayList6.remove(size6);
                        if (arrayList6.isEmpty()) {
                            arrayList5.remove(arrayList6);
                        }
                    }
                }
            }
            ArrayList arrayList7 = this.mAdditionsList;
            int size7 = arrayList7.size();
            while (true) {
                size7--;
                if (size7 < 0) {
                    break;
                }
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                int size8 = arrayList8.size();
                while (true) {
                    size8--;
                    if (size8 >= 0) {
                        RecyclerView.ViewHolder viewHolder4 = (RecyclerView.ViewHolder) arrayList8.get(size8);
                        viewHolder4.itemView.setAlpha(1.0f);
                        dispatchAnimationFinished(viewHolder4);
                        arrayList8.remove(size8);
                        if (arrayList8.isEmpty()) {
                            arrayList7.remove(arrayList8);
                        }
                    }
                }
            }
            ArrayList arrayList9 = this.mChangesList;
            int size9 = arrayList9.size();
            while (true) {
                size9--;
                if (size9 < 0) {
                    break;
                }
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                int size10 = arrayList10.size();
                while (true) {
                    size10--;
                    if (size10 >= 0) {
                        ChangeInfo changeInfo2 = (ChangeInfo) arrayList10.get(size10);
                        RecyclerView.ViewHolder viewHolder5 = changeInfo2.oldHolder;
                        if (viewHolder5 != null) {
                            endChangeAnimationIfNecessary(changeInfo2, viewHolder5);
                        }
                        RecyclerView.ViewHolder viewHolder6 = changeInfo2.newHolder;
                        if (viewHolder6 != null) {
                            endChangeAnimationIfNecessary(changeInfo2, viewHolder6);
                        }
                        if (arrayList10.isEmpty()) {
                            arrayList9.remove(arrayList10);
                        }
                    }
                }
            }
            cancelAll(this.mRemoveAnimations);
            cancelAll(this.mMoveAnimations);
            cancelAll(this.mAddAnimations);
            cancelAll(this.mChangeAnimations);
            ArrayList arrayList11 = this.mFinishedListeners;
            if (arrayList11.size() <= 0) {
                arrayList11.clear();
            } else {
                Fragment$$ExternalSyntheticOutline0.m(arrayList11.get(0));
                throw null;
            }
        }
    }

    public final void endChangeAnimation(RecyclerView.ViewHolder viewHolder, ArrayList arrayList) {
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            ChangeInfo changeInfo = (ChangeInfo) arrayList.get(size);
            if (endChangeAnimationIfNecessary(changeInfo, viewHolder) && changeInfo.oldHolder == null && changeInfo.newHolder == null) {
                arrayList.remove(changeInfo);
            }
        }
    }

    public final boolean endChangeAnimationIfNecessary(ChangeInfo changeInfo, RecyclerView.ViewHolder viewHolder) {
        if (changeInfo.newHolder == viewHolder) {
            changeInfo.newHolder = null;
        } else {
            if (changeInfo.oldHolder != viewHolder) {
                return false;
            }
            changeInfo.oldHolder = null;
        }
        viewHolder.itemView.setAlpha(1.0f);
        viewHolder.itemView.setTranslationX(0.0f);
        viewHolder.itemView.setTranslationY(0.0f);
        dispatchAnimationFinished(viewHolder);
        return true;
    }

    public final boolean isRunning() {
        return (this.mPendingAdditions.isEmpty() && this.mPendingChanges.isEmpty() && this.mPendingMoves.isEmpty() && this.mPendingRemovals.isEmpty() && this.mMoveAnimations.isEmpty() && this.mRemoveAnimations.isEmpty() && this.mAddAnimations.isEmpty() && this.mChangeAnimations.isEmpty() && this.mMovesList.isEmpty() && this.mAdditionsList.isEmpty() && this.mChangesList.isEmpty()) ? false : true;
    }

    public final void resetAnimation(RecyclerView.ViewHolder viewHolder) {
        if (sDefaultInterpolator == null) {
            sDefaultInterpolator = new ValueAnimator().getInterpolator();
        }
        viewHolder.itemView.animate().setInterpolator(sDefaultInterpolator);
        endAnimation(viewHolder);
    }
}
