package com.smalihelper.iran;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import java.io.ByteArrayOutputStream;

/* renamed from: com.smalihelper.iran.۟۠ۢۦ۠, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0017 {

    /* renamed from: ۟ۢۢۢۤ, reason: not valid java name and contains not printable characters */
    public static int f27 = 23;

    /* renamed from: ۣ۟۠۟ۡ, reason: not valid java name and contains not printable characters */
    public static int m418(Object obj, Object obj2, int i) {
        if (C0018.m442() <= 0) {
            return ((SharedPreferences) obj).getInt((String) obj2, i);
        }
        return 0;
    }

    /* renamed from: ۟ۡۡ۟ۢ, reason: not valid java name and contains not printable characters */
    public static AlertDialog.Builder m419(Object obj, Object obj2) {
        if (C0018.m442() <= 0) {
            return ((AlertDialog.Builder) obj).setMessage((CharSequence) obj2);
        }
        return null;
    }

    /* renamed from: ۣ۟ۢۢۢ, reason: not valid java name and contains not printable characters */
    public static void m420(Object obj, int i) {
        if (C0016.m408() > 0) {
            ((TextView) obj).setTextColor(i);
        }
    }

    /* renamed from: ۟ۢۥ۠ۤ, reason: not valid java name and contains not printable characters */
    public static AlertDialog.Builder m421(Object obj, Object obj2, Object obj3) {
        if (C0018.m442() == 0) {
            return ((AlertDialog.Builder) obj).setNegativeButton((CharSequence) obj2, (DialogInterface.OnClickListener) obj3);
        }
        return null;
    }

    /* renamed from: ۟ۢۥۤۡ, reason: not valid java name and contains not printable characters */
    public static SharedPreferences m422(Object obj, Object obj2, int i) {
        if (C0016.m408() >= 0) {
            return ((Context) obj).getSharedPreferences((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۣ۟۟ۥۡ, reason: not valid java name and contains not printable characters */
    public static View m423(Object obj, int i) {
        if (C0019.m463() >= 0) {
            return ((AlertDialog) obj).findViewById(i);
        }
        return null;
    }

    /* renamed from: ۟ۤۥ۠ۦ, reason: not valid java name and contains not printable characters */
    public static int m424(Object obj, int i) {
        if (C0018.m442() <= 0) {
            return ((String) obj).indexOf(i);
        }
        return 0;
    }

    /* renamed from: ۟ۥۢۥۦ, reason: not valid java name and contains not printable characters */
    public static Resources m425(Object obj) {
        if (C0016.m408() >= 0) {
            return ((Context) obj).getResources();
        }
        return null;
    }

    /* renamed from: ۣ۟ۧ, reason: not valid java name and contains not printable characters */
    public static double m426() {
        if (C0016.m408() >= 0) {
            return Math.random();
        }
        return 0.0d;
    }

    /* renamed from: ۟ۧۥۡۧ, reason: not valid java name and contains not printable characters */
    public static String m427(String str) {
        String m447 = C0019.m447();
        String m4472 = C0019.m447();
        for (int i = 0; i < 15; i++) {
            m447 = C0019.m461(C0019.m454(C0019.m454(new StringBuffer(), m447), C0019.m452(i)));
            m4472 = C0019.m461(C0019.m450(C0019.m454(new StringBuffer(), m4472), ((int) (m426() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0019.m448(str) / 2);
        for (int i2 = 0; i2 < C0019.m448(str); i2 += 2) {
            C0016.m404(byteArrayOutputStream, (m424(m447, C0019.m445(str, i2)) << 4) | m424(m447, C0019.m445(str, i2 + 1)));
        }
        byte[] m462 = C0019.m462(byteArrayOutputStream);
        int length = m462.length;
        int m448 = C0019.m448(m4472);
        while (length > 0) {
            m462[-1] = (byte) (m462[-1] ^ C0019.m445(m4472, (-1) % m448));
        }
        for (int i3 = 0; i3 < m462.length; i3 = C0019.m448(C0019.m447()) + 1) {
        }
        return new String(m462);
    }

    /* renamed from: ۠۠ۢۧ, reason: not valid java name and contains not printable characters */
    public static AssetManager m428(Object obj) {
        if (C0019.m463() > 0) {
            return ((Context) obj).getAssets();
        }
        return null;
    }

    /* renamed from: ۡۦۡۧ, reason: not valid java name and contains not printable characters */
    public static void m429(Object obj, Object obj2) {
        if (C0018.m442() == 0) {
            ((Window) obj).setAttributes((WindowManager.LayoutParams) obj2);
        }
    }

    /* renamed from: ۢ۟۠, reason: not valid java name and contains not printable characters */
    public static Button m430(Object obj, int i) {
        if (m437() > 0) {
            return ((AlertDialog) obj).getButton(i);
        }
        return null;
    }

    /* renamed from: ۣ۟ۦۣ, reason: not valid java name and contains not printable characters */
    public static String m431(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۣۤۢۧ, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m432(Object obj, Object obj2, int i) {
        if (m437() > 0) {
            return ((SharedPreferences.Editor) obj).putInt((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۤۨۡ۟, reason: not valid java name and contains not printable characters */
    public static int m433(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۤۨۡ۟, reason: not valid java name and contains not printable characters */
    public static Class<?> m434(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* renamed from: ۤۨۡ۟, reason: not valid java name and contains not printable characters */
    public static String m435(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۧۧ۠ۥ, reason: not valid java name and contains not printable characters */
    public static AlertDialog.Builder m436(Object obj, Object obj2, Object obj3) {
        if (m437() > 0) {
            return ((AlertDialog.Builder) obj).setPositiveButton((CharSequence) obj2, (DialogInterface.OnClickListener) obj3);
        }
        return null;
    }

    /* renamed from: ۧۨ۟۠, reason: not valid java name and contains not printable characters */
    public static int m437() {
        return 1752692 ^ m433((Object) "ۥۤۧ");
    }

    /* renamed from: ۣۨ۟ۨ, reason: not valid java name and contains not printable characters */
    public static void m438(Object obj) {
        if (C0018.m442() == 0) {
            ((AlertDialog) obj).show();
        }
    }

    /* renamed from: ۨۢۦۤ, reason: not valid java name and contains not printable characters */
    public static void m439(Object obj) {
        if (C0018.m442() >= 0) {
            ((Toast) obj).show();
        }
    }
}
