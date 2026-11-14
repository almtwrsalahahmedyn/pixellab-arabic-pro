package com.signcheck;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;

/* renamed from: com.signcheck.۟ۢ۠۠ۡ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0011 {

    /* renamed from: ۟ۦۦۣۧ, reason: not valid java name and contains not printable characters */
    public static boolean f17;

    /* renamed from: ۟۟۟, reason: not valid java name and contains not printable characters */
    public static String m321(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۢ۠ۧۥ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m322(Object obj, Object obj2) {
        if (C0015.m372() >= 0) {
            return ((StringBuffer) obj).append((String) obj2);
        }
        return null;
    }

    /* renamed from: ۡۢۨۨ, reason: not valid java name and contains not printable characters */
    public static int m323() {
        if (C0015.m372() > 0) {
            return Build.VERSION.SDK_INT;
        }
        return 0;
    }

    /* renamed from: ۣۢۥۡ, reason: not valid java name and contains not printable characters */
    public static Signature[] m324(Object obj) {
        if (C0014.m367() <= 0) {
            return ((PackageInfo) obj).signatures;
        }
        return null;
    }

    /* renamed from: ۤ۠ۨۥ, reason: not valid java name and contains not printable characters */
    public static boolean m325(Object obj, Object obj2) {
        if (C0013.m359() < 0) {
            return ((String) obj).startsWith((String) obj2);
        }
        return false;
    }

    /* renamed from: ۤۨۡۦ, reason: not valid java name and contains not printable characters */
    public static int m326() {
        return 1751762 ^ C0015.m373((Object) "ۤۥۧ");
    }

    /* renamed from: ۥۨ۟۟, reason: contains not printable characters */
    public static PackageInfo m327(Object obj, Object obj2, int i) {
        if (C0014.m367() <= 0) {
            return ((PackageManager) obj).getPackageArchiveInfo((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۦۣ۠ۧ, reason: contains not printable characters */
    public static InputStream m328(Object obj, Object obj2) {
        if (m326() >= 0) {
            return ((JarFile) obj).getInputStream((ZipEntry) obj2);
        }
        return null;
    }

    /* renamed from: ۦۤ۠۠, reason: contains not printable characters */
    public static String m329(String str) {
        String m388 = C0015.m388();
        String m3882 = C0015.m388();
        for (int i = 0; i < 15; i++) {
            m388 = m330(m322(m322(new StringBuffer(), m388), C0015.m383(i)));
            m3882 = m330(C0015.m380(m322(new StringBuffer(), m3882), ((int) (C0013.m351() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0015.m384(str) / 2);
        for (int i2 = 0; i2 < C0015.m384(str); i2 += 2) {
            C0012.m335(byteArrayOutputStream, (C0013.m365(m388, C0012.m343(str, i2)) << 4) | C0013.m365(m388, C0012.m343(str, i2 + 1)));
        }
        byte[] m377 = C0015.m377(byteArrayOutputStream);
        int length = m377.length;
        int m384 = C0015.m384(m3882);
        for (int i3 = 0; i3 < length; i3++) {
            m377[i3] = (byte) (m377[i3] ^ C0012.m343(m3882, i3 % m384));
        }
        for (int i4 = 0; i4 < m377.length; i4 = C0015.m384(C0015.m388()) + 1) {
        }
        return new String(m377);
    }

    /* renamed from: ۦۥۤۤ, reason: contains not printable characters */
    public static String m330(Object obj) {
        if (C0014.m367() < 0) {
            return ((StringBuffer) obj).toString();
        }
        return null;
    }

    /* renamed from: ۨۦۦۦ, reason: not valid java name and contains not printable characters */
    public static boolean m331(Object obj) {
        if (C0013.m359() < 0) {
            return ((JarEntry) obj).isDirectory();
        }
        return false;
    }
}
