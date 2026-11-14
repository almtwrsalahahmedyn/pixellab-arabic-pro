package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.fragment.app.FragmentManager;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.FileChooserDialog;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class projectsBrowser extends Dialog {
    static final int SORT_DATE_ASC = 1;
    static final int SORT_DATE_DESC = 0;
    static final int SORT_NAME_ASC = 3;
    static final int SORT_NAME_DESC = 2;
    ProjectListAdapter adapter;
    int currentSort;
    ListView holder;
    private final boolean pickPLP;
    projectPickEvent projectEvent;
    View v;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass6 implements TextWatcher {
        public AnonymousClass6() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            projectsBrowser.this.adapter.getFilter().filter(charSequence.toString());
        }
    }

    /* loaded from: classes.dex */
    public interface ProjectAdapterListener {
        void projectClicked(String str);

        void projectDelete(String str, boolean z);

        void projectShare(File file);
    }

    /* loaded from: classes.dex */
    public class ProjectItem {
        File projectDir;

        public ProjectItem(File file) {
            this.projectDir = file;
        }

        public String toString() {
            File file = this.projectDir;
            return file != null ? file.getName() : "";
        }
    }

    /* loaded from: classes.dex */
    public class ProjectListAdapter extends ArrayAdapter<ProjectItem> {
        ProjectAdapterListener listener;

        public ProjectListAdapter(Context context, ProjectAdapterListener projectAdapterListener) {
            super(context, 0);
            this.listener = projectAdapterListener;
        }

        private long getFolderSize(File file) {
            long j = 0;
            if (file == null || !file.exists()) {
                return 0L;
            }
            if (!file.isDirectory()) {
                return file.length();
            }
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return 0L;
            }
            for (File file2 : listFiles) {
                j += getFolderSize(file2);
            }
            return j;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            final ProjectItem item = getItem(i);
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(R.layout.project_item, viewGroup, false);
            }
            if (item != null) {
                ((TextView) view.findViewById(R.id.project_item_text)).setText(item.projectDir.getName());
                TextView textView = (TextView) view.findViewById(R.id.custom_indicator);
                if (textView != null) {
                    double folderSize = getFolderSize(item.projectDir);
                    textView.setText(folderSize >= 1048576.0d ? String.format("%.2f MB", Double.valueOf(folderSize / 1048576.0d)) : String.format("%.1f KB", Double.valueOf(folderSize / 1024.0d)));
                }
                view.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.ProjectListAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ProjectAdapterListener projectAdapterListener = ProjectListAdapter.this.listener;
                        if (projectAdapterListener != null) {
                            projectAdapterListener.projectClicked(item.projectDir.getAbsolutePath());
                        }
                    }
                });
                view.findViewById(R.id.project_share).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.ProjectListAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ProjectAdapterListener projectAdapterListener = ProjectListAdapter.this.listener;
                        if (projectAdapterListener != null) {
                            projectAdapterListener.projectShare(item.projectDir);
                        }
                    }
                });
                view.findViewById(R.id.project_delete).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.ProjectListAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ProjectListAdapter projectListAdapter = ProjectListAdapter.this;
                        if (projectListAdapter.listener != null) {
                            String string = projectListAdapter.getContext().getString(R.string.preset_delete_confirm);
                            AlertDialog.Builder builder = new AlertDialog.Builder(ProjectListAdapter.this.getContext());
                            builder.setTitle(ProjectListAdapter.this.getContext().getString(R.string.confirm_operation));
                            builder.setMessage(string);
                            builder.setNegativeButton(android.R.string.no, (DialogInterface.OnClickListener) null);
                            builder.setPositiveButton(ProjectListAdapter.this.getContext().getString(android.R.string.yes), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.ProjectListAdapter.3.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i2) {
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    ProjectListAdapter.this.listener.projectDelete(item.projectDir.getAbsolutePath(), ProjectListAdapter.this.getCount() == 1);
                                    AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                                    ProjectListAdapter.this.remove(item);
                                    ProjectListAdapter.this.notifyDataSetChanged();
                                }
                            });
                            builder.show();
                        }
                    }
                });
                View findViewById = view.findViewById(R.id.project_share_external);
                if (findViewById != null) {
                    findViewById.setOnClickListener(new ShareExternalClickListener(this, item));
                }
                View findViewById2 = view.findViewById(R.id.objectBrowser_rename);
                if (findViewById2 != null) {
                    findViewById2.setOnClickListener(new RenameProjectDialog(this, item));
                }
                Bitmap decodeFile = BitmapFactory.decodeFile(new File(item.projectDir, "thumb").getAbsolutePath());
                if (decodeFile != null && decodeFile.getWidth() > 0 && decodeFile.getHeight() > 0) {
                    ((ImageView) view.findViewById(R.id.project_thumb)).setImageBitmap(decodeFile);
                }
            }
            return view;
        }
    }

    /* loaded from: classes.dex */
    public class ProjectsCompare implements Comparator<ProjectItem> {
        private ProjectsCompare() {
        }

        @Override // java.util.Comparator
        public int compare(ProjectItem projectItem, ProjectItem projectItem2) {
            int i = projectsBrowser.this.currentSort;
            if (i != 1 && i != 0) {
                return (i == 3 ? 1 : -1) * ((int) Math.signum(projectItem.projectDir.getName().compareTo(projectItem2.projectDir.getName())));
            }
            int i2 = i == 1 ? 1 : -1;
            if (projectItem.projectDir.lastModified() > projectItem2.projectDir.lastModified()) {
                r1 = 1;
            } else if (projectItem.projectDir.lastModified() >= projectItem2.projectDir.lastModified()) {
                r1 = 0;
            }
            return i2 * r1;
        }
    }

    /* loaded from: classes.dex */
    public class SearchTextWatcher implements TextWatcher {
        public SearchTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (projectsBrowser.this.adapter != null) {
                projectsBrowser.this.adapter.getFilter().filter(charSequence);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface projectPickEvent {
        void loadProject(String str);

        void removeProject(String str);
    }

    public projectsBrowser(Context context, boolean z, FragmentManager fragmentManager, projectPickEvent projectpickevent) {
        super(context);
        this.currentSort = 0;
        this.projectEvent = projectpickevent;
        this.pickPLP = z;
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void openPLP(File file, boolean z) {
        if (file.getName().toLowerCase().endsWith(".psd")) {
            PsdProjectImporter.importPsdFile(getContext(), file, this.projectEvent, z);
            dismiss();
            return;
        }
        StringBuilder sb = new StringBuilder();
        getContext();
        sb.append(Environment.getExternalStorageDirectory().toString());
        sb.append("/pixelLab/presets");
        File returnAvailableFile = commonFuncs.returnAvailableFile(new File(sb.toString()), commonFuncs.getFileNameNoExtension(file));
        commonFuncs.unzipFile(file, returnAvailableFile);
        this.projectEvent.loadProject(returnAvailableFile.getAbsolutePath());
        if (!z) {
            this.projectEvent.removeProject(returnAvailableFile.getAbsolutePath());
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void showPLPPicker() {
        new FileChooserDialog(getContext(), FileChooserDialog.ChooserType.FILE_CHOOSER, getContext().getString(R.string.open_plp_file), null, Environment.getExternalStorageDirectory().getAbsolutePath(), new String[]{"plp"}, R.drawable.ic_plab_file, R.drawable.file_picker_folder, new FileChooserDialog.ChooserListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.5
            /* JADX WARN: Type inference failed for: r1v0, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            /* JADX WARN: Type inference failed for: r1v5, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.FileChooserDialog.ChooserListener
            public void onFileSelected(final File file) {
                new AlertDialog.Builder(projectsBrowser.this.getContext()).setMessage(R.string.also_add).setTitle("opening project : " + file.getName()).setPositiveButton(projectsBrowser.this.getContext().getString(R.string.open_add), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.5.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        projectsBrowser.this.openPLP(file, true);
                    }
                }).setNegativeButton(R.string.open_only, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.5.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        projectsBrowser.this.openPLP(file, false);
                    }
                }).show();
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.FileChooserDialog.ChooserListener
            public void onSelectFiles(String str, ArrayList<File> arrayList) {
            }
        }).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateUserPresets(ProjectListAdapter projectListAdapter) {
        projectListAdapter.clear();
        List<File> dirLists = getDirLists(new File(Environment.getExternalStorageDirectory().getAbsoluteFile() + "/pixelLab/presets"));
        StringBuilder sb = new StringBuilder();
        getContext();
        sb.append(Environment.getExternalStorageDirectory().toString());
        sb.append("/presets");
        List<File> dirLists2 = getDirLists(new File(sb.toString()));
        Iterator<File> it = dirLists.iterator();
        while (it.hasNext()) {
            dirLists2.add(it.next());
        }
        for (File file : dirLists2) {
            if (file.isDirectory() && !new File(file, "deleted").exists() && new File(file, "data.plab").exists()) {
                projectListAdapter.add(new ProjectItem(file));
            }
        }
        projectListAdapter.sort(new ProjectsCompare());
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        View view;
        super.onCreate(bundle);
        getWindow().setLayout(-1, -1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().setFlags(1024, 1024);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.projects_browser, (ViewGroup) null);
        this.v = inflate;
        setContentView(inflate);
        ListView listView = (ListView) this.v.findViewById(R.id.InsertProjects);
        this.holder = listView;
        listView.setDivider(null);
        this.holder.setDividerHeight(0);
        this.v.findViewById(R.id.objectBrowser_ok).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.1
            /* JADX WARN: Type inference failed for: r1v1, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                projectsBrowser.this.dismiss();
            }
        });
        this.v.findViewById(R.id.objectBrowser_sort).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.2
            /* JADX WARN: Type inference failed for: r0v0, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            /* JADX WARN: Type inference failed for: r0v2, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            /* JADX WARN: Type inference failed for: r1v1, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            /* JADX WARN: Type inference failed for: r2v1, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            /* JADX WARN: Type inference failed for: r3v1, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AlertDialog.Builder builder = new AlertDialog.Builder(projectsBrowser.this.getContext());
                builder.setSingleChoiceItems(new String[]{projectsBrowser.this.getContext().getString(R.string.date_desc), projectsBrowser.this.getContext().getString(R.string.date_asc), projectsBrowser.this.getContext().getString(R.string.name_desc), projectsBrowser.this.getContext().getString(R.string.name_asc)}, projectsBrowser.this.currentSort, (DialogInterface.OnClickListener) null);
                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        projectsBrowser.this.currentSort = ((AlertDialog) dialogInterface).getListView().getCheckedItemPosition();
                        projectsBrowser projectsbrowser = projectsBrowser.this;
                        projectsbrowser.adapter.sort(new ProjectsCompare());
                        projectsBrowser.this.adapter.notifyDataSetChanged();
                    }
                });
                builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
                builder.show();
            }
        });
        ProjectListAdapter projectListAdapter = new ProjectListAdapter(this.v.getContext(), new ProjectAdapterListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.3
            /* JADX WARN: Type inference failed for: r2v1, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.ProjectAdapterListener
            public void projectClicked(String str) {
                projectsBrowser.this.projectEvent.loadProject(str);
                projectsBrowser.this.dismiss();
            }

            /* JADX WARN: Type inference failed for: r2v1, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.ProjectAdapterListener
            public void projectDelete(String str, boolean z) {
                projectsBrowser.this.projectEvent.removeProject(str);
                if (z) {
                    projectsBrowser.this.dismiss();
                }
            }

            /* JADX WARN: Type inference failed for: r0v7, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            /* JADX WARN: Type inference failed for: r1v10, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            /* JADX WARN: Type inference failed for: r6v3, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            /* JADX WARN: Type inference failed for: r6v6, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.ProjectAdapterListener
            public void projectShare(File file) {
                File file2 = new File(Environment.getExternalStorageDirectory() + File.separator + "pixelLab");
                file2.mkdirs();
                File returnAvailableFile = commonFuncs.returnAvailableFile(file2, file.getName() + ".plp");
                if (!commonFuncs.zipFolder(file.getAbsolutePath(), returnAvailableFile.getAbsolutePath())) {
                    Toast.makeText(projectsBrowser.this.getContext(), R.string.saving_failed, 0).show();
                    return;
                }
                Toast.makeText(projectsBrowser.this.getContext(), "تم حفظ المشروع: " + returnAvailableFile.getName(), 0).show();
                try {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("*/*");
                    Context context = projectsBrowser.this.getContext();
                    intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(context, context.getPackageName() + ".provider", returnAvailableFile));
                    intent.addFlags(1);
                    Intent createChooser = Intent.createChooser(intent, "مشاركة المشروع عبر...");
                    createChooser.addFlags(268435456);
                    projectsBrowser.this.getContext().startActivity(createChooser);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        this.adapter = projectListAdapter;
        updateUserPresets(projectListAdapter);
        this.holder.setAdapter((ListAdapter) this.adapter);
        this.v.findViewById(R.id.objectBrowser_open).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                projectsBrowser.this.showPLPPicker();
            }
        });
        EditText editText = (EditText) this.v.findViewById(R.id.search_projects);
        if (editText != null) {
            editText.setFocusable(true);
            editText.setFocusableInTouchMode(true);
            editText.requestFocus();
            editText.addTextChangedListener(new SearchTextWatcher());
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(32);
        }
        int i = getContext().getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
        if (editText != null && (view = (View) editText.getParent()) != null) {
            view.setBackgroundColor(i);
        }
        View view2 = this.v;
        if (view2 != null) {
            View findViewById = view2.findViewById(R.id.objectBrowser_ok);
            if (findViewById != null) {
                View view3 = (View) findViewById.getParent();
                if (view3 != null) {
                    view3.setBackgroundColor(i);
                }
                View view4 = (View) view3.getParent();
                if (view4 != null) {
                    view4.setBackgroundColor(i);
                }
            }
            if (findViewById != null) {
                findViewById.setBackgroundColor(i);
            }
            View findViewById2 = view2.findViewById(R.id.objectBrowser_sort);
            if (findViewById2 != null) {
                findViewById2.setBackgroundColor(i);
            }
            View findViewById3 = view2.findViewById(R.id.objectBrowser_open);
            if (findViewById3 != null) {
                findViewById3.setBackgroundColor(i);
            }
        }
        if (this.pickPLP) {
            try {
                showPLPPicker();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
