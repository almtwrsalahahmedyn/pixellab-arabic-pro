package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class RadiusIndicator extends View {
    Rect bounds;
    Paint pnt;
    float radius;

    public RadiusIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.radius = 5.0f;
        this.bounds = null;
        Paint paint = new Paint(1);
        this.pnt = paint;
        paint.setColor(Color.argb(230, 255, 255, 255));
        setOnTouchListener(new View.OnTouchListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.RadiusIndicator.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        setLayerType(1, null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.bounds == null) {
            return;
        }
        canvas.drawCircle(getWidth() * 0.5f, getHeight() * 0.5f, this.radius, this.pnt);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.bounds = new Rect(0, 0, i, i2);
    }

    public void setBlur(int i) {
        this.pnt.setMaskFilter(i != 0 ? new BlurMaskFilter(i, BlurMaskFilter.Blur.NORMAL) : null);
        invalidate();
    }

    public void setRadius(float f) {
        this.radius = f;
        invalidate();
    }
}
