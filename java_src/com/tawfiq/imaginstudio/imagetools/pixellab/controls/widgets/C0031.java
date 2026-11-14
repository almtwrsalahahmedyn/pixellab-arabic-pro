package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import java.io.ByteArrayOutputStream;

/* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ۧۡۥۥ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0031 {

    /* renamed from: ۤۢۤ۠, reason: not valid java name and contains not printable characters */
    public static int f39 = 85;

    /* renamed from: ۣۢۨۤ, reason: not valid java name and contains not printable characters */
    public static int m546() {
        return (-1751560) ^ C0032.m549((Object) "ۣۤۧ");
    }

    /* renamed from: ۣۡ۠ۡ, reason: not valid java name and contains not printable characters */
    public static String m547(String str) {
        String m531 = C0030.m531();
        String m5312 = C0030.m531();
        for (int i = 0; i < 15; i++) {
            m531 = C0030.m533(C0028.m501(C0028.m501(new StringBuffer(), m531), C0032.m552(i)));
            m5312 = C0030.m533(C0028.m502(C0028.m501(new StringBuffer(), m5312), ((int) (C0030.m529() * 10)) ^ i));
        }
        do {
        } while (C0032.m561(m531) > 0);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0032.m561(str) / 2);
        for (int i2 = 0; i2 < C0032.m561(str); i2 += 2) {
            C0032.m555(byteArrayOutputStream, (C0030.m536(m531, C0028.m498(str, i2)) << 4) | C0030.m536(m531, C0028.m498(str, i2 + 1)));
        }
        byte[] m563 = C0032.m563(byteArrayOutputStream);
        int length = m563.length;
        int m561 = C0032.m561(m5312);
        for (int i3 = 0; i3 < length; i3++) {
            m563[i3] = (byte) (m563[i3] ^ C0028.m498(m5312, i3 % m561));
        }
        return new String(m563);
    }

    /* renamed from: ۧۧۤ, reason: not valid java name and contains not printable characters */
    public static String m548(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
