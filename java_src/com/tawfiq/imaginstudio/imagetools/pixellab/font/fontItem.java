package com.tawfiq.imaginstudio.imagetools.pixellab.font;

/* loaded from: classes.dex */
public class fontItem {
    public static final int ITEM = 0;
    public static final int SECTION = 1;
    public final String category_name;
    public boolean deletable;
    public final String font_name;
    public final String font_path;
    public int listPosition;
    public int sectionPosition;
    public final int type;

    public fontItem(int i, String str, String str2, String str3, boolean z) {
        this.type = i;
        this.font_name = str2;
        this.font_path = str3;
        this.category_name = str;
        this.deletable = z;
    }

    public String toString() {
        return this.type == 1 ? ":\"" : this.font_name;
    }
}
