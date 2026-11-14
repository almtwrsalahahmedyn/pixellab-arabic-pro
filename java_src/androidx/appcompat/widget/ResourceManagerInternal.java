package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.collection.ContainerHelpers;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class ResourceManagerInternal {
    public static ResourceManagerInternal INSTANCE;
    public SimpleArrayMap mDelegates;
    public final WeakHashMap mDrawableCaches = new WeakHashMap(0);
    public boolean mHasCheckedVectorDrawableSetup;
    public ResourceManagerHooks mHooks;
    public SparseArrayCompat mKnownDrawableIdTags;
    public WeakHashMap mTintLists;
    public TypedValue mTypedValue;
    public static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    public static final ColorFilterLruCache COLOR_FILTER_CACHE = new LruCache(6);

    /* loaded from: classes.dex */
    public final class AsldcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public final Drawable createFromXmlInner(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.createFromXmlInner(context, theme, context.getResources(), attributeSet, xmlResourceParser);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class AvdcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public final Drawable createFromXmlInner(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
                animatedVectorDrawableCompat.inflate(resources, xmlResourceParser, attributeSet, theme);
                return animatedVectorDrawableCompat;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class ColorFilterLruCache extends LruCache {
    }

    /* loaded from: classes.dex */
    public final class DrawableDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public final Drawable createFromXmlInner(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute == null) {
                return null;
            }
            try {
                Drawable drawable = (Drawable) DrawableDelegate.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                drawable.inflate(context.getResources(), xmlResourceParser, attributeSet, theme);
                return drawable;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface InflateDelegate {
        Drawable createFromXmlInner(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* loaded from: classes.dex */
    public interface ResourceManagerHooks {
    }

    /* loaded from: classes.dex */
    public final class VdcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public final Drawable createFromXmlInner(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlResourceParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static synchronized ResourceManagerInternal get() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            if (INSTANCE == null) {
                ResourceManagerInternal resourceManagerInternal2 = new ResourceManagerInternal();
                INSTANCE = resourceManagerInternal2;
                installDefaultInflateDelegates(resourceManagerInternal2);
            }
            resourceManagerInternal = INSTANCE;
        }
        return resourceManagerInternal;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ResourceManagerInternal.class) {
            ColorFilterLruCache colorFilterLruCache = COLOR_FILTER_CACHE;
            colorFilterLruCache.getClass();
            int i2 = (i + 31) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) colorFilterLruCache.get(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            }
        }
        return porterDuffColorFilter;
    }

    public static void installDefaultInflateDelegates(ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.addDelegate("vector", new VdcInflateDelegate());
            resourceManagerInternal.addDelegate("animated-vector", new AvdcInflateDelegate());
            resourceManagerInternal.addDelegate("animated-selector", new AsldcInflateDelegate());
            resourceManagerInternal.addDelegate("drawable", new DrawableDelegate());
        }
    }

    public final void addDelegate(String str, InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new SimpleArrayMap();
        }
        this.mDelegates.put(str, inflateDelegate);
    }

    public final synchronized void addDrawableToCache(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            LongSparseArray longSparseArray = (LongSparseArray) this.mDrawableCaches.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray();
                this.mDrawableCaches.put(context, longSparseArray);
            }
            longSparseArray.put(j, new WeakReference(constantState));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable createDrawableIfNeeded(android.content.Context r12, int r13) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ResourceManagerInternal.createDrawableIfNeeded(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    public final synchronized Drawable getCachedDrawable(Context context, long j) {
        LongSparseArray longSparseArray = (LongSparseArray) this.mDrawableCaches.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) longSparseArray.get(j, null);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int binarySearch = ContainerHelpers.binarySearch(longSparseArray.mKeys, longSparseArray.mSize, j);
            if (binarySearch >= 0) {
                Object[] objArr = longSparseArray.mValues;
                Object obj = objArr[binarySearch];
                Object obj2 = LongSparseArray.DELETED;
                if (obj != obj2) {
                    objArr[binarySearch] = obj2;
                    longSparseArray.mGarbage = true;
                }
            }
        }
        return null;
    }

    public final synchronized Drawable getDrawable(Context context, int i) {
        return getDrawable(context, i, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x002b, code lost:
    
        if (((r0 instanceof androidx.vectordrawable.graphics.drawable.VectorDrawableCompat) || "android.graphics.drawable.VectorDrawable".equals(r0.getClass().getName())) == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0115, code lost:
    
        r13.setTintMode(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e4 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:6:0x002d, B:8:0x0032, B:10:0x0038, B:12:0x003e, B:15:0x004c, B:18:0x005d, B:20:0x0061, B:21:0x0068, B:25:0x00e4, B:27:0x00ea, B:29:0x00f0, B:31:0x00f6, B:33:0x00fc, B:34:0x0100, B:38:0x0115, B:43:0x0111, B:44:0x011b, B:48:0x0132, B:59:0x0168, B:60:0x0192, B:65:0x019f, B:69:0x0082, B:71:0x0086, B:74:0x0092, B:75:0x009a, B:81:0x00a6, B:83:0x00b9, B:85:0x00c3, B:86:0x00d1, B:87:0x00d8, B:91:0x00db, B:92:0x0056, B:94:0x0008, B:96:0x0013, B:98:0x0017, B:104:0x01a4, B:105:0x01ad), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ea A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:6:0x002d, B:8:0x0032, B:10:0x0038, B:12:0x003e, B:15:0x004c, B:18:0x005d, B:20:0x0061, B:21:0x0068, B:25:0x00e4, B:27:0x00ea, B:29:0x00f0, B:31:0x00f6, B:33:0x00fc, B:34:0x0100, B:38:0x0115, B:43:0x0111, B:44:0x011b, B:48:0x0132, B:59:0x0168, B:60:0x0192, B:65:0x019f, B:69:0x0082, B:71:0x0086, B:74:0x0092, B:75:0x009a, B:81:0x00a6, B:83:0x00b9, B:85:0x00c3, B:86:0x00d1, B:87:0x00d8, B:91:0x00db, B:92:0x0056, B:94:0x0008, B:96:0x0013, B:98:0x0017, B:104:0x01a4, B:105:0x01ad), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f0 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:6:0x002d, B:8:0x0032, B:10:0x0038, B:12:0x003e, B:15:0x004c, B:18:0x005d, B:20:0x0061, B:21:0x0068, B:25:0x00e4, B:27:0x00ea, B:29:0x00f0, B:31:0x00f6, B:33:0x00fc, B:34:0x0100, B:38:0x0115, B:43:0x0111, B:44:0x011b, B:48:0x0132, B:59:0x0168, B:60:0x0192, B:65:0x019f, B:69:0x0082, B:71:0x0086, B:74:0x0092, B:75:0x009a, B:81:0x00a6, B:83:0x00b9, B:85:0x00c3, B:86:0x00d1, B:87:0x00d8, B:91:0x00db, B:92:0x0056, B:94:0x0008, B:96:0x0013, B:98:0x0017, B:104:0x01a4, B:105:0x01ad), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x019f A[Catch: all -> 0x00cc, TRY_LEAVE, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:6:0x002d, B:8:0x0032, B:10:0x0038, B:12:0x003e, B:15:0x004c, B:18:0x005d, B:20:0x0061, B:21:0x0068, B:25:0x00e4, B:27:0x00ea, B:29:0x00f0, B:31:0x00f6, B:33:0x00fc, B:34:0x0100, B:38:0x0115, B:43:0x0111, B:44:0x011b, B:48:0x0132, B:59:0x0168, B:60:0x0192, B:65:0x019f, B:69:0x0082, B:71:0x0086, B:74:0x0092, B:75:0x009a, B:81:0x00a6, B:83:0x00b9, B:85:0x00c3, B:86:0x00d1, B:87:0x00d8, B:91:0x00db, B:92:0x0056, B:94:0x0008, B:96:0x0013, B:98:0x0017, B:104:0x01a4, B:105:0x01ad), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized android.graphics.drawable.Drawable getDrawable(android.content.Context r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ResourceManagerInternal.getDrawable(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    public final synchronized ColorStateList getTintList(Context context, int i) {
        ColorStateList colorStateList;
        SparseArrayCompat sparseArrayCompat;
        try {
            WeakHashMap weakHashMap = this.mTintLists;
            ColorStateList colorStateList2 = null;
            colorStateList = (weakHashMap == null || (sparseArrayCompat = (SparseArrayCompat) weakHashMap.get(context)) == null) ? null : (ColorStateList) sparseArrayCompat.get(i, null);
            if (colorStateList == null) {
                ResourceManagerHooks resourceManagerHooks = this.mHooks;
                if (resourceManagerHooks != null) {
                    colorStateList2 = ((AppCompatDrawableManager.AnonymousClass1) resourceManagerHooks).getTintListForDrawableRes(context, i);
                }
                if (colorStateList2 != null) {
                    if (this.mTintLists == null) {
                        this.mTintLists = new WeakHashMap();
                    }
                    SparseArrayCompat sparseArrayCompat2 = (SparseArrayCompat) this.mTintLists.get(context);
                    if (sparseArrayCompat2 == null) {
                        sparseArrayCompat2 = new SparseArrayCompat();
                        this.mTintLists.put(context, sparseArrayCompat2);
                    }
                    sparseArrayCompat2.append(i, colorStateList2);
                }
                colorStateList = colorStateList2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return colorStateList;
    }

    public final synchronized void onConfigurationChanged(Context context) {
        LongSparseArray longSparseArray = (LongSparseArray) this.mDrawableCaches.get(context);
        if (longSparseArray != null) {
            int i = longSparseArray.mSize;
            Object[] objArr = longSparseArray.mValues;
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = null;
            }
            longSparseArray.mSize = 0;
            longSparseArray.mGarbage = false;
        }
    }

    public final synchronized void setHooks(AppCompatDrawableManager.AnonymousClass1 anonymousClass1) {
        this.mHooks = anonymousClass1;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0075 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean tintDrawableUsingColorFilter(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
        /*
            r6 = this;
            androidx.appcompat.widget.ResourceManagerInternal$ResourceManagerHooks r0 = r6.mHooks
            r1 = 0
            if (r0 == 0) goto L76
            androidx.appcompat.widget.AppCompatDrawableManager$1 r0 = (androidx.appcompat.widget.AppCompatDrawableManager.AnonymousClass1) r0
            android.graphics.PorterDuff$Mode r2 = androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE
            int[] r3 = r0.COLORFILTER_TINT_COLOR_CONTROL_NORMAL
            boolean r3 = androidx.appcompat.widget.AppCompatDrawableManager.AnonymousClass1.arrayContains(r3, r8)
            r4 = 1
            r5 = -1
            if (r3 == 0) goto L17
            r8 = 2130968707(0x7f040083, float:1.7546075E38)
            goto L46
        L17:
            int[] r3 = r0.COLORFILTER_COLOR_CONTROL_ACTIVATED
            boolean r3 = androidx.appcompat.widget.AppCompatDrawableManager.AnonymousClass1.arrayContains(r3, r8)
            if (r3 == 0) goto L23
            r8 = 2130968705(0x7f040081, float:1.7546071E38)
            goto L46
        L23:
            int[] r0 = r0.COLORFILTER_COLOR_BACKGROUND_MULTIPLY
            boolean r0 = androidx.appcompat.widget.AppCompatDrawableManager.AnonymousClass1.arrayContains(r0, r8)
            if (r0 == 0) goto L2e
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L43
        L2e:
            r0 = 2131230767(0x7f08002f, float:1.8077596E38)
            if (r8 != r0) goto L3e
            r8 = 1109603123(0x42233333, float:40.8)
            int r8 = java.lang.Math.round(r8)
            r0 = 16842800(0x1010030, float:2.3693693E-38)
            goto L48
        L3e:
            r0 = 2131230749(0x7f08001d, float:1.807756E38)
            if (r8 != r0) goto L4a
        L43:
            r8 = 16842801(0x1010031, float:2.3693695E-38)
        L46:
            r0 = r8
            r8 = -1
        L48:
            r3 = 1
            goto L4d
        L4a:
            r8 = -1
            r0 = 0
            r3 = 0
        L4d:
            if (r3 == 0) goto L72
            boolean r3 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(r9)
            if (r3 == 0) goto L59
            android.graphics.drawable.Drawable r9 = r9.mutate()
        L59:
            int r7 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r7, r0)
            java.lang.Class<androidx.appcompat.widget.AppCompatDrawableManager> r0 = androidx.appcompat.widget.AppCompatDrawableManager.class
            monitor-enter(r0)
            android.graphics.PorterDuffColorFilter r7 = getPorterDuffColorFilter(r7, r2)     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r0)
            r9.setColorFilter(r7)
            if (r8 == r5) goto L6d
            r9.setAlpha(r8)
        L6d:
            r7 = 1
            goto L73
        L6f:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        L72:
            r7 = 0
        L73:
            if (r7 == 0) goto L76
            r1 = 1
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ResourceManagerInternal.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}
