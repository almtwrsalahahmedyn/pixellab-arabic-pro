package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat$FontInfo;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class TypefaceCompatBaseImpl {
    public final ConcurrentHashMap mFontFamilies = new ConcurrentHashMap();

    /* renamed from: androidx.core.graphics.TypefaceCompatBaseImpl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements StyleExtractor {
        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public final int getWeight(Object obj) {
            return ((FontResourcesParserCompat.FontFileResourceEntry) obj).getWeight();
        }

        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public final boolean isItalic(Object obj) {
            return ((FontResourcesParserCompat.FontFileResourceEntry) obj).isItalic();
        }
    }

    /* loaded from: classes.dex */
    public interface StyleExtractor {
        int getWeight(Object obj);

        boolean isItalic(Object obj);
    }

    public static Object findBestFont(Object[] objArr, int i, StyleExtractor styleExtractor) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        Object obj = null;
        int i3 = Integer.MAX_VALUE;
        for (Object obj2 : objArr) {
            int abs = (Math.abs(styleExtractor.getWeight(obj2) - i2) * 2) + (styleExtractor.isItalic(obj2) == z ? 0 : 1);
            if (obj == null || i3 > abs) {
                obj = obj2;
                i3 = abs;
            }
        }
        return obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0051  */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.core.graphics.TypefaceCompatBaseImpl$StyleExtractor, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface createFromFontFamilyFilesResourceEntry(android.content.Context r8, androidx.core.content.res.FontResourcesParserCompat.FontFamilyFilesResourceEntry r9, android.content.res.Resources r10, int r11) {
        /*
            r7 = this;
            androidx.core.content.res.FontResourcesParserCompat$FontFileResourceEntry[] r0 = r9.getEntries()
            androidx.core.graphics.TypefaceCompatBaseImpl$2 r1 = new androidx.core.graphics.TypefaceCompatBaseImpl$2
            r1.<init>()
            java.lang.Object r0 = findBestFont(r0, r11, r1)
            androidx.core.content.res.FontResourcesParserCompat$FontFileResourceEntry r0 = (androidx.core.content.res.FontResourcesParserCompat.FontFileResourceEntry) r0
            if (r0 != 0) goto L13
            r8 = 0
            return r8
        L13:
            int r6 = r0.getResourceId()
            java.lang.String r4 = r0.getFileName()
            androidx.core.graphics.TypefaceCompatBaseImpl r0 = androidx.core.graphics.TypefaceCompat.sTypefaceCompatImpl
            r1 = r8
            r2 = r10
            r3 = r6
            r5 = r11
            android.graphics.Typeface r8 = r0.createFromResourcesFontFile(r1, r2, r3, r4, r5)
            if (r8 == 0) goto L30
            java.lang.String r10 = androidx.core.graphics.TypefaceCompat.createResourceUid(r10, r6, r11)
            androidx.collection.LruCache r11 = androidx.core.graphics.TypefaceCompat.sTypefaceCache
            r11.put(r10, r8)
        L30:
            r10 = 0
            if (r8 != 0) goto L35
            goto L4c
        L35:
            java.lang.Class<android.graphics.Typeface> r0 = android.graphics.Typeface.class
            java.lang.String r1 = "native_instance"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.Throwable -> L4c
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r0.get(r8)     // Catch: java.lang.Throwable -> L4c
            java.lang.Number r0 = (java.lang.Number) r0     // Catch: java.lang.Throwable -> L4c
            long r0 = r0.longValue()     // Catch: java.lang.Throwable -> L4c
            goto L4d
        L4c:
            r0 = r10
        L4d:
            int r2 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r2 == 0) goto L5a
            java.util.concurrent.ConcurrentHashMap r10 = r7.mFontFamilies
            java.lang.Long r11 = java.lang.Long.valueOf(r0)
            r10.put(r11, r9)
        L5a:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompatBaseImpl.createFromFontFamilyFilesResourceEntry(android.content.Context, androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry, android.content.res.Resources, int):android.graphics.Typeface");
    }

    public Typeface createFromFontInfo(Context context, FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (fontsContractCompat$FontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(findBestInfo(i, fontsContractCompat$FontInfoArr).mUri);
            try {
                Typeface createFromInputStream = createFromInputStream(context, inputStream);
                TypefaceCompatUtil.closeQuietly(inputStream);
                return createFromInputStream;
            } catch (IOException unused) {
                TypefaceCompatUtil.closeQuietly(inputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                TypefaceCompatUtil.closeQuietly(inputStream2);
                throw th;
            }
        } catch (IOException unused2) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public Typeface createFromInputStream(Context context, InputStream inputStream) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, resources, i)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.graphics.TypefaceCompatBaseImpl$StyleExtractor, java.lang.Object] */
    public FontsContractCompat$FontInfo findBestInfo(int i, FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr) {
        return (FontsContractCompat$FontInfo) findBestFont(fontsContractCompat$FontInfoArr, i, new Object());
    }
}
