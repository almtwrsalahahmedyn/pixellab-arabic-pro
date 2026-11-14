package com.tawfiq.imaginstudio.imagetools.pixellab.font;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.tawfiq.imaginstudio.imagetools.pixellab.PinnedSectionListView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.TinyDB;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.FileChooserDialog;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textSelector;
import com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class fontFragment extends Fragment implements fontListAdapter.AdapterCallback, Serializable {
    public static final transient String ARG_SECTION_NUMBER = "section_number";
    public static final transient String LAST_USED_FONT = "last_fonts";
    public static final transient String LAST_USED_USER_FONT = "last_userFonts";
    public static final transient int SECTION_FONTS = 0;
    public static final transient int SECTION_RECENT = 2;
    public static final transient int SECTION_USER_FONTS = 1;
    public static final transient String USER_FONT_DIRS = "userFontDirs";
    private transient View addFontsButton;
    private transient View changeDirsButton;
    private transient View clearSearch;
    private transient boolean fontListInvalidated;
    transient fontListAdapter listAdapter;
    transient PinnedSectionListView listView;
    private transient textSelector referenceToText;
    transient View rootView;
    private transient EditText searchBar;
    transient TextView warningFonts;
    transient TextView warningUserFonts;

    private void copyFontToStorage(File file, Uri uri) {
        try {
            StringBuilder sb = new StringBuilder();
            getContext();
            sb.append(Environment.getExternalStorageDirectory());
            sb.append("/fonts");
            File file2 = new File(sb.toString(), file.getName());
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("Cannot create dir " + parentFile.getAbsolutePath());
            }
            InputStream openInputStream = getContext().getContentResolver().openInputStream(uri);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = openInputStream.read(bArr);
                if (read <= 0) {
                    openInputStream.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    private void copyFontsToStorage(ArrayList<File> arrayList) {
        StringBuilder sb = new StringBuilder();
        getContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/fonts");
        String sb2 = sb.toString();
        Iterator<File> it = arrayList.iterator();
        while (it.hasNext()) {
            File next = it.next();
            try {
                commonFuncs.copyDirectory(next, new File(sb2, next.getName()));
            } catch (Exception e) {
                e.printStackTrace();
                e.getMessage();
            }
        }
        reloadFonts();
    }

    public static void hideKeyboardFrom(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static fontFragment newInstance(int i, textSelector textselector) {
        fontFragment fontfragment = new fontFragment();
        fontfragment.setReferenceToText(textselector);
        Bundle bundle = new Bundle();
        bundle.putInt(ARG_SECTION_NUMBER, i);
        fontfragment.setArguments(bundle);
        return fontfragment;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (intent == null || i != 444) {
            return;
        }
        intent.toString();
        ClipData clipData = intent.getClipData();
        if (intent.getData() != null) {
            Uri data = intent.getData();
            copyFontToStorage(new File(data.getPath()), data);
            return;
        }
        for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
            Uri uri = clipData.getItemAt(i3).getUri();
            copyFontToStorage(new File(uri.getPath()), uri);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View inflate = layoutInflater.inflate(R.layout.fragment_font_select, viewGroup, false);
        this.rootView = inflate;
        this.listView = (PinnedSectionListView) inflate.findViewById(R.id.font_listView);
        this.warningUserFonts = (TextView) this.rootView.findViewById(R.id.textview_warning_no_user_fonts);
        this.warningFonts = (TextView) this.rootView.findViewById(R.id.textview_warning_no_fonts);
        this.searchBar = (EditText) this.rootView.findViewById(R.id.searchFontsText);
        this.changeDirsButton = this.rootView.findViewById(R.id.changeFontDirs);
        View findViewById = this.rootView.findViewById(R.id.addFonts);
        this.addFontsButton = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.OPEN_DOCUMENT");
                intent.addCategory("android.intent.category.OPENABLE");
                intent.setType("font/ttf");
                intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                fontFragment.this.startActivityForResult(intent, 444);
            }
        });
        this.changeDirsButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new FileChooserDialog(fontFragment.this.getActivity(), FileChooserDialog.ChooserType.DIRECTORY_CHOOSER, null, fontFragment.this.getString(R.string.add_directory), null, new String[]{"ttf", "otf"}, R.drawable.file_picker_font, R.drawable.file_picker_folder, new FileChooserDialog.ChooserListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontFragment.2.1
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.FileChooserDialog.ChooserListener
                    public void onFileSelected(File file) {
                    }

                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.FileChooserDialog.ChooserListener
                    public void onSelectFiles(String str, ArrayList<File> arrayList) {
                        StringBuilder sb = new StringBuilder();
                        fontFragment.this.getContext();
                        sb.append(Environment.getExternalStorageDirectory());
                        sb.append("/fonts");
                        if (str.equals(sb.toString())) {
                            return;
                        }
                        TinyDB tinyDB = new TinyDB(fontFragment.this.getContext());
                        ArrayList<String> list = tinyDB.getList(fontFragment.USER_FONT_DIRS);
                        list.remove(str);
                        list.add(0, str);
                        tinyDB.putList(fontFragment.USER_FONT_DIRS, list, true);
                        fontFragment.this.reloadFonts();
                    }
                }).show();
            }
        });
        View findViewById2 = this.rootView.findViewById(R.id.clearSearchFont);
        this.clearSearch = findViewById2;
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                fontFragment.this.searchBar.getText().clear();
                fontFragment.hideKeyboardFrom(fontFragment.this.getActivity(), fontFragment.this.searchBar);
            }
        });
        this.searchBar.addTextChangedListener(new TextWatcher() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontFragment.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                View view;
                int i;
                if (editable.length() > 0) {
                    view = fontFragment.this.clearSearch;
                    i = 0;
                } else {
                    view = fontFragment.this.clearSearch;
                    i = 8;
                }
                view.setVisibility(i);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                fontFragment.this.listAdapter.getFilter().filter(charSequence);
            }
        });
        this.rootView.findViewById(R.id.custom_fonts_options).setVisibility(getArguments().getInt(ARG_SECTION_NUMBER, 0) == 1 ? 0 : 0);
        fontListAdapter fontlistadapter = new fontListAdapter(getActivity(), 0, this, new fontListAdapter.OnContentChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontFragment.5
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter.OnContentChangeListener
            public void contentInvalidated() {
                fontFragment.this.reloadFonts();
            }
        });
        this.listAdapter = fontlistadapter;
        this.listView.setAdapter((ListAdapter) fontlistadapter);
        return this.rootView;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter.AdapterCallback
    public void onFontClicked(String str) {
        this.referenceToText.setFontToSelected(str);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.fontListInvalidated = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getArguments().getInt(ARG_SECTION_NUMBER) == 1 && this.fontListInvalidated) {
            reloadFonts();
            this.fontListInvalidated = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        reloadFonts();
    }

    public void reloadFonts() {
        TextView textView;
        TextView textView2;
        this.listAdapter.clear();
        int i = getArguments().getInt(ARG_SECTION_NUMBER);
        if (i == 0) {
            this.listAdapter.generateContentFor(0);
            if (this.listAdapter.isEmpty() || !this.listAdapter.hasActualItems) {
                textView = this.warningFonts;
                textView.setVisibility(0);
            } else {
                textView2 = this.warningFonts;
                textView2.setVisibility(8);
            }
        }
        if (i != 1) {
            if (i == 3) {
                this.listAdapter.generateContentFor(3);
                return;
            } else {
                if (i != 2) {
                    return;
                }
                this.listAdapter.generateContentFor(2);
                return;
            }
        }
        this.listAdapter.generateContentFor(1);
        if (!this.listAdapter.isEmpty() && this.listAdapter.hasActualItems) {
            textView2 = this.warningUserFonts;
            textView2.setVisibility(8);
        } else {
            fontListAdapter.getDirsImportFonts(getActivity());
            textView = this.warningUserFonts;
            textView.setVisibility(0);
        }
    }

    public void setReferenceToText(textSelector textselector) {
        this.referenceToText = textselector;
    }
}
