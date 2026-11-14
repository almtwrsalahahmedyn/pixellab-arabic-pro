package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class scrollableLinearLayout extends HorizontalScrollView {
    LinearLayout addHere;

    public scrollableLinearLayout(Context context) {
        super(context);
        init();
    }

    public scrollableLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public void add(View view, LinearLayout.LayoutParams layoutParams) {
        this.addHere.addView(view, layoutParams);
    }

    public void init() {
        HorizontalScrollView.inflate(getContext(), R.layout.linear_scrollview, this);
        this.addHere = (LinearLayout) findViewById(R.id.addHere);
    }
}
