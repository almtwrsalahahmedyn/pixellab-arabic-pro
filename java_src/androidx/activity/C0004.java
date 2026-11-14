package androidx.activity;

import java.io.ByteArrayOutputStream;

/* renamed from: androidx.activity.ۦۣ۠ۨ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0004 {

    /* renamed from: ۣۤ۠ۨ, reason: not valid java name and contains not printable characters */
    public static int f7 = 9;

    /* renamed from: ۣ۟۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static int m199() {
        return 56528 ^ C0005.m222((Object) "ۧۧ");
    }

    /* renamed from: ۟ۡۤۥۥ, reason: not valid java name and contains not printable characters */
    public static String m200(String str) {
        String m110 = C0001.m110();
        String m1102 = C0001.m110();
        for (int i = 0; i < 15; i++) {
            m110 = C0002.m130(C0002.m124(C0002.m124(new StringBuffer(), m110), C0002.m142(i)));
            m1102 = C0002.m130(C0002.m122(C0002.m124(new StringBuffer(), m1102), ((int) (C0001.m74() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0002.m151(str) / 2);
        for (int i2 = 0; i2 < C0002.m151(str); i2 += 2) {
            C0005.m234(byteArrayOutputStream, (C0005.m236(m110, C0002.m138(str, i2)) << 4) | C0005.m236(m110, C0002.m138(str, i2 + 1)));
        }
        byte[] m103 = C0001.m103(byteArrayOutputStream);
        int length = m103.length;
        int m151 = C0002.m151(m1102);
        while (length > 0) {
            m103[-1] = (byte) (m103[-1] ^ C0002.m138(m1102, (-1) % m151));
        }
        for (int i3 = 0; i3 < m103.length; i3 = C0002.m151(C0001.m110()) + 1) {
        }
        return new String(m103);
    }

    /* renamed from: ۧۥۣۧ, reason: not valid java name and contains not printable characters */
    public static String m201(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
