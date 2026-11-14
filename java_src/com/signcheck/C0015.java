package com.signcheck;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.cert.Certificate;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/* renamed from: com.signcheck.ۨ۠ۥ۟, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0015 {

    /* renamed from: ۣۨۢ, reason: not valid java name and contains not printable characters */
    public static boolean f22 = true;

    /* renamed from: ۟۟ۢۡۦ, reason: not valid java name and contains not printable characters */
    public static String m369(String str) {
        String m388 = m388();
        String m3882 = m388();
        for (int i = 0; i < 15; i++) {
            m388 = C0011.m330(C0011.m322(C0011.m322(new StringBuffer(), m388), m383(i)));
            m3882 = C0011.m330(m380(C0011.m322(new StringBuffer(), m3882), ((int) (C0013.m351() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m384(str) / 2);
        while (m384(str) > 0) {
            C0012.m335(byteArrayOutputStream, (C0013.m365(m388, C0012.m343(str, -2)) << 4) | C0013.m365(m388, C0012.m343(str, -1)));
        }
        byte[] m377 = m377(byteArrayOutputStream);
        int length = m377.length;
        int m384 = m384(m3882);
        for (int i2 = 0; i2 < length; i2++) {
            m377[i2] = (byte) (m377[i2] ^ C0012.m343(m3882, i2 % m384));
        }
        return new String(m377);
    }

    /* renamed from: ۟۟ۤ۠ۡ, reason: not valid java name and contains not printable characters */
    public static Enumeration m370(Object obj) {
        if (C0011.m326() > 0) {
            return ((JarFile) obj).entries();
        }
        return null;
    }

    /* renamed from: ۟۟ۦۡۡ, reason: not valid java name and contains not printable characters */
    public static void m371(Object obj) {
        if (m372() >= 0) {
            ((JarFile) obj).close();
        }
    }

    /* renamed from: ۟۠ۡۢۧ, reason: not valid java name and contains not printable characters */
    public static int m372() {
        return 1751567 ^ m373((Object) "ۤۡۢ");
    }

    /* renamed from: ۟۠ۨۤۨ, reason: not valid java name and contains not printable characters */
    public static int m373(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۟۠ۨۤۨ, reason: not valid java name and contains not printable characters */
    public static Class<?> m374(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* renamed from: ۟۠ۨۤۨ, reason: not valid java name and contains not printable characters */
    public static String m375(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۡۦۤ۠, reason: not valid java name and contains not printable characters */
    public static byte[] m376(Object obj) {
        if (C0014.m367() <= 0) {
            return ((MessageDigest) obj).digest();
        }
        return null;
    }

    /* renamed from: ۟ۢۢۦۥ, reason: not valid java name and contains not printable characters */
    public static byte[] m377(Object obj) {
        if (C0013.m359() < 0) {
            return ((ByteArrayOutputStream) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۟ۤۡۡۦ, reason: not valid java name and contains not printable characters */
    public static MessageDigest m378(Object obj) {
        if (C0013.m359() < 0) {
            return MessageDigest.getInstance((String) obj);
        }
        return null;
    }

    /* renamed from: ۟ۤۢۤۤ, reason: not valid java name and contains not printable characters */
    public static boolean m379(Object obj) {
        if (C0013.m359() <= 0) {
            return ((Enumeration) obj).hasMoreElements();
        }
        return false;
    }

    /* renamed from: ۟ۦۨۡۤ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m380(Object obj, int i) {
        if (C0014.m367() <= 0) {
            return ((StringBuffer) obj).append(i);
        }
        return null;
    }

    /* renamed from: ۣ۟ۧ۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m381(Object obj, int i) {
        if (C0011.m326() > 0) {
            return ((BigInteger) obj).toString(i);
        }
        return null;
    }

    /* renamed from: ۣ۟ۧۢ۟, reason: not valid java name and contains not printable characters */
    public static int m382() {
        if (C0014.m367() < 0) {
            return Process.myPid();
        }
        return 0;
    }

    /* renamed from: ۠۟ۨۦ, reason: not valid java name and contains not printable characters */
    public static String m383(int i) {
        if (C0013.m359() < 0) {
            return Integer.toHexString(i);
        }
        return null;
    }

    /* renamed from: ۢۤۡۨ, reason: not valid java name and contains not printable characters */
    public static int m384(Object obj) {
        if (C0011.m326() > 0) {
            return ((String) obj).length();
        }
        return 0;
    }

    /* renamed from: ۢۨۧۧ, reason: not valid java name and contains not printable characters */
    public static PackageManager m385(Object obj) {
        if (m372() >= 0) {
            return ((Context) obj).getPackageManager();
        }
        return null;
    }

    /* renamed from: ۤۦ۟ۦ, reason: not valid java name and contains not printable characters */
    public static void m386(Object obj) {
        if (C0011.m326() >= 0) {
            ((Thread) obj).start();
        }
    }

    /* renamed from: ۤۧۨۨ, reason: not valid java name and contains not printable characters */
    public static ThreadGroup m387(Object obj) {
        if (C0013.m359() < 0) {
            return ((ThreadGroup) obj).getParent();
        }
        return null;
    }

    /* renamed from: ۥۥۨۧ, reason: contains not printable characters */
    public static String m388() {
        if (C0011.m326() >= 0) {
            return "";
        }
        return null;
    }

    /* renamed from: ۣۧۦۤ, reason: not valid java name and contains not printable characters */
    public static void m389(int i) {
    }

    /* renamed from: ۧۦۦۢ, reason: not valid java name and contains not printable characters */
    public static String m390(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۧۧۢۤ, reason: not valid java name and contains not printable characters */
    public static boolean m391(Object obj, Object obj2) {
        if (C0014.m367() <= 0) {
            return ((String) obj).equals(obj2);
        }
        return false;
    }

    /* renamed from: ۨ۠۠, reason: not valid java name and contains not printable characters */
    public static ThreadGroup m392(Object obj) {
        if (C0014.m367() <= 0) {
            return ((Thread) obj).getThreadGroup();
        }
        return null;
    }

    /* renamed from: ۣۨۡۧ, reason: not valid java name and contains not printable characters */
    public static Certificate[] m393(Object obj) {
        if (m372() > 0) {
            return ((JarEntry) obj).getCertificates();
        }
        return null;
    }
}
