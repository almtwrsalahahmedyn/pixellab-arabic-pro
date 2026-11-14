package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.appDefault;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar;

/* loaded from: classes.dex */
public class slider_ui extends LinearLayout {
    ImageButton minus;
    ImageButton plus;
    DiscreteSeekBar seekBar;
    private int step;

    public slider_ui(Context context, int i, int i2, int i3) {
        super(context);
        this.step = 1;
        init();
        this.seekBar.setMax(i2);
        this.seekBar.setMin(i);
        this.seekBar.setProgress(i3);
    }

    public slider_ui(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.step = 1;
        init();
    }

    private void init() {
        LinearLayout.inflate(getContext(), R.layout.slider_ui, this);
        this.plus = (ImageButton) findViewById(R.id.value_plus);
        this.minus = (ImageButton) findViewById(R.id.value_minus);
        this.seekBar = (DiscreteSeekBar) findViewById(R.id.seekbar_value);
        this.plus.setColorFilter(appDefault.blueHighlightColor);
        this.minus.setColorFilter(appDefault.blueHighlightColor);
        this.plus.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DiscreteSeekBar discreteSeekBar = slider_ui.this.seekBar;
                discreteSeekBar.setProgressAsIfTheUserHadDoneSo(slider_ui.this.step + discreteSeekBar.getProgress());
            }
        });
        this.minus.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DiscreteSeekBar discreteSeekBar = slider_ui.this.seekBar;
                discreteSeekBar.setProgressAsIfTheUserHadDoneSo(discreteSeekBar.getProgress() - slider_ui.this.step);
            }
        });
        toggleBubble(Boolean.FALSE);
    }

    public int getBarValue() {
        return this.seekBar.getProgress();
    }

    public int getMax() {
        return this.seekBar.getMax();
    }

    public int getMin() {
        return this.seekBar.getMin();
    }

    public void setBarMax(int i) {
        this.seekBar.setMax(i);
    }

    public void setBarMin(int i) {
        this.seekBar.setMax(i);
    }

    public void setBarValue(int i) {
        this.seekBar.setProgress(i);
    }

    public void setNotifyButtonAsStopTrack(boolean z) {
        this.seekBar.setNotifyButtonAsStopTrack(z);
    }

    public void setNotifyValueChange(DiscreteSeekBar.OnProgressChangeListener onProgressChangeListener) {
        this.seekBar.setOnProgressChangeListener(onProgressChangeListener);
    }

    public void setStep(int i) {
        this.step = i;
    }

    public void setValue(int i) {
        this.seekBar.setProgress(i);
    }

    public void setValueFromUser(int i) {
        this.seekBar.setProgressAsIfTheUserHadDoneSo(i);
    }

    public void toggleBubble(Boolean bool) {
        this.seekBar.setBubbleEnabled(bool.booleanValue());
    }

    public void toggleStepControls(boolean z) {
        this.plus.setVisibility(z ? 0 : 8);
        this.minus.setVisibility(z ? 0 : 8);
    }
}
