package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;

/* loaded from: classes.dex */
public class imageSizeDialog extends AlertDialog {
    int aspectX;
    int aspectY;
    int currHeight;
    int currWidth;
    View dialogLayout;
    private final EditText edit_image_height;
    private final EditText edit_image_width;
    SwitchCompat keepCropSwitch;
    imageSizeListener listener;
    private DialogInterface.OnClickListener onClickListener;
    Spinner preset_spinner;
    private final TextView text_aspect_info;

    /* loaded from: classes.dex */
    public class ConverterClick implements View.OnClickListener, View.OnTouchListener {
        public boolean userPickedDpi = false;

        public ConverterClick() {
        }

        private int calcPix(EditText editText, int i, double d) {
            if (editText == null) {
                return 0;
            }
            try {
                return (int) Math.round((Double.parseDouble(editText.getText().toString().trim()) * i) / d);
            } catch (Exception e) {
                return 0;
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            imageSizeDialog imagesizedialog = imageSizeDialog.this;
            View view2 = imagesizedialog.dialogLayout;
            Spinner spinner = (Spinner) view2.findViewById(R.id.dpi_spinner);
            int selectedItemPosition = spinner != null ? spinner.getSelectedItemPosition() : 5;
            int i = 300;
            if (selectedItemPosition == 0) {
                i = 72;
            } else if (selectedItemPosition == 1) {
                i = 96;
            } else if (selectedItemPosition == 2) {
                i = 150;
            } else if (selectedItemPosition == 3) {
                i = 200;
            } else if (selectedItemPosition == 4) {
                i = 250;
            } else if (selectedItemPosition == 6) {
                i = 600;
            }
            int i2 = i;
            double d = 1.0d;
            RadioButton radioButton = (RadioButton) view2.findViewById(R.id.unit_cm);
            if (radioButton == null || !radioButton.isChecked()) {
                RadioButton radioButton2 = (RadioButton) view2.findViewById(R.id.unit_px);
                if (radioButton2 != null && radioButton2.isChecked()) {
                    d = 0.0253984375d;
                }
            } else {
                d = 2.54d;
            }
            double d2 = d;
            EditText editText = (EditText) view2.findViewById(R.id.width_val);
            EditText editText2 = (EditText) view2.findViewById(R.id.height_val);
            CheckBox checkBox = (CheckBox) view2.findViewById(R.id.auto);
            boolean isChecked = checkBox != null ? checkBox.isChecked() : true;
            int calcPix = calcPix(editText, i2, d2);
            int calcPix2 = calcPix(editText2, i2, d2);
            if (isChecked && (calcPix > 18000 || calcPix2 > 18000)) {
                if (i2 > 300) {
                    i2 = 300;
                    calcPix = calcPix(editText, 300, d2);
                    calcPix2 = calcPix(editText2, 300, d2);
                    if (spinner != null) {
                        spinner.setSelection(5);
                    }
                }
                if (calcPix > 18000 || calcPix2 > 18000) {
                    if (i2 > 250) {
                        i2 = 250;
                        calcPix = calcPix(editText, 250, d2);
                        calcPix2 = calcPix(editText2, 250, d2);
                        if (spinner != null) {
                            spinner.setSelection(4);
                        }
                    }
                    if (calcPix > 18000 || calcPix2 > 18000) {
                        if (i2 > 200) {
                            i2 = 200;
                            calcPix = calcPix(editText, 200, d2);
                            calcPix2 = calcPix(editText2, 200, d2);
                            if (spinner != null) {
                                spinner.setSelection(3);
                            }
                        }
                        if (calcPix > 18000 || calcPix2 > 18000) {
                            if (i2 > 150) {
                                i2 = 150;
                                calcPix = calcPix(editText, 150, d2);
                                calcPix2 = calcPix(editText2, 150, d2);
                                if (spinner != null) {
                                    spinner.setSelection(2);
                                }
                            }
                            if (calcPix > 18000 || calcPix2 > 18000) {
                                if (i2 > 96) {
                                    calcPix = calcPix(editText, 96, d2);
                                    calcPix2 = calcPix(editText2, 96, d2);
                                    if (spinner != null) {
                                        spinner.setSelection(1);
                                    }
                                }
                                if (calcPix > 18000 || calcPix2 > 18000) {
                                    calcPix = calcPix(editText, 72, d2);
                                    calcPix2 = calcPix(editText2, 72, d2);
                                    if (spinner != null) {
                                        spinner.setSelection(0);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            EditText editText3 = (EditText) imagesizedialog.findViewById(R.id.image_size_width);
            if (editText3 != null) {
                editText3.setText(String.valueOf(calcPix));
            }
            EditText editText4 = (EditText) imagesizedialog.findViewById(R.id.image_size_height);
            if (editText4 != null) {
                editText4.setText(String.valueOf(calcPix2));
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            this.userPickedDpi = true;
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface imageSizeListener {
        void onSizePicked(int i, int i2, boolean z);
    }

    public imageSizeDialog(Context context, boolean z, int i, int i2, imageSizeListener imagesizelistener) {
        super(context);
        this.listener = null;
        this.currWidth = 1;
        this.currHeight = 1;
        this.aspectX = 1;
        this.aspectY = 1;
        this.onClickListener = new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.imageSizeDialog.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                imageSizeDialog imagesizedialog;
                imageSizeListener imagesizelistener2;
                if (i3 == -2) {
                    dialogInterface.dismiss();
                } else if (i3 == -1 && (imagesizelistener2 = (imagesizedialog = imageSizeDialog.this).listener) != null) {
                    imagesizelistener2.onSizePicked(imagesizedialog.currWidth, imagesizedialog.currHeight, imagesizedialog.keepCropSwitch.isChecked());
                }
            }
        };
        View inflate = getLayoutInflater().inflate(R.layout.image_size_dialog, (ViewGroup) null);
        this.dialogLayout = inflate;
        setView(inflate);
        this.listener = imagesizelistener;
        setButton(-1, context.getString(android.R.string.ok), this.onClickListener);
        setButton(-2, context.getString(android.R.string.cancel), this.onClickListener);
        this.currWidth = i;
        this.currHeight = i2;
        this.preset_spinner = (Spinner) this.dialogLayout.findViewById(R.id.aspectSpinner);
        this.text_aspect_info = (TextView) this.dialogLayout.findViewById(R.id.image_size_aspect);
        EditText editText = (EditText) this.dialogLayout.findViewById(R.id.image_size_width);
        this.edit_image_width = editText;
        EditText editText2 = (EditText) this.dialogLayout.findViewById(R.id.image_size_height);
        this.edit_image_height = editText2;
        this.aspectX = i;
        this.aspectY = i2;
        updateAspect();
        updateTextFieldsVal();
        this.preset_spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.imageSizeDialog.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                imageSizeDialog.this.applyPreset(i3);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.imageSizeDialog.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                imageSizeDialog imagesizedialog = imageSizeDialog.this;
                imagesizedialog.currWidth = imagesizedialog.commitValue(editable);
                imageSizeDialog.this.updateAspect();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }
        });
        editText2.addTextChangedListener(new TextWatcher() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.imageSizeDialog.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                imageSizeDialog imagesizedialog = imageSizeDialog.this;
                imagesizedialog.currHeight = imagesizedialog.commitValue(editable);
                imageSizeDialog.this.updateAspect();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }
        });
        this.keepCropSwitch = (SwitchCompat) this.dialogLayout.findViewById(R.id.keep_crop);
        this.dialogLayout.findViewById(R.id.keep_crop_holder).setVisibility(z ? 0 : 8);
        ConverterClick converterClick = new ConverterClick();
        Spinner spinner = (Spinner) this.dialogLayout.findViewById(R.id.dpi_spinner);
        if (spinner != null) {
            spinner.setSelection(5);
            spinner.setOnTouchListener(converterClick);
        }
        View findViewById = this.dialogLayout.findViewById(R.id.custom_indicator);
        if (findViewById != null) {
            findViewById.setOnClickListener(converterClick);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyPreset(int i) {
        int i2;
        int i3;
        int i4 = this.currWidth;
        int i5 = this.currHeight;
        switch (i) {
            case 1:
            case 2:
                i2 = 1024;
                i3 = 1024;
                break;
            case 3:
                i2 = 2560;
                i3 = 1440;
                break;
            case 4:
                i2 = 1280;
                i3 = 720;
                break;
            case 5:
                i2 = 981;
                i3 = 363;
                break;
            case 6:
                i2 = 2120;
                i3 = 1192;
                break;
            case 7:
                i2 = 1500;
                i3 = 500;
                break;
            default:
                i2 = i4;
                i3 = i5;
                break;
        }
        if (i2 == i4 && i3 == i5) {
            return;
        }
        setSize(i2, i3);
    }

    public static int[] asFraction(long j, long j2) {
        long gcm = gcm(j, j2);
        return new int[]{(int) (j / gcm), (int) (j2 / gcm)};
    }

    public static long gcm(long j, long j2) {
        return j2 == 0 ? j : gcm(j2, j % j2);
    }

    public int commitValue(Editable editable) {
        int i = 100;
        if (editable == null) {
            return 100;
        }
        try {
            i = Integer.parseInt(editable.toString());
        } catch (Exception unused) {
        }
        return Math.max(1, i);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        try {
            getWindow().setFlags(1024, 1024);
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onCreate(bundle);
    }

    public void setSize(int i, int i2) {
        this.currWidth = i;
        this.currHeight = i2;
        this.edit_image_width.setText(String.valueOf(i));
        this.edit_image_height.setText(String.valueOf(i2));
        EditText editText = this.edit_image_height;
        editText.setSelection(editText.getText().length());
        EditText editText2 = this.edit_image_width;
        editText2.setSelection(editText2.getText().length());
        updateAspect();
    }

    public void updateAspect() {
        int[] asFraction = asFraction(this.currWidth, this.currHeight);
        this.aspectX = asFraction[0];
        this.aspectY = asFraction[1];
        this.text_aspect_info.setText(this.aspectX + ":" + this.aspectY);
    }

    public void updateTextFieldsVal() {
        this.edit_image_width.setText(String.valueOf(this.currWidth));
        this.edit_image_height.setText(String.valueOf(this.currHeight));
        EditText editText = this.edit_image_height;
        editText.setSelection(editText.getText().length());
        EditText editText2 = this.edit_image_width;
        editText2.setSelection(editText2.getText().length());
    }
}
