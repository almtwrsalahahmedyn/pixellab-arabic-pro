package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.TinyDB;
import com.tawfiq.imaginstudio.imagetools.pixellab.appDefault;
import com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog;
import info.hoang8f.android.segmented.SegmentedGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class unifiedColor_selector extends LinearLayout implements View.OnClickListener {
    private static final String LAST_USED_COLOR = "last_colors";
    private static final String LAST_USED_GRADIENT = "last_gradients";
    public static int TYPE_COLOR = 1;
    public static int TYPE_GRADIENT = 2;
    boolean colorsAdded;
    int currColor;
    GradientMaker.GradientFill currGradient;
    int fillType;
    boolean gradientsAdded;
    private boolean isAutomatic;
    onColorChangeListener mColorListener;
    private boolean showAutomatic;

    /* loaded from: classes.dex */
    public interface onColorChangeListener {
        void colorChanged(int i, int i2, GradientMaker.GradientFill gradientFill);
    }

    public unifiedColor_selector(Context context, boolean z, int i, int i2, GradientMaker.GradientFill gradientFill) {
        super(context);
        this.colorsAdded = false;
        this.gradientsAdded = false;
        this.isAutomatic = false;
        this.showAutomatic = false;
        LinearLayout.inflate(getContext(), R.layout.color_selector, this);
        this.fillType = i;
        this.currColor = i2;
        this.currGradient = gradientFill != null ? gradientFill.copy() : null;
        SegmentedGroup segmentedGroup = (SegmentedGroup) findViewById(R.id.segmented2);
        segmentedGroup.setTintColor(Color.parseColor("#e91e63"));
        segmentedGroup.setLayerType(1, null);
        final LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dpToPixels(40), dpToPixels(40));
        layoutParams.gravity = 17;
        layoutParams.rightMargin = dpToPixels(10);
        layoutParams.leftMargin = dpToPixels(10);
        final LinearLayout linearLayout = (LinearLayout) findViewById(R.id.default_color_list);
        final LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.last_color_list);
        final LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.default_gradient_list);
        final LinearLayout linearLayout4 = (LinearLayout) findViewById(R.id.last_gradient_list);
        final LinearLayout linearLayout5 = (LinearLayout) findViewById(R.id.colors_panel);
        final LinearLayout linearLayout6 = (LinearLayout) findViewById(R.id.gradients_panel);
        RadioButton radioButton = (RadioButton) findViewById(R.id.gradientRadioButton);
        segmentedGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i3) {
                unifiedColor_selector unifiedcolor_selector;
                int i4;
                if (i3 == R.id.autoRadioButton) {
                    linearLayout5.setVisibility(8);
                    linearLayout6.setVisibility(8);
                    unifiedColor_selector.this.setIsAutomatic(true);
                    unifiedColor_selector.this.reportColorChange();
                    return;
                }
                if (i3 == R.id.colorRadioButton) {
                    linearLayout6.setVisibility(8);
                    linearLayout5.setVisibility(0);
                    unifiedColor_selector unifiedcolor_selector2 = unifiedColor_selector.this;
                    if (!unifiedcolor_selector2.colorsAdded) {
                        unifiedcolor_selector2.insertDefaultColors(linearLayout, layoutParams);
                    }
                    unifiedColor_selector.this.insertLastUsedColors(linearLayout2, layoutParams);
                    unifiedcolor_selector = unifiedColor_selector.this;
                    i4 = unifiedColor_selector.TYPE_COLOR;
                } else {
                    if (i3 != R.id.gradientRadioButton) {
                        return;
                    }
                    linearLayout5.setVisibility(8);
                    linearLayout6.setVisibility(0);
                    unifiedColor_selector unifiedcolor_selector3 = unifiedColor_selector.this;
                    if (!unifiedcolor_selector3.gradientsAdded) {
                        unifiedcolor_selector3.insertDefaultGradients(linearLayout3, layoutParams);
                    }
                    unifiedColor_selector.this.insertLastUsedGradients(linearLayout4, layoutParams);
                    unifiedcolor_selector = unifiedColor_selector.this;
                    i4 = unifiedColor_selector.TYPE_GRADIENT;
                }
                unifiedcolor_selector.fillType = i4;
                unifiedcolor_selector.setIsAutomatic(false);
            }
        });
        ImageButton imageButton = (ImageButton) findViewById(R.id.custom_color);
        ImageButton imageButton2 = (ImageButton) findViewById(R.id.custom_gradient);
        imageButton.setColorFilter(appDefault.blueHighlightColor);
        imageButton2.setColorFilter(appDefault.blueHighlightColor);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new colorPickerDialog(unifiedColor_selector.this.getContext(), unifiedColor_selector.this.currColor, new colorPickerDialog.OnColorSelectedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.2.1
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.OnColorSelectedListener
                    public void onColorSelected(int i3) {
                        unifiedColor_selector unifiedcolor_selector = unifiedColor_selector.this;
                        unifiedcolor_selector.fillType = unifiedColor_selector.TYPE_COLOR;
                        unifiedcolor_selector.currColor = i3;
                        unifiedcolor_selector.reportColorChange();
                        TinyDB tinyDB = new TinyDB(unifiedColor_selector.this.getContext());
                        ArrayList<Integer> listInt = tinyDB.getListInt(unifiedColor_selector.LAST_USED_COLOR);
                        listInt.remove(Integer.valueOf(i3));
                        listInt.add(0, Integer.valueOf(i3));
                        while (listInt.size() > 5) {
                            listInt.remove(listInt.size() - 1);
                        }
                        tinyDB.putListInt(unifiedColor_selector.LAST_USED_COLOR, listInt);
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        unifiedColor_selector.this.insertLastUsedColors(linearLayout2, layoutParams);
                    }
                }).show();
            }
        });
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new GradientMaker(unifiedColor_selector.this.getContext(), unifiedColor_selector.this.currGradient, new GradientMaker.OnGradientSelectedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector.3.1
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker.OnGradientSelectedListener
                    public void onGradientSelected(GradientMaker.GradientFill gradientFill2) {
                        unifiedColor_selector unifiedcolor_selector = unifiedColor_selector.this;
                        unifiedcolor_selector.fillType = unifiedColor_selector.TYPE_GRADIENT;
                        unifiedcolor_selector.currGradient = gradientFill2 != null ? gradientFill2.copy() : null;
                        unifiedColor_selector.this.reportColorChange();
                        TinyDB tinyDB = new TinyDB(unifiedColor_selector.this.getContext());
                        ArrayList<String> list = tinyDB.getList(unifiedColor_selector.LAST_USED_GRADIENT);
                        String convertToStringV2 = gradientFill2.convertToStringV2();
                        list.remove(convertToStringV2);
                        list.add(0, convertToStringV2);
                        while (list.size() > 5) {
                            list.remove(list.size() - 1);
                        }
                        tinyDB.putList(unifiedColor_selector.LAST_USED_GRADIENT, list);
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        unifiedColor_selector.this.insertLastUsedGradients(linearLayout4, layoutParams);
                    }
                }).show();
            }
        });
        if (!z || i == TYPE_COLOR) {
            linearLayout6.setVisibility(8);
            insertDefaultColors(linearLayout, layoutParams);
            insertLastUsedColors(linearLayout2, layoutParams);
        } else {
            linearLayout5.setVisibility(8);
            insertDefaultGradients(linearLayout3, layoutParams);
            insertLastUsedGradients(linearLayout4, layoutParams);
            radioButton.setChecked(true);
        }
        if (z) {
            return;
        }
        ((LinearLayout) findViewById(R.id.segment_holder)).setVisibility(8);
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public int getCurrColor() {
        return this.currColor;
    }

    public GradientMaker.GradientFill getCurrGradient() {
        return this.currGradient;
    }

    public int getFillType() {
        return this.fillType;
    }

    public void insertDefaultColors(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        int i;
        Iterator<String> it = appDefault.defaultColors.iterator();
        while (it.hasNext()) {
            try {
                i = Color.parseColor(it.next());
            } catch (IllegalArgumentException unused) {
                i = -1;
            }
            colorButton colorbutton = new colorButton(getContext(), 1, i, null, false);
            colorbutton.setOnClickListener(this);
            linearLayout.addView(colorbutton, layoutParams);
        }
        this.colorsAdded = true;
    }

    public void insertDefaultGradients(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Iterator<GradientMaker.GradientFill> it = appDefault.defaultGradients.iterator();
        while (it.hasNext()) {
            GradientMaker.GradientFill next = it.next();
            colorButton colorbutton = new colorButton(getContext(), 2, 0, next != null ? next.copy() : null, false);
            colorbutton.setOnClickListener(this);
            linearLayout.addView(colorbutton, layoutParams);
        }
        this.gradientsAdded = true;
    }

    public void insertLastUsedColors(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        linearLayout.removeAllViews();
        ArrayList<Integer> listInt = new TinyDB(getContext()).getListInt(LAST_USED_COLOR);
        if (listInt.isEmpty()) {
            return;
        }
        Iterator<Integer> it = listInt.iterator();
        while (it.hasNext()) {
            colorButton colorbutton = new colorButton(getContext(), 1, it.next().intValue(), null, false);
            colorbutton.setOnClickListener(this);
            linearLayout.addView(colorbutton, layoutParams);
        }
    }

    public void insertLastUsedGradients(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        linearLayout.removeAllViews();
        ArrayList<String> list = new TinyDB(getContext()).getList(LAST_USED_GRADIENT);
        if (list.isEmpty()) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            colorButton colorbutton = new colorButton(getContext(), 2, 0, new GradientMaker.GradientFill(it.next()), false);
            colorbutton.setOnClickListener(this);
            linearLayout.addView(colorbutton, layoutParams);
        }
    }

    public boolean isAutomatic() {
        return this.isAutomatic;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        colorButton colorbutton = (colorButton) view;
        int type = colorbutton.getType();
        this.fillType = type;
        if (type == TYPE_COLOR) {
            this.currColor = colorbutton.getDisplayColor();
        } else if (type == TYPE_GRADIENT) {
            this.currGradient = colorbutton.getDisplayGradient() != null ? colorbutton.getDisplayGradient().copy() : null;
        }
        reportColorChange();
    }

    public void reportColorChange() {
        onColorChangeListener oncolorchangelistener = this.mColorListener;
        if (oncolorchangelistener != null) {
            oncolorchangelistener.colorChanged(this.fillType, this.currColor, this.currGradient);
        }
    }

    public void setIsAutomatic(boolean z) {
        this.isAutomatic = z;
        RadioButton radioButton = (RadioButton) findViewById(R.id.autoRadioButton);
        if (z) {
            radioButton.setChecked(true);
        }
    }

    public void setOnColorChangeListener(onColorChangeListener oncolorchangelistener) {
        this.mColorListener = oncolorchangelistener;
    }

    public void setParamsQuietly(int i, int i2, GradientMaker.GradientFill gradientFill) {
        this.currColor = i2;
        this.currGradient = gradientFill != null ? gradientFill.copy() : null;
        ((RadioButton) findViewById(i == TYPE_COLOR ? R.id.colorRadioButton : R.id.gradientRadioButton)).setChecked(true);
    }

    public void setShowAutomatic(boolean z, boolean z2) {
        this.showAutomatic = z;
        RadioButton radioButton = (RadioButton) findViewById(R.id.autoRadioButton);
        if (z2) {
            radioButton.setChecked(true);
        }
        radioButton.setVisibility(0);
        this.isAutomatic = z2;
    }
}
