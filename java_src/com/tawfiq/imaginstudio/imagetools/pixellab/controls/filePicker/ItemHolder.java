package com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
class ItemHolder extends RecyclerView.ViewHolder {
    private CheckBox cbItemCheck;
    private OnItemClickListener itemClickListener;
    private ImageView ivItemIcon;
    private TextView tvItemName;

    /* loaded from: classes.dex */
    public interface OnItemClickListener {
        void onItemCheck(Item item);

        void onItemClick(Item item);

        void onItemUnCheck(Item item);
    }

    public ItemHolder(View view, OnItemClickListener onItemClickListener) {
        super(view);
        this.itemClickListener = onItemClickListener;
        this.ivItemIcon = (ImageView) view.findViewById(R.id.item_icon_imageview);
        this.tvItemName = (TextView) view.findViewById(R.id.item_name_textview);
        this.cbItemCheck = (CheckBox) view.findViewById(R.id.item_check);
    }

    public void bind(final Item item, boolean z) {
        CheckBox checkBox;
        int i;
        this.tvItemName.setText(item.getName());
        this.ivItemIcon.setImageDrawable(item.getIcon());
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.ItemHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ItemHolder.this.itemClickListener.onItemClick(item);
            }
        });
        this.cbItemCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker.ItemHolder.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                OnItemClickListener onItemClickListener = ItemHolder.this.itemClickListener;
                if (z2) {
                    onItemClickListener.onItemCheck(item);
                } else {
                    onItemClickListener.onItemUnCheck(item);
                }
            }
        });
        if (item.isCheckable()) {
            this.cbItemCheck.setChecked(z);
            checkBox = this.cbItemCheck;
            i = 0;
        } else {
            checkBox = this.cbItemCheck;
            i = 8;
        }
        checkBox.setVisibility(i);
    }
}
