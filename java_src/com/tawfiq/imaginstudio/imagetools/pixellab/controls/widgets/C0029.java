package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ۣۣۤ۟, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0029 {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f35short = {2247, 1209};

    /* renamed from: ۨۢۥۣ, reason: not valid java name and contains not printable characters */
    public static int f36 = 13;

    /* renamed from: ۟۠ۢۧ۠, reason: not valid java name and contains not printable characters */
    public static void m512(Object obj, int i) {
        if (C0032.m566() < 0) {
            ((TextView) obj).setTextColor(i);
        }
    }

    /* renamed from: ۟ۡ۠ۡۢ, reason: not valid java name and contains not printable characters */
    public static void m513(Object obj, Object obj2) {
        if (m519() >= 0) {
            ((PopupWindow) obj).setBackgroundDrawable((Drawable) obj2);
        }
    }

    /* renamed from: ۣۣ۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static short[] m514() {
        if (C0030.m541() >= 0) {
            return f35short;
        }
        return null;
    }

    /* renamed from: ۣ۟ۦۧ۟, reason: not valid java name and contains not printable characters */
    public static String m515(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۤۤۥۢ, reason: not valid java name and contains not printable characters */
    public static Iterator m516(Object obj) {
        if (C0028.m503() > 0) {
            return ((ArrayList) obj).iterator();
        }
        return null;
    }

    /* renamed from: ۟ۥۢۦۣ, reason: not valid java name and contains not printable characters */
    public static String m517(String str) {
        String m531 = C0030.m531();
        String m5312 = C0030.m531();
        for (int i = 0; i < 15; i++) {
            m531 = C0030.m533(C0028.m501(C0028.m501(new StringBuffer(), m531), C0032.m552(i)));
            m5312 = C0030.m533(C0028.m502(C0028.m501(new StringBuffer(), m5312), ((int) (C0030.m529() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0032.m561(str) / 2);
        for (int i2 = 0; i2 < C0032.m561(str); i2 += 2) {
            C0032.m555(byteArrayOutputStream, (C0030.m536(m531, C0028.m498(str, i2)) << 4) | C0030.m536(m531, C0028.m498(str, i2 + 1)));
        }
        byte[] m563 = C0032.m563(byteArrayOutputStream);
        String m556 = C0032.m556(m514(), 0, 1, 2214);
        while (C0032.m561(m556) > 0) {
            m556 = C0030.m531();
            if (C0032.m561(m556) == 0) {
                m556 = C0028.m510(m514(), 1, 1, 1240);
            }
        }
        int m561 = C0032.m561(m556);
        int m5612 = C0032.m561(m5312);
        for (int i3 = 0; i3 < m561; i3++) {
            m563[i3] = (byte) (m563[i3] ^ C0028.m498(m5312, i3 % m5612));
        }
        for (int i4 = 0; i4 < m563.length; i4 = C0032.m561(C0030.m531()) + 1) {
        }
        return new String(m563);
    }

    /* renamed from: ۟ۦ۟ۢۤ, reason: not valid java name and contains not printable characters */
    public static boolean m518(Object obj) {
        if (m519() > 0) {
            return ((TextView) obj).performClick();
        }
        return false;
    }

    /* renamed from: ۟ۦۢۦۢ, reason: not valid java name and contains not printable characters */
    public static int m519() {
        return 1753643 ^ C0032.m549((Object) "ۦۣۨ");
    }

    /* renamed from: ۟ۧۥۣۣ, reason: not valid java name and contains not printable characters */
    public static void m520(Object obj, Object obj2) {
        if (C0030.m541() > 0) {
            ((LinearLayout) obj).removeView((View) obj2);
        }
    }

    /* renamed from: ۟ۨۥۣ, reason: not valid java name and contains not printable characters */
    public static void m521(Object obj, int i, float f) {
        if (C0030.m541() >= 0) {
            ((TextView) obj).setTextSize(i, f);
        }
    }

    /* renamed from: ۠۠ۤۥ, reason: not valid java name and contains not printable characters */
    public static void m522(Object obj) {
        if (C0032.m566() < 0) {
            ((View) obj).requestLayout();
        }
    }

    /* renamed from: ۡ۠ۢۥ, reason: not valid java name and contains not printable characters */
    public static void m523(Object obj, Object obj2) {
        if (m519() >= 0) {
            ((View) obj).setBackgroundDrawable((Drawable) obj2);
        }
    }

    /* renamed from: ۣۢۤ۟, reason: not valid java name and contains not printable characters */
    public static ViewGroup.LayoutParams m524(Object obj) {
        if (C0032.m566() <= 0) {
            return ((View) obj).getLayoutParams();
        }
        return null;
    }

    /* renamed from: ۦۢۡۦ, reason: contains not printable characters */
    public static View m525(Object obj, int i) {
        if (C0030.m541() > 0) {
            return ((LinearLayout) obj).getChildAt(i);
        }
        return null;
    }

    /* renamed from: ۦۦۥۡ, reason: contains not printable characters */
    public static int m526(Object obj) {
        if (C0028.m503() >= 0) {
            return ((LinearLayout) obj).getChildCount();
        }
        return 0;
    }

    /* renamed from: ۧۡ۠ۦ, reason: not valid java name and contains not printable characters */
    public static int m527(int i, int i2) {
        if (m519() >= 0) {
            return Math.min(i, i2);
        }
        return 0;
    }
}
