package com.signcheck;

import java.io.ByteArrayOutputStream;

/* renamed from: com.signcheck.ۦ۟ۥۤ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0014 {

    /* renamed from: ۨۤ۟ۡ, reason: not valid java name and contains not printable characters */
    public static int f21 = 7;

    /* renamed from: ۣ۟ۤۨۦ, reason: not valid java name and contains not printable characters */
    public static String m366(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۡۦۢۤ, reason: not valid java name and contains not printable characters */
    public static int m367() {
        return (-1753713) ^ C0015.m373((Object) "ۦۨۡ");
    }

    /* renamed from: ۣۣۤ, reason: not valid java name and contains not printable characters */
    public static String m368(String str) {
        String m388 = C0015.m388();
        String m3882 = C0015.m388();
        for (int i = 0; i < 15; i++) {
            m388 = C0011.m330(C0011.m322(C0011.m322(new StringBuffer(), m388), C0015.m383(i)));
            m3882 = C0011.m330(C0015.m380(C0011.m322(new StringBuffer(), m3882), ((int) (C0013.m351() * 10)) ^ i));
        }
        do {
        } while (C0015.m384(m388) > 0);
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
        return new String(m377);
    }
}
