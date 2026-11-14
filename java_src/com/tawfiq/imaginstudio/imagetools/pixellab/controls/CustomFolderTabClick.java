package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.presets_holder;
import info.hoang8f.android.segmented.SegmentedGroup;
import java.io.File;

/* loaded from: classes.dex */
public class CustomFolderTabClick implements View.OnClickListener {
    public static String currentFolderPath;
    public static CustomFolderTabClick currentTabListener;
    public final File folder;
    public final presets_holder holder;
    public final optionExpand opt;

    /* loaded from: classes.dex */
    public class AddImageClick implements View.OnClickListener {
        public final File folder;
        public final optionExpand opt;

        public AddImageClick(optionExpand optionexpand, File file) {
            this.opt = optionexpand;
            this.folder = file;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CustomFolderTabClick.currentFolderPath = this.folder.getAbsolutePath();
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            this.opt.startActivityForResult(intent, 257);
        }
    }

    /* loaded from: classes.dex */
    public class FolderLongClick implements View.OnLongClickListener, DialogInterface.OnClickListener {
        public EditText editInput;
        public final SegmentedGroup group;
        public final RadioButton radioBtn;
        public final CustomFolderTabClick tabClick;

        public FolderLongClick(CustomFolderTabClick customFolderTabClick, RadioButton radioButton, SegmentedGroup segmentedGroup) {
            this.tabClick = customFolderTabClick;
            this.radioBtn = radioButton;
            this.group = segmentedGroup;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            CustomFolderTabClick customFolderTabClick = this.tabClick;
            File file = customFolderTabClick.folder;
            if (i == -1) {
                EditText editText = this.editInput;
                if (editText != null) {
                    String trim = editText.getText().toString().trim();
                    if (trim.isEmpty()) {
                        return;
                    }
                    File file2 = new File(file.getParentFile(), trim);
                    if (file.renameTo(file2)) {
                        this.radioBtn.setText(trim);
                        CustomFolderTabClick customFolderTabClick2 = new CustomFolderTabClick(customFolderTabClick.opt, customFolderTabClick.holder, file2);
                        this.radioBtn.setOnClickListener(customFolderTabClick2);
                        customFolderTabClick2.onClick(null);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == -3) {
                CustomFolderTabClick.deleteRecursive(file);
                this.group.removeView(this.radioBtn);
                this.group.updateBackground();
                presets_holder presets_holderVar = customFolderTabClick.holder;
                if (presets_holderVar != null) {
                    View findViewById = presets_holderVar.findViewById(2131335577);
                    if (findViewById != null) {
                        presets_holderVar.removeView(findViewById);
                    }
                    View childAt = this.group.getChildAt(0);
                    if (childAt != null) {
                        childAt.performClick();
                    }
                }
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            Context context = view.getContext();
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("تعديل أو حذف المجلد");
            EditText editText = new EditText(context);
            editText.setText(this.tabClick.folder.getName());
            this.editInput = editText;
            builder.setView(editText);
            builder.setPositiveButton("حفظ التعديل", this);
            builder.setNeutralButton("حذف المجلد", this);
            builder.setNegativeButton("إلغاء", (DialogInterface.OnClickListener) null);
            builder.show();
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class ImageLongClick implements View.OnLongClickListener, DialogInterface.OnClickListener {
        public final File imageFile;
        public final CustomFolderTabClick tabClick;

        public ImageLongClick(CustomFolderTabClick customFolderTabClick, File file) {
            this.tabClick = customFolderTabClick;
            this.imageFile = file;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            File file = this.imageFile;
            if (file.exists()) {
                file.delete();
            }
            this.tabClick.onClick(null);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
            builder.setTitle("حذف الملصق");
            builder.setMessage("هل تريد حذف هذا الملصق نهائياً من المجلد؟");
            builder.setPositiveButton("حذف", this);
            builder.setNegativeButton("إلغاء", (DialogInterface.OnClickListener) null);
            builder.show();
            return true;
        }
    }

    public CustomFolderTabClick(optionExpand optionexpand, presets_holder presets_holderVar, File file) {
        this.opt = optionexpand;
        this.holder = presets_holderVar;
        this.folder = file;
    }

    public static void deleteRecursive(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                deleteRecursive(file2);
            }
        }
        file.delete();
    }

    public static void loadSavedTabs(optionExpand optionexpand, SegmentedGroup segmentedGroup, presets_holder presets_holderVar) {
        File[] listFiles;
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/PixelLab/Stickers");
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                RadioButton radioButton = new RadioButton(segmentedGroup.getContext());
                radioButton.setButtonDrawable((Drawable) null);
                radioButton.setGravity(17);
                radioButton.setPadding(24, 10, 24, 10);
                radioButton.setText(file2.getName());
                radioButton.setTextSize(1, 12.0f);
                CustomFolderTabClick customFolderTabClick = new CustomFolderTabClick(optionexpand, presets_holderVar, file2);
                radioButton.setOnClickListener(customFolderTabClick);
                radioButton.setOnLongClickListener(new FolderLongClick(customFolderTabClick, radioButton, segmentedGroup));
                segmentedGroup.addView(radioButton);
            }
        }
        segmentedGroup.updateBackground();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        File[] listFiles;
        String absolutePath;
        Bitmap decodeFile;
        currentTabListener = this;
        File file = this.folder;
        if (file != null) {
            currentFolderPath = file.getAbsolutePath();
        }
        presets_holder presets_holderVar = this.holder;
        if (presets_holderVar != null) {
            View findViewById = presets_holderVar.findViewById(2131335577);
            if (findViewById != null) {
                presets_holderVar.removeView(findViewById);
            }
            int childCount = presets_holderVar.getChildCount();
            for (int i = 0; i < childCount; i++) {
                presets_holderVar.getChildAt(i).setVisibility(8);
            }
            Context context = view != null ? view.getContext() : this.holder.getContext();
            HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
            horizontalScrollView.setId(2131335577);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            Button button = new Button(context);
            button.setText("+ إضافة");
            button.setTextColor(-1);
            button.setBackgroundColor(Color.parseColor("#e91e63"));
            button.setTextSize(1, 12.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) (70 * context.getResources().getDisplayMetrics().density), -2);
            button.setOnClickListener(new AddImageClick(this.opt, this.folder));
            linearLayout.addView(button, layoutParams);
            File file2 = this.folder;
            if (file2 != null && file2.exists() && (listFiles = this.folder.listFiles()) != null) {
                for (File file3 : listFiles) {
                    if (!file3.isDirectory() && (decodeFile = BitmapFactory.decodeFile((absolutePath = file3.getAbsolutePath()))) != null) {
                        ImageView imageView = new ImageView(context);
                        imageView.setImageBitmap(decodeFile);
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        imageView.setPadding(5, 5, 5, 5);
                        int i2 = (int) (55 * context.getResources().getDisplayMetrics().density);
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i2, i2);
                        layoutParams2.leftMargin = 4;
                        layoutParams2.rightMargin = 4;
                        imageView.setOnClickListener(new CustomStickerItemClick(this.opt, absolutePath));
                        imageView.setOnLongClickListener(new ImageLongClick(this, file3));
                        linearLayout.addView(imageView, layoutParams2);
                    }
                }
            }
            horizontalScrollView.addView(linearLayout);
            this.holder.addView(horizontalScrollView);
        }
    }
}
