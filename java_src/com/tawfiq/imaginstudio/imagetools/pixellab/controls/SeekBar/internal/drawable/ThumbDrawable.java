package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class ThumbDrawable extends StateDrawable implements Animatable {
    public static final int DEFAULT_SIZE_DP = 12;
    private boolean mOpen;
    private boolean mRunning;
    private final int mSize;
    private Runnable opener;

    public ThumbDrawable(ColorStateList colorStateList, int i) {
        super(colorStateList);
        this.opener = new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.ThumbDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                ThumbDrawable.this.mOpen = true;
                ThumbDrawable.this.invalidateSelf();
                ThumbDrawable.this.mRunning = false;
            }
        };
        this.mSize = i;
    }

    public void animateToNormal() {
        this.mOpen = false;
        this.mRunning = false;
        unscheduleSelf(this.opener);
        invalidateSelf();
    }

    public void animateToPressed() {
        scheduleSelf(this.opener, SystemClock.uptimeMillis() + 100);
        this.mRunning = true;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.StateDrawable
    public void doDraw(Canvas canvas, Paint paint) {
        if (this.mOpen) {
            return;
        }
        Rect bounds = getBounds();
        canvas.drawCircle(bounds.centerX(), bounds.centerY(), this.mSize / 2, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mSize;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        animateToNormal();
    }
}
