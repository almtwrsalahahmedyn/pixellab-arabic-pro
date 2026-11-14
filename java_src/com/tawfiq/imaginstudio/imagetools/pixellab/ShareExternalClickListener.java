package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.view.View;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser;
import java.io.File;

/* loaded from: classes.dex */
public class ShareExternalClickListener implements View.OnClickListener {
    public projectsBrowser.ProjectListAdapter adapter;
    public projectsBrowser.ProjectItem item;

    public ShareExternalClickListener(projectsBrowser.ProjectListAdapter projectListAdapter, projectsBrowser.ProjectItem projectItem) {
        this.adapter = projectListAdapter;
        this.item = projectItem;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context = this.adapter.getContext();
        try {
            File file = new File(Environment.getExternalStorageDirectory() + File.separator + "pixelLab");
            file.mkdirs();
            File file2 = new File(file, this.item.projectDir.getName() + ".plp");
            if (!commonFuncs.zipFolder(this.item.projectDir.getAbsolutePath(), file2.getAbsolutePath())) {
                Toast.makeText(context, "فشل تجهيز ملف المشروع", 0).show();
                return;
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file2));
            intent.addFlags(1);
            Intent createChooser = Intent.createChooser(intent, "مشاركة المشروع عبر...");
            createChooser.addFlags(268435456);
            context.startActivity(createChooser);
        } catch (Exception e) {
            Toast.makeText(context, e.getMessage(), 1).show();
        }
    }
}
