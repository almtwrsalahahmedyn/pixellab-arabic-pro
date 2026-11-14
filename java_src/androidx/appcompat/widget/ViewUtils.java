package androidx.appcompat.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ViewUtils {
    public static final Method sComputeFitSystemWindowsMethod;

    static {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            sComputeFitSystemWindowsMethod = declaredMethod;
            if (declaredMethod.isAccessible()) {
                return;
            }
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
    }

    private ViewUtils() {
    }

    public static boolean isLayoutRtl(View view) {
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        return view.getLayoutDirection() == 1;
    }
}
