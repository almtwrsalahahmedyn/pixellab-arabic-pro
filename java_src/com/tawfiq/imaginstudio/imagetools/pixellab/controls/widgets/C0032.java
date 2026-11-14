package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;

/* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ۨۨ۟ۨ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0032 {

    /* renamed from: ۣ۟۟۟ۦ, reason: not valid java name and contains not printable characters */
    public static boolean f40 = true;

    /* renamed from: ۟۟ۢۤۦ, reason: not valid java name and contains not printable characters */
    public static int m549(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۟۟ۢۤۦ, reason: not valid java name and contains not printable characters */
    public static Class<?> m550(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* renamed from: ۟۟ۢۤۦ, reason: not valid java name and contains not printable characters */
    public static String m551(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۣ۟۠۠۟, reason: not valid java name and contains not printable characters */
    public static String m552(int i) {
        if (C0029.m519() > 0) {
            return Integer.toHexString(i);
        }
        return null;
    }

    /* renamed from: ۟۠ۥۡۧ, reason: not valid java name and contains not printable characters */
    public static void m553(Object obj, int i) {
        if (C0029.m519() > 0) {
            ((TextView) obj).setText(i);
        }
    }

    /* renamed from: ۟ۤۧۢۥ, reason: not valid java name and contains not printable characters */
    public static void m554(Object obj, boolean z) {
        if (C0029.m519() >= 0) {
            ((TextView) obj).setSingleLine(z);
        }
    }

    /* renamed from: ۟ۥۣ۟ۡ, reason: not valid java name and contains not printable characters */
    public static void m555(Object obj, int i) {
        if (m566() < 0) {
            ((ByteArrayOutputStream) obj).write(i);
        }
    }

    /* renamed from: ۟ۥۧۤ۟, reason: not valid java name and contains not printable characters */
    public static String m556(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۣ۟ۧۡ۟, reason: not valid java name and contains not printable characters */
    public static void m557(Object obj, boolean z) {
        if (C0029.m519() > 0) {
            ((PopupWindow) obj).setFocusable(z);
        }
    }

    /* renamed from: ۟ۧۡۥۨ, reason: not valid java name and contains not printable characters */
    public static void m558(Object obj, Object obj2) {
        if (C0030.m541() > 0) {
            ((TextView) obj).setText((CharSequence) obj2);
        }
    }

    /* renamed from: ۟ۧۧ۟ۧ, reason: not valid java name and contains not printable characters */
    public static boolean m559(Object obj) {
        if (C0030.m541() >= 0) {
            return ((Iterator) obj).hasNext();
        }
        return false;
    }

    /* renamed from: ۠ۡۤ۠, reason: not valid java name and contains not printable characters */
    public static void m560(Object obj, Object obj2) {
        if (C0028.m503() >= 0) {
            ((LinearLayout) obj).addView((View) obj2);
        }
    }

    /* renamed from: ۢۤۨۢ, reason: not valid java name and contains not printable characters */
    public static int m561(Object obj) {
        if (C0029.m519() >= 0) {
            return ((String) obj).length();
        }
        return 0;
    }

    /* renamed from: ۢۥ۠ۡ, reason: not valid java name and contains not printable characters */
    public static TextUtils.TruncateAt m562() {
        if (C0029.m519() >= 0) {
            return TextUtils.TruncateAt.END;
        }
        return null;
    }

    /* renamed from: ۢۧ۟ۦ, reason: not valid java name and contains not printable characters */
    public static byte[] m563(Object obj) {
        if (C0028.m503() >= 0) {
            return ((ByteArrayOutputStream) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۥ۠ۥ۠, reason: contains not printable characters */
    public static int m564(Object obj) {
        if (C0028.m503() > 0) {
            return ((View) obj).getMeasuredWidth();
        }
        return 0;
    }

    /* renamed from: ۧۥۤۢ, reason: not valid java name and contains not printable characters */
    public static Object m565(Object obj) {
        if (C0028.m503() > 0) {
            return ((Iterator) obj).next();
        }
        return null;
    }

    /* renamed from: ۨۤۢۨ, reason: not valid java name and contains not printable characters */
    public static int m566() {
        return (-1751680) ^ m549((Object) "ۤۤۢ");
    }

    /* renamed from: ۨۥۢ۠, reason: not valid java name and contains not printable characters */
    public static String m567(String str) {
        String m531 = C0030.m531();
        String m5312 = C0030.m531();
        for (int i = 0; i < 15; i++) {
            m531 = C0030.m533(C0028.m501(C0028.m501(new StringBuffer(), m531), m552(i)));
            m5312 = C0030.m533(C0028.m502(C0028.m501(new StringBuffer(), m5312), ((int) (C0030.m529() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m561(str) / 2);
        for (int i2 = 0; i2 < m561(str); i2 += 2) {
            m555(byteArrayOutputStream, (C0030.m536(m531, C0028.m498(str, i2)) << 4) | C0030.m536(m531, C0028.m498(str, i2 + 1)));
        }
        byte[] m563 = m563(byteArrayOutputStream);
        int length = m563.length;
        int m561 = m561(m5312);
        for (int i3 = 0; i3 < length; i3++) {
            m563[i3] = (byte) (m563[i3] ^ C0028.m498(m5312, i3 % m561));
        }
        for (int i4 = 0; i4 < m563.length; i4 = m561(C0030.m531()) + 1) {
        }
        return new String(m563);
    }
}
