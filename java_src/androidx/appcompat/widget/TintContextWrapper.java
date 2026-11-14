package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;

/* loaded from: classes.dex */
public abstract class TintContextWrapper extends ContextWrapper {
    public static final Object CACHE_LOCK = new Object();

    public static void wrap(Context context) {
        if (context.getResources() instanceof TintResources) {
            return;
        }
        context.getResources();
        int i = ResourcesWrapper.$r8$clinit;
    }
}
