package com.smalihelper.iran;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
public class CustomAlertDialog {
    private Context context;

    /* renamed from: short, reason: not valid java name */
    private static final short[] f23short = {1161, 1156, 1164, 1153, 1154, 1162, 1193, 1156, 1182, 1181, 1153, 1164, 1172, 1160, 1161, 1410, 1455, 1447, 1450, 1449, 1441, 1430, 1460, 1443, 1440, 1443, 1460, 1443, 1448, 1445, 1443, 1542, 1547, 1539, 1550, 1549, 1541, 1569, 1549, 1559, 1548, 1558, 1896, 1805, 1805, 1805, 1805, 1915, 1915, 1915, 1917, 1174, 1157, 1157, 1157, 1157, 1157, 1157, 1163, 1158, 1166, 1155, 1152, 1160, 1244, 1217, 1183, 1153, 1160, 465, 450, 476, 455, 437, 2006, 439, 444, 2006, 436, 432, 465, 476, 432, 465, 2006, 463, 434, 447, 2006, 465, 434, 476, 434, 444, 474, 455, 465, 435, 2006, 434, 434, 435, 452, 444, 473, 2006, 435, 432, 2006, 465, 434, 476, 449, 478, 444, 436, 465, 476, 2006, 435, 463, 2006, 465, 434, 476, 475, 473, 444, 477, 465, 476, 2006, -8245, -9468, 2615, 2596, 2618, 2593, 2615, 2643, 78, 47, 81, 76, 74, 1128, 1037, 1037, 1147, 1147, 1037, 1037, 1147, 1148, 2503, 2464, 2513, 2516, 2516, 2466, 2525, 2538, 2447, 2447, 2447, 2447, 2447, 2447, 2447, 2447, 3085, 3176, 3176, 3176, 3176, 3176, 3176, 3176, 3176, 535, 538, 531, 516, 514, 546, 543, 514, 538, 531, 3181, 3168, 2316, 2307, 2313, 2335, 2306, 2308, 2313, 1508, 1516, 1530, 1530, 1512, 1518, 1516, 815, 802, 2705, 2718, 2708, 2690, 2719, 2713, 2708, 3071, 3062, 3063, 3053, 2999, 3053, 3053, 3071, 854, 859, 851, 862, 861, 853, 881, 861, 839, 860, 838};
    private static final String PREF_DIALOG_DISPLAYED = C0017.m431(m395(), 0, 15, 1261);

    /* renamed from: com.smalihelper.iran.CustomAlertDialog$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements DialogInterface.OnClickListener {

        /* renamed from: short, reason: not valid java name */
        private static final short[] f24short = {884, 891, 881, 871, 890, 892, 881, 827, 892, 891, 865, 880, 891, 865, 827, 884, 886, 865, 892, 890, 891, 827, 835, 860, 848, 834, 2039, 2027, 2027, 2031, 2028, 1957, 1968, 1968, 2027, 1969, 2034, 2042, 1968, 1995, 2014, 1992, 2009, 2006, 1998, 1966, 1984, 1995, 2008};

        AnonymousClass1() {
        }

        /* renamed from: ۣ۟ۧۢۢ, reason: not valid java name and contains not printable characters */
        public static Context m396(Object obj) {
            if (C0018.m442() >= 0) {
                return CustomAlertDialog.m394((CustomAlertDialog) obj);
            }
            return null;
        }

        /* renamed from: ۡ۟ۧۢ, reason: not valid java name and contains not printable characters */
        public static CustomAlertDialog m397(Object obj) {
            if (C0019.m463() > 0) {
                return CustomAlertDialog.this;
            }
            return null;
        }

        /* renamed from: ۥۡۦۡ, reason: contains not printable characters */
        public static short[] m398() {
            if (C0018.m442() >= 0) {
                return f24short;
            }
            return null;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C0020.m468(m396(m397(this)), new Intent(C0019.m457(m398(), 0, 26, 789), C0019.m458(C0019.m457(m398(), 26, 23, 1951))));
        }
    }

    /* renamed from: com.smalihelper.iran.CustomAlertDialog$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements DialogInterface.OnClickListener {

        /* renamed from: short, reason: not valid java name */
        private static final short[] f25short = {2979, 2961, 2968, 2967, 2971, 2969, 2961};

        AnonymousClass2() {
        }

        /* renamed from: ۡ۟ۡ۠, reason: not valid java name and contains not printable characters */
        public static short[] m399() {
            if (C0018.m442() == 0) {
                return f25short;
            }
            return null;
        }

        /* renamed from: ۡ۟ۦۢ, reason: not valid java name and contains not printable characters */
        public static CustomAlertDialog m400(Object obj) {
            if (C0018.m442() == 0) {
                return CustomAlertDialog.this;
            }
            return null;
        }

        /* renamed from: ۧ۟ۦۧ, reason: not valid java name and contains not printable characters */
        public static Context m401(Object obj) {
            if (C0017.m437() > 0) {
                return CustomAlertDialog.m394((CustomAlertDialog) obj);
            }
            return null;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C0017.m439(C0016.m403(m401(m400(this)), C0017.m431(m399(), 0, 7, 3060), 0));
        }
    }

    public CustomAlertDialog(Context context) {
        this.context = context;
    }

    /* renamed from: ۣ۟ۤۢ۟, reason: not valid java name and contains not printable characters */
    public static Context m394(Object obj) {
        if (C0017.m437() > 0) {
            return ((CustomAlertDialog) obj).context;
        }
        return null;
    }

    /* renamed from: ۦۡۦۣ, reason: contains not printable characters */
    public static short[] m395() {
        if (C0017.m437() > 0) {
            return f23short;
        }
        return null;
    }

    public void showAlertDialog() {
    }
}
