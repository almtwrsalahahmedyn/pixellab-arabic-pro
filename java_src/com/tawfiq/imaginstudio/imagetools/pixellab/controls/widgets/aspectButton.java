package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.View;

/* loaded from: classes.dex */
public class aspectButton extends View {
    String aspectText;
    public int aspectX;
    public int aspectY;
    RectF bounds;
    int drawColor;
    RectF iconBounds;
    float iconPadding;
    RectF iconRect;
    Paint pnt;
    Paint pntIcon;
    RectF textBounds;

    public aspectButton(Context context, int i, int i2, View.OnClickListener onClickListener) {
        super(context);
        this.aspectX = -1;
        this.aspectY = -1;
        this.iconPadding = dpToPixels(4.0f);
        this.bounds = null;
        this.textBounds = null;
        this.iconBounds = null;
        this.iconRect = null;
        this.drawColor = Color.parseColor("#d5d5d5");
        setOnClickListener(onClickListener);
        this.aspectX = i;
        this.aspectY = i2;
        Paint paint = new Paint(1);
        this.pnt = paint;
        paint.setColor(this.drawColor);
        Paint paint2 = new Paint(1);
        this.pntIcon = paint2;
        paint2.setColor(this.drawColor);
        this.pntIcon.setStyle(Paint.Style.STROKE);
        this.pntIcon.setStrokeWidth(dpToPixels(1.0f));
        this.aspectText = i + ":" + i2;
    }

    public float dpToPixels(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.bounds != null) {
            this.pnt.setTextAlign(Paint.Align.CENTER);
            canvas.drawText(this.aspectText, this.textBounds.centerX(), this.textBounds.centerY() - ((this.pnt.descent() + this.pnt.ascent()) / 2.0f), this.pnt);
            RectF rectF = this.iconRect;
            if (rectF != null) {
                canvas.drawRect(rectF, this.pntIcon);
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        float f = i;
        float f2 = i2;
        this.bounds = new RectF(0.0f, 0.0f, f, f2);
        this.pnt.setTextSize(f2 / 4.2f);
        RectF rectF = new RectF(0.0f, f2 - (f2 / 5.0f), f, f2);
        this.textBounds = rectF;
        float min = Math.min(f, rectF.top);
        RectF rectF2 = new RectF(0.0f, 0.0f, min, min);
        this.iconBounds = rectF2;
        rectF2.offset((f / 2.0f) - rectF2.centerX(), (this.textBounds.top / 2.0f) - this.iconBounds.centerY());
        int i6 = this.aspectX;
        if (i6 == -1 || (i5 = this.aspectY) == -1 || i6 == 0 || i5 == 0) {
            return;
        }
        float min2 = Math.min(this.iconBounds.width() / this.aspectX, this.iconBounds.height() / this.aspectY);
        RectF rectF3 = new RectF(0.0f, 0.0f, this.aspectX * min2, min2 * this.aspectY);
        this.iconRect = rectF3;
        float f3 = this.iconPadding;
        rectF3.inset(f3, f3);
        this.iconRect.offset(this.iconBounds.centerX() - this.iconRect.centerX(), this.iconBounds.centerY() - this.iconRect.centerY());
    }
}
