package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.gridlayout.widget.GridLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.preset_ui;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class stylesBrowser extends AlertDialog {
    View customHolder;
    GridLayout customSpace;
    View defaultHolder;
    GridLayout defaultSpace;
    Button loadCustom;
    Button loadDefault;
    boolean loadedCustom;
    boolean loadedDefault;
    FrameLayout.LayoutParams param;
    stylePickEvent styleEvent;
    View v;
    View warningText;

    /* loaded from: classes.dex */
    public interface stylePickEvent {
        void loadStyle(String str, boolean z);

        void removeStyle(String str);
    }

    public stylesBrowser(Context context, stylePickEvent stylepickevent) {
        super(context);
        this.loadedCustom = false;
        this.loadedDefault = false;
        this.styleEvent = stylepickevent;
    }

    private List<File> getDirLists(File file, boolean z) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            Arrays.sort(listFiles);
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    arrayList.add(file2);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadCustomStyles() {
        this.loadDefault.setSelected(false);
        this.loadCustom.setSelected(true);
        this.warningText.setVisibility(8);
        this.defaultHolder.setVisibility(8);
        this.customHolder.setVisibility(0);
        if (!this.loadedCustom) {
            File file = new File(Environment.getExternalStorageDirectory().getAbsoluteFile() + "/pixelLab/textstyles");
            StringBuilder sb = new StringBuilder();
            getContext();
            sb.append(Environment.getExternalStorageDirectory());
            sb.append("/textstyles");
            File file2 = new File(sb.toString());
            List<File> dirLists = getDirLists(file, false);
            List<File> dirLists2 = getDirLists(file2, false);
            for (int size = dirLists.size() - 1; size >= 0; size--) {
                dirLists2.add(dirLists.get(size));
            }
            for (int size2 = dirLists2.size() - 1; size2 >= 0; size2--) {
                final File file3 = dirLists2.get(size2);
                if (file3.isDirectory() && !new File(file3, "deleted").exists() && new File(file3, "data.plab").exists()) {
                    final preset_ui preset_uiVar = new preset_ui(getContext(), commonFuncs.dpToPxInt(100), commonFuncs.dpToPxInt(40), commonFuncs.dpToPxInt(6), false);
                    preset_uiVar.ForStyle();
                    this.customSpace.addView(preset_uiVar, this.param);
                    preset_uiVar.setContent(BitmapFactory.decodeFile(new File(file3, "thumb").getAbsolutePath()), new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.stylesBrowser.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            stylesBrowser.this.styleEvent.loadStyle(file3.getAbsolutePath(), false);
                            stylesBrowser.this.dismiss();
                        }
                    });
                    preset_uiVar.setDeleteAction(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.stylesBrowser.6
                        @Override // java.lang.Runnable
                        public void run() {
                            String string = stylesBrowser.this.getContext().getString(R.string.preset_delete_confirm);
                            AlertDialog.Builder builder = new AlertDialog.Builder(stylesBrowser.this.getContext());
                            builder.setTitle(stylesBrowser.this.getContext().getString(R.string.confirm_operation));
                            builder.setMessage(string);
                            builder.setNegativeButton(android.R.string.no, (DialogInterface.OnClickListener) null);
                            builder.setPositiveButton(stylesBrowser.this.getContext().getString(android.R.string.yes), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.stylesBrowser.6.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                    stylesBrowser.this.styleEvent.removeStyle(file3.getAbsolutePath());
                                    AnonymousClass6 anonymousClass62 = AnonymousClass6.this;
                                    stylesBrowser.this.customSpace.removeView(preset_uiVar);
                                    if (stylesBrowser.this.customSpace.getChildCount() == 0) {
                                        stylesBrowser.this.customHolder.setVisibility(8);
                                        stylesBrowser.this.defaultHolder.setVisibility(8);
                                        stylesBrowser.this.warningText.setVisibility(0);
                                    }
                                }
                            });
                            builder.show();
                        }
                    });
                }
            }
        }
        this.loadedCustom = true;
        if (this.customSpace.getChildCount() < 1) {
            this.customHolder.setVisibility(8);
            this.defaultHolder.setVisibility(8);
            this.warningText.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadDefaultStyles() {
        Bitmap bitmap;
        this.loadDefault.setSelected(true);
        this.loadCustom.setSelected(false);
        this.warningText.setVisibility(8);
        this.customHolder.setVisibility(8);
        this.defaultHolder.setVisibility(0);
        if (!this.loadedDefault) {
            AssetManager assets = this.v.getContext().getAssets();
            String[] strArr = new String[0];
            try {
                strArr = assets.list("textstyles");
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (strArr.length > 0) {
                Arrays.sort(strArr);
                for (final String str : strArr) {
                    preset_ui preset_uiVar = new preset_ui(getContext(), commonFuncs.dpToPxInt(100), commonFuncs.dpToPxInt(40), commonFuncs.dpToPxInt(6), false);
                    preset_uiVar.ForStyle();
                    this.defaultSpace.addView(preset_uiVar, this.param);
                    try {
                        bitmap = BitmapFactory.decodeStream(assets.open("textstyles/" + str + "/thumb"));
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        bitmap = null;
                    }
                    preset_uiVar.setContent(bitmap, new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.stylesBrowser.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            stylesBrowser.this.styleEvent.loadStyle("textstyles/" + str, true);
                            stylesBrowser.this.dismiss();
                        }
                    });
                }
            }
        }
        this.loadedDefault = true;
        if (this.defaultSpace.getChildCount() < 1) {
            this.customHolder.setVisibility(8);
            this.defaultHolder.setVisibility(8);
            this.warningText.setVisibility(0);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setLayout(-1, -1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().setFlags(1024, 1024);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.text_styles_browser, (ViewGroup) null);
        this.v = inflate;
        setContentView(inflate);
        this.defaultSpace = (GridLayout) this.v.findViewById(R.id.insertDefaultStyles);
        this.customSpace = (GridLayout) this.v.findViewById(R.id.insertCustomStyles);
        this.defaultHolder = this.v.findViewById(R.id.default_styles_holder);
        this.customHolder = this.v.findViewById(R.id.custom_styles_holder);
        this.warningText = this.v.findViewById(R.id.text_styles_warning);
        this.v.findViewById(R.id.styles_ok).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.stylesBrowser.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                stylesBrowser.this.dismiss();
            }
        });
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        this.param = layoutParams;
        int dpToPxInt = commonFuncs.dpToPxInt(5);
        layoutParams.bottomMargin = dpToPxInt;
        layoutParams.topMargin = dpToPxInt;
        layoutParams.rightMargin = dpToPxInt;
        layoutParams.leftMargin = dpToPxInt;
        this.loadCustom = (Button) this.v.findViewById(R.id.styles_load_custom);
        this.loadDefault = (Button) this.v.findViewById(R.id.styles_load_default);
        this.loadCustom.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.stylesBrowser.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                stylesBrowser.this.loadCustomStyles();
            }
        });
        this.loadDefault.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.stylesBrowser.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                stylesBrowser.this.loadDefaultStyles();
            }
        });
        loadDefaultStyles();
    }
}
