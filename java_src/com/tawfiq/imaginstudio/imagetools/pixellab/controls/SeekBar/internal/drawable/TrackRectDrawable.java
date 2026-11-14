package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;

/* loaded from: classes.dex */
public class TrackRectDrawable extends StateDrawable {
    public TrackRectDrawable(ColorStateList colorStateList) {
        super(colorStateList);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.StateDrawable
    public void doDraw(Canvas canvas, Paint paint) {
        canvas.drawRect(getBounds(), paint);
    }
}
