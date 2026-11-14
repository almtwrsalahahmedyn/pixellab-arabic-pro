package androidx.appcompat.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ColorStateListInflaterCompat;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class AppCompatResources {
    public static final ThreadLocal TL_TYPED_VALUE = new ThreadLocal();
    public static final WeakHashMap sColorStateCaches = new WeakHashMap(0);
    public static final Object sColorStateCacheLock = new Object();

    /* loaded from: classes.dex */
    public final class ColorStateListCacheEntry {
        public final Configuration configuration;
        public final ColorStateList value;

        public ColorStateListCacheEntry(ColorStateList colorStateList, Configuration configuration) {
            this.value = colorStateList;
            this.configuration = configuration;
        }
    }

    private AppCompatResources() {
    }

    public static void addColorStateListToCache(Context context, int i, ColorStateList colorStateList) {
        synchronized (sColorStateCacheLock) {
            WeakHashMap weakHashMap = sColorStateCaches;
            SparseArray sparseArray = (SparseArray) weakHashMap.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray();
                weakHashMap.put(context, sparseArray);
            }
            sparseArray.append(i, new ColorStateListCacheEntry(colorStateList, context.getResources().getConfiguration()));
        }
    }

    public static ColorStateList getColorStateList(Context context, int i) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateListCacheEntry colorStateListCacheEntry;
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        synchronized (sColorStateCacheLock) {
            SparseArray sparseArray = (SparseArray) sColorStateCaches.get(context);
            colorStateList = null;
            if (sparseArray != null && sparseArray.size() > 0 && (colorStateListCacheEntry = (ColorStateListCacheEntry) sparseArray.get(i)) != null) {
                if (colorStateListCacheEntry.configuration.equals(context.getResources().getConfiguration())) {
                    colorStateList2 = colorStateListCacheEntry.value;
                } else {
                    sparseArray.remove(i);
                }
            }
            colorStateList2 = null;
        }
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        Resources resources = context.getResources();
        ThreadLocal threadLocal = TL_TYPED_VALUE;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (!(i2 >= 28 && i2 <= 31)) {
            Resources resources2 = context.getResources();
            try {
                colorStateList = ColorStateListInflaterCompat.createFromXml(resources2, resources2.getXml(i), context.getTheme());
            } catch (Exception unused) {
            }
        }
        if (colorStateList == null) {
            return ContextCompat.getColorStateList(context, i);
        }
        addColorStateListToCache(context, i, colorStateList);
        return colorStateList;
    }

    public static Drawable getDrawable(Context context, int i) {
        return ResourceManagerInternal.get().getDrawable(context, i);
    }
}
