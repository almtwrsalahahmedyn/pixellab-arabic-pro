package androidx.fragment.app;

import android.graphics.Rect;
import android.graphics.RectF;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class FragmentTransitionImpl {
    public static void getBoundsOnScreen(View view, Rect rect) {
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        if (view.isAttachedToWindow()) {
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r1[0], r1[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    public static boolean isNullOrEmpty(List list) {
        return list == null || list.isEmpty();
    }

    public static ArrayList prepareSetNameOverridesReordered(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            arrayList2.add(view.getTransitionName());
            view.setTransitionName(null);
        }
        return arrayList2;
    }

    public static void setNameOverridesReordered(ViewGroup viewGroup, final ArrayList arrayList, final ArrayList arrayList2, final ArrayList arrayList3, ArrayMap arrayMap) {
        final int size = arrayList2.size();
        final ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            String transitionName = view.getTransitionName();
            arrayList4.add(transitionName);
            if (transitionName != null) {
                view.setTransitionName(null);
                String str = (String) arrayMap.getOrDefault(transitionName, null);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i2))) {
                        ((View) arrayList2.get(i2)).setTransitionName(transitionName);
                        break;
                    }
                    i2++;
                }
            }
        }
        OneShotPreDrawListener.add(viewGroup, new Runnable() { // from class: androidx.fragment.app.FragmentTransitionImpl.1
            @Override // java.lang.Runnable
            public final void run() {
                for (int i3 = 0; i3 < size; i3++) {
                    View view2 = (View) arrayList2.get(i3);
                    String str2 = (String) arrayList3.get(i3);
                    ViewCompat.AnonymousClass1 anonymousClass12 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                    view2.setTransitionName(str2);
                    ((View) arrayList.get(i3)).setTransitionName((String) arrayList4.get(i3));
                }
            }
        });
    }

    public abstract void addTarget(View view, Object obj);

    public abstract void addTargets(Object obj, ArrayList arrayList);

    public abstract void beginDelayedTransition(ViewGroup viewGroup, Object obj);

    public abstract boolean canHandle(Object obj);

    public abstract Transition cloneTransition(Object obj);

    public abstract Transition mergeTransitionsInSequence(Object obj, Object obj2, Object obj3);

    public abstract TransitionSet mergeTransitionsTogether(Object obj, Object obj2, Object obj3);

    public abstract void scheduleHideFragmentView(Object obj, View view, ArrayList arrayList);

    public abstract void scheduleRemoveTargets(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3);

    public abstract void setEpicenter(View view, Object obj);

    public abstract void setEpicenter(Object obj, Rect rect);

    public void setListenerForTransitionEnd(Object obj, Runnable runnable) {
        runnable.run();
    }

    public abstract void setSharedElementTargets(Object obj, View view, ArrayList arrayList);

    public abstract void swapSharedElementTargets(Object obj, ArrayList arrayList, ArrayList arrayList2);

    public abstract TransitionSet wrapTransitionInSet(Object obj);
}
