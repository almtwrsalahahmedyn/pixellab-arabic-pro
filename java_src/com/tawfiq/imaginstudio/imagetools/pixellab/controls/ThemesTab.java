package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.app.Activity;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Environment;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import com.arasthel.asyncjob.AsyncJob;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_ui;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.preset_ui;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ThemesTab extends Fragment {
    private MainActivity callback;
    boolean cancelled = false;
    private LinearLayout.LayoutParams layoutParams;
    View v;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.ThemesTab$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements AsyncJob.OnBackgroundJob {
        final /* synthetic */ AssetManager val$assetManager;
        final /* synthetic */ LinearLayout val$holder;
        final /* synthetic */ LinearLayout.LayoutParams val$layoutParams;

        public AnonymousClass2(AssetManager assetManager, LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
            this.val$assetManager = assetManager;
            this.val$holder = linearLayout;
            this.val$layoutParams = layoutParams;
        }

        @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
        public void doOnBackground() {
            try {
                for (final String str : this.val$assetManager.list("presets")) {
                    final preset_ui preset_uiVar = new preset_ui(ThemesTab.this.v.getContext());
                    try {
                        final Bitmap decodeStream = BitmapFactory.decodeStream(this.val$assetManager.open("presets/" + str + "/thumb"));
                        AsyncJob.doOnMainThread(new AsyncJob.OnMainThreadJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.ThemesTab.2.1
                            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
                            public void doInUIThread() {
                                preset_uiVar.setContent(decodeStream, new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.ThemesTab.2.1.1
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view) {
                                        ThemesTab.this.callback.loadPresetFromAsset("presets/" + str);
                                    }
                                });
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                anonymousClass2.val$holder.addView(preset_uiVar, anonymousClass2.val$layoutParams);
                            }
                        });
                    } catch (IOException unused) {
                    }
                }
            } catch (Exception unused2) {
            }
        }
    }

    private boolean getDirIsEmpty(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length <= 0) {
            return true;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                return false;
            }
        }
        return true;
    }

    private List<File> getDirLists(File file) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    arrayList.add(file2);
                }
            }
        }
        return arrayList;
    }

    private boolean getPresetsIsEmpty(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length <= 0) {
            return true;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory() && !new File(file2, "deleted").exists() && new File(file2, "data.plab").exists()) {
                return false;
            }
        }
        return true;
    }

    private void updateAssetPresets(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        linearLayout.removeAllViews();
        AsyncJob.doInBackground(new AnonymousClass2(this.v.getContext().getAssets(), linearLayout, layoutParams));
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        this.callback = MainActivity.class.isAssignableFrom(activity.getClass()) ? (MainActivity) activity : null;
        super.onAttach(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.cancelled = false;
        View inflate = layoutInflater.inflate(R.layout.fragment_themes_tab, viewGroup, false);
        this.v = inflate;
        final option_ui option_uiVar = (option_ui) inflate.findViewById(R.id.browse_projects);
        option_uiVar.setActionEvent(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.ThemesTab.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((MainActivity) ThemesTab.this.getActivity()).doActionFor(option_uiVar.actionDo);
            }
        });
        LinearLayout linearLayout = (LinearLayout) this.v.findViewById(R.id.assetPresets);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.layoutParams = layoutParams;
        layoutParams.rightMargin = dpToPixels(5);
        this.layoutParams.leftMargin = dpToPixels(5);
        this.layoutParams.topMargin = dpToPixels(5);
        this.layoutParams.bottomMargin = dpToPixels(5);
        updateAssetPresets(linearLayout, this.layoutParams);
        updateCustomProjectsVisibility();
        return this.v;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.v = null;
        this.cancelled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.callback = null;
        super.onDetach();
    }

    public void updateCustomProjectsVisibility() {
        int i;
        View findViewById;
        try {
            File file = new File(Environment.getExternalStorageDirectory().getAbsoluteFile() + "/pixelLab/presets");
            StringBuilder sb = new StringBuilder();
            this.v.getContext();
            sb.append(Environment.getExternalStorageDirectory());
            sb.append("/presets/");
            if (getPresetsIsEmpty(new File(sb.toString())) && getPresetsIsEmpty(file)) {
                i = 8;
                this.v.findViewById(R.id.browse_projects).setVisibility(8);
                findViewById = this.v.findViewById(R.id.presets_separator);
                findViewById.setVisibility(i);
            }
            i = 0;
            this.v.findViewById(R.id.browse_projects).setVisibility(0);
            findViewById = this.v.findViewById(R.id.presets_separator);
            findViewById.setVisibility(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
