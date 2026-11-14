package com.TG;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Handler;
import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.jar.JarEntry;

/* renamed from: com.TG.ۣۥۢۡ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0007 {

    /* renamed from: ۣ۟ۤ۠, reason: not valid java name and contains not printable characters */
    public static boolean f12 = true;

    /* renamed from: ۟۟ۨ۠, reason: not valid java name and contains not printable characters */
    public static void m266(Object obj) {
        if (m271() >= 0) {
            ((Thread) obj).interrupt();
        }
    }

    /* renamed from: ۟۠۟ۤۦ, reason: not valid java name and contains not printable characters */
    public static byte[] m267(Object obj) {
        if (C0006.m253() <= 0) {
            return ((Signature) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۣۣۣ۟, reason: not valid java name and contains not printable characters */
    public static String m268(String str) {
        String m263 = C0006.m263();
        String m2632 = C0006.m263();
        for (int i = 0; i < 15; i++) {
            m263 = C0006.m262(C0008.m294(C0008.m294(new StringBuffer(), m263), m277(i)));
            m2632 = C0006.m262(m282(C0008.m294(new StringBuffer(), m2632), ((int) (C0008.m288() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0006.m247(str) / 2);
        for (int i2 = 0; i2 < C0006.m247(str); i2 += 2) {
            C0010.m315(byteArrayOutputStream, (C0006.m248(m263, C0006.m261(str, i2)) << 4) | C0006.m248(m263, C0006.m261(str, i2 + 1)));
        }
        byte[] m269 = m269(byteArrayOutputStream);
        int length = m269.length;
        int m247 = C0006.m247(m2632);
        while (length > 0) {
            m269[-1] = (byte) (m269[-1] ^ C0006.m261(m2632, (-1) % m247));
        }
        for (int i3 = 0; i3 < m269.length; i3 = C0006.m247(C0006.m263()) + 1) {
        }
        return new String(m269);
    }

    /* renamed from: ۟ۥۣۨۤ, reason: not valid java name and contains not printable characters */
    public static byte[] m269(Object obj) {
        if (C0006.m253() < 0) {
            return ((ByteArrayOutputStream) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۟ۥۤۨۨ, reason: not valid java name and contains not printable characters */
    public static SigningInfo m270(Object obj) {
        if (C0006.m253() <= 0) {
            return ((PackageInfo) obj).signingInfo;
        }
        return null;
    }

    /* renamed from: ۟ۦۡۤۡ, reason: not valid java name and contains not printable characters */
    public static int m271() {
        return 1750694 ^ C0009.m299((Object) "ۣۣۧ");
    }

    /* renamed from: ۟ۦۣۡ۠, reason: not valid java name and contains not printable characters */
    public static boolean m272(Object obj) {
        if (C0009.m298() < 0) {
            return ((Enumeration) obj).hasMoreElements();
        }
        return false;
    }

    /* renamed from: ۣ۟ۧۢۦ, reason: not valid java name and contains not printable characters */
    public static void m273(Object obj, Object obj2) {
        if (m271() > 0) {
            ((Handler) obj).removeCallbacksAndMessages(obj2);
        }
    }

    /* renamed from: ۡۡۡ۟, reason: not valid java name and contains not printable characters */
    public static void m274(Object obj) {
        if (C0009.m298() < 0) {
            ((Thread) obj).start();
        }
    }

    /* renamed from: ۣۡۤۥ, reason: not valid java name and contains not printable characters */
    public static void m275(Object obj, Object obj2) {
        if (C0006.m253() <= 0) {
            ((MessageDigest) obj).update((byte[]) obj2);
        }
    }

    /* renamed from: ۣۢۡۤ, reason: not valid java name and contains not printable characters */
    public static String m276(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۢۧۧ۟, reason: not valid java name and contains not printable characters */
    public static String m277(int i) {
        if (m271() >= 0) {
            return Integer.toHexString(i);
        }
        return null;
    }

    /* renamed from: ۥۣ۟ۥ, reason: contains not printable characters */
    public static void m278(long j) {
        if (m271() > 0) {
            Thread.sleep(j);
        }
    }

    /* renamed from: ۥۧۥۨ, reason: contains not printable characters */
    public static ThreadGroup m279(Object obj) {
        if (C0006.m253() < 0) {
            return ((Thread) obj).getThreadGroup();
        }
        return null;
    }

    /* renamed from: ۦ۟ۧ, reason: contains not printable characters */
    public static String m280(Object obj) {
        if (C0009.m298() <= 0) {
            return ((JarEntry) obj).getName();
        }
        return null;
    }

    /* renamed from: ۧۦۦۣ, reason: not valid java name and contains not printable characters */
    public static Signature[] m281(Object obj) {
        if (C0006.m253() < 0) {
            return ((PackageInfo) obj).signatures;
        }
        return null;
    }

    /* renamed from: ۧۨۡ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m282(Object obj, int i) {
        if (m271() > 0) {
            return ((StringBuffer) obj).append(i);
        }
        return null;
    }

    /* renamed from: ۣۧۨۦ, reason: not valid java name and contains not printable characters */
    public static boolean m283(Object obj, Object obj2) {
        if (m271() > 0) {
            return ((String) obj).equals(obj2);
        }
        return false;
    }
}
