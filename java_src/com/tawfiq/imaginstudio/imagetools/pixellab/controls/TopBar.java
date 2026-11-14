package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class TopBar extends LinearLayout {
    public TopBar(Context context) {
        super(context);
        init();
    }

    public TopBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public void init() {
        LinearLayout.inflate(getContext(), R.layout.top_bar, this);
    }
}
