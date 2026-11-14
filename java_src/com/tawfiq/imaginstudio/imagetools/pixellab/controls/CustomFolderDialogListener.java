package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Environment;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.presets_holder;
import info.hoang8f.android.segmented.SegmentedGroup;
import java.io.File;

/* loaded from: classes.dex */
public class CustomFolderDialogListener implements DialogInterface.OnClickListener {
    final optionExpand.AddFolderDialogClick clickOwner;
    final Context context;
    final EditText input;

    public CustomFolderDialogListener(optionExpand.AddFolderDialogClick addFolderDialogClick, EditText editText, Context context) {
        this.clickOwner = addFolderDialogClick;
        this.input = editText;
        this.context = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        SegmentedGroup segmentedGroup;
        String trim = this.input.getText().toString().trim();
        if (trim.isEmpty()) {
            return;
        }
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/PixelLab/Stickers/" + trim);
        if (!file.exists()) {
            file.mkdirs();
        }
        optionExpand.AddFolderDialogClick addFolderDialogClick = this.clickOwner;
        optionExpand optionexpand = addFolderDialogClick.this$0;
        presets_holder presets_holderVar = addFolderDialogClick.val$presetsHolder;
        View view = optionexpand.v;
        if (view != null && (segmentedGroup = (SegmentedGroup) view.findViewById(R.id.segmented_types)) != null) {
            RadioButton radioButton = new RadioButton(this.context);
            radioButton.setText(trim);
            radioButton.setTextSize(1, 12.0f);
            radioButton.setGravity(17);
            segmentedGroup.addView(radioButton, new RadioGroup.LayoutParams(-2, -1));
            segmentedGroup.updateBackground();
            CustomFolderTabClick customFolderTabClick = new CustomFolderTabClick(optionexpand, presets_holderVar, file);
            radioButton.setOnClickListener(customFolderTabClick);
            radioButton.setChecked(true);
            customFolderTabClick.onClick(radioButton);
        }
        Toast.makeText(this.context, "تم إنشاء: " + trim, 0).show();
    }
}
