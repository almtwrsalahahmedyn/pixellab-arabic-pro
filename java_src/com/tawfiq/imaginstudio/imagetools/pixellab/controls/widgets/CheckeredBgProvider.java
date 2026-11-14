package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class CheckeredBgProvider extends View {
    private Drawable backgroundCheckers;
    private Rect bounds;
    Paint pntCheckers;

    public CheckeredBgProvider(Context context) {
        super(context);
        this.pntCheckers = new Paint();
        init();
    }

    public CheckeredBgProvider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.pntCheckers = new Paint();
        init();
    }

    public static void drawGrid(Rect rect, Canvas canvas, int i, Paint paint) {
        canvas.save();
        canvas.clipRect(rect);
        canvas.drawColor(-1);
        canvas.translate(rect.left, rect.top);
        int i2 = 0;
        while (true) {
            int i3 = i2 * i;
            if (i3 >= rect.height()) {
                canvas.restore();
                return;
            }
            int i4 = 0;
            while (true) {
                int i5 = i4 * i;
                if (i5 < rect.width()) {
                    int i6 = i5 + i;
                    int i7 = i3 + i;
                    if ((i4 % 2 == 0) == (i2 % 2 == 0)) {
                        canvas.drawRect(i5, i3, i6, i7, paint);
                    }
                    i4++;
                }
            }
            i2++;
        }
    }

    public void init() {
        this.backgroundCheckers = getResources().getDrawable(R.drawable.checkered_bg);
        this.pntCheckers.setColor(Color.parseColor("#b1b1b1"));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Rect rect;
        super.onDraw(canvas);
        if (isInEditMode() || (rect = this.bounds) == null) {
            return;
        }
        this.backgroundCheckers.setBounds(rect);
        this.backgroundCheckers.draw(canvas);
    }

    public void setBounds(Rect rect) {
        if (rect != null) {
            this.bounds = new Rect(rect);
            invalidate();
        }
    }
}
