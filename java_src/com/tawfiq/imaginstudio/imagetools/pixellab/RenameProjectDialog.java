package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser;
import java.io.File;

/* loaded from: classes.dex */
public class RenameProjectDialog implements View.OnClickListener {
    public projectsBrowser.ProjectListAdapter adapter;
    public projectsBrowser.ProjectItem item;

    public RenameProjectDialog(projectsBrowser.ProjectListAdapter projectListAdapter, projectsBrowser.ProjectItem projectItem) {
        this.adapter = projectListAdapter;
        this.item = projectItem;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        final Context context = this.adapter.getContext();
        final EditText editText = new EditText(context);
        editText.setText(this.item.projectDir.getName());
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle("تعديل اسم المشروع");
        builder.setView(editText);
        builder.setPositiveButton("حفظ", new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.RenameProjectDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String trim = editText.getText().toString().trim();
                if (trim.isEmpty()) {
                    return;
                }
                File file = RenameProjectDialog.this.item.projectDir;
                File file2 = new File(file.getParentFile(), trim);
                if (!file.renameTo(file2)) {
                    Toast.makeText(context, "فشل تعديل الاسم", 0).show();
                    return;
                }
                RenameProjectDialog.this.item.projectDir = file2;
                RenameProjectDialog.this.adapter.notifyDataSetChanged();
                Toast.makeText(context, "تم تعديل الاسم بنجاح", 0).show();
            }
        });
        builder.setNegativeButton("إلغاء", (DialogInterface.OnClickListener) null);
        builder.show();
    }
}
