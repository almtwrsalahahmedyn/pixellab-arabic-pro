package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;

/* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.۟ۥۣۨۡ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0028 {

    /* renamed from: ۡۨۢ, reason: not valid java name and contains not printable characters */
    public static boolean f34;

    /* renamed from: ۟ۡۡۦۡ, reason: not valid java name and contains not printable characters */
    public static void m495(Object obj, int i, int i2) {
        if (C0029.m519() > 0) {
            ((View) obj).measure(i, i2);
        }
    }

    /* renamed from: ۟ۢۧۨۥ, reason: not valid java name and contains not printable characters */
    public static void m496(Object obj, Object obj2) {
        if (C0030.m541() > 0) {
            ((PopupWindow) obj).setContentView((View) obj2);
        }
    }

    /* renamed from: ۟ۢۨۧۥ, reason: not valid java name and contains not printable characters */
    public static int m497(Object obj) {
        if (m503() > 0) {
            return Color.parseColor((String) obj);
        }
        return 0;
    }

    /* renamed from: ۣ۟۟ۨۥ, reason: not valid java name and contains not printable characters */
    public static char m498(Object obj, int i) {
        if (C0030.m541() > 0) {
            return ((String) obj).charAt(i);
        }
        return (char) 0;
    }

    /* renamed from: ۣ۟ۤ۠۟, reason: not valid java name and contains not printable characters */
    public static void m499(Object obj, int i, Object obj2, boolean z) {
        if (C0032.m566() <= 0) {
            ((CustomTextMenu) obj).addItem(i, (Runnable) obj2, z);
        }
    }

    /* renamed from: ۟ۤۡۥ۠, reason: not valid java name and contains not printable characters */
    public static void m500(Object obj, Object obj2) {
        if (C0030.m541() > 0) {
            ((TextView) obj).setEllipsize((TextUtils.TruncateAt) obj2);
        }
    }

    /* renamed from: ۟ۤۢۥۡ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m501(Object obj, Object obj2) {
        if (C0032.m566() <= 0) {
            return ((StringBuffer) obj).append((String) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۥ۟ۦۢ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m502(Object obj, int i) {
        if (m503() >= 0) {
            return ((StringBuffer) obj).append(i);
        }
        return null;
    }

    /* renamed from: ۟ۥۦۧ, reason: not valid java name and contains not printable characters */
    public static int m503() {
        return 1753412 ^ C0032.m549((Object) "ۦ۟ۨ");
    }

    /* renamed from: ۟ۥۧۥۢ, reason: not valid java name and contains not printable characters */
    public static void m504(Object obj, int i) {
        if (C0032.m566() < 0) {
            ((LinearLayout) obj).setGravity(i);
        }
    }

    /* renamed from: ۣ۠ۢۧ, reason: not valid java name and contains not printable characters */
    public static void m505(Object obj, int i) {
        if (m503() > 0) {
            ((TextView) obj).setMaxLines(i);
        }
    }

    /* renamed from: ۡۥۣۤ, reason: not valid java name and contains not printable characters */
    public static void m506(Object obj, Object obj2) {
        if (C0032.m566() <= 0) {
            ((LinearLayout) obj).setOnClickListener((View.OnClickListener) obj2);
        }
    }

    /* renamed from: ۣۢۡۦ, reason: not valid java name and contains not printable characters */
    public static String m507(String str) {
        String m531 = C0030.m531();
        String m5312 = C0030.m531();
        for (int i = 0; i < 15; i++) {
            m531 = C0030.m533(m501(m501(new StringBuffer(), m531), C0032.m552(i)));
            m5312 = C0030.m533(m502(m501(new StringBuffer(), m5312), ((int) (C0030.m529() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0032.m561(str) / 2);
        for (int i2 = 0; i2 < C0032.m561(str); i2 += 2) {
            C0032.m555(byteArrayOutputStream, (C0030.m536(m531, m498(str, i2)) << 4) | C0030.m536(m531, m498(str, i2 + 1)));
        }
        byte[] m563 = C0032.m563(byteArrayOutputStream);
        int length = m563.length;
        int m561 = C0032.m561(m5312);
        for (int i3 = 0; i3 < length; i3++) {
            m563[i3] = (byte) (m563[i3] ^ m498(m5312, i3 % m561));
        }
        for (int i4 = 0; i4 < m563.length; i4 = C0032.m561(C0030.m531()) + 1) {
        }
        return new String(m563);
    }

    /* renamed from: ۣۤۧۧ, reason: not valid java name and contains not printable characters */
    public static void m508(Object obj, int i, int i2, int i3, int i4) {
        if (m503() > 0) {
            ((TextView) obj).setPadding(i, i2, i3, i4);
        }
    }

    /* renamed from: ۤۧ۠۠, reason: not valid java name and contains not printable characters */
    public static void m509(Object obj, int i) {
        if (m503() > 0) {
            ((LinearLayout) obj).setOrientation(i);
        }
    }

    /* renamed from: ۨۡۨۧ, reason: not valid java name and contains not printable characters */
    public static String m510(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۣۨ۟۠, reason: not valid java name and contains not printable characters */
    public static void m511(Object obj, Object obj2) {
        if (m503() >= 0) {
            ((TextView) obj).setBackgroundDrawable((Drawable) obj2);
        }
    }
}
