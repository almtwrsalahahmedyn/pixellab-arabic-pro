package androidx.core.graphics.drawable;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class IconCompat extends CustomVersionedParcelable {
    public static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    public int mInt1;
    public Bitmap mObj1;
    public final PorterDuff.Mode mTintMode;
    public final int mType;

    public IconCompat() {
        this.mType = -1;
        this.mInt1 = 0;
        this.mTintMode = DEFAULT_TINT_MODE;
    }

    public IconCompat(int i) {
        this.mInt1 = 0;
        this.mTintMode = DEFAULT_TINT_MODE;
        this.mType = i;
    }

    public static Bitmap createLegacyIconFromAdaptiveIcon(Bitmap bitmap, boolean z) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f = min;
        float f2 = 0.5f * f;
        float f3 = 0.9166667f * f2;
        if (z) {
            float f4 = 0.010416667f * f;
            paint.setColor(0);
            paint.setShadowLayer(f4, 0.0f, f * 0.020833334f, 1023410176);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.setShadowLayer(f4, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f2, f2, f3, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public final String getResPackage() {
        int i;
        int i2 = this.mType;
        if (i2 == -1 && (i = Build.VERSION.SDK_INT) >= 23) {
            Icon icon = (Icon) this.mObj1;
            if (i >= 28) {
                return icon.getResPackage();
            }
            try {
                return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
        if (i2 == 2) {
            if (TextUtils.isEmpty(null)) {
                return ((String) this.mObj1).split(":", -1)[0];
            }
            return null;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public final Uri getUri() {
        int i;
        int i2 = this.mType;
        if (i2 == -1 && (i = Build.VERSION.SDK_INT) >= 23) {
            Icon icon = (Icon) this.mObj1;
            if (i >= 28) {
                return icon.getUri();
            }
            try {
                return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
        if (i2 == 4 || i2 == 6) {
            return Uri.parse((String) this.mObj1);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public final InputStream getUriInputStream(Context context) {
        Uri uri = getUri();
        String scheme = uri.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            return context.getContentResolver().openInputStream(uri);
        }
        try {
            return new FileInputStream(new File((String) this.mObj1));
        } catch (FileNotFoundException | Exception unused) {
            uri.toString();
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        if (r0 >= 26) goto L22;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Icon toIcon(android.content.Context r5) {
        /*
            r4 = this;
            int r0 = r4.mType
            r1 = 0
            r2 = 26
            switch(r0) {
                case -1: goto La0;
                case 0: goto L8;
                case 1: goto L90;
                case 2: goto L85;
                case 3: goto L7a;
                case 4: goto L71;
                case 5: goto L5f;
                case 6: goto L10;
                default: goto L8;
            }
        L8:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Unknown type"
            r5.<init>(r0)
            throw r5
        L10:
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 30
            if (r0 < r3) goto L20
            android.net.Uri r5 = r4.getUri()
            android.graphics.drawable.Icon r5 = android.graphics.drawable.Icon.createWithAdaptiveBitmapContentUri(r5)
            goto L96
        L20:
            if (r5 == 0) goto L47
            java.io.InputStream r5 = r4.getUriInputStream(r5)
            if (r5 == 0) goto L2f
            android.graphics.Bitmap r5 = android.graphics.BitmapFactory.decodeStream(r5)
            if (r0 < r2) goto L6c
            goto L65
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Cannot load adaptive icon from uri: "
            r0.<init>(r1)
            android.net.Uri r1 = r4.getUri()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        L47:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Context is required to resolve the file uri of the icon: "
            r0.<init>(r1)
            android.net.Uri r1 = r4.getUri()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        L5f:
            int r5 = android.os.Build.VERSION.SDK_INT
            if (r5 < r2) goto L6a
            android.graphics.Bitmap r5 = r4.mObj1
        L65:
            android.graphics.drawable.Icon r5 = android.graphics.drawable.Icon.createWithAdaptiveBitmap(r5)
            goto L96
        L6a:
            android.graphics.Bitmap r5 = r4.mObj1
        L6c:
            android.graphics.Bitmap r5 = createLegacyIconFromAdaptiveIcon(r5, r1)
            goto L92
        L71:
            android.graphics.Bitmap r5 = r4.mObj1
            java.lang.String r5 = (java.lang.String) r5
            android.graphics.drawable.Icon r5 = android.graphics.drawable.Icon.createWithContentUri(r5)
            goto L96
        L7a:
            android.graphics.Bitmap r5 = r4.mObj1
            byte[] r5 = (byte[]) r5
            int r0 = r4.mInt1
            android.graphics.drawable.Icon r5 = android.graphics.drawable.Icon.createWithData(r5, r0, r1)
            goto L96
        L85:
            java.lang.String r5 = r4.getResPackage()
            int r0 = r4.mInt1
            android.graphics.drawable.Icon r5 = android.graphics.drawable.Icon.createWithResource(r5, r0)
            goto L96
        L90:
            android.graphics.Bitmap r5 = r4.mObj1
        L92:
            android.graphics.drawable.Icon r5 = android.graphics.drawable.Icon.createWithBitmap(r5)
        L96:
            android.graphics.PorterDuff$Mode r0 = r4.mTintMode
            android.graphics.PorterDuff$Mode r1 = androidx.core.graphics.drawable.IconCompat.DEFAULT_TINT_MODE
            if (r0 == r1) goto L9f
            r5.setTintMode(r0)
        L9f:
            return r5
        La0:
            android.graphics.Bitmap r5 = r4.mObj1
            android.graphics.drawable.Icon r5 = (android.graphics.drawable.Icon) r5
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.toIcon(android.content.Context):android.graphics.drawable.Icon");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x002d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r7 = this;
            int r0 = r7.mType
            r1 = -1
            if (r0 != r1) goto Lc
            android.graphics.Bitmap r0 = r7.mObj1
            java.lang.String r0 = java.lang.String.valueOf(r0)
            return r0
        Lc:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Icon(typ="
            r2.<init>(r3)
            switch(r0) {
                case 1: goto L28;
                case 2: goto L25;
                case 3: goto L22;
                case 4: goto L1f;
                case 5: goto L1c;
                case 6: goto L19;
                default: goto L16;
            }
        L16:
            java.lang.String r3 = "UNKNOWN"
            goto L2a
        L19:
            java.lang.String r3 = "URI_MASKABLE"
            goto L2a
        L1c:
            java.lang.String r3 = "BITMAP_MASKABLE"
            goto L2a
        L1f:
            java.lang.String r3 = "URI"
            goto L2a
        L22:
            java.lang.String r3 = "DATA"
            goto L2a
        L25:
            java.lang.String r3 = "RESOURCE"
            goto L2a
        L28:
            java.lang.String r3 = "BITMAP"
        L2a:
            r2.append(r3)
            switch(r0) {
                case 1: goto La9;
                case 2: goto L47;
                case 3: goto L3e;
                case 4: goto L32;
                case 5: goto La9;
                case 6: goto L32;
                default: goto L30;
            }
        L30:
            goto Lc5
        L32:
            java.lang.String r0 = " uri="
            r2.append(r0)
            android.graphics.Bitmap r0 = r7.mObj1
            r2.append(r0)
            goto Lc5
        L3e:
            java.lang.String r0 = " len="
            r2.append(r0)
            int r0 = r7.mInt1
            goto Lc2
        L47:
            java.lang.String r3 = " pkg=null id="
            r2.append(r3)
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = 0
            if (r0 != r1) goto L80
            int r1 = android.os.Build.VERSION.SDK_INT
            r5 = 23
            if (r1 < r5) goto L80
            android.graphics.Bitmap r0 = r7.mObj1
            android.graphics.drawable.Icon r0 = (android.graphics.drawable.Icon) r0
            r5 = 28
            if (r1 < r5) goto L65
            int r0 = r0.getResId()
            goto L85
        L65:
            java.lang.Class r1 = r0.getClass()     // Catch: java.lang.Throwable -> L7e
            java.lang.String r5 = "getResId"
            java.lang.Class[] r6 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L7e
            java.lang.reflect.Method r1 = r1.getMethod(r5, r6)     // Catch: java.lang.Throwable -> L7e
            java.lang.Object[] r5 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r0 = r1.invoke(r0, r5)     // Catch: java.lang.Throwable -> L7e
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L7e
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L7e
            goto L85
        L7e:
            r0 = 0
            goto L85
        L80:
            r1 = 2
            if (r0 != r1) goto L95
            int r0 = r7.mInt1
        L85:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r3[r4] = r0
            java.lang.String r0 = "0x%08x"
            java.lang.String r0 = java.lang.String.format(r0, r3)
            r2.append(r0)
            goto Lc5
        L95:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "called getResId() on "
            r1.<init>(r2)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        La9:
            java.lang.String r0 = " size="
            r2.append(r0)
            android.graphics.Bitmap r0 = r7.mObj1
            int r0 = r0.getWidth()
            r2.append(r0)
            java.lang.String r0 = "x"
            r2.append(r0)
            android.graphics.Bitmap r0 = r7.mObj1
            int r0 = r0.getHeight()
        Lc2:
            r2.append(r0)
        Lc5:
            android.graphics.PorterDuff$Mode r0 = r7.mTintMode
            android.graphics.PorterDuff$Mode r1 = androidx.core.graphics.drawable.IconCompat.DEFAULT_TINT_MODE
            if (r0 == r1) goto Ld3
            java.lang.String r1 = " mode="
            r2.append(r1)
            r2.append(r0)
        Ld3:
            java.lang.String r0 = ")"
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.toString():java.lang.String");
    }
}
