package androidx.fragment.app;

import android.view.View;
import androidx.collection.ArrayMap;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class FragmentTransition {
    public static final FragmentTransitionCompat21 PLATFORM_IMPL = new FragmentTransitionCompat21();
    public static final FragmentTransitionImpl SUPPORT_IMPL;

    static {
        FragmentTransitionImpl fragmentTransitionImpl;
        try {
            fragmentTransitionImpl = (FragmentTransitionImpl) Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            fragmentTransitionImpl = null;
        }
        SUPPORT_IMPL = fragmentTransitionImpl;
    }

    private FragmentTransition() {
    }

    public static void callSharedElementStartEnd(Fragment fragment, Fragment fragment2, boolean z, ArrayMap arrayMap) {
        if ((z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = arrayMap == null ? 0 : arrayMap.mSize;
            for (int i2 = 0; i2 < i; i2++) {
                arrayList2.add(arrayMap.keyAt(i2));
                arrayList.add(arrayMap.valueAt(i2));
            }
        }
    }

    public static String findKeyForValue(ArrayMap arrayMap, String str) {
        int i = arrayMap.mSize;
        for (int i2 = 0; i2 < i; i2++) {
            if (str.equals(arrayMap.valueAt(i2))) {
                return (String) arrayMap.keyAt(i2);
            }
        }
        return null;
    }

    public static void setViewVisibility(ArrayList arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((View) arrayList.get(size)).setVisibility(i);
            }
        }
    }
}
