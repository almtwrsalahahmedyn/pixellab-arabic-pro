package com.signcheck;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Handler;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* renamed from: com.signcheck.ۢۢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0013 {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f19short = {800, 929};

    /* renamed from: ۣۣۡۡ, reason: not valid java name and contains not printable characters */
    public static int f20 = 52;

    /* renamed from: ۟۟۟ۥۢ, reason: not valid java name and contains not printable characters */
    public static double m351() {
        if (C0011.m326() >= 0) {
            return Math.random();
        }
        return 0.0d;
    }

    /* renamed from: ۟ۡۦۣۤ, reason: not valid java name and contains not printable characters */
    public static void m352(Object obj) {
        if (C0011.m326() > 0) {
            ((Exception) obj).printStackTrace();
        }
    }

    /* renamed from: ۟ۢۥ۟ۤ, reason: not valid java name and contains not printable characters */
    public static void m353(Object obj) {
        if (C0014.m367() < 0) {
            ((InputStream) obj).close();
        }
    }

    /* renamed from: ۣ۟ۢۥۥ, reason: not valid java name and contains not printable characters */
    public static short[] m354() {
        if (C0011.m326() > 0) {
            return f19short;
        }
        return null;
    }

    /* renamed from: ۟ۤۤۡۧ, reason: not valid java name and contains not printable characters */
    public static SigningInfo m355(Object obj) {
        if (C0015.m372() >= 0) {
            return ((PackageInfo) obj).signingInfo;
        }
        return null;
    }

    /* renamed from: ۟ۥۥۣۨ, reason: not valid java name and contains not printable characters */
    public static void m356(int i) {
    }

    /* renamed from: ۟ۥۦۡۢ, reason: not valid java name and contains not printable characters */
    public static Thread m357() {
        if (C0014.m367() <= 0) {
            return Thread.currentThread();
        }
        return null;
    }

    /* renamed from: ۟ۦۧۡۨ, reason: not valid java name and contains not printable characters */
    public static String m358(String str) {
        String m388 = C0015.m388();
        String m3882 = C0015.m388();
        for (int i = 0; i < 15; i++) {
            m388 = C0011.m330(C0011.m322(C0011.m322(new StringBuffer(), m388), C0015.m383(i)));
            m3882 = C0011.m330(C0015.m380(C0011.m322(new StringBuffer(), m3882), ((int) (m351() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0015.m384(str) / 2);
        for (int i2 = 0; i2 < C0015.m384(str); i2 += 2) {
            C0012.m335(byteArrayOutputStream, (m365(m388, C0012.m343(str, i2)) << 4) | m365(m388, C0012.m343(str, i2 + 1)));
        }
        byte[] m377 = C0015.m377(byteArrayOutputStream);
        String m321 = C0011.m321(m354(), 0, 1, 833);
        while (C0015.m384(m321) > 0) {
            m321 = C0015.m388();
            if (C0015.m384(m321) == 0) {
                m321 = C0012.m338(m354(), 1, 1, 960);
            }
        }
        int m384 = C0015.m384(m321);
        int m3842 = C0015.m384(m3882);
        for (int i3 = 0; i3 < m384; i3++) {
            m377[i3] = (byte) (m377[i3] ^ C0012.m343(m3882, i3 % m3842));
        }
        for (int i4 = 0; i4 < m377.length; i4 = C0015.m384(C0015.m388()) + 1) {
        }
        return new String(m377);
    }

    /* renamed from: ۟ۧۧۧ۟, reason: not valid java name and contains not printable characters */
    public static int m359() {
        return (-1748618) ^ C0015.m373((Object) "ۡۡۥ");
    }

    /* renamed from: ۡۦ۠ۡ, reason: not valid java name and contains not printable characters */
    public static int m360(Object obj, Object obj2, int i, int i2) {
        if (C0011.m326() > 0) {
            return ((InputStream) obj).read((byte[]) obj2, i, i2);
        }
        return 0;
    }

    /* renamed from: ۣ۟ۤۥ, reason: not valid java name and contains not printable characters */
    public static String m361(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۣۨۤ۠, reason: not valid java name and contains not printable characters */
    public static int m362(Object obj, Object obj2, boolean z) {
        if (C0015.m372() >= 0) {
            return ((ThreadGroup) obj).enumerate((Thread[]) obj2, z);
        }
        return 0;
    }

    /* renamed from: ۤۦ۠ۥ, reason: not valid java name and contains not printable characters */
    public static void m363(Object obj, Object obj2) {
        if (C0011.m326() > 0) {
            ((Handler) obj).removeCallbacksAndMessages(obj2);
        }
    }

    /* renamed from: ۨۥۥ۟, reason: not valid java name and contains not printable characters */
    public static Signature[] m364(Object obj) {
        if (C0011.m326() >= 0) {
            return ((SigningInfo) obj).getApkContentsSigners();
        }
        return null;
    }

    /* renamed from: ۨۨۨ, reason: not valid java name and contains not printable characters */
    public static int m365(Object obj, int i) {
        if (C0011.m326() >= 0) {
            return ((String) obj).indexOf(i);
        }
        return 0;
    }
}
