package com.TG;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.util.Enumeration;
import java.util.jar.JarFile;

/* renamed from: com.TG.۟ۢۦۨ۠, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0006 {

    /* renamed from: ۨ۠ۢۥ, reason: not valid java name and contains not printable characters */
    public static boolean f11;

    /* renamed from: ۣ۟۠ۥۤ, reason: not valid java name and contains not printable characters */
    public static boolean m246(Object obj) {
        if (m253() <= 0) {
            return ((Thread) obj).isDaemon();
        }
        return false;
    }

    /* renamed from: ۣ۟ۡ۟۠, reason: not valid java name and contains not printable characters */
    public static int m247(Object obj) {
        if (C0007.m271() >= 0) {
            return ((String) obj).length();
        }
        return 0;
    }

    /* renamed from: ۟ۢ۟ۤۥ, reason: not valid java name and contains not printable characters */
    public static int m248(Object obj, int i) {
        if (m253() <= 0) {
            return ((String) obj).indexOf(i);
        }
        return 0;
    }

    /* renamed from: ۣ۟ۢۢۤ, reason: not valid java name and contains not printable characters */
    public static int m249() {
        if (C0008.m289() > 0) {
            return Process.myPid();
        }
        return 0;
    }

    /* renamed from: ۣ۟ۦۡۡ, reason: not valid java name and contains not printable characters */
    public static Object m250(Object obj) {
        if (C0008.m289() > 0) {
            return ((Enumeration) obj).nextElement();
        }
        return null;
    }

    /* renamed from: ۣ۟ۦۣۢ, reason: not valid java name and contains not printable characters */
    public static PackageManager m251(Object obj) {
        if (C0009.m298() <= 0) {
            return ((Context) obj).getPackageManager();
        }
        return null;
    }

    /* renamed from: ۟ۤۦۢ۟, reason: not valid java name and contains not printable characters */
    public static String m252(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۥۥۡۥ, reason: not valid java name and contains not printable characters */
    public static int m253() {
        return (-1750645) ^ C0009.m299((Object) "ۣۡۧ");
    }

    /* renamed from: ۟ۥۥۨۦ, reason: not valid java name and contains not printable characters */
    public static Looper m254() {
        if (m253() < 0) {
            return Looper.getMainLooper();
        }
        return null;
    }

    /* renamed from: ۟ۦۤ۠ۥ, reason: not valid java name and contains not printable characters */
    public static int m255() {
        if (C0008.m289() > 0) {
            return Build.VERSION.SDK_INT;
        }
        return 0;
    }

    /* renamed from: ۟ۦۤۢۤ, reason: not valid java name and contains not printable characters */
    public static Enumeration m256(Object obj) {
        if (C0007.m271() > 0) {
            return ((JarFile) obj).entries();
        }
        return null;
    }

    /* renamed from: ۣ۟ۧۥۢ, reason: not valid java name and contains not printable characters */
    public static boolean m257(Object obj, Object obj2) {
        if (C0007.m271() > 0) {
            return ((String) obj).endsWith((String) obj2);
        }
        return false;
    }

    /* renamed from: ۡۢۨۦ, reason: not valid java name and contains not printable characters */
    public static boolean m258(Object obj, Object obj2) {
        if (C0007.m271() >= 0) {
            return ((String) obj).startsWith((String) obj2);
        }
        return false;
    }

    /* renamed from: ۣۥ۟ۢ, reason: not valid java name and contains not printable characters */
    public static String m259(String str) {
        String m263 = m263();
        String m2632 = m263();
        for (int i = 0; i < 15; i++) {
            m263 = m262(C0008.m294(C0008.m294(new StringBuffer(), m263), C0007.m277(i)));
            m2632 = m262(C0007.m282(C0008.m294(new StringBuffer(), m2632), ((int) (C0008.m288() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m247(str) / 2);
        for (int i2 = 0; i2 < m247(str); i2 += 2) {
            C0010.m315(byteArrayOutputStream, (m248(m263, m261(str, i2)) << 4) | m248(m263, m261(str, i2 + 1)));
        }
        byte[] m269 = C0007.m269(byteArrayOutputStream);
        int length = m269.length;
        int m247 = m247(m2632);
        for (int i3 = 0; i3 < length; i3++) {
            m269[i3] = (byte) (m269[i3] ^ m261(m2632, i3 % m247));
        }
        for (int i4 = 0; i4 < m269.length; i4 = m247(m263()) + 1) {
        }
        return new String(m269);
    }

    /* renamed from: ۣۥۧ, reason: not valid java name and contains not printable characters */
    public static int m260(Object obj, Object obj2, boolean z) {
        if (C0007.m271() > 0) {
            return ((ThreadGroup) obj).enumerate((Thread[]) obj2, z);
        }
        return 0;
    }

    /* renamed from: ۤ۟۟ۦ, reason: not valid java name and contains not printable characters */
    public static char m261(Object obj, int i) {
        if (C0008.m289() > 0) {
            return ((String) obj).charAt(i);
        }
        return (char) 0;
    }

    /* renamed from: ۤ۠ۨۤ, reason: not valid java name and contains not printable characters */
    public static String m262(Object obj) {
        if (C0007.m271() > 0) {
            return ((StringBuffer) obj).toString();
        }
        return null;
    }

    /* renamed from: ۥۣۢۨ, reason: contains not printable characters */
    public static String m263() {
        if (m253() < 0) {
            return "";
        }
        return null;
    }

    /* renamed from: ۥۣۨۤ, reason: contains not printable characters */
    public static byte[] m264(Object obj) {
        if (C0008.m289() >= 0) {
            return ((Certificate) obj).getEncoded();
        }
        return null;
    }

    /* renamed from: ۦۡ۟ۦ, reason: contains not printable characters */
    public static void m265(Object obj) {
        if (C0009.m298() < 0) {
            ((InputStream) obj).close();
        }
    }
}
