package androidx.activity;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.app.Notification;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;

/* renamed from: androidx.activity.۟ۨۧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0002 {

    /* renamed from: ۟ۦۦ۟۠, reason: not valid java name and contains not printable characters */
    public static boolean f5;

    /* renamed from: ۟۠ۢ۟ۤ, reason: not valid java name and contains not printable characters */
    public static void m121(Object obj, int i, float f) {
        if (C0001.m84() < 0) {
            ((Button) obj).setTextSize(i, f);
        }
    }

    /* renamed from: ۟۠ۢۨۨ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m122(Object obj, int i) {
        if (C0005.m229() >= 0) {
            return ((StringBuffer) obj).append(i);
        }
        return null;
    }

    /* renamed from: ۣ۟۠ۤ۠, reason: not valid java name and contains not printable characters */
    public static byte[] m123(Object obj) {
        if (C0004.m199() >= 0) {
            return ((MessageDigest) obj).digest();
        }
        return null;
    }

    /* renamed from: ۟ۡۡۡۦ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m124(Object obj, Object obj2) {
        if (C0001.m84() <= 0) {
            return ((StringBuffer) obj).append((String) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۢۡۦۤ, reason: not valid java name and contains not printable characters */
    public static Notification.Builder m125(Object obj, Object obj2) {
        if (C0004.m199() > 0) {
            return ((Notification.Builder) obj).setContentText((CharSequence) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۢۤۦۣ, reason: not valid java name and contains not printable characters */
    public static int m126() {
        return (-1751801) ^ C0005.m222((Object) "ۤۦۦ");
    }

    /* renamed from: ۣ۟ۢۨۤ, reason: not valid java name and contains not printable characters */
    public static void m127(Object obj, int i) {
        if (C0001.m84() <= 0) {
            ((LinearLayout) obj).setOrientation(i);
        }
    }

    /* renamed from: ۣ۟ۦ۟ۡ, reason: not valid java name and contains not printable characters */
    public static void m128(Object obj, int i) {
        if (C0005.m229() >= 0) {
            ((View) obj).setBackgroundColor(i);
        }
    }

    /* renamed from: ۣ۟ۦۦ۟, reason: not valid java name and contains not printable characters */
    public static void m129(Object obj, float f) {
        if (m126() < 0) {
            ((TextView) obj).setLetterSpacing(f);
        }
    }

    /* renamed from: ۟ۥۤۦ۠, reason: not valid java name and contains not printable characters */
    public static String m130(Object obj) {
        if (C0001.m84() < 0) {
            return ((StringBuffer) obj).toString();
        }
        return null;
    }

    /* renamed from: ۟ۦ۠ۡۢ, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m131(Object obj, Object obj2, int i) {
        if (C0005.m229() >= 0) {
            return ((SharedPreferences.Editor) obj).putInt((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۟ۦۡ۟ۢ, reason: not valid java name and contains not printable characters */
    public static int m132() {
        if (C0005.m229() >= 0) {
            return Build.VERSION.SDK_INT;
        }
        return 0;
    }

    /* renamed from: ۟ۦۢۧ, reason: not valid java name and contains not printable characters */
    public static void m133(Object obj, float f) {
        if (m126() <= 0) {
            ((View) obj).setAlpha(f);
        }
    }

    /* renamed from: ۟ۧۤ۠ۡ, reason: not valid java name and contains not printable characters */
    public static void m134(Object obj, Object obj2) {
        if (m126() < 0) {
            ((Button) obj).setOnClickListener((View.OnClickListener) obj2);
        }
    }

    /* renamed from: ۠۟ۢ۠, reason: not valid java name and contains not printable characters */
    public static PackageManager m135(Object obj) {
        if (m126() <= 0) {
            return ((Activity) obj).getPackageManager();
        }
        return null;
    }

    /* renamed from: ۠ۡۧۥ, reason: not valid java name and contains not printable characters */
    public static byte[] m136(Object obj) {
        if (C0001.m84() < 0) {
            return ((Signature) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۣ۠ۤۨ, reason: not valid java name and contains not printable characters */
    public static Uri m137(Object obj) {
        if (C0004.m199() > 0) {
            return Uri.parse((String) obj);
        }
        return null;
    }

    /* renamed from: ۠ۥۣۨ, reason: not valid java name and contains not printable characters */
    public static char m138(Object obj, int i) {
        if (C0005.m229() > 0) {
            return ((String) obj).charAt(i);
        }
        return (char) 0;
    }

    /* renamed from: ۠ۧۥۥ, reason: not valid java name and contains not printable characters */
    public static void m139(Object obj, Object obj2) {
        if (C0004.m199() > 0) {
            ((Window) obj).setBackgroundDrawable((Drawable) obj2);
        }
    }

    /* renamed from: ۡ۟ۡۧ, reason: not valid java name and contains not printable characters */
    public static void m140(Object obj, boolean z) {
        if (m126() <= 0) {
            ((Button) obj).setAllCaps(z);
        }
    }

    /* renamed from: ۡ۟ۦۤ, reason: not valid java name and contains not printable characters */
    public static MessageDigest m141(Object obj) {
        if (m126() <= 0) {
            return MessageDigest.getInstance((String) obj);
        }
        return null;
    }

    /* renamed from: ۡۧ۟ۦ, reason: not valid java name and contains not printable characters */
    public static String m142(int i) {
        if (C0005.m229() >= 0) {
            return Integer.toHexString(i);
        }
        return null;
    }

    /* renamed from: ۣ۠ۨۦ, reason: not valid java name and contains not printable characters */
    public static GradientDrawable.Orientation m143() {
        if (C0004.m199() >= 0) {
            return GradientDrawable.Orientation.TL_BR;
        }
        return null;
    }

    /* renamed from: ۣۣۤ۠, reason: not valid java name and contains not printable characters */
    public static String m144(String str) {
        String m110 = C0001.m110();
        String m1102 = C0001.m110();
        for (int i = 0; i < 15; i++) {
            m110 = m130(m124(m124(new StringBuffer(), m110), m142(i)));
            m1102 = m130(m122(m124(new StringBuffer(), m1102), ((int) (C0001.m74() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m151(str) / 2);
        for (int i2 = 0; i2 < m151(str); i2 += 2) {
            C0005.m234(byteArrayOutputStream, (C0005.m236(m110, m138(str, i2)) << 4) | C0005.m236(m110, m138(str, i2 + 1)));
        }
        byte[] m103 = C0001.m103(byteArrayOutputStream);
        int length = m103.length;
        int m151 = m151(m1102);
        while (length > 0) {
            m103[-1] = (byte) (m103[-1] ^ m138(m1102, (-1) % m151));
        }
        for (int i3 = 0; i3 < m103.length; i3 = m151(C0001.m110()) + 1) {
        }
        return new String(m103);
    }

    /* renamed from: ۤ۠ۥ, reason: not valid java name and contains not printable characters */
    public static void m145(Object obj, Object obj2) {
        if (C0004.m199() >= 0) {
            ((ObjectAnimator) obj).setInterpolator((TimeInterpolator) obj2);
        }
    }

    /* renamed from: ۣۤ۟ۧ, reason: not valid java name and contains not printable characters */
    public static Resources m146(Object obj) {
        if (C0004.m199() > 0) {
            return ((Activity) obj).getResources();
        }
        return null;
    }

    /* renamed from: ۤۤ۟ۨ, reason: not valid java name and contains not printable characters */
    public static boolean m147(Object obj, int i) {
        if (C0005.m229() > 0) {
            return ((Dialog) obj).requestWindowFeature(i);
        }
        return false;
    }

    /* renamed from: ۥ۠ۡۤ, reason: contains not printable characters */
    public static void m148(Object obj, int i) {
        if (m126() < 0) {
            ((ValueAnimator) obj).setRepeatCount(i);
        }
    }

    /* renamed from: ۥۢ۠ۦ, reason: contains not printable characters */
    public static void m149(Object obj, boolean z) {
        if (C0001.m84() <= 0) {
            ((Dialog) obj).setCancelable(z);
        }
    }

    /* renamed from: ۥۢۤۥ, reason: contains not printable characters */
    public static String m150(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۥۥۤۥ, reason: contains not printable characters */
    public static int m151(Object obj) {
        if (C0005.m229() >= 0) {
            return ((String) obj).length();
        }
        return 0;
    }

    /* renamed from: ۦ۠ۧ, reason: contains not printable characters */
    public static Object m152(Object obj, Object obj2) {
        if (C0001.m84() <= 0) {
            return ((MusicService) obj).getSystemService((String) obj2);
        }
        return null;
    }

    /* renamed from: ۦۦۢ۠, reason: contains not printable characters */
    public static void m153(Object obj, Object obj2) {
        if (C0005.m229() > 0) {
            ((Handler) obj).removeCallbacksAndMessages(obj2);
        }
    }

    /* renamed from: ۦۨۢۨ, reason: contains not printable characters */
    public static float m154(int i, float f, Object obj) {
        if (C0004.m199() > 0) {
            return TypedValue.applyDimension(i, f, (DisplayMetrics) obj);
        }
        return 0.0f;
    }

    /* renamed from: ۧ۟ۦۣ, reason: not valid java name and contains not printable characters */
    public static int m155(Object obj, Object obj2, int i) {
        if (C0001.m84() <= 0) {
            return ((SharedPreferences) obj).getInt((String) obj2, i);
        }
        return 0;
    }

    /* renamed from: ۣۧ۟ۤ, reason: not valid java name and contains not printable characters */
    public static void m156(Object obj, int i, Object obj2) {
        if (m126() <= 0) {
            ((MusicService) obj).startForeground(i, (Notification) obj2);
        }
    }

    /* renamed from: ۣۧۤۤ, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m157(Object obj, float f) {
        if (C0004.m199() > 0) {
            return ((ViewPropertyAnimator) obj).scaleY(f);
        }
        return null;
    }

    /* renamed from: ۧۧۥۢ, reason: not valid java name and contains not printable characters */
    public static Intent m158(Object obj, int i) {
        if (m126() <= 0) {
            return ((Intent) obj).addFlags(i);
        }
        return null;
    }

    /* renamed from: ۨ۠ۤ۟, reason: not valid java name and contains not printable characters */
    public static void m159(Object obj, Object obj2) {
        if (C0001.m84() <= 0) {
            ((AnimatorSet) obj).playTogether((Animator[]) obj2);
        }
    }

    /* renamed from: ۣۨۤۡ, reason: not valid java name and contains not printable characters */
    public static void m160(Object obj) {
        if (m126() <= 0) {
            ((AnimatorSet) obj).start();
        }
    }
}
