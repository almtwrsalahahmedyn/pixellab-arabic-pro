package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

/* loaded from: classes.dex */
public class aspect_ratio_preview extends View {
    RectF bounds;
    int height;
    int width;

    public aspect_ratio_preview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.width = 1;
        this.height = 1;
    }

    public float dpToPixels(int i) {
        return TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public int getAspectX() {
        return this.width;
    }

    public int getAspectY() {
        return this.height;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float min = Math.min(getMeasuredWidth() / this.width, getMeasuredHeight() / this.height);
        this.bounds = new RectF(0.0f, 0.0f, min * this.width, this.height * min);
        Rect rect = new Rect(0, 0, getMeasuredWidth(), getMeasuredHeight());
        this.bounds.offset(rect.centerX() - this.bounds.centerX(), rect.centerY() - this.bounds.centerY());
        Paint paint = new Paint(1);
        paint.setColor(Color.parseColor("#ffc107"));
        canvas.drawRect(this.bounds, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dpToPixels(2));
        paint.setColor(Color.parseColor("#e91e63"));
        this.bounds.inset(dpToPixels(2) / 2.0f, dpToPixels(2) / 2.0f);
        canvas.drawRect(this.bounds, paint);
        paint.setStyle(Paint.Style.FILL);
    }

    public void setAspectX(int i) {
        this.width = i;
        invalidate();
    }

    public void setAspectY(int i) {
        this.height = i;
        invalidate();
    }
}
