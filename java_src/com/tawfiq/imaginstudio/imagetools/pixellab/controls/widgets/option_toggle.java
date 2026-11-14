package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class option_toggle extends LinearLayout {
    SwitchCompat handle;
    TextView toggleLabel;

    public option_toggle(Context context, boolean z, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        super(context);
        LinearLayout.inflate(getContext(), R.layout.option_toggle, this);
        this.handle = (SwitchCompat) findViewById(R.id.toggle_handle);
        this.toggleLabel = (TextView) findViewById(R.id.toggle_action_label);
        this.handle.setChecked(z);
        if (onCheckedChangeListener != null) {
            this.handle.setOnCheckedChangeListener(onCheckedChangeListener);
        }
    }

    public boolean getState() {
        return this.handle.isChecked();
    }

    public void setOnCheckedChange(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.handle.setOnCheckedChangeListener(onCheckedChangeListener);
    }

    public void setToggleLabel(String str) {
        this.toggleLabel.setText(str);
    }

    public void toggle(boolean z) {
        this.handle.setChecked(z);
    }
}
