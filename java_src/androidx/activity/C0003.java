package androidx.activity;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.app.Notification;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;

/* renamed from: androidx.activity.ۥۨۧۨ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0003 {

    /* renamed from: ۨۤۧۤ, reason: not valid java name and contains not printable characters */
    public static int f6 = -99;

    /* renamed from: ۣ۟۟ۢ۟, reason: not valid java name and contains not printable characters */
    public static void m161(Object obj, Object obj2) {
        if (C0004.m199() >= 0) {
            ((TextView) obj).setText((CharSequence) obj2);
        }
    }

    /* renamed from: ۟۟ۤۤ, reason: not valid java name and contains not printable characters */
    public static void m162(Object obj, int i, int i2) {
        if (C0004.m199() >= 0) {
            ((GradientDrawable) obj).setStroke(i, i2);
        }
    }

    /* renamed from: ۣ۟۠ۦۦ, reason: not valid java name and contains not printable characters */
    public static void m163(Object obj) {
        if (C0004.m199() >= 0) {
            ((MediaPlayer) obj).start();
        }
    }

    /* renamed from: ۟۠ۨۨۦ, reason: not valid java name and contains not printable characters */
    public static void m164(Object obj, int i) {
        if (C0005.m229() > 0) {
            ((ObjectAnimator) obj).setRepeatCount(i);
        }
    }

    /* renamed from: ۣ۟ۡۡۥ, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m165(Object obj) {
        if (C0004.m199() >= 0) {
            return ((View) obj).animate();
        }
        return null;
    }

    /* renamed from: ۟ۡۦۡۦ, reason: not valid java name and contains not printable characters */
    public static Byte m166(byte b) {
        if (C0001.m84() <= 0) {
            return Byte.valueOf(b);
        }
        return null;
    }

    /* renamed from: ۟ۡۦۥۡ, reason: not valid java name and contains not printable characters */
    public static PackageInfo m167(Object obj, Object obj2, int i) {
        if (C0004.m199() >= 0) {
            return ((PackageManager) obj).getPackageInfo((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۣ۟ۢ۟ۦ, reason: not valid java name and contains not printable characters */
    public static void m168(Object obj, float f, float f2) {
        if (C0005.m229() >= 0) {
            ((TextView) obj).setLineSpacing(f, f2);
        }
    }

    /* renamed from: ۟ۢۤ۠ۥ, reason: not valid java name and contains not printable characters */
    public static String m169(String str) {
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
        for (int i3 = 0; i3 < length; i3++) {
            m103[i3] = (byte) (m103[i3] ^ C0002.m138(m1102, i3 % m151));
        }
        for (int i4 = 0; i4 < m103.length; i4 = C0002.m151(C0001.m110()) + 1) {
        }
        return new String(m103);
    }

    /* renamed from: ۣ۟ۡۦۧ, reason: not valid java name and contains not printable characters */
    public static int m170(Object obj) {
        if (C0004.m199() > 0) {
            return Color.parseColor((String) obj);
        }
        return 0;
    }

    /* renamed from: ۟ۤ۟ۨۢ, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m171(Object obj) {
        if (C0004.m199() >= 0) {
            return ((SharedPreferences) obj).edit();
        }
        return null;
    }

    /* renamed from: ۟ۤۦۣۧ, reason: not valid java name and contains not printable characters */
    public static void m172(Object obj) {
        if (C0004.m199() > 0) {
            ((MediaPlayer) obj).release();
        }
    }

    /* renamed from: ۟ۥۡ۟, reason: not valid java name and contains not printable characters */
    public static void m173(Object obj, int i, float f) {
        if (C0005.m229() >= 0) {
            ((TextView) obj).setTextSize(i, f);
        }
    }

    /* renamed from: ۟ۥۤ۠ۧ, reason: not valid java name and contains not printable characters */
    public static int m174() {
        return 1754482 ^ C0005.m222((Object) "ۧۡ۠");
    }

    /* renamed from: ۟ۥۥۣۢ, reason: not valid java name and contains not printable characters */
    public static boolean m175(Object obj, Object obj2) {
        if (C0004.m199() > 0) {
            return ((String) obj).equalsIgnoreCase((String) obj2);
        }
        return false;
    }

    /* renamed from: ۟ۦۣ۟ۢ, reason: not valid java name and contains not printable characters */
    public static void m176(Object obj, Object obj2) {
        if (C0004.m199() >= 0) {
            ((Button) obj).setText((CharSequence) obj2);
        }
    }

    /* renamed from: ۟ۦ۠۟۠, reason: not valid java name and contains not printable characters */
    public static AssetManager m177(Object obj) {
        if (C0001.m84() < 0) {
            return ((MusicService) obj).getAssets();
        }
        return null;
    }

    /* renamed from: ۟ۦۣۣۤ, reason: not valid java name and contains not printable characters */
    public static void m178(Object obj, int i) {
        if (C0005.m229() >= 0) {
            ((GradientDrawable) obj).setShape(i);
        }
    }

    /* renamed from: ۟ۦۣۨۨ, reason: not valid java name and contains not printable characters */
    public static void m179(Object obj, float f) {
        if (C0004.m199() > 0) {
            ((Button) obj).setLetterSpacing(f);
        }
    }

    /* renamed from: ۟ۦۦ۠ۥ, reason: not valid java name and contains not printable characters */
    public static long m180(Object obj) {
        if (C0005.m229() >= 0) {
            return ((AssetFileDescriptor) obj).getStartOffset();
        }
        return 0L;
    }

    /* renamed from: ۟ۦۦۡ, reason: not valid java name and contains not printable characters */
    public static Typeface m181() {
        if (C0004.m199() >= 0) {
            return Typeface.MONOSPACE;
        }
        return null;
    }

    /* renamed from: ۟ۧۦۨ, reason: not valid java name and contains not printable characters */
    public static void m182(Object obj) {
        if (C0005.m229() >= 0) {
            ((MediaPlayer) obj).stop();
        }
    }

    /* renamed from: ۟ۨۡۥ, reason: not valid java name and contains not printable characters */
    public static long m183(Object obj) {
        if (C0002.m126() < 0) {
            return ((AssetFileDescriptor) obj).getLength();
        }
        return 0L;
    }

    /* renamed from: ۠۟ۧ۠, reason: not valid java name and contains not printable characters */
    public static String m184(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۠ۤۢۧ, reason: not valid java name and contains not printable characters */
    public static void m185(Object obj, int i, int i2) {
        if (C0005.m229() > 0) {
            ((Window) obj).setLayout(i, i2);
        }
    }

    /* renamed from: ۡۤۢ۟, reason: not valid java name and contains not printable characters */
    public static void m186(Object obj, float f) {
        if (C0001.m84() < 0) {
            ((View) obj).setScaleY(f);
        }
    }

    /* renamed from: ۣۣۢۨ, reason: not valid java name and contains not printable characters */
    public static void m187(Object obj, long j) {
        if (C0005.m229() >= 0) {
            ((ObjectAnimator) obj).setStartDelay(j);
        }
    }

    /* renamed from: ۢۦ۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m188(Object obj) {
        if (C0001.m84() < 0) {
            return ((StringBuilder) obj).toString();
        }
        return null;
    }

    /* renamed from: ۢۨۨ, reason: not valid java name and contains not printable characters */
    public static void m189(Object obj, int i) {
        if (C0001.m84() <= 0) {
            ((FrameLayout) obj).setBackgroundColor(i);
        }
    }

    /* renamed from: ۣ۟ۥۧ, reason: not valid java name and contains not printable characters */
    public static ObjectAnimator m190(Object obj, Object obj2, Object obj3) {
        if (C0002.m126() < 0) {
            return ObjectAnimator.ofFloat(obj, (String) obj2, (float[]) obj3);
        }
        return null;
    }

    /* renamed from: ۣۥ۟۟, reason: not valid java name and contains not printable characters */
    public static void m191(Object obj, float f) {
        if (C0004.m199() > 0) {
            ((View) obj).setScaleX(f);
        }
    }

    /* renamed from: ۣۧۨۡ, reason: not valid java name and contains not printable characters */
    public static Notification.Builder m192(Object obj, int i) {
        if (C0004.m199() >= 0) {
            return ((Notification.Builder) obj).setSmallIcon(i);
        }
        return null;
    }

    /* renamed from: ۣۤ۟ۨ, reason: not valid java name and contains not printable characters */
    public static void m193(Object obj) {
        if (C0005.m229() > 0) {
            ((Dialog) obj).show();
        }
    }

    /* renamed from: ۤۤۢۥ, reason: not valid java name and contains not printable characters */
    public static void m194(Object obj, int i) {
        if (C0004.m199() > 0) {
            ((LinearLayout) obj).setGravity(i);
        }
    }

    /* renamed from: ۤۧۨۤ, reason: not valid java name and contains not printable characters */
    public static void m195(Object obj) {
        if (C0002.m126() <= 0) {
            ((ValueAnimator) obj).start();
        }
    }

    /* renamed from: ۥۢۨ, reason: contains not printable characters */
    public static float m196(Object obj) {
        if (C0005.m229() > 0) {
            return ((Float) obj).floatValue();
        }
        return 0.0f;
    }

    /* renamed from: ۦۨۦ۠, reason: contains not printable characters */
    public static Notification.Builder m197(Object obj, boolean z) {
        if (C0004.m199() > 0) {
            return ((Notification.Builder) obj).setOngoing(z);
        }
        return null;
    }

    /* renamed from: ۨۥۧۡ, reason: not valid java name and contains not printable characters */
    public static boolean m198(Object obj, Object obj2, boolean z) {
        if (C0004.m199() >= 0) {
            return ((SharedPreferences) obj).getBoolean((String) obj2, z);
        }
        return false;
    }
}
