package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.SeekArc;

/* loaded from: classes.dex */
public class seekArc_ui extends LinearLayout {
    SeekArc arc;

    public seekArc_ui(Context context, int i, SeekArc.OnSeekArcChangeListener onSeekArcChangeListener) {
        super(context);
        LinearLayout.inflate(getContext(), R.layout.arcseek_ui, this);
        SeekArc seekArc = (SeekArc) findViewById(R.id.seeker);
        this.arc = seekArc;
        seekArc.setProgress(i);
        this.arc.setmProgressShow(Boolean.FALSE);
        this.arc.setOnSeekArcChangeListener(onSeekArcChangeListener);
        this.arc.setTouchInSide(false);
    }

    public void ignoreInterceptTouchFor(ScrollView scrollView) {
        this.arc.setIgnoreTouchFor(scrollView);
    }
}
