package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.graphics.Color;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public class appDefault {
    public static int DIM_PRESET_DEFAULT = 1280;
    public static int DIM_PRESET_HIGH = 1920;
    public static int DIM_PRESET_LOW = 480;
    public static int DIM_PRESET_ULTRA = 3264;
    public static int DIM_PRESET_VERY_HIGH = 2560;
    public static final String TAG = "mydebug";
    public static final int newShapeSizeDp = 60;
    public static int blueHighlightColor = Color.parseColor("#FFFF3FFF");
    public static int panelBgColor = Color.parseColor("#f6f6f6");
    public static int darkBlue = Color.parseColor("#8a96a7");
    static int VER = 1;
    static int HOR = 0;
    static int RAD = 2;
    public static ArrayList<String> defaultColors = new ArrayList<>(Arrays.asList("#000000", "#ffffff", "#f44336", "#ffcdd2", "#b71c1c", "#e91e63", "#f8bbd0", "#880e4f", "#9c27b0", "#673ab7", "#3f51b5", "#2196f3", "#bbdefb", "#0d47a1", "#03a9f4", "#00bcd4", "#009688", "#4caf50", "#c8e6c9", "#1b5e20", "#8bc34a", "#cddc39", "#ffeb3b", "#fff9c4", "#f57f17", "#ffc107", "#ff9800", "#ff5722", "#795548", "#9e9e9e", "#f5f5f5", "#e0e0e0", "#bdbdbd", "#757575", "#212121", "#607d8b"));
    public static ArrayList<GradientMaker.GradientFill> defaultGradients = new ArrayList<>(Arrays.asList(new GradientMaker.GradientFill(VER, -16777216, -1), new GradientMaker.GradientFill(HOR, -16777216, -1), new GradientMaker.GradientFill(VER, fromHex("#99daff"), fromHex("#008080")), new GradientMaker.GradientFill(VER, fromHex("#aec320"), fromHex("#80940f")), new GradientMaker.GradientFill(VER, fromHex("#d4a883"), fromHex("#9c8fa1")), new GradientMaker.GradientFill(HOR, fromHex("#239eca"), fromHex("#036082")), new GradientMaker.GradientFill(HOR, fromHex("#9e9e9e"), fromHex("#2196f3")), new GradientMaker.GradientFill(VER, fromHex("#b3c9bc"), fromHex("#4b696b")), new GradientMaker.GradientFill(VER, fromHex("#ffc107"), fromHex("#00bcd4")), new GradientMaker.GradientFill(VER, fromHex("#ffffff"), fromHex("#b6b6b6")), new GradientMaker.GradientFill(VER, fromHex("#2f93c7"), fromHex("#1f5e8a")), new GradientMaker.GradientFill(VER, fromHex("#fffde6"), fromHex("#9a6696")), new GradientMaker.GradientFill(RAD, fromHex("#800080"), fromHex("#000000")), new GradientMaker.GradientFill(RAD, fromHex("#f0f0f0"), fromHex("#cfcfcf")), new GradientMaker.GradientFill(RAD, fromHex("#b5bb7b"), fromHex("#3a6367")), new GradientMaker.GradientFill(RAD, fromHex("#fba939"), fromHex("#ba2b60")), new GradientMaker.GradientFill(RAD, fromHex("#d4a883"), fromHex("#9c8fa1")), new GradientMaker.GradientFill(RAD, fromHex("#239eca"), fromHex("#036082")), new GradientMaker.GradientFill(RAD, fromHex("#b3c9bc"), fromHex("#4b696b"))));
    public static int minTextSizePx = 2;
    public static int maxTextSizePx = (int) commonFuncs.spToPx(150);
    static String packageName_facebook = "com.facebook.katana";
    static String packageName_twitter = "com.twitter.android";
    static String packageName_gplus = "com.google.android.apps.plus";
    static String packageName_whatsapp = "com.whatsapp";
    static String packageName_instagram = "com.instagram.android";
    static String packageName_dropbox = "com.dropbox.android";
    static String packageName_tumblr = "com.tumblr";

    private static int fromHex(String str) {
        return Color.parseColor(str);
    }
}
