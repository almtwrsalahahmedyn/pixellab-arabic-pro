package com.TG;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;

/* renamed from: com.TG.ۣۦۧۧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0008 {

    /* renamed from: ۡۤۢۨ, reason: not valid java name and contains not printable characters */
    public static boolean f13 = true;

    /* renamed from: ۟۟ۢۤۥ, reason: not valid java name and contains not printable characters */
    public static void m284(Object obj, Object obj2) {
        if (C0009.m298() < 0) {
            ((Throwable) obj).addSuppressed((Throwable) obj2);
        }
    }

    /* renamed from: ۣ۟۠ۧ۠, reason: not valid java name and contains not printable characters */
    public static Signature[] m285(Object obj) {
        if (C0007.m271() > 0) {
            return ((SigningInfo) obj).getApkContentsSigners();
        }
        return null;
    }

    /* renamed from: ۟ۡ۠ۤ, reason: not valid java name and contains not printable characters */
    public static ApplicationInfo m286(Object obj) {
        if (C0007.m271() >= 0) {
            return ((Context) obj).getApplicationInfo();
        }
        return null;
    }

    /* renamed from: ۣۣ۟ۤۨ, reason: not valid java name and contains not printable characters */
    public static Thread m287() {
        if (m289() > 0) {
            return Thread.currentThread();
        }
        return null;
    }

    /* renamed from: ۣ۟ۨۦ, reason: not valid java name and contains not printable characters */
    public static double m288() {
        if (C0006.m253() < 0) {
            return Math.random();
        }
        return 0.0d;
    }

    /* renamed from: ۟ۤۡ۟ۦ, reason: not valid java name and contains not printable characters */
    public static int m289() {
        return 1754533 ^ C0009.m299((Object) "ۧۦ۟");
    }

    /* renamed from: ۣ۟ۤۡۢ, reason: not valid java name and contains not printable characters */
    public static String m290(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۥۣۣۨ, reason: not valid java name and contains not printable characters */
    public static int m291(Object obj) {
        if (C0009.m298() < 0) {
            return ((ThreadGroup) obj).activeCount();
        }
        return 0;
    }

    /* renamed from: ۟ۦۢۡ۟, reason: not valid java name and contains not printable characters */
    public static byte[] m292(Object obj) {
        if (m289() >= 0) {
            return ((MessageDigest) obj).digest();
        }
        return null;
    }

    /* renamed from: ۟ۦۨۢ۠, reason: not valid java name and contains not printable characters */
    public static String m293(String str) {
        String m263 = C0006.m263();
        String m2632 = C0006.m263();
        for (int i = 0; i < 15; i++) {
            m263 = C0006.m262(m294(m294(new StringBuffer(), m263), C0007.m277(i)));
            m2632 = C0006.m262(C0007.m282(m294(new StringBuffer(), m2632), ((int) (m288() * 10)) ^ i));
        }
        do {
        } while (C0006.m247(m263) > 0);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0006.m247(str) / 2);
        for (int i2 = 0; i2 < C0006.m247(str); i2 += 2) {
            C0010.m315(byteArrayOutputStream, (C0006.m248(m263, C0006.m261(str, i2)) << 4) | C0006.m248(m263, C0006.m261(str, i2 + 1)));
        }
        byte[] m269 = C0007.m269(byteArrayOutputStream);
        int length = m269.length;
        int m247 = C0006.m247(m2632);
        for (int i3 = 0; i3 < length; i3++) {
            m269[i3] = (byte) (m269[i3] ^ C0006.m261(m2632, i3 % m247));
        }
        return new String(m269);
    }

    /* renamed from: ۢۥ۟ۡ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m294(Object obj, Object obj2) {
        if (C0009.m298() < 0) {
            return ((StringBuffer) obj).append((String) obj2);
        }
        return null;
    }

    /* renamed from: ۤۧۦۤ, reason: not valid java name and contains not printable characters */
    public static PackageInfo m295(Object obj, Object obj2, int i) {
        if (C0006.m253() < 0) {
            return ((PackageManager) obj).getPackageArchiveInfo((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۦ۠ۥۤ, reason: contains not printable characters */
    public static MessageDigest m296(Object obj) {
        if (m289() >= 0) {
            return MessageDigest.getInstance((String) obj);
        }
        return null;
    }

    /* renamed from: ۦۤ۠, reason: contains not printable characters */
    public static String m297(Object obj, int i) {
        if (C0006.m253() <= 0) {
            return ((BigInteger) obj).toString(i);
        }
        return null;
    }
}
