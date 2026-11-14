package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorButton;

/* loaded from: classes.dex */
public class colorPickerAdvanced extends AlertDialog {
    ImageButton acceptHex;
    EditText bValue;
    int currBlueVal;
    int currGreenVal;
    int currRedVal;
    View dialogLayout;
    EditText gValue;
    EditText hexValue;
    boolean justifiedEdit;
    colorButton newColorButton;
    private DialogInterface.OnClickListener onClickListener;
    private final ColorPickedListener onColorSelectedListener;
    EditText rValue;

    /* loaded from: classes.dex */
    public interface ColorPickedListener {
        void colorPicked(int i);
    }

    public colorPickerAdvanced(Context context, int i, ColorPickedListener colorPickedListener) {
        super(context);
        this.justifiedEdit = false;
        this.currRedVal = 0;
        this.currGreenVal = 0;
        this.currBlueVal = 0;
        this.onClickListener = new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerAdvanced.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (i2 == -2) {
                    dialogInterface.dismiss();
                } else {
                    if (i2 != -1) {
                        return;
                    }
                    colorPickerAdvanced.this.onColorSelectedListener.colorPicked(colorPickerAdvanced.this.getCurrentColor());
                }
            }
        };
        this.onColorSelectedListener = colorPickedListener;
        View inflate = getLayoutInflater().inflate(R.layout.color_picker_advanced, (ViewGroup) null);
        this.dialogLayout = inflate;
        setView(inflate);
        setButton(-1, context.getString(android.R.string.ok), this.onClickListener);
        setButton(-2, context.getString(android.R.string.cancel), this.onClickListener);
        this.rValue = (EditText) this.dialogLayout.findViewById(R.id.rValue);
        this.gValue = (EditText) this.dialogLayout.findViewById(R.id.gValue);
        this.bValue = (EditText) this.dialogLayout.findViewById(R.id.bValue);
        this.hexValue = (EditText) this.dialogLayout.findViewById(R.id.hexVal);
        this.acceptHex = (ImageButton) this.dialogLayout.findViewById(R.id.acceptHex);
        this.rValue.addTextChangedListener(new TextWatcher() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerAdvanced.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                colorPickerAdvanced colorpickeradvanced = colorPickerAdvanced.this;
                int commitEditTextValue = colorpickeradvanced.commitEditTextValue(colorpickeradvanced.rValue);
                colorPickerAdvanced colorpickeradvanced2 = colorPickerAdvanced.this;
                if (colorpickeradvanced2.currRedVal != commitEditTextValue) {
                    colorpickeradvanced2.currRedVal = commitEditTextValue;
                    colorpickeradvanced2.updateHexField();
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        });
        this.gValue.addTextChangedListener(new TextWatcher() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerAdvanced.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                colorPickerAdvanced colorpickeradvanced = colorPickerAdvanced.this;
                int commitEditTextValue = colorpickeradvanced.commitEditTextValue(colorpickeradvanced.gValue);
                colorPickerAdvanced colorpickeradvanced2 = colorPickerAdvanced.this;
                if (colorpickeradvanced2.currGreenVal != commitEditTextValue) {
                    colorpickeradvanced2.currGreenVal = commitEditTextValue;
                    colorpickeradvanced2.updateHexField();
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        });
        this.bValue.addTextChangedListener(new TextWatcher() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerAdvanced.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                colorPickerAdvanced colorpickeradvanced = colorPickerAdvanced.this;
                int commitEditTextValue = colorpickeradvanced.commitEditTextValue(colorpickeradvanced.bValue);
                colorPickerAdvanced colorpickeradvanced2 = colorPickerAdvanced.this;
                if (colorpickeradvanced2.currBlueVal != commitEditTextValue) {
                    colorpickeradvanced2.currBlueVal = commitEditTextValue;
                    colorpickeradvanced2.updateHexField();
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        });
        this.hexValue.addTextChangedListener(new TextWatcher() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerAdvanced.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                colorPickerAdvanced colorpickeradvanced = colorPickerAdvanced.this;
                if (colorpickeradvanced.justifiedEdit) {
                    colorpickeradvanced.justifiedEdit = false;
                } else {
                    colorpickeradvanced.acceptHex.setVisibility(0);
                }
            }
        });
        this.acceptHex.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerAdvanced.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int currentColor;
                String obj = colorPickerAdvanced.this.hexValue.getText().toString();
                try {
                    if (!obj.startsWith("#")) {
                        obj = "#".concat(obj);
                    }
                    currentColor = Color.parseColor(obj);
                } catch (IllegalArgumentException unused) {
                    currentColor = colorPickerAdvanced.this.getCurrentColor();
                    Toast.makeText(colorPickerAdvanced.this.getContext(), R.string.invalid_color, 0).show();
                }
                colorPickerAdvanced.this.setRGBFields(currentColor);
                colorPickerAdvanced.this.acceptHex.setVisibility(8);
                colorPickerAdvanced.this.updateHexField(currentColor);
            }
        });
        LinearLayout linearLayout = (LinearLayout) this.dialogLayout.findViewById(R.id.color_preview_layout);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dpToPixels(40), dpToPixels(40));
        int dpToPixels = dpToPixels(3);
        layoutParams.rightMargin = dpToPixels;
        layoutParams.leftMargin = dpToPixels;
        layoutParams.topMargin = dpToPixels;
        layoutParams.bottomMargin = dpToPixels;
        layoutParams.gravity = 17;
        colorButton colorbutton = new colorButton(this.dialogLayout.getContext(), 1, i, null, false);
        this.newColorButton = colorbutton;
        linearLayout.addView(colorbutton, 0, layoutParams);
        setRGBFields(i);
        updateHexField(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentColor() {
        return Color.rgb(this.currRedVal, this.currGreenVal, this.currBlueVal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHexField(int i) {
        String str;
        this.justifiedEdit = true;
        try {
            str = String.format("%06X", Integer.valueOf(i & 16777215));
        } catch (Exception unused) {
            str = null;
        }
        if (str != null) {
            this.hexValue.setText(str);
            EditText editText = this.hexValue;
            editText.setSelection(editText.getText().length());
        }
        this.newColorButton.setDisplayColor(Color.rgb(this.currRedVal, this.currGreenVal, this.currBlueVal));
    }

    public int commitEditTextValue(EditText editText) {
        int i;
        boolean z;
        if (editText == null || editText.getText() == null) {
            return 0;
        }
        try {
            i = Integer.parseInt(editText.getText().toString());
            z = true;
        } catch (Exception unused) {
            i = 0;
            z = false;
        }
        if (z && i >= 0 && i <= 255) {
            return i;
        }
        int max = Math.max(Math.min(i, 255), 0);
        editText.setText(String.valueOf(max));
        editText.setSelection(editText.getText().length());
        return max;
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, this.dialogLayout.getResources().getDisplayMetrics());
    }

    public void setRGBFields(int i) {
        this.currRedVal = Color.red(i);
        this.currGreenVal = Color.green(i);
        this.currBlueVal = Color.blue(i);
        this.gValue.setText(String.valueOf(this.currGreenVal));
        this.bValue.setText(String.valueOf(this.currBlueVal));
        this.rValue.setText(String.valueOf(this.currRedVal));
    }

    public void updateHexField() {
        updateHexField(getCurrentColor());
    }
}
