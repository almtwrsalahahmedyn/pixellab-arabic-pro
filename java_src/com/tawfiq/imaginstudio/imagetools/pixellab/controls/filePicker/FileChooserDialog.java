package com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.AdapterHelper;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.ItemHolder;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public class FileChooserDialog extends AlertDialog implements ItemHolder.OnItemClickListener, View.OnClickListener {
    ArrayList<Item> allCurrentItems;
    private ImageButton btnPrevDir;
    Button btnSelectDir;
    ArrayList<File> checkedItems;
    private ChooserListener chooserListener;
    private ChooserType chooserType;
    private String currentDirPath;
    private int directoryIconId;
    private String doneText;
    private Drawable drawableDir;
    private Drawable drawableFile;
    private String[] fileFormats;
    private int fileIconId;
    private String initDir;
    private ItemsAdapter itemsAdapter;
    private RecyclerView rvItems;
    private String title;
    private TextView tvCurrentDir;
    private TextView tvSelectedCount;

    /* loaded from: classes.dex */
    public interface ChooserListener {
        void onFileSelected(File file);

        void onSelectFiles(String str, ArrayList<File> arrayList);
    }

    /* loaded from: classes.dex */
    public enum ChooserType {
        FILES_CHOOSER,
        DIRECTORY_CHOOSER,
        FILE_CHOOSER
    }

    /* loaded from: classes.dex */
    public class KeyboardClickListener implements View.OnClickListener {
        final EditText editText;

        public KeyboardClickListener(EditText editText) {
            this.editText = editText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.editText.requestFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) FileChooserDialog.this.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(this.editText, 1);
            }
        }
    }

    /* loaded from: classes.dex */
    public class SearchWatcher implements TextWatcher {
        public SearchWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            FileChooserDialog.this.filterFiles(charSequence != null ? charSequence.toString() : "");
        }
    }

    /* loaded from: classes.dex */
    public class TouchInputListener implements View.OnTouchListener {
        public TouchInputListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1) {
                return false;
            }
            view.requestFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) FileChooserDialog.this.getContext().getSystemService("input_method");
            if (inputMethodManager == null) {
                return false;
            }
            inputMethodManager.toggleSoftInput(2, 0);
            return false;
        }
    }

    public FileChooserDialog(Context context, ChooserType chooserType, String str, String str2, String str3, String[] strArr, int i, int i2, ChooserListener chooserListener) {
        super(context, 0);
        this.fileIconId = R.drawable.file_picker_file;
        this.directoryIconId = R.drawable.file_picker_folder;
        this.checkedItems = new ArrayList<>();
        this.chooserType = chooserType;
        this.title = str;
        this.fileFormats = strArr;
        this.fileIconId = i;
        this.directoryIconId = i2;
        this.initDir = str3;
        this.doneText = str2;
        this.chooserListener = chooserListener;
    }

    private void findViews(View view) {
        this.rvItems = (RecyclerView) view.findViewById(R.id.items_recyclerview);
        this.btnPrevDir = (ImageButton) view.findViewById(R.id.previous_dir_imagebutton);
        this.btnSelectDir = (Button) view.findViewById(R.id.select_dir_button);
        this.tvCurrentDir = (TextView) view.findViewById(R.id.current_dir_textview);
        this.tvSelectedCount = (TextView) view.findViewById(R.id.selected_files_count);
    }

    private void loadItems(String str) {
        this.currentDirPath = str;
        str.substring(str.lastIndexOf("/") + 1);
        this.tvCurrentDir.setText(str);
        File[] listFiles = new File(str).listFiles(new FileFilter() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.FileChooserDialog.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                if (!file.canRead()) {
                    return false;
                }
                if (FileChooserDialog.this.fileFormats == null || FileChooserDialog.this.fileFormats.length <= 0 || !file.isFile()) {
                    return file.isDirectory() && !file.getName().startsWith(".");
                }
                if (FileChooserDialog.this.fileFormats == null) {
                    return true;
                }
                String fileExtension = commonFuncs.getFileExtension(file);
                if (fileExtension.length() > 1) {
                    for (String str2 : FileChooserDialog.this.fileFormats) {
                        if (fileExtension.equals(str2)) {
                            return true;
                        }
                    }
                }
                return false;
            }
        });
        ArrayList<Item> arrayList = new ArrayList<>();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            arrayList.add(new Item(file.getPath(), file.isFile() ? this.drawableFile : this.drawableDir, !file.isDirectory()));
        }
        Collections.sort(arrayList);
        this.allCurrentItems = arrayList;
        this.itemsAdapter.setItems(arrayList);
    }

    private void searchDirectoryRecursively(File file, String str, ArrayList<Item> arrayList, int i) {
        if (i <= 2 && file != null && file.exists() && file.isDirectory() && !file.getName().equalsIgnoreCase("Android")) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    return;
                }
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        searchDirectoryRecursively(file2, str, arrayList, i + 1);
                    } else {
                        String lowerCase = file2.getName().toLowerCase();
                        if ((lowerCase.endsWith(".plp") || lowerCase.endsWith(".ttf") || lowerCase.endsWith(".otf") || lowerCase.endsWith(".psd")) && lowerCase.contains(str)) {
                            arrayList.add(new Item(file2.getPath(), this.drawableFile, lowerCase.endsWith(".ttf") || lowerCase.endsWith(".otf")));
                            if (arrayList.size() >= 1000) {
                                return;
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private void setListeners() {
        this.btnPrevDir.setOnClickListener(this);
        this.btnSelectDir.setOnClickListener(this);
    }

    public void filterFiles(String str) {
        if (this.allCurrentItems == null) {
            return;
        }
        if (str == null || str.trim().isEmpty()) {
            this.itemsAdapter.setItems(this.allCurrentItems);
            return;
        }
        if (str.trim().length() < 2) {
            return;
        }
        String lowerCase = str.toLowerCase();
        ArrayList<Item> arrayList = new ArrayList<>();
        searchDirectoryRecursively(new File(this.currentDirPath), lowerCase, arrayList, 0);
        Collections.sort(arrayList);
        this.itemsAdapter.setItems(arrayList);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.previous_dir_imagebutton) {
            String parent = new File(this.currentDirPath).getParent();
            if (parent != null) {
                loadItems(parent);
                return;
            }
            return;
        }
        if (id == R.id.select_dir_button) {
            ChooserListener chooserListener = this.chooserListener;
            if (chooserListener != null) {
                ArrayList<File> arrayList = this.checkedItems;
                if (arrayList == null || arrayList.isEmpty()) {
                    chooserListener.onSelectFiles(this.currentDirPath, this.checkedItems);
                } else {
                    Iterator<File> it = this.checkedItems.iterator();
                    while (it.hasNext()) {
                        File next = it.next();
                        this.chooserListener.onFileSelected(next);
                        chooserListener.onSelectFiles(next.getParent(), this.checkedItems);
                    }
                }
            }
            dismiss();
        }
    }

    @Override // androidx.appcompat.app.AlertDialog, androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
        } catch (Exception unused) {
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.filepicker_fragment, (ViewGroup) null);
        setContentView(inflate);
        findViews(inflate);
        setListeners();
        String str = this.title;
        if (str != null && !str.isEmpty()) {
            inflate.findViewById(R.id.filepicker_title).setVisibility(0);
            ((TextView) inflate.findViewById(R.id.filepicker_title)).setText(this.title);
        }
        String str2 = this.doneText;
        if (str2 != null) {
            this.btnSelectDir.setText(str2);
        } else {
            this.btnSelectDir.setVisibility(8);
        }
        this.itemsAdapter = new ItemsAdapter(this, this);
        RecyclerView recyclerView = this.rvItems;
        inflate.getContext();
        recyclerView.setLayoutManager(new LinearLayoutManager());
        RecyclerView recyclerView2 = this.rvItems;
        ItemsAdapter itemsAdapter = this.itemsAdapter;
        recyclerView2.suppressLayout(false);
        RecyclerView.Adapter adapter = recyclerView2.mAdapter;
        RecyclerView.RecyclerViewDataObserver recyclerViewDataObserver = recyclerView2.mObserver;
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(recyclerViewDataObserver);
            recyclerView2.mAdapter.onDetachedFromRecyclerView(recyclerView2);
        }
        DefaultItemAnimator defaultItemAnimator = recyclerView2.mItemAnimator;
        if (defaultItemAnimator != null) {
            defaultItemAnimator.endAnimations();
        }
        RecyclerView.LayoutManager layoutManager = recyclerView2.mLayout;
        RecyclerView.Recycler recycler = recyclerView2.mRecycler;
        if (layoutManager != null) {
            layoutManager.removeAndRecycleAllViews(recycler);
            recyclerView2.mLayout.removeAndRecycleScrapInt(recycler);
        }
        recycler.mAttachedScrap.clear();
        recycler.recycleAndClearCachedViews();
        AdapterHelper adapterHelper = recyclerView2.mAdapterHelper;
        adapterHelper.recycleUpdateOpsAndClearList(adapterHelper.mPendingUpdates);
        adapterHelper.recycleUpdateOpsAndClearList(adapterHelper.mPostponedList);
        adapterHelper.mExistingUpdateTypes = 0;
        RecyclerView.Adapter adapter2 = recyclerView2.mAdapter;
        recyclerView2.mAdapter = itemsAdapter;
        if (itemsAdapter != null) {
            itemsAdapter.registerAdapterDataObserver(recyclerViewDataObserver);
            itemsAdapter.onAttachedToRecyclerView(recyclerView2);
        }
        RecyclerView.Adapter adapter3 = recyclerView2.mAdapter;
        recycler.mAttachedScrap.clear();
        recycler.recycleAndClearCachedViews();
        if (recycler.mRecyclerPool == null) {
            recycler.mRecyclerPool = new RecyclerView.RecycledViewPool();
        }
        RecyclerView.RecycledViewPool recycledViewPool = recycler.mRecyclerPool;
        if (adapter2 != null) {
            recycledViewPool.mAttachCount--;
        }
        if (recycledViewPool.mAttachCount == 0) {
            int i = 0;
            while (true) {
                SparseArray sparseArray = recycledViewPool.mScrap;
                if (i >= sparseArray.size()) {
                    break;
                }
                ((RecyclerView.RecycledViewPool.ScrapData) sparseArray.valueAt(i)).mScrapHeap.clear();
                i++;
            }
        }
        if (adapter3 != null) {
            recycledViewPool.mAttachCount++;
        }
        recyclerView2.mState.mStructureChanged = true;
        recyclerView2.processDataSetCompletelyChanged(false);
        recyclerView2.requestLayout();
        this.drawableDir = ContextCompat.getDrawable(inflate.getContext(), this.directoryIconId);
        this.drawableFile = ContextCompat.getDrawable(inflate.getContext(), this.fileIconId);
        String str3 = this.initDir;
        if (str3 == null) {
            str3 = Environment.getExternalStorageDirectory().getPath();
        }
        loadItems(str3);
        Window window = getWindow();
        if (window != null) {
            window.clearFlags(131080);
            window.setSoftInputMode(16);
        }
        EditText editText = (EditText) findViewById(R.id.edit_query);
        if (editText != null) {
            editText.setFocusable(true);
            editText.setFocusableInTouchMode(true);
            editText.addTextChangedListener(new SearchWatcher());
            editText.setOnTouchListener(new TouchInputListener());
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.ItemHolder.OnItemClickListener
    public void onItemCheck(Item item) {
        this.checkedItems.add(item);
        this.tvSelectedCount.setVisibility(0);
        this.tvSelectedCount.setText("" + this.checkedItems.size());
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.ItemHolder.OnItemClickListener
    public void onItemClick(Item item) {
        if (item.isDirectory()) {
            loadItems(item.getPath());
            return;
        }
        ChooserListener chooserListener = this.chooserListener;
        if (chooserListener != null) {
            chooserListener.onFileSelected(item);
            ArrayList<File> arrayList = new ArrayList<>();
            arrayList.add(item);
            this.chooserListener.onSelectFiles(item.getParent(), arrayList);
        }
        dismiss();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.ItemHolder.OnItemClickListener
    public void onItemUnCheck(Item item) {
        this.checkedItems.remove(item);
        this.tvSelectedCount.setVisibility(0);
        this.tvSelectedCount.setText("" + this.checkedItems.size());
    }

    public boolean shouldCheckItem(File file) {
        return this.checkedItems.contains(file);
    }
}
