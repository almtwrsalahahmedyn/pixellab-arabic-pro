package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageShowPick;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton;

/* loaded from: classes.dex */
public class PickFromBgDialog extends AlertDialog {
    int currColor;
    View dialogLayout;
    ImageShowPick imgShow;
    OnColorPickedBg listener;
    ZoomButton zoomButton;
    ZoomWidget zoomWidget;

    /* loaded from: classes.dex */
    public interface OnColorPickedBg {
        void colorPicked(int i);
    }

    public PickFromBgDialog(Context context, final OnColorPickedBg onColorPickedBg) {
        super(context);
        this.currColor = -1;
        this.listener = onColorPickedBg;
        View inflate = getLayoutInflater().inflate(R.layout.from_bg_pick, (ViewGroup) null);
        this.dialogLayout = inflate;
        setView(inflate, 0, 0, 0, 0);
        this.zoomWidget = (ZoomWidget) this.dialogLayout.findViewById(R.id.pickBgZoom);
        this.zoomButton = (ZoomButton) this.dialogLayout.findViewById(R.id.pickBgZoomButton);
        ImageShowPick imageShowPick = (ImageShowPick) this.dialogLayout.findViewById(R.id.colorPickerBg);
        this.imgShow = imageShowPick;
        this.zoomWidget.setChild(imageShowPick);
        this.zoomWidget.setNotifyOnChange(this.zoomButton);
        this.zoomButton.setZoomListener(new ZoomButton.OnZoomEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.PickFromBgDialog.1
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.OnZoomEvent
            public void zoomReset() {
                PickFromBgDialog.this.zoomWidget.resetZoom(false);
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.OnZoomEvent
            public void zoomToggle(boolean z) {
                PickFromBgDialog.this.zoomWidget.toggleZoom(z);
            }
        });
        final colorButton colorbutton = new colorButton(this.dialogLayout.getContext(), 1, this.currColor, null, false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(commonFuncs.dpToPxInt(35), commonFuncs.dpToPxInt(35));
        int dpToPxInt = commonFuncs.dpToPxInt(5);
        layoutParams.rightMargin = dpToPxInt;
        layoutParams.leftMargin = dpToPxInt;
        layoutParams.topMargin = dpToPxInt;
        layoutParams.bottomMargin = dpToPxInt;
        ((LinearLayout) this.dialogLayout.findViewById(R.id.pickFromBgToolBar)).addView(colorbutton, layoutParams);
        this.imgShow.setListener(new ImageShowPick.OnColorChange() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.PickFromBgDialog.2
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageShowPick.OnColorChange
            public void colorChanged(int i) {
                PickFromBgDialog.this.currColor = i;
                colorbutton.setDisplayColor(i);
            }
        });
        this.dialogLayout.findViewById(R.id.pickBg_done).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.PickFromBgDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnColorPickedBg onColorPickedBg2 = onColorPickedBg;
                if (onColorPickedBg2 != null) {
                    onColorPickedBg2.colorPicked(PickFromBgDialog.this.imgShow.currColor);
                }
                PickFromBgDialog.this.dismiss();
            }
        });
        this.dialogLayout.findViewById(R.id.pickBg_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.PickFromBgDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PickFromBgDialog.this.dismiss();
            }
        });
        ((ImportedImageList) this.dialogLayout.findViewById(R.id.image_list)).setSelectListener(this.imgShow);
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
