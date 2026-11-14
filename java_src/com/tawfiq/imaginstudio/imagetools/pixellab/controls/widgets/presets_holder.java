package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class presets_holder extends LinearLayout {
    LinearLayout.LayoutParams layoutParams;
    ProgressBar progress;
    LinearLayout space;

    public presets_holder(Context context) {
        super(context);
        LinearLayout.inflate(getContext(), R.layout.presets_panel, this);
        this.space = (LinearLayout) findViewById(R.id.addingSpace);
        this.progress = (ProgressBar) findViewById(R.id.loading_progress);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.layoutParams = layoutParams;
        layoutParams.rightMargin = dpToPixels(5);
        this.layoutParams.leftMargin = dpToPixels(5);
        this.layoutParams.topMargin = dpToPixels(2);
        LinearLayout.LayoutParams layoutParams2 = this.layoutParams;
        layoutParams2.gravity = 17;
        layoutParams2.bottomMargin = dpToPixels(2);
    }

    public void addPreset(View view) {
        this.space.addView(view, this.layoutParams);
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void hideProgress() {
        this.progress.setVisibility(8);
    }

    public void removeAll() {
        this.space.removeAllViews();
    }

    public void startLoading() {
        this.progress.setVisibility(0);
    }
}
