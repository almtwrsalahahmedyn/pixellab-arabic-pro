package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class floatingPanelsHolder extends FrameLayout {
    public floatingPanelsHolder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new Drawable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.floatingPanelsHolder.1
            Paint pntGradient = new Paint(1);

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                float width = canvas.getWidth();
                float f = width / 2.0f;
                float height = canvas.getHeight();
                this.pntGradient.setShader(new RadialGradient(f, 0.0f, Math.max(f, height / 2.0f), Color.parseColor("#f6f6f6"), Color.parseColor("#161616"), Shader.TileMode.CLAMP));
                this.pntGradient.setAlpha(155);
                canvas.drawRect(0.0f, 0.0f, width, height, this.pntGradient);
            }

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -3;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }
        };
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
