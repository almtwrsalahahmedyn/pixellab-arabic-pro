package com.tawfiq.imaginstudio.imagetools.pixellab.font;

import android.graphics.Typeface;

/* loaded from: classes.dex */
public class customTypeface {
    String path;
    Typeface typeface;

    public customTypeface(String str, Typeface typeface) {
        Typeface typeface2 = Typeface.DEFAULT;
        this.path = str;
        this.typeface = typeface;
    }

    public String getPath() {
        return this.path;
    }

    public Typeface getTypeface() {
        return this.typeface;
    }
}
