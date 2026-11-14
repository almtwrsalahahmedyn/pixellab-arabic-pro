package com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.ItemHolder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ItemsAdapter extends RecyclerView.Adapter {
    private ItemHolder.OnItemClickListener itemClickListener;
    private List<Item> items = new ArrayList();
    private final FileChooserDialog parent;

    public ItemsAdapter(ItemHolder.OnItemClickListener onItemClickListener, FileChooserDialog fileChooserDialog) {
        this.itemClickListener = onItemClickListener;
        this.parent = fileChooserDialog;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ItemHolder itemHolder, int i) {
        Item item = this.items.get(i);
        itemHolder.bind(item, item.isCheckable() && this.parent.shouldCheckItem(item));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ItemHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.filepicker_list_item, viewGroup, false), this.itemClickListener);
    }

    public void setItems(List<Item> list) {
        this.items = list;
        notifyDataSetChanged();
    }
}
