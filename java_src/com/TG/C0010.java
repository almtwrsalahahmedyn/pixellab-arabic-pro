package com.TG;

import android.content.pm.ApplicationInfo;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;

/* renamed from: com.TG.ۦۥۥۧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0010 {

    /* renamed from: ۣۡ۠۠, reason: not valid java name and contains not printable characters */
    public static boolean f15 = true;

    /* renamed from: ۟۟ۢۢۤ, reason: not valid java name and contains not printable characters */
    public static Certificate[] m304(Object obj) {
        if (C0006.m253() < 0) {
            return ((JarEntry) obj).getCertificates();
        }
        return null;
    }

    /* renamed from: ۣ۟۠۠ۧ, reason: not valid java name and contains not printable characters */
    public static InputStream m305(Object obj, Object obj2) {
        if (C0006.m253() < 0) {
            return ((JarFile) obj).getInputStream((ZipEntry) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۢ۟۟۟, reason: not valid java name and contains not printable characters */
    public static String m306(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۢ۟ۥۢ, reason: not valid java name and contains not printable characters */
    public static void m307(int i) {
    }

    /* renamed from: ۟ۢۧۧ, reason: not valid java name and contains not printable characters */
    public static void m308(Object obj) {
        if (C0009.m298() <= 0) {
            ((Exception) obj).printStackTrace();
        }
    }

    /* renamed from: ۣ۟۠۟ۥ, reason: not valid java name and contains not printable characters */
    public static int m309() {
        return (-1748662) ^ C0009.m299((Object) "ۡ۟۠");
    }

    /* renamed from: ۟ۥۣۢۨ, reason: not valid java name and contains not printable characters */
    public static void m310(Object obj) {
        if (C0007.m271() > 0) {
            ((JarFile) obj).close();
        }
    }

    /* renamed from: ۟ۦ۟ۧ۟, reason: not valid java name and contains not printable characters */
    public static ThreadGroup m311(Object obj) {
        if (C0006.m253() <= 0) {
            return ((ThreadGroup) obj).getParent();
        }
        return null;
    }

    /* renamed from: ۟ۧ۠ۨۥ, reason: not valid java name and contains not printable characters */
    public static boolean m312(Object obj) {
        if (C0008.m289() >= 0) {
            return ((JarEntry) obj).isDirectory();
        }
        return false;
    }

    /* renamed from: ۥۣۣۥ, reason: contains not printable characters */
    public static String m313(String str) {
        String m263 = C0006.m263();
        String m2632 = C0006.m263();
        for (int i = 0; i < 15; i++) {
            m263 = C0006.m262(C0008.m294(C0008.m294(new StringBuffer(), m263), C0007.m277(i)));
            m2632 = C0006.m262(C0007.m282(C0008.m294(new StringBuffer(), m2632), ((int) (C0008.m288() * 10)) ^ i));
        }
        do {
        } while (C0006.m247(m263) > 0);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0006.m247(str) / 2);
        for (int i2 = 0; i2 < C0006.m247(str); i2 += 2) {
            m315(byteArrayOutputStream, (C0006.m248(m263, C0006.m261(str, i2)) << 4) | C0006.m248(m263, C0006.m261(str, i2 + 1)));
        }
        byte[] m269 = C0007.m269(byteArrayOutputStream);
        int length = m269.length;
        int m247 = C0006.m247(m2632);
        for (int i3 = 0; i3 < length; i3++) {
            m269[i3] = (byte) (m269[i3] ^ C0006.m261(m2632, i3 % m247));
        }
        return new String(m269);
    }

    /* renamed from: ۦ۟ۡ۟, reason: contains not printable characters */
    public static String m314(Object obj) {
        if (C0008.m289() >= 0) {
            return ((ApplicationInfo) obj).sourceDir;
        }
        return null;
    }

    /* renamed from: ۣۧۧۢ, reason: not valid java name and contains not printable characters */
    public static void m315(Object obj, int i) {
        if (C0007.m271() >= 0) {
            ((ByteArrayOutputStream) obj).write(i);
        }
    }

    /* renamed from: ۧۤۦۣ, reason: not valid java name and contains not printable characters */
    public static void m316(int i) {
    }

    /* renamed from: ۧۧۧۡ, reason: not valid java name and contains not printable characters */
    public static int m317(Object obj, Object obj2, int i, int i2) {
        if (C0006.m253() <= 0) {
            return ((InputStream) obj).read((byte[]) obj2, i, i2);
        }
        return 0;
    }
}
