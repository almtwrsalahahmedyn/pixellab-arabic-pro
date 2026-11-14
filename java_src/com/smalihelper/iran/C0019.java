package com.smalihelper.iran;

import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* renamed from: com.smalihelper.iran.۟ۢۢۤۢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0019 {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f30short = {531, 2293};

    /* renamed from: ۣ۟ۧۤ۠, reason: not valid java name and contains not printable characters */
    public static int f31 = -80;

    /* renamed from: ۟۟ۧۤۦ, reason: not valid java name and contains not printable characters */
    public static WindowManager.LayoutParams m444(Object obj) {
        if (C0017.m437() > 0) {
            return ((Window) obj).getAttributes();
        }
        return null;
    }

    /* renamed from: ۟۟ۧۧۡ, reason: not valid java name and contains not printable characters */
    public static char m445(Object obj, int i) {
        if (C0016.m408() > 0) {
            return ((String) obj).charAt(i);
        }
        return (char) 0;
    }

    /* renamed from: ۟۟ۧۧۢ, reason: not valid java name and contains not printable characters */
    public static void m446(Object obj, int i) {
        if (m463() > 0) {
            ((Window) obj).setGravity(i);
        }
    }

    /* renamed from: ۟ۡۤۦۢ, reason: not valid java name and contains not printable characters */
    public static String m447() {
        if (C0018.m442() == 0) {
            return "";
        }
        return null;
    }

    /* renamed from: ۣ۟ۢۤۧ, reason: not valid java name and contains not printable characters */
    public static int m448(Object obj) {
        if (m463() > 0) {
            return ((String) obj).length();
        }
        return 0;
    }

    /* renamed from: ۣ۟ۢۨۧ, reason: not valid java name and contains not printable characters */
    public static void m449(Object obj, boolean z) {
        if (C0018.m442() == 0) {
            ((AlertDialog) obj).setCancelable(z);
        }
    }

    /* renamed from: ۣ۟ۤۡۢ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m450(Object obj, int i) {
        if (C0017.m437() > 0) {
            return ((StringBuffer) obj).append(i);
        }
        return null;
    }

    /* renamed from: ۟ۤ۟ۢ, reason: not valid java name and contains not printable characters */
    public static short[] m451() {
        if (C0017.m437() > 0) {
            return f30short;
        }
        return null;
    }

    /* renamed from: ۟ۤۤ۟۠, reason: not valid java name and contains not printable characters */
    public static String m452(int i) {
        if (C0017.m437() >= 0) {
            return Integer.toHexString(i);
        }
        return null;
    }

    /* renamed from: ۣ۟ۧۡ۟, reason: not valid java name and contains not printable characters */
    public static AlertDialog.Builder m453(Object obj, Object obj2) {
        if (C0018.m442() == 0) {
            return ((AlertDialog.Builder) obj).setCustomTitle((View) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۧۧۤۧ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m454(Object obj, Object obj2) {
        if (m463() >= 0) {
            return ((StringBuffer) obj).append((String) obj2);
        }
        return null;
    }

    /* renamed from: ۠ۥۢۥ, reason: not valid java name and contains not printable characters */
    public static Typeface m455(Object obj, Object obj2) {
        if (C0018.m442() <= 0) {
            return Typeface.createFromAsset((AssetManager) obj, (String) obj2);
        }
        return null;
    }

    /* renamed from: ۡۦۧۢ, reason: not valid java name and contains not printable characters */
    public static int m456(Object obj) {
        if (C0016.m408() > 0) {
            return Color.parseColor((String) obj);
        }
        return 0;
    }

    /* renamed from: ۢۦۡ۠, reason: not valid java name and contains not printable characters */
    public static String m457(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۢۧۦۤ, reason: not valid java name and contains not printable characters */
    public static Uri m458(Object obj) {
        if (m463() >= 0) {
            return Uri.parse((String) obj);
        }
        return null;
    }

    /* renamed from: ۤۤ۟۠, reason: not valid java name and contains not printable characters */
    public static void m459(Object obj) {
        if (C0017.m437() >= 0) {
            ((SharedPreferences.Editor) obj).apply();
        }
    }

    /* renamed from: ۤۨ۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m460(String str) {
        String m447 = m447();
        String m4472 = m447();
        for (int i = 0; i < 15; i++) {
            m447 = m461(m454(m454(new StringBuffer(), m447), m452(i)));
            m4472 = m461(m450(m454(new StringBuffer(), m4472), ((int) (C0017.m426() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m448(str) / 2);
        for (int i2 = 0; i2 < m448(str); i2 += 2) {
            C0016.m404(byteArrayOutputStream, (C0017.m424(m447, m445(str, i2)) << 4) | C0017.m424(m447, m445(str, i2 + 1)));
        }
        byte[] m462 = m462(byteArrayOutputStream);
        String m405 = C0016.m405(m451(), 0, 1, 626);
        while (m448(m405) > 0) {
            m405 = m447();
            if (m448(m405) == 0) {
                m405 = C0016.m405(m451(), 1, 1, 2196);
            }
        }
        int m448 = m448(m405);
        int m4482 = m448(m4472);
        for (int i3 = 0; i3 < m448; i3++) {
            m462[i3] = (byte) (m462[i3] ^ m445(m4472, i3 % m4482));
        }
        for (int i4 = 0; i4 < m462.length; i4 = m448(m447()) + 1) {
        }
        return new String(m462);
    }

    /* renamed from: ۦۥۣۣ, reason: contains not printable characters */
    public static String m461(Object obj) {
        if (m463() >= 0) {
            return ((StringBuffer) obj).toString();
        }
        return null;
    }

    /* renamed from: ۧۢ۟ۥ, reason: not valid java name and contains not printable characters */
    public static byte[] m462(Object obj) {
        if (C0018.m442() >= 0) {
            return ((ByteArrayOutputStream) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۧۢۦ, reason: not valid java name and contains not printable characters */
    public static int m463() {
        return 1746712 ^ C0017.m433((Object) "۟۠ۨ");
    }

    /* renamed from: ۣۨۢۡ, reason: not valid java name and contains not printable characters */
    public static Bitmap m464(Object obj) {
        if (C0016.m408() > 0) {
            return BitmapFactory.decodeStream((InputStream) obj);
        }
        return null;
    }

    /* renamed from: ۨۥۢۢ, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m465(Object obj) {
        if (m463() >= 0) {
            return ((SharedPreferences) obj).edit();
        }
        return null;
    }

    /* renamed from: ۨۦۡۤ, reason: not valid java name and contains not printable characters */
    public static int m466(Object obj, Object obj2) {
        if (C0017.m437() > 0) {
            return ((WindowManager.LayoutParams) obj).copyFrom((WindowManager.LayoutParams) obj2);
        }
        return 0;
    }
}
