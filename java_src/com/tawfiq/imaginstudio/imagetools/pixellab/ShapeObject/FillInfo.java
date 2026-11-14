package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.graphics.Paint;
import android.os.Bundle;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;

/* loaded from: classes.dex */
public class FillInfo {
    private int fill_color;
    private GradientMaker.GradientFill fill_gradient;
    private int fill_type;
    private Paint.Cap stroke_cap;
    private int stroke_color;
    private GradientMaker.GradientFill stroke_gradient;
    private int stroke_type;
    private int stroke_width;

    public FillInfo() {
    }

    public FillInfo(int i, int i2, GradientMaker.GradientFill gradientFill, int i3, int i4, GradientMaker.GradientFill gradientFill2, int i5, Paint.Cap cap) {
        this.fill_type = i;
        this.fill_color = i2;
        this.fill_gradient = gradientFill;
        this.stroke_type = i3;
        this.stroke_color = i4;
        this.stroke_gradient = gradientFill2;
        this.stroke_width = i5;
        this.stroke_cap = cap;
    }

    public FillInfo(FillInfo fillInfo) {
        this(fillInfo.getFill_type(), fillInfo.getFill_color(), fillInfo.getFill_gradient() != null ? fillInfo.getFill_gradient().copy() : null, fillInfo.getStroke_type(), fillInfo.getStroke_color(), fillInfo.getStroke_gradient() != null ? fillInfo.getStroke_gradient().copy() : null, fillInfo.getStroke_width(), fillInfo.getStroke_cap());
    }

    public void applyCapOnPaint(Paint paint) {
        paint.setStrokeCap(this.stroke_cap);
        Paint.Cap cap = this.stroke_cap;
        paint.setStrokeJoin(cap == Paint.Cap.ROUND ? Paint.Join.ROUND : cap == Paint.Cap.BUTT ? Paint.Join.BEVEL : Paint.Join.MITER);
    }

    public FillInfo copy() {
        return new FillInfo(this);
    }

    public void fromBundle(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int i = bundle.getInt(appStateConstants.FILL_INFO_STROKE_CAP, 0);
        this.stroke_cap = i == 0 ? Paint.Cap.ROUND : i == 1 ? Paint.Cap.BUTT : Paint.Cap.SQUARE;
        this.fill_type = bundle.getInt(appStateConstants.FILL_INFO_FILL_TYPE);
        this.fill_color = bundle.getInt(appStateConstants.FILL_INFO_FILL_COLOR);
        this.fill_gradient = new GradientMaker.GradientFill(bundle.getString(appStateConstants.FILL_INFO_FILL_GRADIENT));
        this.stroke_type = bundle.getInt(appStateConstants.FILL_INFO_STROKE_TYPE);
        this.stroke_color = bundle.getInt(appStateConstants.FILL_INFO_STROKE_COLOR);
        this.stroke_gradient = new GradientMaker.GradientFill(bundle.getString(appStateConstants.FILL_INFO_STROKE_GRADIENT));
        this.stroke_width = bundle.getInt(appStateConstants.FILL_INFO_STROKE_WIDTH);
    }

    public int getFill_color() {
        return this.fill_color;
    }

    public GradientMaker.GradientFill getFill_gradient() {
        return this.fill_gradient;
    }

    public int getFill_type() {
        return this.fill_type;
    }

    public Paint.Cap getStroke_cap() {
        return this.stroke_cap;
    }

    public int getStroke_color() {
        return this.stroke_color;
    }

    public GradientMaker.GradientFill getStroke_gradient() {
        return this.stroke_gradient;
    }

    public int getStroke_type() {
        return this.stroke_type;
    }

    public int getStroke_width() {
        return this.stroke_width;
    }

    public void setFill_color(int i) {
        this.fill_color = i;
    }

    public void setFill_gradient(GradientMaker.GradientFill gradientFill) {
        this.fill_gradient = gradientFill != null ? gradientFill.copy() : null;
    }

    public void setFill_type(int i) {
        this.fill_type = i;
    }

    public void setStroke_cap(Paint.Cap cap) {
        this.stroke_cap = cap;
    }

    public void setStroke_color(int i) {
        this.stroke_color = i;
    }

    public void setStroke_gradient(GradientMaker.GradientFill gradientFill) {
        this.stroke_gradient = gradientFill != null ? gradientFill.copy() : null;
    }

    public void setStroke_type(int i) {
        this.stroke_type = i;
    }

    public void setStroke_width(int i) {
        this.stroke_width = i;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(appStateConstants.FILL_INFO_FILL_TYPE, this.fill_type);
        bundle.putInt(appStateConstants.FILL_INFO_FILL_COLOR, this.fill_color);
        bundle.putString(appStateConstants.FILL_INFO_FILL_GRADIENT, this.fill_gradient.convertToStringV2());
        bundle.putInt(appStateConstants.FILL_INFO_STROKE_TYPE, this.stroke_type);
        bundle.putInt(appStateConstants.FILL_INFO_STROKE_COLOR, this.stroke_color);
        bundle.putString(appStateConstants.FILL_INFO_STROKE_GRADIENT, this.stroke_gradient.convertToStringV2());
        bundle.putInt(appStateConstants.FILL_INFO_STROKE_WIDTH, this.stroke_width);
        Paint.Cap cap = this.stroke_cap;
        bundle.putInt(appStateConstants.FILL_INFO_STROKE_CAP, cap == Paint.Cap.ROUND ? 0 : cap == Paint.Cap.BUTT ? 1 : 2);
        return bundle;
    }
}
