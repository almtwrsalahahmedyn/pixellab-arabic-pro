package com.TG;

import java.io.ByteArrayOutputStream;

/* renamed from: com.TG.ۥۧۢۥ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0009 {

    /* renamed from: ۧۥۥ۠, reason: not valid java name and contains not printable characters */
    public static int f14 = 13;

    /* renamed from: ۟ۢۥۦۦ, reason: not valid java name and contains not printable characters */
    public static int m298() {
        return (-1755392) ^ m299((Object) "ۣۨ۟");
    }

    /* renamed from: ۣۣ۟ۢۡ, reason: not valid java name and contains not printable characters */
    public static int m299(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۣۣ۟ۢۡ, reason: not valid java name and contains not printable characters */
    public static Class<?> m300(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* renamed from: ۣۣ۟ۢۡ, reason: not valid java name and contains not printable characters */
    public static String m301(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۤ۟ۢۧ, reason: not valid java name and contains not printable characters */
    public static String m302(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۧۥۣ۠, reason: not valid java name and contains not printable characters */
    public static String m303(String str) {
        String m263 = C0006.m263();
        String m2632 = C0006.m263();
        for (int i = 0; i < 15; i++) {
            m263 = C0006.m262(C0008.m294(C0008.m294(new StringBuffer(), m263), C0007.m277(i)));
            m2632 = C0006.m262(C0007.m282(C0008.m294(new StringBuffer(), m2632), ((int) (C0008.m288() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0006.m247(str) / 2);
        while (C0006.m247(str) > 0) {
            C0010.m315(byteArrayOutputStream, (C0006.m248(m263, C0006.m261(str, -2)) << 4) | C0006.m248(m263, C0006.m261(str, -1)));
        }
        byte[] m269 = C0007.m269(byteArrayOutputStream);
        int length = m269.length;
        int m247 = C0006.m247(m2632);
        for (int i2 = 0; i2 < length; i2++) {
            m269[i2] = (byte) (m269[i2] ^ C0006.m261(m2632, i2 % m247));
        }
        return new String(m269);
    }
}
