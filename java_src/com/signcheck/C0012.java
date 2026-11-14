package com.signcheck;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.Signature;
import android.os.Looper;
import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;
import java.security.cert.Certificate;
import java.util.Enumeration;
import java.util.jar.JarEntry;

/* renamed from: com.signcheck.۟ۧ۟ۦۨ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0012 {

    /* renamed from: ۟ۥ۠ۨ۠, reason: not valid java name and contains not printable characters */
    public static int f18 = 75;

    /* renamed from: ۟۟ۥۡۧ, reason: not valid java name and contains not printable characters */
    public static byte[] m332(Object obj) {
        if (C0011.m326() >= 0) {
            return ((Signature) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۣ۟ۡۨ۟, reason: not valid java name and contains not printable characters */
    public static byte[] m333(Object obj) {
        if (C0015.m372() >= 0) {
            return ((Certificate) obj).getEncoded();
        }
        return null;
    }

    /* renamed from: ۣ۟ۢۢ۟, reason: not valid java name and contains not printable characters */
    public static String m334(Object obj) {
        if (C0011.m326() > 0) {
            return ((ApplicationInfo) obj).sourceDir;
        }
        return null;
    }

    /* renamed from: ۟ۢۦۣۨ, reason: not valid java name and contains not printable characters */
    public static void m335(Object obj, int i) {
        if (C0014.m367() <= 0) {
            ((ByteArrayOutputStream) obj).write(i);
        }
    }

    /* renamed from: ۣ۟۟ۡ۟, reason: not valid java name and contains not printable characters */
    public static void m336(Object obj, Object obj2) {
        if (C0014.m367() <= 0) {
            ((Throwable) obj).addSuppressed((Throwable) obj2);
        }
    }

    /* renamed from: ۣ۟ۤۤۧ, reason: not valid java name and contains not printable characters */
    public static void m337(long j) {
        if (C0011.m326() >= 0) {
            Thread.sleep(j);
        }
    }

    /* renamed from: ۟ۤۨۦ۟, reason: not valid java name and contains not printable characters */
    public static String m338(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۦۣ۠۟, reason: not valid java name and contains not printable characters */
    public static void m339(Object obj, Object obj2) {
        if (C0013.m359() <= 0) {
            ((MessageDigest) obj).update((byte[]) obj2);
        }
    }

    /* renamed from: ۟ۦۣ۠ۦ, reason: not valid java name and contains not printable characters */
    public static boolean m340(Object obj, Object obj2) {
        if (C0014.m367() <= 0) {
            return ((String) obj).endsWith((String) obj2);
        }
        return false;
    }

    /* renamed from: ۟ۧ۟ۡۥ, reason: not valid java name and contains not printable characters */
    public static String m341(String str) {
        String m388 = C0015.m388();
        String m3882 = C0015.m388();
        for (int i = 0; i < 15; i++) {
            m388 = C0011.m330(C0011.m322(C0011.m322(new StringBuffer(), m388), C0015.m383(i)));
            m3882 = C0011.m330(C0015.m380(C0011.m322(new StringBuffer(), m3882), ((int) (C0013.m351() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0015.m384(str) / 2);
        for (int i2 = 0; i2 < C0015.m384(str); i2 += 2) {
            m335(byteArrayOutputStream, (C0013.m365(m388, m343(str, i2)) << 4) | C0013.m365(m388, m343(str, i2 + 1)));
        }
        byte[] m377 = C0015.m377(byteArrayOutputStream);
        int length = m377.length;
        int m384 = C0015.m384(m3882);
        while (length > 0) {
            m377[-1] = (byte) (m377[-1] ^ m343(m3882, (-1) % m384));
        }
        for (int i3 = 0; i3 < m377.length; i3 = C0015.m384(C0015.m388()) + 1) {
        }
        return new String(m377);
    }

    /* renamed from: ۠ۧۥۢ, reason: not valid java name and contains not printable characters */
    public static int m342(Object obj) {
        if (C0011.m326() > 0) {
            return ((ThreadGroup) obj).activeCount();
        }
        return 0;
    }

    /* renamed from: ۢۥ۠۟, reason: not valid java name and contains not printable characters */
    public static char m343(Object obj, int i) {
        if (C0014.m367() < 0) {
            return ((String) obj).charAt(i);
        }
        return (char) 0;
    }

    /* renamed from: ۥ۠۟, reason: contains not printable characters */
    public static void m344(Object obj) {
        if (C0015.m372() > 0) {
            ((Thread) obj).interrupt();
        }
    }

    /* renamed from: ۥ۠ۧ, reason: contains not printable characters */
    public static Looper m345() {
        if (C0013.m359() <= 0) {
            return Looper.getMainLooper();
        }
        return null;
    }

    /* renamed from: ۦۢۧۨ, reason: contains not printable characters */
    public static String m346(Object obj) {
        if (C0011.m326() > 0) {
            return ((JarEntry) obj).getName();
        }
        return null;
    }

    /* renamed from: ۦۨۥۥ, reason: contains not printable characters */
    public static boolean m347(Object obj) {
        if (C0014.m367() <= 0) {
            return ((Thread) obj).isDaemon();
        }
        return false;
    }

    /* renamed from: ۧۤۥ۠, reason: not valid java name and contains not printable characters */
    public static Object m348(Object obj) {
        if (C0013.m359() < 0) {
            return ((Enumeration) obj).nextElement();
        }
        return null;
    }

    /* renamed from: ۧۥۤۦ, reason: not valid java name and contains not printable characters */
    public static ApplicationInfo m349(Object obj) {
        if (C0014.m367() <= 0) {
            return ((Context) obj).getApplicationInfo();
        }
        return null;
    }

    /* renamed from: ۧۨ۟ۤ, reason: not valid java name and contains not printable characters */
    public static int m350() {
        return 56384 ^ C0015.m373((Object) "ۣ۠");
    }
}
