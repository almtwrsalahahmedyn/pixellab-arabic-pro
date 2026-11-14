package androidx.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.Signature;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class sbotGuard {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f2short = {1524, 1519, 1491, 1504, 1519, 1809, 1802, 1846, 1807, 1797, 1073, 1066, 1046, 1081, 918, 964, 969, 961, 971, 969, 914, 912, 969, 917, 967, 969, 961, 967, 969, 962, 961, 969, 913, 967, 969, 919, 970, 969, 961, 919, 969, 960, 963, 969, 914, 912, 969, 918, 917, 969, 913, 962, 969, 966, 917, 969, 964, 960, 969, 917, 913, 969, 970, 913, 969, 970, 960, 969, 917, 966, 969, 962, 961, 1292, 1296, 1296, 1300, 1303, 1374, 1355, 1355, 1296, 1354, 1289, 1281, 1355, 1328, 1317, 1331, 1314, 1325, 1333, 1339, 1328, 1315, 2429, 2414, 2411, 2414, 2408, 2414, 2328, 3111, 3124, 3142, 3124, 3136, 3125, 3141, 938, 953, 975, 952, 953, 955, 953, 365, 264, 379, 375, 267, 382, 268, 2732, 2750, 2761, 2750, 2746, 2751, 2751, 3174, 3190, 3073, 3191, 3197, 3189, 3189, 722, 695, 708, 712, 692, 705, 691, 709, 705, 2669, 2571, 2568, 2682, 2682, 2682, 2682, 1427, 1409, 1521, 1408, 1413, 1408, 1413, 890, 875, 879, 873, 792, 873, 792, 2496, 2469, 2514, 2469, 2515, 2469, 2516, 2296, 2284, 2201, 2284, 2205, 2202, 2275, 2144, 2160, 2054, 2167, 2161, 2165, 2165, 1546, 1561, 1553, 1561, 1553, 1560, 1561, 1359, 1372, 1322, 1373, 1372, 1374, 1372, 2037, 2022, 1943, 2022, 2030, 2022, 2022, 727, 690, 705, 717, 689, 708, 694, 717, 717, 901, 919, 995, 916, 918, 917, 926, 2681, 2658, 2654, 2673, 1644, 1655, 1611, 1650, 1656, 1901, 1855, 1842, 1850, 1840, 1842, 1897, 1899, 1842, 1902, 1852, 1842, 1850, 1852, 1842, 1849, 1850, 1842, 1898, 1852, 1842, 1900, 1841, 1842, 1850, 1900, 1842, 1851, 1848, 1842, 1897, 1899, 1842, 1901, 1902, 1842, 1898, 1849, 1842, 1853, 1902, 1842, 1855, 1851, 1842, 1902, 1898, 1842, 1841, 1898, 1842, 1841, 1851, 1842, 1902, 1853, 1842, 1849, 1850, 487, 508, 448, 499, 508, 1675, 1680, 1708, 1695, 1680, 740, 767, 707, 762, 752, 647, 650, 662, 654, 647, 543, 530, 526, 534, 543, 687, 681, 698, 693, 680, 695, 698, 687, 690, 692, 693, 642, 971, 976, 985, 937, 581, 592, 594, 568, 2808, 2271, 2252, 2232, 2234, 2234, 2234, 2234, 2234, 2234, 1981, 1965, 1967, 1954, 1963, 1942, 1977, 1961, 1963, 1958, 1967, 1939, 588, 577, 605, 581, 588, 1082, 1079, 1067, 1075, 1082, 466, 468, 455, 456, 469, 458, 455, 466, 463, 457, 456, 511, 753, 759, 740, 747, 758, 745, 740, 753, 748, 746, 747, 732, 1612, 1601, 1629, 1605, 1612, 2133, 2136, 2116, 2140, 2133, 126, 11, 123, 1567, 24, 123, 21, 18, 125, 125, 1567, 122, 121, 1567, 24, 122, 24, 121, 1567, 24, 123, 21, 8, 23, 117, 125, 1831, 1840, 1840, 1853, 1841, 1835, 1829, 1853, 1874, 1818, 1874, 1875, 11665, 752, 759, 746, 656, 747, 1274, 761, 671, 668, 656, 1946, 2041, 1943, 1930, 1941, 2039, 2047, 413, 1927, 2039, 1932, 413, 1928, 1946, 2041, 1936, 3876, 3923, 3908, 2371, 3908, 3879, 3910, 3926, 3916, 3908, 3922, 2371, 3879, 3908, 2371, 3881, 3913, 3924, 3908, 3915, 3873, 2371, 3878, 3930, 2371, 3910, 3926, 3916, 3908, 3922, 2371, 2359, 2340, 2371, 3908, 3879, 3922, 3920, 3878, 3881, 2381, 2371, 3873, 3916, 2371, 3881, 3872, 3883, 3877, 2371, 3919, 3876, 3908, 3921, 3872, 2371, 3878, 3930, 3922, 3925, 3880, 3908, 2371, 3879, 3879, 3917, 3924, 3922, 2381, 4015, 4045, 4058, 4045, 2506, 4000, 4051, 4012, 4000, 2506, 4013, 4058, 4045, 4085, 30, 105, 126, 1657, 126, 29, 124, 108, 118, 126, 104, 1657, 28, 31, 1657, 113, 104, 31, 126, 28, 117, 1657, 1549, 1566, 1657, 19, 116, 115, 17, 19, 1657, 96, 29, 16, 1657, 28, 96, 29, 17, 28, 126, 115, 1657, 122, 26, 114, 104, 1657, 118, 27, 112, 1657, 28, 31, 1657, 126, 29, 124, 108, 118, 126, 104, 1657, 126, 29, 104, 106, 28, 19, 1655, 1657, 17, 19, 113, 118, 17, 1657, 122, 31, 30, 1657, 28, 108, 118, 104, 30, 1657, 99, 19, 104, 1657, 28, 108, 104, 116, 1657, 113, 30, 1655, 1619, 1619, 1657, 29, 111, 28, 126, 31, 1657, 106, 29, 126, 28, 115, 26, 1657, 17, 119, 108, 17, 108, 19, 115, 26, 85, 1657, 19, 22, 104, 117, 16, 1657, 124, 29, 99, 126, 120, 1657, 115, 114, 113, 19, 115, 1657, 30, 105, 126, 1657, 126, 29, 124, 108, 118, 126, 104, 1657, 17, 115, 31, 107, 19, 29, 1657, 126, 29, 124, 108, 118, 126, 104, 1657, 126, 29, 104, 106, 28, 19, 1657, 28, 113, 126, 109, 104, 112, 18, 1655, 1277, 1169, 1253, 1181, 1171, 759, 1264, 1171, 1169, 1252, 1273, 1278, 759, 1264, 1171, 1254, 1252, 1170, 1181, 1278, 759, 9029, 498, 494, 494, 490, 489, 416, 437, 437, 494, 436, 503, 511, 437, 462, 475, 461, 476, 467, 459, 453, 462, 477, 2427, 2411, 2409, 2404, 2413, 2384, 1789, 1773, 1775, 1762, 1771, 1751, 1840, 1853, 1825, 1849, 1840};
    private static final String PREF_COUNT = C0005.m233(m38(), 0, 5, 1420);
    private static final String PREF_LOCKED = C0001.m109(m38(), 5, 5, 1897);
    private static final String PREF_NAME = C0001.m109(m38(), 10, 4, 1097);
    private static final String SHA1 = C0004.m201(m38(), 14, 59, 1011);
    private static final String TELEGRAM_URL = C0005.m233(m38(), 73, 22, 1380);
    private static final int BG = C0003.m170(C0001.m109(m38(), 95, 7, 2398));
    private static final int SURFACE = C0003.m170(C0003.m184(m38(), 102, 7, 3076));
    private static final int BORDER = C0003.m170(C0003.m184(m38(), 109, 7, 905));
    private static final int AMBER = C0003.m170(C0004.m201(m38(), 116, 7, 334));
    private static final int AMBER_DIM = C0003.m170(C0001.m109(m38(), 123, 7, 2703));
    private static final int AMBER_GLOW = C0003.m170(C0005.m233(m38(), 130, 7, 3141));
    private static final int AMBER_RING = C0003.m170(C0003.m184(m38(), 137, 9, 753));
    private static final int RED = C0003.m170(C0005.m233(m38(), 146, 7, 2638));
    private static final int RED_DIM = C0003.m170(C0003.m184(m38(), 153, 7, 1456));
    private static final int RED_BORDER = C0003.m170(C0003.m184(m38(), 160, 7, 857));
    private static final int TEXT_1 = C0003.m170(C0005.m233(m38(), 167, 7, 2531));
    private static final int TEXT_2 = C0003.m170(C0004.m201(m38(), 174, 7, 2267));
    private static final int TEXT_3 = C0003.m170(C0003.m184(m38(), 181, 7, 2115));
    private static final int BOX_BG = C0003.m170(C0005.m233(m38(), 188, 7, 1577));
    private static final int BOX_BORDER = C0003.m170(C0005.m233(m38(), 195, 7, 1388));
    private static final int BTN_TEXT = C0003.m170(C0005.m233(m38(), 202, 7, 2006));
    private static final int SCAN_COLOR = C0003.m170(C0003.m184(m38(), 209, 9, 756));
    private static final int DIVIDER_MID = C0003.m170(C0004.m201(m38(), 218, 7, 934));

    /* renamed from: androidx.activity.sbotGuard$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 implements DialogInterface.OnKeyListener {
        AnonymousClass4() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 4;
        }
    }

    /* renamed from: androidx.activity.sbotGuard$5, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass5 implements View.OnClickListener {

        /* renamed from: short, reason: not valid java name */
        private static final short[] f3short = {1990, 1993, 1987, 2005, 1992, 1998, 1987, 1929, 1998, 1993, 2003, 1986, 1993, 2003, 1929, 1990, 1988, 2003, 1998, 1992, 1993, 1929, 2033, 2030, 2018, 2032, 2319, 2323, 2323, 2327, 2324, 2397, 2376, 2376, 2323, 2377, 2314, 2306, 2376, 2314, 2318, 2315, 2310, 2310, 2318, 2323, 2312, 2305, 2305, 2318, 2308, 2310, 2315};
        final /* synthetic */ Activity val$activity;

        AnonymousClass5(Activity activity) {
            this.val$activity = activity;
        }

        /* renamed from: ۟ۤۨۧ, reason: not valid java name and contains not printable characters */
        public static short[] m50() {
            if (C0002.m126() <= 0) {
                return f3short;
            }
            return null;
        }

        /* renamed from: ۤ۠ۦ۠, reason: not valid java name and contains not printable characters */
        public static Activity m51(Object obj) {
            if (C0005.m229() >= 0) {
                return ((AnonymousClass5) obj).val$activity;
            }
            return null;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent(C0004.m201(m50(), 0, 26, 1959), C0002.m137(C0004.m201(m50(), 26, 27, 2407)));
                C0002.m158(intent, 268435456);
                C0001.m71(m51(this), intent);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: androidx.activity.sbotGuard$6, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass6 implements View.OnTouchListener {
        AnonymousClass6() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (C0001.m77(motionEvent)) {
                case 0:
                    C0001.m95(C0005.m207(C0002.m157(C0005.m226(C0003.m165(view), 0.96f), 0.96f), 60L));
                    return false;
                case 1:
                case 3:
                    C0001.m95(C0005.m207(C0002.m157(C0005.m226(C0003.m165(view), 1.0f), 1.0f), 90L));
                    return false;
                case 2:
                default:
                    return false;
            }
        }
    }

    /* renamed from: androidx.activity.sbotGuard$7, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass7 implements Runnable {
        final /* synthetic */ LinearLayout val$box;
        final /* synthetic */ Button val$btn;
        final /* synthetic */ FrameLayout val$cardFrame;
        final /* synthetic */ View val$divider;
        final /* synthetic */ View val$dot;
        final /* synthetic */ TextView val$eyebrow;
        final /* synthetic */ TextView val$footnote;
        final /* synthetic */ View val$iconRing;
        final /* synthetic */ FrameLayout val$iconWrap;
        final /* synthetic */ View val$scanLine;
        final /* synthetic */ int val$slideD;
        final /* synthetic */ LinearLayout val$statusWrap;
        final /* synthetic */ TextView val$subTv;
        final /* synthetic */ TextView val$titleTv;

        AnonymousClass7(FrameLayout frameLayout, LinearLayout linearLayout, FrameLayout frameLayout2, TextView textView, TextView textView2, TextView textView3, View view, LinearLayout linearLayout2, Button button, int i, TextView textView4, View view2, View view3, View view4) {
            this.val$cardFrame = frameLayout;
            this.val$statusWrap = linearLayout;
            this.val$iconWrap = frameLayout2;
            this.val$eyebrow = textView;
            this.val$titleTv = textView2;
            this.val$subTv = textView3;
            this.val$divider = view;
            this.val$box = linearLayout2;
            this.val$btn = button;
            this.val$slideD = i;
            this.val$footnote = textView4;
            this.val$dot = view2;
            this.val$iconRing = view3;
            this.val$scanLine = view4;
        }

        /* renamed from: ۟۟۠۟ۥ, reason: not valid java name and contains not printable characters */
        public static Button m52(Object obj) {
            if (C0005.m229() > 0) {
                return ((AnonymousClass7) obj).val$btn;
            }
            return null;
        }

        /* renamed from: ۟۠ۧۥ, reason: not valid java name and contains not printable characters */
        public static View m53(Object obj) {
            if (C0001.m84() <= 0) {
                return ((AnonymousClass7) obj).val$divider;
            }
            return null;
        }

        /* renamed from: ۣ۟ۢۡۨ, reason: not valid java name and contains not printable characters */
        public static TextView m54(Object obj) {
            if (C0002.m126() < 0) {
                return ((AnonymousClass7) obj).val$eyebrow;
            }
            return null;
        }

        /* renamed from: ۣ۟ۦۡ۠, reason: not valid java name and contains not printable characters */
        public static int m55(Object obj) {
            if (C0002.m126() <= 0) {
                return ((AnonymousClass7) obj).val$slideD;
            }
            return 0;
        }

        /* renamed from: ۟ۥۥ۟ۤ, reason: not valid java name and contains not printable characters */
        public static void m56(Object obj) {
            if (C0001.m84() <= 0) {
                sbotGuard.m29((View) obj);
            }
        }

        /* renamed from: ۟ۥۧۥۧ, reason: not valid java name and contains not printable characters */
        public static void m57(Object obj, long j, long j2) {
            if (C0004.m199() > 0) {
                sbotGuard.m13((View) obj, j, j2);
            }
        }

        /* renamed from: ۟ۦۣۨ۟, reason: not valid java name and contains not printable characters */
        public static LinearLayout m58(Object obj) {
            if (C0001.m84() <= 0) {
                return ((AnonymousClass7) obj).val$box;
            }
            return null;
        }

        /* renamed from: ۟ۦۨۡۦ, reason: not valid java name and contains not printable characters */
        public static View m59(Object obj) {
            if (C0002.m126() <= 0) {
                return ((AnonymousClass7) obj).val$scanLine;
            }
            return null;
        }

        /* renamed from: ۠۟ۦۢ, reason: not valid java name and contains not printable characters */
        public static FrameLayout m60(Object obj) {
            if (C0002.m126() <= 0) {
                return ((AnonymousClass7) obj).val$cardFrame;
            }
            return null;
        }

        /* renamed from: ۡ۟ۢۥ, reason: not valid java name and contains not printable characters */
        public static View m61(Object obj) {
            if (C0001.m84() < 0) {
                return ((AnonymousClass7) obj).val$dot;
            }
            return null;
        }

        /* renamed from: ۡۨۦۥ, reason: not valid java name and contains not printable characters */
        public static void m62(Object obj, Object obj2) {
            if (C0002.m126() < 0) {
                sbotGuard.m26((View) obj, (View) obj2);
            }
        }

        /* renamed from: ۣۣۢۢ, reason: not valid java name and contains not printable characters */
        public static TextView m63(Object obj) {
            if (C0002.m126() < 0) {
                return ((AnonymousClass7) obj).val$footnote;
            }
            return null;
        }

        /* renamed from: ۣ۠۠ۧ, reason: not valid java name and contains not printable characters */
        public static void m64(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, int i) {
            if (C0005.m229() >= 0) {
                sbotGuard.m9((View) obj, (View) obj2, (View) obj3, (View) obj4, (View) obj5, (View) obj6, (View) obj7, (View) obj8, (View) obj9, i);
            }
        }

        /* renamed from: ۣۤ۠۠, reason: not valid java name and contains not printable characters */
        public static View m65(Object obj) {
            if (C0005.m229() >= 0) {
                return ((AnonymousClass7) obj).val$iconRing;
            }
            return null;
        }

        /* renamed from: ۣۤۧ۠, reason: not valid java name and contains not printable characters */
        public static TextView m66(Object obj) {
            if (C0005.m229() >= 0) {
                return ((AnonymousClass7) obj).val$titleTv;
            }
            return null;
        }

        /* renamed from: ۥۣ۟ۨ, reason: contains not printable characters */
        public static LinearLayout m67(Object obj) {
            if (C0001.m84() <= 0) {
                return ((AnonymousClass7) obj).val$statusWrap;
            }
            return null;
        }

        /* renamed from: ۥۥۨ۠, reason: contains not printable characters */
        public static TextView m68(Object obj) {
            if (C0001.m84() < 0) {
                return ((AnonymousClass7) obj).val$subTv;
            }
            return null;
        }

        /* renamed from: ۣۨ۠ۦ, reason: not valid java name and contains not printable characters */
        public static FrameLayout m69(Object obj) {
            if (C0005.m229() >= 0) {
                return ((AnonymousClass7) obj).val$iconWrap;
            }
            return null;
        }

        /* renamed from: ۨۦۣۡ, reason: not valid java name and contains not printable characters */
        public static void m70(Object obj) {
            if (C0002.m126() <= 0) {
                sbotGuard.m34((View) obj);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            m64(m60(this), m67(this), m69(this), m54(this), m66(this), m68(this), m53(this), m58(this), m52(this), m55(this));
            m57(m63(this), 1200L, 400L);
            m70(m61(this));
            m56(m65(this));
            m62(m59(this), m60(this));
        }
    }

    private static void animateEntrance(View view, View view2, View view3, View view4, View view5, View view6, View view7, View view8, View view9, int i) {
        C0002.m133(view, 0.0f);
        C0001.m104(view, i);
        m16(view, 80L, 360L, true, i, 0.0f);
        C0002.m133(view2, 0.0f);
        C0001.m104(view2, (-i) / 3.0f);
        m16(view2, 420L, 320L, true, (-i) / 3.0f, 0.0f);
        C0002.m133(view3, 0.0f);
        C0003.m191(view3, 0.4f);
        C0003.m186(view3, 0.4f);
        m8(view3, 500L, 420L);
        m28(view4, 640L, 320L, 10.0f);
        m28(view5, 710L, 320L, 10.0f);
        m28(view6, 780L, 320L, 10.0f);
        m13(view7, 860L, 280L);
        m28(view8, 920L, 320L, 10.0f);
        m28(view9, 1020L, 320L, 8.0f);
    }

    public static void check(Activity activity) {
    }

    private static int dp(Activity activity, float f) {
        return (int) C0002.m154(1, f, C0001.m76(C0002.m146(activity)));
    }

    private static void fadeIn(View view, long j, long j2) {
        C0002.m133(view, 0.0f);
        ObjectAnimator m190 = C0003.m190(view, C0001.m109(m38(), 308, 5, 742), new float[]{0.0f, 1.0f});
        C0001.m114(m190, j2);
        C0003.m187(m190, j);
        C0001.m81(m190);
    }

    private static void fadeUp(View view, long j, long j2, float f) {
        C0002.m133(view, 0.0f);
        C0001.m104(view, f);
        ObjectAnimator m190 = C0003.m190(view, C0004.m201(m38(), 313, 5, 638), new float[]{0.0f, 1.0f});
        ObjectAnimator m1902 = C0003.m190(view, C0001.m109(m38(), 318, 12, 731), new float[]{f, 0.0f});
        C0001.m114(m190, j2);
        C0001.m114(m1902, j2);
        C0003.m187(m190, j);
        C0003.m187(m1902, j);
        C0002.m145(m1902, new DecelerateInterpolator(1.8f));
        AnimatorSet animatorSet = new AnimatorSet();
        C0002.m159(animatorSet, new Animator[]{m190, m1902});
        C0002.m160(animatorSet);
    }

    private static String getAppSHA1(Activity activity) {
        try {
            Signature[] m108 = C0001.m108(C0003.m167(C0002.m135(activity), C0001.m100(activity), 64));
            if (m108 == null || m108.length == 0) {
                return null;
            }
            MessageDigest m141 = C0002.m141(C0003.m184(m38(), 330, 4, 920));
            C0005.m212(m141, C0002.m136(m108[0]));
            byte[] m123 = C0002.m123(m141);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < m123.length; i++) {
                C0001.m97(sb, C0001.m87(C0004.m201(m38(), 334, 4, 608), new Object[]{C0003.m166(m123[i])}));
                if (i < m123.length - 1) {
                    C0001.m97(sb, C0004.m201(m38(), 338, 1, 2754));
                }
            }
            return C0003.m188(sb);
        } catch (Exception e) {
            return null;
        }
    }

    private static LayerDrawable glassCard(Activity activity, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        C0005.m235(gradientDrawable, m20());
        C0005.m211(gradientDrawable, f);
        C0003.m162(gradientDrawable, m21(activity, 1.0f), m35());
        GradientDrawable gradientDrawable2 = new GradientDrawable(C0002.m143(), new int[]{C0003.m170(C0005.m233(m38(), 339, 9, 2300)), 0});
        C0005.m211(gradientDrawable2, f);
        return new LayerDrawable(new GradientDrawable[]{gradientDrawable, gradientDrawable2});
    }

    private static void iconPop(View view, long j, long j2) {
        ObjectAnimator m190 = C0003.m190(view, C0001.m109(m38(), 348, 6, 1998), new float[]{0.4f, 1.0f});
        ObjectAnimator m1902 = C0003.m190(view, C0004.m201(m38(), 354, 6, 1994), new float[]{0.4f, 1.0f});
        ObjectAnimator m1903 = C0003.m190(view, C0004.m201(m38(), 360, 5, 557), new float[]{0.0f, 1.0f});
        C0001.m114(m190, j2);
        C0001.m114(m1902, j2);
        C0001.m114(m1903, j2 / 2);
        C0003.m187(m190, j);
        C0003.m187(m1902, j);
        C0003.m187(m1903, j);
        C0002.m145(m190, new OvershootInterpolator(1.6f));
        C0002.m145(m1902, new OvershootInterpolator(1.6f));
        AnimatorSet animatorSet = new AnimatorSet();
        C0002.m159(animatorSet, new Animator[]{m190, m1902, m1903});
        C0002.m160(animatorSet);
    }

    private static GradientDrawable oval(int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        C0003.m178(gradientDrawable, 1);
        C0005.m235(gradientDrawable, i);
        if (i2 > 0) {
            C0003.m162(gradientDrawable, i2, i3);
        }
        return gradientDrawable;
    }

    private static void play(View view, long j, long j2, boolean z, float f, float f2) {
        C0002.m133(view, 0.0f);
        ObjectAnimator m190 = C0003.m190(view, C0003.m184(m38(), 365, 5, 1115), new float[]{0.0f, 1.0f});
        C0001.m114(m190, j2);
        C0003.m187(m190, j);
        if (!z) {
            C0001.m81(m190);
            return;
        }
        ObjectAnimator m1902 = C0003.m190(view, C0004.m201(m38(), 370, 12, 422), new float[]{f, f2});
        C0001.m114(m1902, j2);
        C0003.m187(m1902, j);
        C0002.m145(m1902, new DecelerateInterpolator(2.0f));
        AnimatorSet animatorSet = new AnimatorSet();
        C0002.m159(animatorSet, new Animator[]{m190, m1902});
        C0002.m160(animatorSet);
    }

    private static GradientDrawable rect(int i, float f, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        C0005.m235(gradientDrawable, i);
        C0005.m211(gradientDrawable, f);
        if (i2 > 0) {
            C0003.m162(gradientDrawable, i2, i3);
        }
        return gradientDrawable;
    }

    private static void runScan(final View view, final int i) {
        C0002.m133(view, 0.0f);
        ObjectAnimator m190 = C0003.m190(view, C0005.m233(m38(), 382, 12, 645), new float[]{0.0f, i});
        C0001.m114(m190, 3500L);
        C0002.m145(m190, new DecelerateInterpolator(0.5f));
        ObjectAnimator m1902 = C0003.m190(view, C0001.m109(m38(), 394, 5, 1581), new float[]{0.0f, 0.75f});
        ObjectAnimator m1903 = C0003.m190(view, C0003.m184(m38(), 399, 5, 2100), new float[]{0.75f, 0.0f});
        C0001.m114(m1902, 180L);
        C0001.m114(m1903, 180L);
        C0003.m187(m1903, 3150L);
        AnimatorSet animatorSet = new AnimatorSet();
        C0002.m159(animatorSet, new Animator[]{m190, m1902, m1903});
        C0001.m115(animatorSet, new AnimatorListenerAdapter() { // from class: androidx.activity.sbotGuard.2
            /* renamed from: ۟ۡۡۥۢ, reason: not valid java name and contains not printable characters */
            public static int m46(Object obj) {
                if (C0005.m229() > 0) {
                    return i;
                }
                return 0;
            }

            /* renamed from: ۟ۡۢۥۧ, reason: not valid java name and contains not printable characters */
            public static void m47(Object obj, int i2) {
                if (C0004.m199() >= 0) {
                    sbotGuard.m25((View) obj, i2);
                }
            }

            /* renamed from: ۟ۧۧۧۦ, reason: not valid java name and contains not printable characters */
            public static View m48(Object obj) {
                if (C0001.m84() <= 0) {
                    return view;
                }
                return null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                m47(m48(this), m46(this));
            }
        });
        C0002.m160(animatorSet);
    }

    private static void showDialog(Activity activity) {
    }

    private static void startDotPulse(final View view) {
        ValueAnimator m99 = C0001.m99(new float[]{1.0f, 0.25f, 1.0f});
        C0001.m72(m99, 2000L);
        C0002.m148(m99, -1);
        C0005.m217(m99, new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.activity.sbotGuard.3
            /* renamed from: ۟۟ۡۦۦ, reason: not valid java name and contains not printable characters */
            public static View m49(Object obj) {
                if (C0002.m126() < 0) {
                    return view;
                }
                return null;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C0002.m133(m49(this), C0003.m196((Float) C0001.m89(valueAnimator)));
            }
        });
        C0003.m195(m99);
    }

    private static void startMusic(Activity activity) {
    }

    private static void startRingPulse(View view) {
        ObjectAnimator m190 = C0003.m190(view, C0005.m233(m38(), 781, 6, 2312), new float[]{1.0f, 1.08f, 1.0f});
        ObjectAnimator m1902 = C0003.m190(view, C0004.m201(m38(), 787, 6, 1678), new float[]{1.0f, 1.08f, 1.0f});
        ObjectAnimator m1903 = C0003.m190(view, C0003.m184(m38(), 793, 5, 1873), new float[]{0.6f, 0.2f, 0.6f});
        C0001.m114(m190, 3000L);
        C0001.m114(m1902, 3000L);
        C0001.m114(m1903, 3000L);
        C0003.m164(m190, -1);
        C0003.m164(m1902, -1);
        C0003.m164(m1903, -1);
        AnimatorSet animatorSet = new AnimatorSet();
        C0002.m159(animatorSet, new Animator[]{m190, m1902, m1903});
        C0002.m160(animatorSet);
    }

    private static void startScanLine(final View view, final View view2) {
        C0001.m105(view2, new Runnable() { // from class: androidx.activity.sbotGuard.1
            /* renamed from: ۟۟۠۠ۥ, reason: not valid java name and contains not printable characters */
            public static View m43(Object obj) {
                if (C0002.m126() < 0) {
                    return view2;
                }
                return null;
            }

            /* renamed from: ۟ۧ۟ۧ, reason: not valid java name and contains not printable characters */
            public static void m44(Object obj, int i) {
                if (C0001.m84() < 0) {
                    sbotGuard.m25((View) obj, i);
                }
            }

            /* renamed from: ۣۤۢۨ, reason: not valid java name and contains not printable characters */
            public static View m45(Object obj) {
                if (C0004.m199() > 0) {
                    return view;
                }
                return null;
            }

            @Override // java.lang.Runnable
            public void run() {
                int m92 = C0001.m92(m43(this));
                if (m92 == 0) {
                    C0001.m102(m43(this), this, 100L);
                } else {
                    m44(m45(this), m92);
                }
            }
        });
    }

    /* renamed from: ۟۠۠۠ۤ, reason: not valid java name and contains not printable characters */
    public static void m8(Object obj, long j, long j2) {
        if (C0002.m126() < 0) {
            iconPop((View) obj, j, j2);
        }
    }

    /* renamed from: ۣ۟۠ۤۨ, reason: not valid java name and contains not printable characters */
    public static void m9(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, int i) {
        if (C0004.m199() >= 0) {
            animateEntrance((View) obj, (View) obj2, (View) obj3, (View) obj4, (View) obj5, (View) obj6, (View) obj7, (View) obj8, (View) obj9, i);
        }
    }

    /* renamed from: ۟۠ۦۢۢ, reason: not valid java name and contains not printable characters */
    public static int m10() {
        if (C0005.m229() > 0) {
            return BG;
        }
        return 0;
    }

    /* renamed from: ۟ۡ۠ۡۥ, reason: not valid java name and contains not printable characters */
    public static LayerDrawable m11(Object obj, float f) {
        if (C0005.m229() > 0) {
            return glassCard((Activity) obj, f);
        }
        return null;
    }

    /* renamed from: ۣ۟ۡ۠۠, reason: not valid java name and contains not printable characters */
    public static int m12() {
        if (C0002.m126() < 0) {
            return RED_BORDER;
        }
        return 0;
    }

    /* renamed from: ۟ۡۥۣۤ, reason: not valid java name and contains not printable characters */
    public static void m13(Object obj, long j, long j2) {
        if (C0001.m84() < 0) {
            fadeIn((View) obj, j, j2);
        }
    }

    /* renamed from: ۣ۟ۢۡۤ, reason: not valid java name and contains not printable characters */
    public static int m14() {
        if (C0001.m84() <= 0) {
            return AMBER_DIM;
        }
        return 0;
    }

    /* renamed from: ۟ۢۨۥۨ, reason: not valid java name and contains not printable characters */
    public static int m15() {
        if (C0001.m84() < 0) {
            return BOX_BORDER;
        }
        return 0;
    }

    /* renamed from: ۣۣ۟۟۟, reason: not valid java name and contains not printable characters */
    public static void m16(Object obj, long j, long j2, boolean z, float f, float f2) {
        if (C0001.m84() < 0) {
            play((View) obj, j, j2, z, f, f2);
        }
    }

    /* renamed from: ۟ۤۤۧۨ, reason: not valid java name and contains not printable characters */
    public static int m17() {
        if (C0001.m84() < 0) {
            return RED;
        }
        return 0;
    }

    /* renamed from: ۟ۤۦۥۨ, reason: not valid java name and contains not printable characters */
    public static String m18(Object obj) {
        if (C0005.m229() >= 0) {
            return getAppSHA1((Activity) obj);
        }
        return null;
    }

    /* renamed from: ۟ۤۦۧۨ, reason: not valid java name and contains not printable characters */
    public static GradientDrawable m19(int i, float f, int i2, int i3) {
        if (C0001.m84() <= 0) {
            return rect(i, f, i2, i3);
        }
        return null;
    }

    /* renamed from: ۟ۥ۠ۨۥ, reason: not valid java name and contains not printable characters */
    public static int m20() {
        if (C0002.m126() < 0) {
            return SURFACE;
        }
        return 0;
    }

    /* renamed from: ۟ۥۦۥۢ, reason: not valid java name and contains not printable characters */
    public static int m21(Object obj, float f) {
        if (C0001.m84() < 0) {
            return dp((Activity) obj, f);
        }
        return 0;
    }

    /* renamed from: ۟ۧ۠ۤۨ, reason: not valid java name and contains not printable characters */
    public static void m22(Object obj) {
    }

    /* renamed from: ۟ۧۦۥۥ, reason: not valid java name and contains not printable characters */
    public static int m23() {
        if (C0001.m84() <= 0) {
            return SCAN_COLOR;
        }
        return 0;
    }

    /* renamed from: ۟ۧۧ۟۟, reason: not valid java name and contains not printable characters */
    public static int m24() {
        if (C0001.m84() < 0) {
            return TEXT_1;
        }
        return 0;
    }

    /* renamed from: ۠۟ۨۡ, reason: not valid java name and contains not printable characters */
    public static void m25(Object obj, int i) {
        if (C0002.m126() <= 0) {
            runScan((View) obj, i);
        }
    }

    /* renamed from: ۠ۧ۟ۥ, reason: not valid java name and contains not printable characters */
    public static void m26(Object obj, Object obj2) {
        if (C0001.m84() <= 0) {
            startScanLine((View) obj, (View) obj2);
        }
    }

    /* renamed from: ۡۦ۠ۥ, reason: not valid java name and contains not printable characters */
    public static int m27() {
        if (C0004.m199() >= 0) {
            return BTN_TEXT;
        }
        return 0;
    }

    /* renamed from: ۡۨۤۥ, reason: not valid java name and contains not printable characters */
    public static void m28(Object obj, long j, long j2, float f) {
        if (C0002.m126() <= 0) {
            fadeUp((View) obj, j, j2, f);
        }
    }

    /* renamed from: ۢۡۡۢ, reason: not valid java name and contains not printable characters */
    public static void m29(Object obj) {
        if (C0004.m199() >= 0) {
            startRingPulse((View) obj);
        }
    }

    /* renamed from: ۢۢۥۧ, reason: not valid java name and contains not printable characters */
    public static void m30(Object obj) {
        if (C0002.m126() <= 0) {
            startMusic((Activity) obj);
        }
    }

    /* renamed from: ۣۢۤ۟, reason: not valid java name and contains not printable characters */
    public static int m31() {
        if (C0005.m229() > 0) {
            return AMBER_GLOW;
        }
        return 0;
    }

    /* renamed from: ۣۥ۟۠, reason: not valid java name and contains not printable characters */
    public static int m32() {
        if (C0001.m84() <= 0) {
            return AMBER_RING;
        }
        return 0;
    }

    /* renamed from: ۣۥۧۡ, reason: not valid java name and contains not printable characters */
    public static int m33() {
        if (C0001.m84() < 0) {
            return DIVIDER_MID;
        }
        return 0;
    }

    /* renamed from: ۤ۟ۨۢ, reason: not valid java name and contains not printable characters */
    public static void m34(Object obj) {
        if (C0005.m229() > 0) {
            startDotPulse((View) obj);
        }
    }

    /* renamed from: ۤۨ۠۠, reason: not valid java name and contains not printable characters */
    public static int m35() {
        if (C0001.m84() <= 0) {
            return BORDER;
        }
        return 0;
    }

    /* renamed from: ۥ۠۟ۥ, reason: contains not printable characters */
    public static int m36() {
        if (C0002.m126() <= 0) {
            return TEXT_2;
        }
        return 0;
    }

    /* renamed from: ۥۡۨۨ, reason: contains not printable characters */
    public static int m37() {
        if (C0002.m126() < 0) {
            return RED_DIM;
        }
        return 0;
    }

    /* renamed from: ۥۣۧ۠, reason: contains not printable characters */
    public static short[] m38() {
        if (C0002.m126() < 0) {
            return f2short;
        }
        return null;
    }

    /* renamed from: ۦۣۤۤ, reason: contains not printable characters */
    public static GradientDrawable m39(int i, int i2, int i3) {
        if (C0002.m126() < 0) {
            return oval(i, i2, i3);
        }
        return null;
    }

    /* renamed from: ۧۢ۟ۦ, reason: not valid java name and contains not printable characters */
    public static int m40() {
        if (C0004.m199() > 0) {
            return BOX_BG;
        }
        return 0;
    }

    /* renamed from: ۣۧۢۡ, reason: not valid java name and contains not printable characters */
    public static int m41() {
        if (C0004.m199() >= 0) {
            return AMBER;
        }
        return 0;
    }

    /* renamed from: ۨ۠ۧۢ, reason: not valid java name and contains not printable characters */
    public static int m42() {
        if (C0002.m126() < 0) {
            return TEXT_3;
        }
        return 0;
    }
}
