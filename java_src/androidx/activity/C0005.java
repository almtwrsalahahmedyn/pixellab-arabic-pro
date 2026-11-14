package androidx.activity;

import android.animation.ValueAnimator;
import android.app.Dialog;
import android.app.NotificationChannel;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.security.MessageDigest;

/* renamed from: androidx.activity.ۨۨۦۡ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0005 {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f8short = {3298, 2775};

    /* renamed from: ۧۦۡۤ, reason: not valid java name and contains not printable characters */
    public static boolean f9;

    /* renamed from: ۟۟۠ۨۡ, reason: not valid java name and contains not printable characters */
    public static void m202(Object obj, Object obj2) {
        if (m229() >= 0) {
            ((Button) obj).setBackground((Drawable) obj2);
        }
    }

    /* renamed from: ۣ۟۠ۦۥ, reason: not valid java name and contains not printable characters */
    public static void m203(Object obj, int i, int i2, int i3, int i4) {
        if (m229() >= 0) {
            ((LinearLayout) obj).setPadding(i, i2, i3, i4);
        }
    }

    /* renamed from: ۟۠ۧۧۧ, reason: not valid java name and contains not printable characters */
    public static AssetFileDescriptor m204(Object obj, Object obj2) {
        if (C0001.m84() < 0) {
            return ((AssetManager) obj).openFd((String) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۡۡۤ۟, reason: not valid java name and contains not printable characters */
    public static void m205(Object obj, Object obj2) {
        if (C0001.m84() <= 0) {
            ((Button) obj).setOnTouchListener((View.OnTouchListener) obj2);
        }
    }

    /* renamed from: ۣ۟ۡۢۨ, reason: not valid java name and contains not printable characters */
    public static Typeface m206() {
        if (m229() >= 0) {
            return Typeface.SANS_SERIF;
        }
        return null;
    }

    /* renamed from: ۣ۟ۡۦۤ, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m207(Object obj, long j) {
        if (m229() > 0) {
            return ((ViewPropertyAnimator) obj).setDuration(j);
        }
        return null;
    }

    /* renamed from: ۣ۟ۡۨ۟, reason: not valid java name and contains not printable characters */
    public static void m208(Object obj, float f) {
        if (m229() >= 0) {
            ((Button) obj).setElevation(f);
        }
    }

    /* renamed from: ۟ۢۦۣۡ, reason: not valid java name and contains not printable characters */
    public static void m209(Object obj, int i, int i2, int i3) {
        if (C0004.m199() >= 0) {
            ((AudioManager) obj).setStreamVolume(i, i2, i3);
        }
    }

    /* renamed from: ۟ۢۦۢ۟, reason: not valid java name and contains not printable characters */
    public static void m210(Object obj, boolean z) {
        if (C0002.m126() <= 0) {
            ((FrameLayout) obj).setClipToOutline(z);
        }
    }

    /* renamed from: ۟ۢۨۥۣ, reason: not valid java name and contains not printable characters */
    public static void m211(Object obj, float f) {
        if (m229() > 0) {
            ((GradientDrawable) obj).setCornerRadius(f);
        }
    }

    /* renamed from: ۣۣ۟۟ۢ, reason: not valid java name and contains not printable characters */
    public static void m212(Object obj, Object obj2) {
        if (C0001.m84() <= 0) {
            ((MessageDigest) obj).update((byte[]) obj2);
        }
    }

    /* renamed from: ۣۣ۟ۡ۟, reason: not valid java name and contains not printable characters */
    public static void m213(Object obj, Object obj2, long j, long j2) {
        if (C0001.m84() < 0) {
            ((MediaPlayer) obj).setDataSource((FileDescriptor) obj2, j, j2);
        }
    }

    /* renamed from: ۟ۤ۠ۦ۠, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m214(Object obj, Object obj2, boolean z) {
        if (C0004.m199() >= 0) {
            return ((SharedPreferences.Editor) obj).putBoolean((String) obj2, z);
        }
        return null;
    }

    /* renamed from: ۟ۤۦۣۨ, reason: not valid java name and contains not printable characters */
    public static boolean m215(Object obj) {
        if (C0001.m84() <= 0) {
            return ((MediaPlayer) obj).isPlaying();
        }
        return false;
    }

    /* renamed from: ۟ۤۧۨۢ, reason: not valid java name and contains not printable characters */
    public static void m216(Object obj, Object obj2) {
        if (m229() >= 0) {
            ((TextView) obj).setTypeface((Typeface) obj2);
        }
    }

    /* renamed from: ۟ۦ۟ۧۡ, reason: not valid java name and contains not printable characters */
    public static void m217(Object obj, Object obj2) {
        if (C0001.m84() < 0) {
            ((ValueAnimator) obj).addUpdateListener((ValueAnimator.AnimatorUpdateListener) obj2);
        }
    }

    /* renamed from: ۟ۦ۠۠ۦ, reason: not valid java name and contains not printable characters */
    public static void m218(Object obj, int i) {
        if (C0002.m126() <= 0) {
            ((Button) obj).setTextColor(i);
        }
    }

    /* renamed from: ۟ۦۢۤۨ, reason: not valid java name and contains not printable characters */
    public static String m219(String str) {
        String m110 = C0001.m110();
        String m1102 = C0001.m110();
        for (int i = 0; i < 15; i++) {
            m110 = C0002.m130(C0002.m124(C0002.m124(new StringBuffer(), m110), C0002.m142(i)));
            m1102 = C0002.m130(C0002.m122(C0002.m124(new StringBuffer(), m1102), ((int) (C0001.m74() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0002.m151(str) / 2);
        for (int i2 = 0; i2 < C0002.m151(str); i2 += 2) {
            m234(byteArrayOutputStream, (m236(m110, C0002.m138(str, i2)) << 4) | m236(m110, C0002.m138(str, i2 + 1)));
        }
        byte[] m103 = C0001.m103(byteArrayOutputStream);
        String m184 = C0003.m184(m240(), 0, 1, 3203);
        while (C0002.m151(m184) > 0) {
            m184 = C0001.m110();
            if (C0002.m151(m184) == 0) {
                m184 = m233(m240(), 1, 1, 2742);
            }
        }
        int m151 = C0002.m151(m184);
        int m1512 = C0002.m151(m1102);
        for (int i3 = 0; i3 < m151; i3++) {
            m103[i3] = (byte) (m103[i3] ^ C0002.m138(m1102, i3 % m1512));
        }
        for (int i4 = 0; i4 < m103.length; i4 = C0002.m151(C0001.m110()) + 1) {
        }
        return new String(m103);
    }

    /* renamed from: ۟ۧ۟ۢۦ, reason: not valid java name and contains not printable characters */
    public static void m220(Object obj) {
        if (C0004.m199() >= 0) {
            ((SharedPreferences.Editor) obj).apply();
        }
    }

    /* renamed from: ۟ۧۢۨ, reason: not valid java name and contains not printable characters */
    public static FileDescriptor m221(Object obj) {
        if (C0001.m84() <= 0) {
            return ((AssetFileDescriptor) obj).getFileDescriptor();
        }
        return null;
    }

    /* renamed from: ۣ۟ۧ۟ۦ, reason: not valid java name and contains not printable characters */
    public static int m222(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۣ۟ۧ۟ۦ, reason: not valid java name and contains not printable characters */
    public static Class<?> m223(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* renamed from: ۣ۟ۧ۟ۦ, reason: not valid java name and contains not printable characters */
    public static String m224(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۧۧۡۨ, reason: not valid java name and contains not printable characters */
    public static void m225(Object obj) {
        if (C0002.m126() < 0) {
            ((MediaPlayer) obj).prepare();
        }
    }

    /* renamed from: ۣ۟ۧۨ, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m226(Object obj, float f) {
        if (C0001.m84() <= 0) {
            return ((ViewPropertyAnimator) obj).scaleX(f);
        }
        return null;
    }

    /* renamed from: ۠ۤۥۨ, reason: not valid java name and contains not printable characters */
    public static void m227(Object obj, int i) {
        if (m229() > 0) {
            ((TextView) obj).setGravity(i);
        }
    }

    /* renamed from: ۡۧۡۦ, reason: not valid java name and contains not printable characters */
    public static Typeface m228(Object obj, int i) {
        if (C0004.m199() > 0) {
            return Typeface.create((Typeface) obj, i);
        }
        return null;
    }

    /* renamed from: ۡۧۥۧ, reason: not valid java name and contains not printable characters */
    public static int m229() {
        return 1750649 ^ m222((Object) "ۣۢۥ");
    }

    /* renamed from: ۢ۟۟۠, reason: not valid java name and contains not printable characters */
    public static void m230(Object obj, boolean z) {
        if (C0002.m126() <= 0) {
            ((MediaPlayer) obj).setLooping(z);
        }
    }

    /* renamed from: ۣۢۤۥ, reason: not valid java name and contains not printable characters */
    public static void m231(Object obj, Object obj2) {
        if (C0004.m199() >= 0) {
            ((Button) obj).setTypeface((Typeface) obj2);
        }
    }

    /* renamed from: ۣۢۨۧ, reason: not valid java name and contains not printable characters */
    public static Typeface m232() {
        if (m229() > 0) {
            return Typeface.DEFAULT_BOLD;
        }
        return null;
    }

    /* renamed from: ۣۣ۠ۧ, reason: not valid java name and contains not printable characters */
    public static String m233(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۣۥ۟ۨ, reason: not valid java name and contains not printable characters */
    public static void m234(Object obj, int i) {
        if (C0002.m126() <= 0) {
            ((ByteArrayOutputStream) obj).write(i);
        }
    }

    /* renamed from: ۤۢۥۡ, reason: not valid java name and contains not printable characters */
    public static void m235(Object obj, int i) {
        if (C0002.m126() <= 0) {
            ((GradientDrawable) obj).setColor(i);
        }
    }

    /* renamed from: ۣۤۥۦ, reason: not valid java name and contains not printable characters */
    public static int m236(Object obj, int i) {
        if (C0002.m126() <= 0) {
            return ((String) obj).indexOf(i);
        }
        return 0;
    }

    /* renamed from: ۥ۠ۦۦ, reason: contains not printable characters */
    public static void m237(Object obj) {
        if (C0004.m199() >= 0) {
            ((Exception) obj).printStackTrace();
        }
    }

    /* renamed from: ۦۤۤۦ, reason: contains not printable characters */
    public static Window m238(Object obj) {
        if (C0002.m126() <= 0) {
            return ((Dialog) obj).getWindow();
        }
        return null;
    }

    /* renamed from: ۧۧۦ۠, reason: not valid java name and contains not printable characters */
    public static void m239(Object obj, Object obj2, Object obj3) {
        if (C0002.m126() < 0) {
            ((NotificationChannel) obj).setSound((Uri) obj2, (AudioAttributes) obj3);
        }
    }

    /* renamed from: ۨۦۥۦ, reason: not valid java name and contains not printable characters */
    public static short[] m240() {
        if (C0002.m126() <= 0) {
            return f8short;
        }
        return null;
    }
}
