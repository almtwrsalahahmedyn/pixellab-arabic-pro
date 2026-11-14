package com.smalihelper.iran;

import java.io.ByteArrayOutputStream;

/* renamed from: com.smalihelper.iran.۟ۢۡۨ۟, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0018 {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f28short = {548, 2174};

    /* renamed from: ۟۠ۢۨۧ, reason: not valid java name and contains not printable characters */
    public static boolean f29;

    /* renamed from: ۟۟ۤ۠۟, reason: not valid java name and contains not printable characters */
    public static String m440(String str) {
        String m447 = C0019.m447();
        String m4472 = C0019.m447();
        for (int i = 0; i < 15; i++) {
            m447 = C0019.m461(C0019.m454(C0019.m454(new StringBuffer(), m447), C0019.m452(i)));
            m4472 = C0019.m461(C0019.m450(C0019.m454(new StringBuffer(), m4472), ((int) (C0017.m426() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0019.m448(str) / 2);
        for (int i2 = 0; i2 < C0019.m448(str); i2 += 2) {
            C0016.m404(byteArrayOutputStream, (C0017.m424(m447, C0019.m445(str, i2)) << 4) | C0017.m424(m447, C0019.m445(str, i2 + 1)));
        }
        byte[] m462 = C0019.m462(byteArrayOutputStream);
        String m473 = C0020.m473(m441(), 0, 1, 581);
        while (C0019.m448(m473) > 0) {
            m473 = C0019.m447();
            if (C0019.m448(m473) == 0) {
                m473 = C0016.m405(m441(), 1, 1, 2079);
            }
        }
        int m448 = C0019.m448(m473);
        int m4482 = C0019.m448(m4472);
        for (int i3 = 0; i3 < m448; i3++) {
            m462[i3] = (byte) (m462[i3] ^ C0019.m445(m4472, i3 % m4482));
        }
        for (int i4 = 0; i4 < m462.length; i4 = C0019.m448(C0019.m447()) + 1) {
        }
        return new String(m462);
    }

    /* renamed from: ۣ۟۠ۦۨ, reason: not valid java name and contains not printable characters */
    public static short[] m441() {
        if (C0019.m463() > 0) {
            return f28short;
        }
        return null;
    }

    /* renamed from: ۟ۤۥۣۥ, reason: not valid java name and contains not printable characters */
    public static int m442() {
        return 1747781 ^ C0017.m433((Object) "ۣ۠ۨ");
    }

    /* renamed from: ۟ۨ۠ۨ, reason: not valid java name and contains not printable characters */
    public static String m443(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
