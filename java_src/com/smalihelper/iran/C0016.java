package com.smalihelper.iran;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* renamed from: com.smalihelper.iran.۟۟ۧۡ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0016 {

    /* renamed from: ۟ۦۢۦ, reason: not valid java name and contains not printable characters */
    public static int f26 = -80;

    /* renamed from: ۣ۟۟ۧۡ, reason: not valid java name and contains not printable characters */
    public static void m402(Object obj, int i, int i2) {
        if (C0017.m437() > 0) {
            ((GradientDrawable) obj).setStroke(i, i2);
        }
    }

    /* renamed from: ۣۣ۟۠ۥ, reason: not valid java name and contains not printable characters */
    public static Toast m403(Object obj, Object obj2, int i) {
        if (C0017.m437() >= 0) {
            return Toast.makeText((Context) obj, (CharSequence) obj2, i);
        }
        return null;
    }

    /* renamed from: ۟۠ۤۧۧ, reason: not valid java name and contains not printable characters */
    public static void m404(Object obj, int i) {
        if (C0018.m442() >= 0) {
            ((ByteArrayOutputStream) obj).write(i);
        }
    }

    /* renamed from: ۣ۟ۢ۠ۦ, reason: not valid java name and contains not printable characters */
    public static String m405(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۣ۟ۢۤۡ, reason: not valid java name and contains not printable characters */
    public static void m406(Object obj, Object obj2) {
        if (m408() >= 0) {
            ((ImageView) obj).setImageBitmap((Bitmap) obj2);
        }
    }

    /* renamed from: ۟ۤ۟ۨ۠, reason: not valid java name and contains not printable characters */
    public static void m407(Object obj, Object obj2) {
        if (C0018.m442() == 0) {
            ((Window) obj).setBackgroundDrawable((Drawable) obj2);
        }
    }

    /* renamed from: ۟ۧۤۧۢ, reason: not valid java name and contains not printable characters */
    public static int m408() {
        return 1746768 ^ C0017.m433((Object) "۟ۢ۟");
    }

    /* renamed from: ۣۣۡۡ, reason: not valid java name and contains not printable characters */
    public static String m409(String str) {
        String m447 = C0019.m447();
        String m4472 = C0019.m447();
        for (int i = 0; i < 15; i++) {
            m447 = C0019.m461(C0019.m454(C0019.m454(new StringBuffer(), m447), C0019.m452(i)));
            m4472 = C0019.m461(C0019.m450(C0019.m454(new StringBuffer(), m4472), ((int) (C0017.m426() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0019.m448(str) / 2);
        for (int i2 = 0; i2 < C0019.m448(str); i2 += 2) {
            m404(byteArrayOutputStream, (C0017.m424(m447, C0019.m445(str, i2)) << 4) | C0017.m424(m447, C0019.m445(str, i2 + 1)));
        }
        byte[] m462 = C0019.m462(byteArrayOutputStream);
        int length = m462.length;
        int m448 = C0019.m448(m4472);
        for (int i3 = 0; i3 < length; i3++) {
            m462[i3] = (byte) (m462[i3] ^ C0019.m445(m4472, i3 % m448));
        }
        for (int i4 = 0; i4 < m462.length; i4 = C0019.m448(C0019.m447()) + 1) {
        }
        return new String(m462);
    }

    /* renamed from: ۢ۟ۢۧ, reason: not valid java name and contains not printable characters */
    public static void m410(Object obj, int i) {
        if (C0019.m463() > 0) {
            ((TextView) obj).setGravity(i);
        }
    }

    /* renamed from: ۥۢۤۨ, reason: contains not printable characters */
    public static int m411(Object obj, Object obj2, Object obj3, Object obj4) {
        if (C0018.m442() == 0) {
            return ((Resources) obj).getIdentifier((String) obj2, (String) obj3, (String) obj4);
        }
        return 0;
    }

    /* renamed from: ۦ۟ۡ۟, reason: contains not printable characters */
    public static void m412(Object obj, boolean z) {
        if (m408() >= 0) {
            ((ImageView) obj).setAdjustViewBounds(z);
        }
    }

    /* renamed from: ۦۥۤ۟, reason: contains not printable characters */
    public static void m413(Object obj, Object obj2) {
        if (C0019.m463() > 0) {
            ((ImageView) obj).setScaleType((ImageView.ScaleType) obj2);
        }
    }

    /* renamed from: ۦۨۡۨ, reason: contains not printable characters */
    public static Window m414(Object obj) {
        if (C0017.m437() > 0) {
            return ((AlertDialog) obj).getWindow();
        }
        return null;
    }

    /* renamed from: ۣۧۢ۠, reason: not valid java name and contains not printable characters */
    public static InputStream m415(Object obj, Object obj2) {
        if (C0017.m437() >= 0) {
            return ((AssetManager) obj).open((String) obj2);
        }
        return null;
    }

    /* renamed from: ۣۣۧۧ, reason: not valid java name and contains not printable characters */
    public static void m416(Object obj, int i) {
        if (C0019.m463() >= 0) {
            ((Button) obj).setTextColor(i);
        }
    }

    /* renamed from: ۧۤۡ۠, reason: not valid java name and contains not printable characters */
    public static void m417(Object obj) {
        if (m408() >= 0) {
            ((InputStream) obj).close();
        }
    }
}
