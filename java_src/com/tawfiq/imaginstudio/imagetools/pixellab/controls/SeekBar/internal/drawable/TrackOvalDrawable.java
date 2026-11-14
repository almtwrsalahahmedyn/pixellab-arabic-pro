package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* loaded from: classes.dex */
public class TrackOvalDrawable extends StateDrawable {
    private RectF mRectF;

    public TrackOvalDrawable(ColorStateList colorStateList) {
        super(colorStateList);
        this.mRectF = new RectF();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.StateDrawable
    public void doDraw(Canvas canvas, Paint paint) {
        this.mRectF.set(getBounds());
        canvas.drawOval(this.mRectF, paint);
    }
}
