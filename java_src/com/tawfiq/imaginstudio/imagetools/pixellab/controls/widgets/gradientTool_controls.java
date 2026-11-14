package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog;

/* loaded from: classes.dex */
public class gradientTool_controls extends LinearLayout {
    ImageButton currentColorControl;
    gradientTool_slider sliderPreview;

    public gradientTool_controls(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearLayout.inflate(getContext(), R.layout.gradient_controls, this);
        View findViewById = findViewById(R.id.select_left);
        View findViewById2 = findViewById(R.id.select_right);
        View findViewById3 = findViewById(R.id.addColor);
        View findViewById4 = findViewById(R.id.removeColor);
        View findViewById5 = findViewById(R.id.flipPos);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dpToPixels(40), dpToPixels(40));
        layoutParams.gravity = 17;
        layoutParams.rightMargin = dpToPixels(3);
        layoutParams.leftMargin = dpToPixels(3);
        ImageButton imageButton = (ImageButton) findViewById(R.id.select_color);
        this.currentColorControl = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_controls.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new colorPickerDialog(gradientTool_controls.this.getContext(), gradientTool_controls.this.sliderPreview.lastSelectedHandle.getColor(), new colorPickerDialog.OnColorSelectedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_controls.1.1
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.OnColorSelectedListener
                    public void onColorSelected(int i) {
                        gradientTool_controls.this.changeCurrentColor(i);
                    }
                }).show();
            }
        });
        findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_controls.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                gradientTool_controls.this.sliderPreview.addNewColor();
            }
        });
        findViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_controls.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                gradientTool_controls.this.sliderPreview.removeCurrentColor();
            }
        });
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_controls.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                gradientTool_controls.this.sliderPreview.selectLeft();
            }
        });
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_controls.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                gradientTool_controls.this.sliderPreview.selectRight();
            }
        });
        findViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_controls.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                gradientTool_controls.this.sliderPreview.flipPositions();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeCurrentColor(int i) {
        colorHandle colorhandle;
        gradientTool_slider gradienttool_slider = this.sliderPreview;
        if (gradienttool_slider == null || (colorhandle = gradienttool_slider.lastSelectedHandle) == null) {
            return;
        }
        colorhandle.setColor(i);
        this.sliderPreview.gradientColorsChanged();
    }

    private void changeCurrentPosition(int i) {
        gradientTool_slider gradienttool_slider = this.sliderPreview;
        if (gradienttool_slider == null || gradienttool_slider.lastSelectedHandle == null) {
            return;
        }
        gradienttool_slider.setCurrentColorPosition(i);
        this.sliderPreview.gradientChanged();
    }

    public void connectSlider(gradientTool_slider gradienttool_slider) {
        this.sliderPreview = gradienttool_slider;
        gradienttool_slider.connectControls(this);
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void selectionChanged() {
    }
}
