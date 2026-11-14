package androidx.core.graphics;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import androidx.collection.LruCache;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontsContractCompat$FontRequestCallback;

/* loaded from: classes.dex */
public final class TypefaceCompat {
    public static final LruCache sTypefaceCache;
    public static final TypefaceCompatBaseImpl sTypefaceCompatImpl;

    /* loaded from: classes.dex */
    public final class ResourcesCallbackAdapter extends FontsContractCompat$FontRequestCallback {
        public ResourcesCompat.FontCallback mFontCallback;

        @Override // androidx.core.provider.FontsContractCompat$FontRequestCallback
        public final void onTypefaceRequestFailed(int i) {
            ResourcesCompat.FontCallback fontCallback = this.mFontCallback;
            if (fontCallback != null) {
                fontCallback.onFontRetrievalFailed(i);
            }
        }

        @Override // androidx.core.provider.FontsContractCompat$FontRequestCallback
        public final void onTypefaceRetrieved(Typeface typeface) {
            ResourcesCompat.FontCallback fontCallback = this.mFontCallback;
            if (fontCallback != null) {
                fontCallback.onFontRetrieved(typeface);
            }
        }
    }

    static {
        TypefaceCompatBaseImpl typefaceCompatApi21Impl;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            typefaceCompatApi21Impl = new TypefaceCompatApi29Impl();
        } else if (i >= 28) {
            typefaceCompatApi21Impl = new TypefaceCompatApi28Impl();
        } else if (i >= 26) {
            typefaceCompatApi21Impl = new TypefaceCompatApi26Impl();
        } else {
            if (i >= 24) {
                if (TypefaceCompatApi24Impl.sAddFontWeightStyle != null) {
                    typefaceCompatApi21Impl = new TypefaceCompatApi24Impl();
                }
            }
            typefaceCompatApi21Impl = new TypefaceCompatApi21Impl();
        }
        sTypefaceCompatImpl = typefaceCompatApi21Impl;
        sTypefaceCache = new LruCache(16);
    }

    private TypefaceCompat() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r0.equals(r4) == false) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10, types: [androidx.core.provider.RequestExecutor$ReplyRunnable, java.lang.Object, java.lang.Runnable] */
    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.core.provider.FontsContractCompat$FontRequestCallback, androidx.core.graphics.TypefaceCompat$ResourcesCallbackAdapter] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface createFromResourcesFamilyXml(final android.content.Context r5, androidx.core.content.res.FontResourcesParserCompat.FamilyResourceEntry r6, android.content.res.Resources r7, int r8, final int r9, androidx.core.content.res.ResourcesCompat.FontCallback r10, android.os.Handler r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompat.createFromResourcesFamilyXml(android.content.Context, androidx.core.content.res.FontResourcesParserCompat$FamilyResourceEntry, android.content.res.Resources, int, int, androidx.core.content.res.ResourcesCompat$FontCallback, android.os.Handler, boolean):android.graphics.Typeface");
    }

    public static String createResourceUid(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
