package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Color;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.appDefault;
import java.text.Bidi;

/* loaded from: classes.dex */
public class option_label extends LinearLayout {
    public static final int SUFFIX_TYPE_DEGREE = 1;
    public static final int SUFFIX_TYPE_NOTHING = 3;
    public static final int SUFFIX_TYPE_PERCENTAGE = 2;
    public static final int SUFFIX_TYPE_PX = 5;
    slider_ui associatedSlider;
    TextView label;
    TextView value;
    TextView valueSuffix;

    public option_label(Context context, String str, boolean z, int i, int i2) {
        super(context);
        this.associatedSlider = null;
        this.label = new TextView(context);
        this.value = new TextView(context);
        this.valueSuffix = new TextView(context);
        this.label.setTextColor(Color.parseColor("#FFFFFFFF"));
        this.value.setTextColor(appDefault.blueHighlightColor);
        this.valueSuffix.setTextColor(appDefault.blueHighlightColor);
        int i3 = 8;
        this.value.setVisibility(z ? 0 : 8);
        TextView textView = this.valueSuffix;
        if (z && i2 != 3) {
            i3 = 0;
        }
        textView.setVisibility(i3);
        this.label.setText(str + " : ");
        this.value.setText(String.valueOf(i));
        this.valueSuffix.setText(i2 == 1 ? "°" : i2 == 2 ? "%" : i2 == 5 ? "px" : "");
        setOrientation(0);
        boolean baseIsLeftToRight = new Bidi(str, -2).baseIsLeftToRight();
        if (baseIsLeftToRight) {
            addView(this.label);
        }
        addView(this.value);
        addView(this.valueSuffix);
        if (baseIsLeftToRight) {
            return;
        }
        addView(this.label);
    }

    public void setDisplayText(String str) {
        this.label.setText(str);
    }

    public void setValue(int i) {
        this.value.setText(String.valueOf(i));
    }
}
