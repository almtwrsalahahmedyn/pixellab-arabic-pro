package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorButton;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class removeColorTools extends LinearLayout {
    colorButton currColor;
    int currIndex;
    private OnRemoveColorToolsAction listener;

    /* loaded from: classes.dex */
    public interface OnRemoveColorToolsAction {
        void changedColor(int i);

        void pickColor();

        void requestAdd();

        void requestNext();

        void requestPrev();

        void requestRemove();
    }

    public removeColorTools(Context context, int i) {
        super(context);
        this.listener = null;
        this.currIndex = 0;
        LinearLayout.inflate(getContext(), R.layout.remove_color_tools, this);
        colorButton colorbutton = new colorButton(getContext(), 1, i, null, false);
        this.currColor = colorbutton;
        colorbutton.toggleNumberView(true);
        ((ViewGroup) findViewById(R.id.remCol_cHolder)).addView(this.currColor, new LinearLayout.LayoutParams(-1, -1));
        this.currColor.setOnColorNotifyChange(new colorButton.colorChangeNotify() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.1
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorButton.colorChangeNotify
            public void colorDisplayChanged(int i2) {
                if (removeColorTools.this.listener != null) {
                    removeColorTools.this.listener.changedColor(i2);
                }
            }
        });
        this.currColor.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new colorPickerDialog(view.getContext(), removeColorTools.this.currColor.getDisplayColor(), new colorPickerDialog.OnColorSelectedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.2.1
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.OnColorSelectedListener
                    public void onColorSelected(int i2) {
                        removeColorTools.this.currColor.setDisplayColor(i2);
                    }
                }).show();
            }
        });
        findViewById(R.id.remCol_pick).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (removeColorTools.this.listener != null) {
                    removeColorTools.this.listener.pickColor();
                }
            }
        });
        findViewById(R.id.remCol_add).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (removeColorTools.this.listener != null) {
                    removeColorTools.this.listener.requestAdd();
                }
            }
        });
        findViewById(R.id.remCol_remove).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (removeColorTools.this.listener != null) {
                    removeColorTools.this.listener.requestRemove();
                }
            }
        });
        findViewById(R.id.remCol_next).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (removeColorTools.this.listener != null) {
                    removeColorTools.this.listener.requestNext();
                }
            }
        });
        findViewById(R.id.remCol_prev).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.removeColorTools.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (removeColorTools.this.listener != null) {
                    removeColorTools.this.listener.requestPrev();
                }
            }
        });
    }

    public int getCurrIndex() {
        return this.currIndex;
    }

    public void modifyCurrentColor(ArrayList<ShapeComponent.ColorTolerance> arrayList, int i) {
        int i2 = this.currIndex;
        if (i2 < 0 || i2 >= arrayList.size()) {
            return;
        }
        arrayList.get(this.currIndex).c = i;
    }

    public void modifyCurrentTolerance(ArrayList<ShapeComponent.ColorTolerance> arrayList, int i) {
        int i2 = this.currIndex;
        if (i2 < 0 || i2 >= arrayList.size()) {
            return;
        }
        arrayList.get(this.currIndex).t = i;
    }

    public void setCurrColor(int i) {
        if (this.currColor.getDisplayColor() != i) {
            this.currColor.setDisplayColor(i);
        }
    }

    public void setCurrIndex(ArrayList<ShapeComponent.ColorTolerance> arrayList, int i) {
        this.currIndex = i;
        colorButton colorbutton = this.currColor;
        if (colorbutton != null) {
            colorbutton.setNumberToView(i + 1);
        }
        if (i < arrayList.size()) {
            setCurrColor(arrayList.get(i).c);
        }
    }

    public void setListener(OnRemoveColorToolsAction onRemoveColorToolsAction) {
        this.listener = onRemoveColorToolsAction;
    }
}
