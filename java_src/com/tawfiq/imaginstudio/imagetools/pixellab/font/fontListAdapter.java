package com.tawfiq.imaginstudio.imagetools.pixellab.font;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.tawfiq.imaginstudio.imagetools.pixellab.PinnedSectionListView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.TinyDB;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
class fontListAdapter extends ArrayAdapter<fontItem> implements PinnedSectionListView.PinnedSectionListAdapter {
    private int adapter_section;
    OnContentChangeListener changeListener;
    HashSet<String> collapsedSections;
    boolean hasActualItems;
    private AdapterCallback mAdapterCallback;

    /* loaded from: classes.dex */
    public interface AdapterCallback {
        void onFontClicked(String str);
    }

    /* loaded from: classes.dex */
    class FavoriteClickListener implements View.OnClickListener {
        final /* synthetic */ fontItem val$item;

        FavoriteClickListener(fontItem fontitem) {
            this.val$item = fontitem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            TinyDB tinyDB = new TinyDB(fontListAdapter.this.getContext());
            ArrayList<String> list = tinyDB.getList("favorite_fonts");
            String str2 = this.val$item.font_path;
            if (list.contains(str2)) {
                list.remove(str2);
                str = "تم الحذف من المفضلة";
            } else {
                list.add(str2);
                str = "تم الاضافة للمفضلة";
            }
            tinyDB.putList("favorite_fonts", list, true);
            Toast.makeText(fontListAdapter.this.getContext(), str, 0).show();
        }
    }

    /* loaded from: classes.dex */
    public interface OnContentChangeListener {
        void contentInvalidated();
    }

    /* loaded from: classes.dex */
    class SectionClickListener implements View.OnClickListener {
        final /* synthetic */ fontItem val$item;

        SectionClickListener(fontItem fontitem) {
            this.val$item = fontitem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            fontListAdapter.this.toggleSection(this.val$item.sectionPosition);
        }
    }

    public fontListAdapter(Context context, int i, AdapterCallback adapterCallback, OnContentChangeListener onContentChangeListener) {
        super(context, i);
        this.hasActualItems = false;
        this.mAdapterCallback = adapterCallback;
        this.changeListener = onContentChangeListener;
        this.collapsedSections = new HashSet<>();
    }

    public static ArrayList<String> getDirsImportFonts(Context context) {
        TinyDB tinyDB = new TinyDB(context);
        ArrayList<String> list = tinyDB.getList(fontFragment.USER_FONT_DIRS);
        Objects.toString(list);
        if (list.size() != 0) {
            return list;
        }
        putDefaultCustomFontDirs(context);
        return tinyDB.getList(fontFragment.USER_FONT_DIRS);
    }

    private boolean isSectionCollapsed(int i) {
        return new TinyDB(getContext()).getList("collapsed_font_sections").contains(String.valueOf(i));
    }

    public static void putDefaultCustomFontDirs(Context context) {
        TinyDB tinyDB = new TinyDB(context);
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath());
        arrayList.add(Environment.getExternalStorageDirectory() + "/fonts");
        tinyDB.putList(fontFragment.USER_FONT_DIRS, arrayList, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSection(final fontItem fontitem) {
        new AlertDialog.Builder(getContext()).setMessage(getContext().getString(R.string.confirm_removal) + fontitem.category_name).setTitle(R.string.confirm_operation).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                TinyDB tinyDB = new TinyDB(fontListAdapter.this.getContext());
                ArrayList<String> list = tinyDB.getList(fontFragment.USER_FONT_DIRS);
                list.remove(fontitem.category_name);
                tinyDB.putList(fontFragment.USER_FONT_DIRS, list, true);
                fontListAdapter.this.changeListener.contentInvalidated();
            }
        }).show();
    }

    @Override // android.widget.ArrayAdapter
    public void clear() {
        super.clear();
        this.hasActualItems = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    public void generateContentFor(int i) {
        int i2;
        int i3;
        String str;
        String string;
        Context context;
        int i4;
        boolean z;
        if (i == 1) {
            this.adapter_section = 1;
            Iterator<String> it = getDirsImportFonts(getContext()).iterator();
            while (it.hasNext()) {
                String next = it.next();
                File file = new File(next);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File[] listFiles = file.listFiles();
                fontItem fontitem = new fontItem(1, next, null, null, true);
                fontitem.listPosition = 0;
                fontitem.sectionPosition = 0;
                if (listFiles != null) {
                    int i5 = 1;
                    boolean z2 = false;
                    for (File file2 : listFiles) {
                        String fileExtension = commonFuncs.getFileExtension(file2);
                        String fileNameNoExtension = commonFuncs.getFileNameNoExtension(file2);
                        if (fileNameNoExtension.length() > 0 && fileExtension.length() > 0 && (fileExtension.equals("ttf") || fileExtension.equals("otf"))) {
                            fontItem fontitem2 = new fontItem(0, null, fileNameNoExtension, file2.getPath(), true);
                            fontitem2.sectionPosition = 0;
                            fontitem2.listPosition = i5;
                            i5++;
                            if (!z2) {
                                add(fontitem);
                                z2 = true;
                            }
                            add(fontitem2);
                            this.hasActualItems = true;
                        }
                    }
                }
            }
            return;
        }
        if (i != 0) {
            if (i != 2) {
                if (i == 3) {
                    this.adapter_section = 3;
                    ArrayList<String> list = new TinyDB(getContext()).getList("favorite_fonts");
                    if (list.isEmpty()) {
                        return;
                    }
                    Iterator<String> it2 = list.iterator();
                    int i6 = 0;
                    while (it2.hasNext()) {
                        String next2 = it2.next();
                        fontItem fontitem3 = new fontItem(0, null, next2.substring(next2.lastIndexOf("/") + 1, next2.lastIndexOf(".")), next2, false);
                        fontitem3.sectionPosition = 0;
                        fontitem3.listPosition = i6;
                        add(fontitem3);
                        this.hasActualItems = true;
                        i6++;
                    }
                    return;
                }
                return;
            }
            this.adapter_section = 2;
            TinyDB tinyDB = new TinyDB(getContext());
            ArrayList<String> list2 = tinyDB.getList(fontFragment.LAST_USED_FONT);
            ArrayList<String> list3 = tinyDB.getList(fontFragment.LAST_USED_USER_FONT);
            if (list2.isEmpty()) {
                i2 = 0;
            } else {
                Iterator<String> it3 = list2.iterator();
                int i7 = 0;
                while (it3.hasNext()) {
                    String next3 = it3.next();
                    String substring = next3.substring(next3.lastIndexOf("/") + 1, next3.lastIndexOf("."));
                    if (substring.startsWith("{")) {
                        if (substring.contains("{a}-")) {
                            string = getContext().getString(R.string.sample_arabic);
                        } else if (substring.contains("{t}-")) {
                            string = getContext().getString(R.string.sample_tamil);
                        } else if (substring.contains("{u}-")) {
                            substring = getContext().getString(R.string.sample_urdu);
                            str = substring;
                            fontItem fontitem4 = new fontItem(0, null, str, next3, false);
                            fontitem4.sectionPosition = 0;
                            fontitem4.listPosition = i7;
                            add(fontitem4);
                            this.hasActualItems = true;
                            i7++;
                        }
                        str = string;
                        fontItem fontitem42 = new fontItem(0, null, str, next3, false);
                        fontitem42.sectionPosition = 0;
                        fontitem42.listPosition = i7;
                        add(fontitem42);
                        this.hasActualItems = true;
                        i7++;
                    }
                    str = substring;
                    fontItem fontitem422 = new fontItem(0, null, str, next3, false);
                    fontitem422.sectionPosition = 0;
                    fontitem422.listPosition = i7;
                    add(fontitem422);
                    this.hasActualItems = true;
                    i7++;
                }
                i2 = i7;
            }
            if (list3.isEmpty()) {
                i3 = 1;
            } else {
                fontItem fontitem5 = new fontItem(1, getContext().getString(R.string.title_section3), null, null, false);
                fontitem5.listPosition = i2;
                i3 = 1;
                fontitem5.sectionPosition = 1;
                add(fontitem5);
                i2++;
            }
            Iterator<String> it4 = list3.iterator();
            while (it4.hasNext()) {
                String next4 = it4.next();
                fontItem fontitem6 = new fontItem(0, null, next4.substring(next4.lastIndexOf("/") + i3, next4.lastIndexOf(".")), next4, false);
                fontitem6.sectionPosition = 1;
                fontitem6.listPosition = i2;
                add(fontitem6);
                this.hasActualItems = true;
                i2++;
                i3 = 1;
            }
            return;
        }
        this.adapter_section = 0;
        AssetManager assets = getContext().getAssets();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open("fonts/توفيق الحضرمي")));
            String[] strArr = null;
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                } else {
                    strArr = readLine.split(";");
                }
            }
            bufferedReader.close();
            if (strArr != null) {
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                ?? r14 = strArr.length;
                while (i10 < r14) {
                    String str2 = strArr[i10];
                    String str3 = "fonts/" + str2;
                    String[] list4 = assets.list(str3);
                    AssetManager assetManager = assets;
                    fontItem fontitem7 = new fontItem(1, str2, null, null, false);
                    int i11 = i8 + 1;
                    fontitem7.listPosition = i8;
                    fontitem7.sectionPosition = i9;
                    add(fontitem7);
                    this.hasActualItems = true;
                    if (isSectionCollapsed(i9)) {
                        i8 = i11;
                    } else {
                        int length = list4.length;
                        i8 = i11;
                        int i12 = 0;
                        r14 = r14;
                        while (i12 < length) {
                            int i13 = length;
                            String str4 = list4[i12];
                            String[] strArr2 = list4;
                            String[] strArr3 = strArr;
                            String substring2 = str4.substring(0, str4.lastIndexOf("."));
                            boolean z3 = r14;
                            if (substring2.startsWith("{")) {
                                if (substring2.contains("{a}-")) {
                                    context = getContext();
                                    i4 = R.string.sample_arabic;
                                    z = r14;
                                } else if (substring2.contains("{t}-")) {
                                    context = getContext();
                                    i4 = R.string.sample_tamil;
                                    z = r14;
                                } else {
                                    boolean contains = substring2.contains("{u}-");
                                    z3 = contains;
                                    if (contains) {
                                        context = getContext();
                                        i4 = R.string.sample_urdu;
                                        z = contains;
                                    }
                                }
                                substring2 = context.getString(i4);
                                z3 = z;
                            }
                            fontItem fontitem8 = new fontItem(0, null, substring2, str3 + "/" + str4, false);
                            fontitem8.sectionPosition = i9;
                            int i14 = i8 + 1;
                            fontitem8.listPosition = i8;
                            add(fontitem8);
                            this.hasActualItems = true;
                            i12++;
                            i8 = i14;
                            length = i13;
                            list4 = strArr2;
                            strArr = strArr3;
                            r14 = z3;
                        }
                    }
                    i9++;
                    i10++;
                    assets = assetManager;
                    r14 = r14;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i).type;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater from;
        int i2;
        final fontItem item = getItem(i);
        if (view == null) {
            int i3 = item.type;
            if (i3 == 1) {
                from = LayoutInflater.from(getContext());
                i2 = R.layout.font_item_section;
            } else if (i3 == 0) {
                from = LayoutInflater.from(getContext());
                i2 = R.layout.font_item;
            }
            view = from.inflate(i2, viewGroup, false);
        }
        int i4 = item.type;
        if (i4 == 1) {
            ((TextView) view.findViewById(R.id.section_title)).setText(item.category_name);
            View findViewById = view.findViewById(R.id.deleteSection);
            if (item.deletable) {
                findViewById.setVisibility(0);
                findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        fontListAdapter.this.removeSection(item);
                    }
                });
            } else {
                findViewById.setVisibility(8);
            }
            view.setOnClickListener(new SectionClickListener(item));
        } else if (i4 == 0) {
            TextView textView = (TextView) view.findViewById(R.id.tvName);
            textView.setSingleLine(true);
            textView.setText(item.font_name);
            try {
                try {
                    textView.setTypeface(Typeface.createFromAsset(getContext().getAssets(), item.font_path));
                } catch (Exception unused) {
                    textView.setTypeface(Typeface.createFromFile(item.font_path));
                }
            } catch (Exception unused2) {
            }
            if (item.deletable) {
                ImageButton imageButton = (ImageButton) view.findViewById(R.id.delete_item);
                imageButton.setVisibility(0);
                imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(fontListAdapter.this.getContext());
                        builder.setTitle(fontListAdapter.this.getContext().getString(R.string.operation_confirmation));
                        builder.setMessage(R.string.question_delete_font);
                        builder.setPositiveButton(R.string.delete_font, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter.2.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i5) {
                                if (!Boolean.valueOf(new File(item.font_path).delete()).booleanValue()) {
                                    Toast.makeText(fontListAdapter.this.getContext(), R.string.font_delete_fail, 0).show();
                                    return;
                                }
                                Toast.makeText(fontListAdapter.this.getContext(), R.string.font_deleted, 0).show();
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                fontListAdapter.this.remove(item);
                                fontListAdapter.this.notifyDataSetChanged();
                            }
                        });
                        builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
                        builder.show();
                    }
                });
            }
            view.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (fontListAdapter.this.adapter_section == 0 || fontListAdapter.this.adapter_section == 1) {
                        TinyDB tinyDB = new TinyDB(fontListAdapter.this.getContext());
                        int i5 = fontListAdapter.this.adapter_section;
                        String str = fontFragment.LAST_USED_FONT;
                        ArrayList<String> list = tinyDB.getList(i5 == 0 ? fontFragment.LAST_USED_FONT : fontFragment.LAST_USED_USER_FONT);
                        list.remove(item.font_path);
                        list.add(0, item.font_path);
                        while (list.size() > 100) {
                            list.remove(list.size() - 1);
                        }
                        if (fontListAdapter.this.adapter_section != 0) {
                            str = fontFragment.LAST_USED_USER_FONT;
                        }
                        tinyDB.putList(str, list);
                    }
                    if (fontListAdapter.this.mAdapterCallback != null) {
                        fontListAdapter.this.mAdapterCallback.onFontClicked(item.font_path);
                    }
                }
            });
            view.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.font.fontListAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (fontListAdapter.this.adapter_section == 0 || fontListAdapter.this.adapter_section == 1) {
                        TinyDB tinyDB = new TinyDB(fontListAdapter.this.getContext());
                        int i5 = fontListAdapter.this.adapter_section;
                        String str = fontFragment.LAST_USED_FONT;
                        ArrayList<String> list = tinyDB.getList(i5 == 0 ? fontFragment.LAST_USED_FONT : fontFragment.LAST_USED_USER_FONT);
                        list.remove(item.font_path);
                        list.add(0, item.font_path);
                        while (list.size() > 100) {
                            list.remove(list.size() - 1);
                        }
                        if (fontListAdapter.this.adapter_section != 0) {
                            str = fontFragment.LAST_USED_USER_FONT;
                        }
                        tinyDB.putList(str, list);
                    }
                    if (fontListAdapter.this.mAdapterCallback != null) {
                        fontListAdapter.this.mAdapterCallback.onFontClicked(item.font_path);
                    }
                }
            });
            View findViewById2 = view.findViewById(2131400548);
            if (findViewById2 != null) {
                findViewById2.setOnClickListener(new FavoriteClickListener(item));
            }
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.PinnedSectionListView.PinnedSectionListAdapter
    public boolean isItemViewTypePinned(int i) {
        return i == 1;
    }

    public void onSectionAdded(fontItem fontitem, int i) {
    }

    public void prepareSections(int i) {
    }

    public void toggleSection(int i) {
        TinyDB tinyDB = new TinyDB(getContext());
        ArrayList<String> list = tinyDB.getList("collapsed_font_sections");
        String valueOf = String.valueOf(i);
        if (list.contains(valueOf)) {
            list.remove(valueOf);
        } else {
            list.add(valueOf);
        }
        tinyDB.putList("collapsed_font_sections", list, true);
        OnContentChangeListener onContentChangeListener = this.changeListener;
        if (onContentChangeListener != null) {
            onContentChangeListener.contentInvalidated();
        }
    }
}
