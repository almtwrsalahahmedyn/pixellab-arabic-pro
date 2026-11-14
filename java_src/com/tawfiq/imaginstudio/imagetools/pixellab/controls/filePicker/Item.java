package com.tawfiq.imaginstudio.imagetools.pixellab.controls.filePicker;

import android.graphics.drawable.Drawable;
import java.io.File;

/* loaded from: classes.dex */
class Item extends File {
    private boolean checkable;
    private Drawable icon;

    public Item(String str, Drawable drawable, boolean z) {
        super(str);
        this.icon = drawable;
        this.checkable = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(File file) {
        if (isDirectory() && file.isFile()) {
            return -1;
        }
        return (isFile() && file.isDirectory()) ? 1 : 0;
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public boolean isCheckable() {
        return this.checkable;
    }
}
