package com.tawfiq.imaginstudio.imagetools.pixellab.font;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textSelector;

/* loaded from: classes.dex */
public class FontDialogPagerAdapter extends FragmentPagerAdapter {
    private Context context;
    private final textSelector refToText;

    public FontDialogPagerAdapter(FragmentManager fragmentManager, Context context, textSelector textselector) {
        super(fragmentManager);
        this.context = context;
        this.refToText = textselector;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return 4;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return fontFragment.newInstance(i, this.refToText);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i) {
        Context context;
        int i2;
        if (i == 0) {
            context = this.context;
            i2 = R.string.title_section1;
        } else if (i == 1) {
            context = this.context;
            i2 = R.string.title_section3;
        } else if (i == 2) {
            context = this.context;
            i2 = R.string.recent;
        } else {
            if (i != 3) {
                return "null";
            }
            context = this.context;
            i2 = R.string.favorite;
        }
        return context.getString(i2);
    }
}
