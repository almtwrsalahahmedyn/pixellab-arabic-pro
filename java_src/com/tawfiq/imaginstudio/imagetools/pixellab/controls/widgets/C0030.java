package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;

/* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ۤۤۢ۟, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0030 {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f37short = {3105, 1551};

    /* renamed from: ۢۡۦۥ, reason: not valid java name and contains not printable characters */
    public static int f38 = -45;

    /* renamed from: ۟۟ۡۤۡ, reason: not valid java name and contains not printable characters */
    public static void m528(Object obj, int i) {
        if (C0028.m503() >= 0) {
            ((PopupWindow) obj).setHeight(i);
        }
    }

    /* renamed from: ۣ۟ۡۡ۟, reason: not valid java name and contains not printable characters */
    public static double m529() {
        if (C0029.m519() > 0) {
            return Math.random();
        }
        return 0.0d;
    }

    /* renamed from: ۟ۢ۠۟ۡ, reason: not valid java name and contains not printable characters */
    public static short[] m530() {
        if (m541() > 0) {
            return f37short;
        }
        return null;
    }

    /* renamed from: ۣ۟۟ۢۦ, reason: not valid java name and contains not printable characters */
    public static String m531() {
        if (C0028.m503() >= 0) {
            return "";
        }
        return null;
    }

    /* renamed from: ۣ۟ۢۨۥ, reason: not valid java name and contains not printable characters */
    public static void m532(Object obj, Object obj2) {
        if (m541() >= 0) {
            ((ImageView) obj).setImageDrawable((Drawable) obj2);
        }
    }

    /* renamed from: ۣ۟ۧ۟ۧ, reason: not valid java name and contains not printable characters */
    public static String m533(Object obj) {
        if (m541() > 0) {
            return ((StringBuffer) obj).toString();
        }
        return null;
    }

    /* renamed from: ۟ۤۨ۠۠, reason: not valid java name and contains not printable characters */
    public static void m534(Object obj, Object obj2) {
        if (C0028.m503() >= 0) {
            ((ScrollView) obj).addView((View) obj2);
        }
    }

    /* renamed from: ۟ۦ۟ۦ۟, reason: not valid java name and contains not printable characters */
    public static void m535(Object obj, int i) {
        if (C0029.m519() >= 0) {
            ((View) obj).setVisibility(i);
        }
    }

    /* renamed from: ۟ۦۣۨ, reason: not valid java name and contains not printable characters */
    public static int m536(Object obj, int i) {
        if (m541() > 0) {
            return ((String) obj).indexOf(i);
        }
        return 0;
    }

    /* renamed from: ۟ۧ۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static boolean m537(Object obj, Object obj2) {
        if (m541() >= 0) {
            return ((ArrayList) obj).add(obj2);
        }
        return false;
    }

    /* renamed from: ۣ۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static void m538(Object obj, Object obj2, Object obj3) {
        if (C0032.m566() <= 0) {
            ((LinearLayout) obj).addView((View) obj2, (ViewGroup.LayoutParams) obj3);
        }
    }

    /* renamed from: ۠۟ۦۤ, reason: not valid java name and contains not printable characters */
    public static void m539(Object obj, Object obj2) {
        if (C0028.m503() > 0) {
            ((TextView) obj).setOnClickListener((View.OnClickListener) obj2);
        }
    }

    /* renamed from: ۣۢۤۤ, reason: not valid java name and contains not printable characters */
    public static Drawable m540(Object obj, int i) {
        if (C0029.m519() > 0) {
            return ContextCompat.getDrawable((Context) obj, i);
        }
        return null;
    }

    /* renamed from: ۥ۟ۦ۟, reason: contains not printable characters */
    public static int m541() {
        return 56528 ^ C0032.m549((Object) "ۥ۠");
    }

    /* renamed from: ۦۣ۟, reason: contains not printable characters */
    public static void m542(Object obj, int i) {
        if (C0029.m519() >= 0) {
            ((PopupWindow) obj).setWidth(i);
        }
    }

    /* renamed from: ۧۧ۟۟, reason: not valid java name and contains not printable characters */
    public static void m543(Object obj, int i) {
        if (C0032.m566() < 0) {
            ((TextView) obj).setMaxWidth(i);
        }
    }

    /* renamed from: ۨۦ۠ۢ, reason: not valid java name and contains not printable characters */
    public static String m544(String str) {
        String m531 = m531();
        String m5312 = m531();
        for (int i = 0; i < 15; i++) {
            m531 = m533(C0028.m501(C0028.m501(new StringBuffer(), m531), C0032.m552(i)));
            m5312 = m533(C0028.m502(C0028.m501(new StringBuffer(), m5312), ((int) (m529() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0032.m561(str) / 2);
        for (int i2 = 0; i2 < C0032.m561(str); i2 += 2) {
            C0032.m555(byteArrayOutputStream, (m536(m531, C0028.m498(str, i2)) << 4) | m536(m531, C0028.m498(str, i2 + 1)));
        }
        byte[] m563 = C0032.m563(byteArrayOutputStream);
        String m556 = C0032.m556(m530(), 0, 1, 3136);
        while (C0032.m561(m556) > 0) {
            m556 = m531();
            if (C0032.m561(m556) == 0) {
                m556 = C0029.m515(m530(), 1, 1, 1646);
            }
        }
        int m561 = C0032.m561(m556);
        int m5612 = C0032.m561(m5312);
        for (int i3 = 0; i3 < m561; i3++) {
            m563[i3] = (byte) (m563[i3] ^ C0028.m498(m5312, i3 % m5612));
        }
        for (int i4 = 0; i4 < m563.length; i4 = C0032.m561(m531()) + 1) {
        }
        return new String(m563);
    }

    /* renamed from: ۨۦۢۧ, reason: not valid java name and contains not printable characters */
    public static String m545(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
