package com.smalihelper.iran;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* renamed from: com.smalihelper.iran.ۢۨۥۨ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0020 {

    /* renamed from: ۟ۦۥۢۤ, reason: not valid java name and contains not printable characters */
    public static int f32 = 10;

    /* renamed from: ۟۟۟ۡۧ, reason: not valid java name and contains not printable characters */
    public static int m467() {
        return (-1749638) ^ C0017.m433((Object) "ۣۣۢ");
    }

    /* renamed from: ۟ۡۢۡۤ, reason: not valid java name and contains not printable characters */
    public static void m468(Object obj, Object obj2) {
        if (C0019.m463() >= 0) {
            ((Context) obj).startActivity((Intent) obj2);
        }
    }

    /* renamed from: ۟ۤۡ۟ۤ, reason: not valid java name and contains not printable characters */
    public static void m469(Object obj, int i) {
        if (C0019.m463() >= 0) {
            ((GradientDrawable) obj).setColor(i);
        }
    }

    /* renamed from: ۟ۥۧۨۢ, reason: not valid java name and contains not printable characters */
    public static void m470(Object obj, Object obj2) {
        if (C0016.m408() >= 0) {
            ((Button) obj).setTypeface((Typeface) obj2);
        }
    }

    /* renamed from: ۟ۦۥ۠۠, reason: not valid java name and contains not printable characters */
    public static String m471(String str) {
        String m447 = C0019.m447();
        String m4472 = C0019.m447();
        for (int i = 0; i < 15; i++) {
            m447 = C0019.m461(C0019.m454(C0019.m454(new StringBuffer(), m447), C0019.m452(i)));
            m4472 = C0019.m461(C0019.m450(C0019.m454(new StringBuffer(), m4472), ((int) (C0017.m426() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0019.m448(str) / 2);
        for (int i2 = 0; i2 < C0019.m448(str); i2 += 2) {
            C0016.m404(byteArrayOutputStream, (C0017.m424(m447, C0019.m445(str, i2)) << 4) | C0017.m424(m447, C0019.m445(str, i2 + 1)));
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

    /* renamed from: ۟ۦۥۧۨ, reason: not valid java name and contains not printable characters */
    public static int m472() {
        if (C0017.m437() > 0) {
            return Build.VERSION.SDK_INT;
        }
        return 0;
    }

    /* renamed from: ۠۟ۧۨ, reason: not valid java name and contains not printable characters */
    public static String m473(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۠۠۠ۡ, reason: not valid java name and contains not printable characters */
    public static void m474(Object obj, float f) {
        if (C0018.m442() >= 0) {
            ((GradientDrawable) obj).setCornerRadius(f);
        }
    }

    /* renamed from: ۣۧۤ۠, reason: not valid java name and contains not printable characters */
    public static void m475(Object obj, Object obj2) {
        if (C0019.m463() >= 0) {
            ((TextView) obj).setTypeface((Typeface) obj2);
        }
    }

    /* renamed from: ۤ۠ۨۧ, reason: not valid java name and contains not printable characters */
    public static ImageView.ScaleType m476() {
        if (C0019.m463() > 0) {
            return ImageView.ScaleType.FIT_XY;
        }
        return null;
    }

    /* renamed from: ۧۨ۠ۥ, reason: not valid java name and contains not printable characters */
    public static AlertDialog m477(Object obj) {
        if (C0016.m408() > 0) {
            return ((AlertDialog.Builder) obj).create();
        }
        return null;
    }

    /* renamed from: ۨۦۣۧ, reason: not valid java name and contains not printable characters */
    public static void m478(Object obj) {
        if (C0017.m437() >= 0) {
            ((IOException) obj).printStackTrace();
        }
    }
}
