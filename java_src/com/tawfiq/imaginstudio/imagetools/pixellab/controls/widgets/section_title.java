package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class section_title extends LinearLayout {
    public section_title(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        String str;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.section_title);
            str = obtainStyledAttributes.getString(0);
            obtainStyledAttributes.recycle();
        } else {
            str = "";
        }
        init(str);
    }

    public section_title(Context context, String str) {
        super(context);
        init(str);
    }

    public void init(String str) {
        LinearLayout.inflate(getContext(), R.layout.section_title_ui, this);
        ((TextView) findViewById(R.id.section_name)).setText(str);
    }
}
