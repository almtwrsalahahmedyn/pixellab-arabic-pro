package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ScrollView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class AdaptableScrollView extends ScrollView {
    int maxHeight;

    public AdaptableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.maxHeight = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AdaptableScrollView);
        this.maxHeight = obtainStyledAttributes.getDimensionPixelSize(0, 100);
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
    
        if (r1 != 1073741824) goto L13;
     */
    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r4, int r5) {
        /*
            r3 = this;
            int r0 = r3.maxHeight
            if (r0 <= 0) goto L24
            int r0 = android.view.View.MeasureSpec.getSize(r5)
            int r1 = android.view.View.MeasureSpec.getMode(r5)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 == r2) goto L1a
            if (r1 == 0) goto L17
            r2 = 1073741824(0x40000000, float:2.0)
            if (r1 == r2) goto L1a
            goto L24
        L17:
            int r5 = r3.maxHeight
            goto L20
        L1a:
            int r5 = r3.maxHeight
            int r5 = java.lang.Math.min(r0, r5)
        L20:
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r2)
        L24:
            super.onMeasure(r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.AdaptableScrollView.onMeasure(int, int):void");
    }
}
