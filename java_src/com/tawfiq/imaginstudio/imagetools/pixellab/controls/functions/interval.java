package com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions;

import com.tawfiq.imaginstudio.imagetools.pixellab.font.customTypeface;

/* loaded from: classes.dex */
public class interval {
    private baseInterval base;
    private int color;
    private customTypeface font;

    public interval(int i, int i2) {
        this.color = 0;
        this.base = new baseInterval(i, i2);
    }

    public interval(int i, int i2, int i3) {
        this.color = 0;
        this.base = new baseInterval(i, i2);
        this.color = i3;
    }

    public interval(int i, int i2, customTypeface customtypeface) {
        this.color = 0;
        this.base = new baseInterval(i, i2);
        this.font = customtypeface;
    }

    public interval copy() {
        interval intervalVar = new interval(getStart(), getEnd());
        intervalVar.setColor(getColor());
        intervalVar.setFont(getFont());
        return intervalVar;
    }

    public baseInterval getBase() {
        return this.base;
    }

    public int getColor() {
        return this.color;
    }

    public int getEnd() {
        return this.base.getEnd();
    }

    public customTypeface getFont() {
        return this.font;
    }

    public int getStart() {
        return this.base.getStart();
    }

    public void setBase(baseInterval baseinterval) {
        this.base = baseinterval;
    }

    public void setColor(int i) {
        this.color = i;
    }

    public void setFont(customTypeface customtypeface) {
        this.font = customtypeface;
    }

    public void setStart(int i) {
        this.base.setStart(i);
    }
}
