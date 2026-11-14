package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Spinner;
import androidx.appcompat.app.AlertDialog;
import com.gun0912.tedpermission.TedPermissionUtil;

/* loaded from: classes.dex */
public class export_image_dialog extends AlertDialog {
    LinearLayout customDims;
    public EditText customNameEt;
    View dialogLayout;
    Spinner format;
    public Button gallerySaveButton;
    public EditText heightVal;
    Spinner quality;
    public Button shareButton;
    public EditText widthVal;

    public export_image_dialog(Context context, final int i, final int i2, boolean z, int i3, int i4, boolean z2) {
        super(context, 0);
        View inflate = getLayoutInflater().inflate(R.layout.save_dialog, (ViewGroup) null);
        this.dialogLayout = inflate;
        setView(inflate, 0, 0, 0, 0);
        this.customDims = (LinearLayout) this.dialogLayout.findViewById(R.id.dimensions_panel);
        this.widthVal = (EditText) this.dialogLayout.findViewById(R.id.width_val);
        this.heightVal = (EditText) this.dialogLayout.findViewById(R.id.height_val);
        Spinner spinner = (Spinner) this.dialogLayout.findViewById(R.id.formatSpinner);
        this.format = spinner;
        if (z2) {
            spinner.setSelection(1);
        }
        Spinner spinner2 = (Spinner) this.dialogLayout.findViewById(R.id.qualiySpinner);
        this.quality = spinner2;
        spinner2.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.export_image_dialog.2
            /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i5, long j) {
                export_image_dialog export_image_dialogVar;
                int i6;
                switch (i5) {
                    case 0:
                        export_image_dialogVar = export_image_dialog.this;
                        i6 = appDefault.DIM_PRESET_DEFAULT;
                        export_image_dialogVar.applyRes(i6, i, i2);
                        export_image_dialog.this.customDims.setVisibility(8);
                        return;
                    case 1:
                        export_image_dialog.this.customDims.setVisibility(0);
                        return;
                    case 2:
                        export_image_dialogVar = export_image_dialog.this;
                        i6 = 1000;
                        export_image_dialogVar.applyRes(i6, i, i2);
                        export_image_dialog.this.customDims.setVisibility(8);
                        return;
                    case 3:
                        export_image_dialogVar = export_image_dialog.this;
                        i6 = TedPermissionUtil.REQ_CODE_REQUEST_SETTING;
                        export_image_dialogVar.applyRes(i6, i, i2);
                        export_image_dialog.this.customDims.setVisibility(8);
                        return;
                    case 4:
                        export_image_dialogVar = export_image_dialog.this;
                        i6 = 3000;
                        export_image_dialogVar.applyRes(i6, i, i2);
                        export_image_dialog.this.customDims.setVisibility(8);
                        return;
                    case 5:
                        export_image_dialogVar = export_image_dialog.this;
                        i6 = 4000;
                        export_image_dialogVar.applyRes(i6, i, i2);
                        export_image_dialog.this.customDims.setVisibility(8);
                        return;
                    case 6:
                        export_image_dialogVar = export_image_dialog.this;
                        i6 = 5000;
                        export_image_dialogVar.applyRes(i6, i, i2);
                        export_image_dialog.this.customDims.setVisibility(8);
                        return;
                    default:
                        return;
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        if (z) {
            setDims(i3, i4);
            this.customDims.setVisibility(0);
            this.quality.setSelection(1);
        } else {
            applyRes(appDefault.DIM_PRESET_DEFAULT, i, i2);
        }
        this.gallerySaveButton = (Button) this.dialogLayout.findViewById(R.id.saveToGallery);
        this.shareButton = (Button) this.dialogLayout.findViewById(R.id.saveShare);
        this.customNameEt = (EditText) this.dialogLayout.findViewById(R.id.custom_image_name);
        ProjectExportStudio.injectIntoExportDialog(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyRes(int i, int i2, int i3) {
        if (i2 >= i3) {
            int i4 = (int) ((i / i2) * i3);
            this.widthVal.setText("" + i);
            this.heightVal.setText("" + i4);
            return;
        }
        int i5 = (int) ((i / i3) * i2);
        this.widthVal.setText("" + i5);
        this.heightVal.setText("" + i);
    }

    private void setDims(int i, int i2) {
        this.widthVal.setText("" + i);
        this.heightVal.setText("" + i2);
    }

    public Bitmap.CompressFormat getSelectedFormat() {
        int selectedItemPosition = this.format.getSelectedItemPosition();
        return selectedItemPosition == 1 ? Bitmap.CompressFormat.PNG : selectedItemPosition == 2 ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.JPEG;
    }

    public String getUserCustomName() {
        Editable text;
        EditText editText = this.customNameEt;
        if (editText == null || (text = editText.getText()) == null) {
            return null;
        }
        String trim = text.toString().trim();
        if (trim.isEmpty()) {
            return null;
        }
        return trim;
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        if (getWindow() != null) {
            getWindow().setLayout(-1, -2);
            getWindow().setFlags(1024, 1024);
        }
    }

    public void setOnGalleryButtonClicked(View.OnClickListener onClickListener) {
        this.gallerySaveButton.setOnClickListener(onClickListener);
    }

    public void setOnShareButtonClicked(View.OnClickListener onClickListener) {
        this.shareButton.setOnClickListener(onClickListener);
    }

    public void setOnSocialMediaShare(View.OnClickListener onClickListener) {
        LinearLayout linearLayout = (LinearLayout) this.dialogLayout.findViewById(R.id.share_buttons_holder);
        for (int i = 0; i <= linearLayout.getChildCount(); i++) {
            View childAt = linearLayout.getChildAt(i);
            if (childAt instanceof ImageButton) {
                childAt.setOnClickListener(onClickListener);
            }
        }
    }
}
