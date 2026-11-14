package androidx.activity;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;

/* renamed from: androidx.activity.۟۠۠ۦۤ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0001 {

    /* renamed from: ۣ۟ۢۢ۠, reason: not valid java name and contains not printable characters */
    public static boolean f4 = true;

    /* renamed from: ۟۠۠ۧ۠, reason: not valid java name and contains not printable characters */
    public static void m71(Object obj, Object obj2) {
        if (C0002.m126() <= 0) {
            ((Activity) obj).startActivity((Intent) obj2);
        }
    }

    /* renamed from: ۟۠ۢۡۥ, reason: not valid java name and contains not printable characters */
    public static ValueAnimator m72(Object obj, long j) {
        if (m84() < 0) {
            return ((ValueAnimator) obj).setDuration(j);
        }
        return null;
    }

    /* renamed from: ۣ۟۠ۥۨ, reason: not valid java name and contains not printable characters */
    public static String m73(String str) {
        String m110 = m110();
        String m1102 = m110();
        for (int i = 0; i < 15; i++) {
            m110 = C0002.m130(C0002.m124(C0002.m124(new StringBuffer(), m110), C0002.m142(i)));
            m1102 = C0002.m130(C0002.m122(C0002.m124(new StringBuffer(), m1102), ((int) (m74() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0002.m151(str) / 2);
        while (C0002.m151(str) > 0) {
            C0005.m234(byteArrayOutputStream, (C0005.m236(m110, C0002.m138(str, -2)) << 4) | C0005.m236(m110, C0002.m138(str, -1)));
        }
        byte[] m103 = m103(byteArrayOutputStream);
        int length = m103.length;
        int m151 = C0002.m151(m1102);
        for (int i2 = 0; i2 < length; i2++) {
            m103[i2] = (byte) (m103[i2] ^ C0002.m138(m1102, i2 % m151));
        }
        return new String(m103);
    }

    /* renamed from: ۟۠ۤ۟ۨ, reason: not valid java name and contains not printable characters */
    public static double m74() {
        if (C0002.m126() <= 0) {
            return Math.random();
        }
        return 0.0d;
    }

    /* renamed from: ۟ۡۢۨ, reason: not valid java name and contains not printable characters */
    public static void m75(Object obj, Object obj2) {
        if (C0004.m199() > 0) {
            ((NotificationManager) obj).createNotificationChannel((NotificationChannel) obj2);
        }
    }

    /* renamed from: ۟ۢ۟ۢۤ, reason: not valid java name and contains not printable characters */
    public static DisplayMetrics m76(Object obj) {
        if (C0004.m199() >= 0) {
            return ((Resources) obj).getDisplayMetrics();
        }
        return null;
    }

    /* renamed from: ۟ۢ۠۠ۥ, reason: not valid java name and contains not printable characters */
    public static int m77(Object obj) {
        if (C0002.m126() < 0) {
            return ((MotionEvent) obj).getAction();
        }
        return 0;
    }

    /* renamed from: ۟ۢۡۢ۟, reason: not valid java name and contains not printable characters */
    public static SharedPreferences m78(Object obj, Object obj2, int i) {
        if (C0004.m199() > 0) {
            return ((Activity) obj).getSharedPreferences((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۟ۢۡۦ۟, reason: not valid java name and contains not printable characters */
    public static int m79(Object obj) {
        if (C0004.m199() >= 0) {
            return ((DisplayMetrics) obj).widthPixels;
        }
        return 0;
    }

    /* renamed from: ۣ۟۟ۢۤ, reason: not valid java name and contains not printable characters */
    public static void m80(Object obj, Object obj2) {
        if (C0005.m229() >= 0) {
            ((LinearLayout) obj).setBackground((Drawable) obj2);
        }
    }

    /* renamed from: ۣۣ۟ۤۥ, reason: not valid java name and contains not printable characters */
    public static void m81(Object obj) {
        if (C0004.m199() > 0) {
            ((ObjectAnimator) obj).start();
        }
    }

    /* renamed from: ۣ۟ۥ۟ۥ, reason: not valid java name and contains not printable characters */
    public static int m82(Object obj, int i) {
        if (C0002.m126() <= 0) {
            return ((AudioManager) obj).getStreamVolume(i);
        }
        return 0;
    }

    /* renamed from: ۣ۟ۨۦۤ, reason: not valid java name and contains not printable characters */
    public static Notification.Builder m83(Object obj, Object obj2) {
        if (C0005.m229() > 0) {
            return ((Notification.Builder) obj).setContentTitle((CharSequence) obj2);
        }
        return null;
    }

    /* renamed from: ۣ۟ۨۧۨ, reason: not valid java name and contains not printable characters */
    public static int m84() {
        return (-1754402) ^ C0005.m222((Object) "ۧ۠ۨ");
    }

    /* renamed from: ۟ۤ۟ۦ۟, reason: not valid java name and contains not printable characters */
    public static GradientDrawable.Orientation m85() {
        if (C0005.m229() >= 0) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
        return null;
    }

    /* renamed from: ۟ۦۡۢۨ, reason: not valid java name and contains not printable characters */
    public static boolean m86(Object obj, Object obj2) {
        if (C0005.m229() >= 0) {
            return ((FrameLayout) obj).post((Runnable) obj2);
        }
        return false;
    }

    /* renamed from: ۟ۦۡۨ۠, reason: not valid java name and contains not printable characters */
    public static String m87(Object obj, Object obj2) {
        if (C0002.m126() < 0) {
            return String.format((String) obj, (Object[]) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۧۡ۟ۢ, reason: not valid java name and contains not printable characters */
    public static ComponentName m88(Object obj, Object obj2) {
        if (C0002.m126() < 0) {
            return ((Activity) obj).startService((Intent) obj2);
        }
        return null;
    }

    /* renamed from: ۣ۟ۧۢۤ, reason: not valid java name and contains not printable characters */
    public static Object m89(Object obj) {
        if (C0005.m229() >= 0) {
            return ((ValueAnimator) obj).getAnimatedValue();
        }
        return null;
    }

    /* renamed from: ۟ۧۦۣ۠, reason: not valid java name and contains not printable characters */
    public static void m90(Object obj, Object obj2, Object obj3) {
        if (m84() <= 0) {
            ((LinearLayout) obj).addView((View) obj2, (ViewGroup.LayoutParams) obj3);
        }
    }

    /* renamed from: ۟ۨۥ۠, reason: not valid java name and contains not printable characters */
    public static void m91(Object obj, int i) {
        if (C0005.m229() > 0) {
            ((TextView) obj).setTextColor(i);
        }
    }

    /* renamed from: ۟ۨۧۧ, reason: not valid java name and contains not printable characters */
    public static int m92(Object obj) {
        if (C0005.m229() >= 0) {
            return ((View) obj).getHeight();
        }
        return 0;
    }

    /* renamed from: ۠ۨۥۥ, reason: not valid java name and contains not printable characters */
    public static void m93(Object obj, Object obj2, Object obj3) {
        if (m84() <= 0) {
            ((FrameLayout) obj).addView((View) obj2, (ViewGroup.LayoutParams) obj3);
        }
    }

    /* renamed from: ۡۦۨ۠, reason: not valid java name and contains not printable characters */
    public static void m94(Object obj, Object obj2) {
        if (C0004.m199() >= 0) {
            ((FrameLayout) obj).setBackground((Drawable) obj2);
        }
    }

    /* renamed from: ۡۨۦۡ, reason: not valid java name and contains not printable characters */
    public static void m95(Object obj) {
        if (m84() < 0) {
            ((ViewPropertyAnimator) obj).start();
        }
    }

    /* renamed from: ۢۡۤۢ, reason: not valid java name and contains not printable characters */
    public static void m96(Object obj, Object obj2) {
        if (C0002.m126() <= 0) {
            ((View) obj).setBackground((Drawable) obj2);
        }
    }

    /* renamed from: ۢۡۥ۟, reason: not valid java name and contains not printable characters */
    public static StringBuilder m97(Object obj, Object obj2) {
        if (C0004.m199() > 0) {
            return ((StringBuilder) obj).append((String) obj2);
        }
        return null;
    }

    /* renamed from: ۣۢۥۤ, reason: not valid java name and contains not printable characters */
    public static void m98(Object obj, Object obj2) {
        if (C0002.m126() < 0) {
            ((Dialog) obj).setContentView((View) obj2);
        }
    }

    /* renamed from: ۢۦۣ۠, reason: not valid java name and contains not printable characters */
    public static ValueAnimator m99(Object obj) {
        if (m84() <= 0) {
            return ValueAnimator.ofFloat((float[]) obj);
        }
        return null;
    }

    /* renamed from: ۢۨۥۨ, reason: not valid java name and contains not printable characters */
    public static String m100(Object obj) {
        if (C0005.m229() > 0) {
            return ((Activity) obj).getPackageName();
        }
        return null;
    }

    /* renamed from: ۢۨۦ۠, reason: not valid java name and contains not printable characters */
    public static int m101(Object obj, int i) {
        if (C0002.m126() <= 0) {
            return ((AudioManager) obj).getStreamMaxVolume(i);
        }
        return 0;
    }

    /* renamed from: ۣ۟ۤۢ, reason: not valid java name and contains not printable characters */
    public static boolean m102(Object obj, Object obj2, long j) {
        if (C0005.m229() > 0) {
            return ((View) obj).postDelayed((Runnable) obj2, j);
        }
        return false;
    }

    /* renamed from: ۣۡ۟۠, reason: not valid java name and contains not printable characters */
    public static byte[] m103(Object obj) {
        if (m84() <= 0) {
            return ((ByteArrayOutputStream) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۣۥۤۢ, reason: not valid java name and contains not printable characters */
    public static void m104(Object obj, float f) {
        if (m84() <= 0) {
            ((View) obj).setTranslationY(f);
        }
    }

    /* renamed from: ۣۣۧۢ, reason: not valid java name and contains not printable characters */
    public static boolean m105(Object obj, Object obj2) {
        if (C0004.m199() >= 0) {
            return ((View) obj).post((Runnable) obj2);
        }
        return false;
    }

    /* renamed from: ۣۤ۟۟, reason: not valid java name and contains not printable characters */
    public static void m106(Object obj, int i) {
        if (C0004.m199() > 0) {
            ((MediaPlayer) obj).setAudioStreamType(i);
        }
    }

    /* renamed from: ۤۧ۠۟, reason: not valid java name and contains not printable characters */
    public static boolean m107(Object obj, Object obj2) {
        if (C0002.m126() < 0) {
            return ((Handler) obj).post((Runnable) obj2);
        }
        return false;
    }

    /* renamed from: ۤۧۨۥ, reason: not valid java name and contains not printable characters */
    public static Signature[] m108(Object obj) {
        if (C0005.m229() >= 0) {
            return ((PackageInfo) obj).signatures;
        }
        return null;
    }

    /* renamed from: ۥۡ۠ۥ, reason: contains not printable characters */
    public static String m109(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۥۣۢۨ, reason: contains not printable characters */
    public static String m110() {
        if (C0002.m126() <= 0) {
            return "";
        }
        return null;
    }

    /* renamed from: ۥۣۥۢ, reason: contains not printable characters */
    public static void m111(Object obj) {
        if (C0005.m229() > 0) {
            ((AssetFileDescriptor) obj).close();
        }
    }

    /* renamed from: ۥۥۡ, reason: contains not printable characters */
    public static float m112(Object obj) {
        if (C0002.m126() <= 0) {
            return ((DisplayMetrics) obj).density;
        }
        return 0.0f;
    }

    /* renamed from: ۥۦۨ۠, reason: contains not printable characters */
    public static void m113(Object obj, Object obj2) {
        if (m84() < 0) {
            ((Dialog) obj).setOnKeyListener((DialogInterface.OnKeyListener) obj2);
        }
    }

    /* renamed from: ۥۨ۟, reason: contains not printable characters */
    public static ObjectAnimator m114(Object obj, long j) {
        if (m84() < 0) {
            return ((ObjectAnimator) obj).setDuration(j);
        }
        return null;
    }

    /* renamed from: ۦۧ, reason: contains not printable characters */
    public static void m115(Object obj, Object obj2) {
        if (C0004.m199() >= 0) {
            ((AnimatorSet) obj).addListener((Animator.AnimatorListener) obj2);
        }
    }

    /* renamed from: ۧۡ۟ۤ, reason: not valid java name and contains not printable characters */
    public static boolean m116(Object obj, Object obj2, long j) {
        if (m84() <= 0) {
            return ((Handler) obj).postDelayed((Runnable) obj2, j);
        }
        return false;
    }

    /* renamed from: ۧۢۦ۠, reason: not valid java name and contains not printable characters */
    public static void m117(Object obj, float f) {
        if (C0002.m126() <= 0) {
            ((TextView) obj).setAlpha(f);
        }
    }

    /* renamed from: ۣۣۧۨ, reason: not valid java name and contains not printable characters */
    public static ComponentName m118(Object obj, Object obj2) {
        if (m84() <= 0) {
            return ((Activity) obj).startForegroundService((Intent) obj2);
        }
        return null;
    }

    /* renamed from: ۣۧۧۨ, reason: not valid java name and contains not printable characters */
    public static void m119(Object obj, Object obj2) {
        if (C0002.m126() < 0) {
            ((TextView) obj).setBackground((Drawable) obj2);
        }
    }

    /* renamed from: ۧۧۦۡ, reason: not valid java name and contains not printable characters */
    public static Notification m120(Object obj) {
        if (m84() < 0) {
            return ((Notification.Builder) obj).build();
        }
        return null;
    }
}
