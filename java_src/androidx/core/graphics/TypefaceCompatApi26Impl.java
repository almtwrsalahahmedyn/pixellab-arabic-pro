package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat$FontInfo;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class TypefaceCompatApi26Impl extends TypefaceCompatApi21Impl {
    public final Method mAbortCreation;
    public final Method mAddFontFromAssetManager;
    public final Method mAddFontFromBuffer;
    public final Method mCreateFromFamiliesWithDefault;
    public final Class mFontFamily;
    public final Constructor mFontFamilyCtor;
    public final Method mFreeze;

    public TypefaceCompatApi26Impl() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = obtainAddFontFromAssetManagerMethod(cls);
            method3 = obtainAddFontFromBufferMethod(cls);
            method4 = cls.getMethod("freeze", new Class[0]);
            method = cls.getMethod("abortCreation", new Class[0]);
            method5 = obtainCreateFromFamiliesWithDefaultMethod(cls);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.mFontFamily = cls;
        this.mFontFamilyCtor = constructor;
        this.mAddFontFromAssetManager = method2;
        this.mAddFontFromBuffer = method3;
        this.mFreeze = method4;
        this.mAbortCreation = method;
        this.mCreateFromFamiliesWithDefault = method5;
    }

    public static Method obtainAddFontFromAssetManagerMethod(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public static Method obtainAddFontFromBufferMethod(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    public final boolean addFontFromAssetManager(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.mAddFontFromAssetManager.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface createFromFamiliesWithDefault(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) this.mFontFamily, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.mCreateFromFamiliesWithDefault.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        Object obj;
        if (!(this.mAddFontFromAssetManager != null)) {
            return super.createFromFontFamilyFilesResourceEntry(context, fontFamilyFilesResourceEntry, resources, i);
        }
        try {
            obj = this.mFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            if (!addFontFromAssetManager(context, obj, fontFileResourceEntry.getFileName(), fontFileResourceEntry.getTtcIndex(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(fontFileResourceEntry.getVariationSettings()))) {
                try {
                    this.mAbortCreation.invoke(obj, new Object[0]);
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
                return null;
            }
        }
        if (freeze(obj)) {
            return createFromFamiliesWithDefault(obj);
        }
        return null;
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface createFromFontInfo(Context context, FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i) {
        Object obj;
        Typeface createFromFamiliesWithDefault;
        boolean z;
        if (fontsContractCompat$FontInfoArr.length < 1) {
            return null;
        }
        if (this.mAddFontFromAssetManager != null) {
            HashMap hashMap = new HashMap();
            for (FontsContractCompat$FontInfo fontsContractCompat$FontInfo : fontsContractCompat$FontInfoArr) {
                if (fontsContractCompat$FontInfo.mResultCode == 0) {
                    Uri uri = fontsContractCompat$FontInfo.mUri;
                    if (!hashMap.containsKey(uri)) {
                        hashMap.put(uri, TypefaceCompatUtil.mmap(context, uri));
                    }
                }
            }
            Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
            try {
                obj = this.mFontFamilyCtor.newInstance(new Object[0]);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                obj = null;
            }
            if (obj == null) {
                return null;
            }
            int length = fontsContractCompat$FontInfoArr.length;
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                Method method = this.mAbortCreation;
                if (i2 >= length) {
                    if (!z2) {
                        try {
                            method.invoke(obj, new Object[0]);
                            return null;
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            return null;
                        }
                    }
                    if (freeze(obj) && (createFromFamiliesWithDefault = createFromFamiliesWithDefault(obj)) != null) {
                        return Typeface.create(createFromFamiliesWithDefault, i);
                    }
                    return null;
                }
                FontsContractCompat$FontInfo fontsContractCompat$FontInfo2 = fontsContractCompat$FontInfoArr[i2];
                ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(fontsContractCompat$FontInfo2.mUri);
                if (byteBuffer != null) {
                    try {
                        z = ((Boolean) this.mAddFontFromBuffer.invoke(obj, byteBuffer, Integer.valueOf(fontsContractCompat$FontInfo2.mTtcIndex), null, Integer.valueOf(fontsContractCompat$FontInfo2.mWeight), Integer.valueOf(fontsContractCompat$FontInfo2.mItalic ? 1 : 0))).booleanValue();
                    } catch (IllegalAccessException | InvocationTargetException unused3) {
                        z = false;
                    }
                    if (!z) {
                        try {
                            method.invoke(obj, new Object[0]);
                            return null;
                        } catch (IllegalAccessException | InvocationTargetException unused4) {
                            return null;
                        }
                    }
                    z2 = true;
                }
                i2++;
            }
        } else {
            FontsContractCompat$FontInfo findBestInfo = findBestInfo(i, fontsContractCompat$FontInfoArr);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(findBestInfo.mUri, "r", null);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(findBestInfo.mWeight).setItalic(findBestInfo.mItalic).build();
                    openFileDescriptor.close();
                    return build;
                } finally {
                }
            } catch (IOException unused5) {
                return null;
            }
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        Object obj;
        if (!(this.mAddFontFromAssetManager != null)) {
            return super.createFromResourcesFontFile(context, resources, i, str, i2);
        }
        try {
            obj = this.mFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        if (!addFontFromAssetManager(context, obj, str, 0, -1, -1, null)) {
            try {
                this.mAbortCreation.invoke(obj, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
            return null;
        }
        if (freeze(obj)) {
            return createFromFamiliesWithDefault(obj);
        }
        return null;
    }

    public final boolean freeze(Object obj) {
        try {
            return ((Boolean) this.mFreeze.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Method obtainCreateFromFamiliesWithDefaultMethod(Class cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
