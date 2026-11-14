package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.ColorPicker;
import com.tawfiq.imaginstudio.imagetools.pixellab.ColorPickerSlider;
import com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerAdvanced;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.PickFromBgDialog;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorButton;

/* loaded from: classes.dex */
public class colorPickerDialog extends AlertDialog {
    private ColorPicker colorPickerView;
    View dialogLayout;
    private DialogInterface.OnClickListener onClickListener;
    private final OnColorSelectedListener onColorSelectedListener;

    /* loaded from: classes.dex */
    public interface OnColorSelectedListener {
        void onColorSelected(int i);
    }

    public colorPickerDialog(Context context, int i, OnColorSelectedListener onColorSelectedListener) {
        super(context);
        this.onClickListener = new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (i2 == -2) {
                    dialogInterface.dismiss();
                } else {
                    if (i2 != -1) {
                        return;
                    }
                    colorPickerDialog.this.onColorSelectedListener.onColorSelected(colorPickerDialog.this.colorPickerView.getColor());
                }
            }
        };
        this.onColorSelectedListener = onColorSelectedListener;
        this.dialogLayout = getLayoutInflater().inflate(R.layout.color_picker_layout, (ViewGroup) null);
        setButton(-1, context.getString(android.R.string.ok), this.onClickListener);
        setButton(-2, context.getString(android.R.string.cancel), this.onClickListener);
        setView(this.dialogLayout);
        ColorPicker colorPicker = (ColorPicker) this.dialogLayout.findViewById(R.id.color_picker_view);
        this.colorPickerView = colorPicker;
        colorPicker.setColor(i, Color.alpha(i));
        LinearLayout linearLayout = (LinearLayout) this.dialogLayout.findViewById(R.id.colorPicker_layout);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dpToPixels(40), dpToPixels(40));
        int dpToPixels = dpToPixels(3);
        layoutParams.rightMargin = dpToPixels;
        layoutParams.leftMargin = dpToPixels;
        layoutParams.topMargin = dpToPixels;
        layoutParams.bottomMargin = dpToPixels;
        final colorButton colorbutton = new colorButton(this.dialogLayout.getContext(), 1, i, null, false);
        linearLayout.addView(colorbutton, 0, layoutParams);
        final TextView textView = (TextView) this.dialogLayout.findViewById(R.id.color_info_text);
        textView.setText(describeColor(i));
        final ColorPickerSlider colorPickerSlider = (ColorPickerSlider) this.dialogLayout.findViewById(R.id.saturation_control);
        colorPickerSlider.initialize(i, 1);
        colorPickerSlider.setColorListener(new ColorPickerSlider.colorSliderEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.1
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ColorPickerSlider.colorSliderEvent
            public void onColorChanged(float f) {
                colorPickerDialog.this.colorPickerView.setSaturation(f);
            }
        });
        final ColorPickerSlider colorPickerSlider2 = (ColorPickerSlider) this.dialogLayout.findViewById(R.id.value_control);
        colorPickerSlider2.initialize(i, 2);
        colorPickerSlider2.setColorListener(new ColorPickerSlider.colorSliderEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.2
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ColorPickerSlider.colorSliderEvent
            public void onColorChanged(float f) {
                colorPickerDialog.this.colorPickerView.setValue(f);
            }
        });
        final ColorPickerSlider colorPickerSlider3 = (ColorPickerSlider) this.dialogLayout.findViewById(R.id.alpha_control);
        colorPickerSlider3.initialize(i, 3);
        colorPickerSlider3.setColorListener(new ColorPickerSlider.colorSliderEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.3
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ColorPickerSlider.colorSliderEvent
            public void onColorChanged(float f) {
                colorPickerDialog.this.colorPickerView.setAlphaVal((int) (f * 255.0f));
            }
        });
        this.dialogLayout.findViewById(R.id.pickFromBg).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new PickFromBgDialog(colorPickerDialog.this.dialogLayout.getContext(), new PickFromBgDialog.OnColorPickedBg() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.4.1
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.PickFromBgDialog.OnColorPickedBg
                    public void colorPicked(int i2) {
                        colorPickerDialog.this.colorPickerView.setColor(i2, Color.alpha(i2));
                    }
                }).show();
            }
        });
        this.colorPickerView.setOnColorChangedListener(new ColorPicker.ColorChangedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.5
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ColorPicker.ColorChangedListener
            public void colorChange() {
                int color = colorPickerDialog.this.colorPickerView.getColor();
                colorPickerSlider.setColor(colorPickerDialog.this.colorPickerView.getAlphaVal(), colorPickerDialog.this.colorPickerView.getColorHSV());
                colorPickerSlider2.setColor(colorPickerDialog.this.colorPickerView.getAlphaVal(), colorPickerDialog.this.colorPickerView.getColorHSV());
                colorPickerSlider3.setColor(colorPickerDialog.this.colorPickerView.getAlphaVal(), colorPickerDialog.this.colorPickerView.getColorHSV());
                colorbutton.setDisplayColor(color);
                textView.setText(colorPickerDialog.this.describeColor(color));
            }
        });
        this.dialogLayout.findViewById(R.id.color_advanced).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new colorPickerAdvanced(colorPickerDialog.this.dialogLayout.getContext(), colorPickerDialog.this.colorPickerView.getColor(), new colorPickerAdvanced.ColorPickedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.6.1
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerAdvanced.ColorPickedListener
                    public void colorPicked(int i2) {
                        colorPickerDialog.this.colorPickerView.setColor(i2);
                    }
                }).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String describeColor(int i) {
        try {
            return String.format("#%06X", Integer.valueOf(16777215 & i)) + " - (" + Color.alpha(i) + "," + Color.red(i) + "," + Color.green(i) + "," + Color.blue(i) + ")";
        } catch (Exception unused) {
            return "error";
        }
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, this.dialogLayout.getResources().getDisplayMetrics());
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        if (getWindow() != null) {
            getWindow().setLayout(-1, -1);
            getWindow().setFlags(1024, 1024);
        }
    }
}
