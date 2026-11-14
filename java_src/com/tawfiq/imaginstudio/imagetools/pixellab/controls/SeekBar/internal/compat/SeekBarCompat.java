package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable;

/* loaded from: classes.dex */
public class SeekBarCompat {
    public static Drawable getRipple(ColorStateList colorStateList) {
        return SeekBarCompatDontCrash.getRipple(colorStateList);
    }

    public static boolean isHardwareAccelerated(View view) {
        return SeekBarCompatDontCrash.isHardwareAccelerated(view);
    }

    public static boolean isInScrollingContainer(ViewParent viewParent) {
        return SeekBarCompatDontCrash.isInScrollingContainer(viewParent);
    }

    public static void setBackground(View view, Drawable drawable) {
        SeekBarCompatDontCrash.setBackground(view, drawable);
    }

    public static void setHotspotBounds(Drawable drawable, int i, int i2, int i3, int i4) {
        int i5 = (i3 - i) / 8;
        drawable.setHotspotBounds(i + i5, i2 + i5, i3 - i5, i4 - i5);
    }

    public static void setOutlineProvider(View view, MarkerDrawable markerDrawable) {
        SeekBarCompatDontCrash.setOutlineProvider(view, markerDrawable);
    }

    public static void setTextDirection(TextView textView, int i) {
        SeekBarCompatDontCrash.setTextDirection(textView, i);
    }
}
