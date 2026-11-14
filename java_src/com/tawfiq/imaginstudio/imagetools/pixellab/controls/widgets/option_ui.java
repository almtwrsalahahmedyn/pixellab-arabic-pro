package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class option_ui extends RelativeLayout {
    public int actionDo;
    ImageButton iconShow;
    TextView labelShow;
    boolean square;

    public option_ui(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.square = false;
        RelativeLayout.inflate(getContext(), R.layout.option_ui, this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.option_ui);
        ImageButton imageButton = (ImageButton) findViewById(R.id.option_ui_icon);
        this.iconShow = imageButton;
        imageButton.setColorFilter(Color.parseColor("#FFFFFFFF"));
        this.labelShow = (TextView) findViewById(R.id.option_ui_label);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        boolean z = obtainStyledAttributes.getBoolean(3, false);
        this.square = z;
        if (z) {
            this.iconShow.setBackgroundDrawable(getResources().getDrawable(R.drawable.dark_flat_button_style));
        }
        if (drawable != null) {
            this.iconShow.setImageDrawable(drawable);
        }
        if (obtainStyledAttributes.getBoolean(2, false) || obtainStyledAttributes.getText(4) == null) {
            this.labelShow.setVisibility(8);
        } else {
            this.labelShow.setText(obtainStyledAttributes.getText(4));
        }
        this.actionDo = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void setActionEvent(View.OnClickListener onClickListener) {
        this.iconShow.setOnClickListener(onClickListener);
    }

    public void setClickEnabled(boolean z) {
        setAlpha(z ? 1.0f : 0.5f);
        this.iconShow.setEnabled(z);
    }
}
