package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;

/* loaded from: classes.dex */
public abstract class BaseMenuWrapper {
    public final Context mContext;
    public SimpleArrayMap mMenuItems;

    public BaseMenuWrapper(Context context) {
        this.mContext = context;
    }

    public final MenuItem getMenuItemWrapper(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (this.mMenuItems == null) {
            this.mMenuItems = new SimpleArrayMap();
        }
        MenuItem menuItem2 = (MenuItem) this.mMenuItems.getOrDefault(menuItem, null);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS(this.mContext, supportMenuItem);
        this.mMenuItems.put(supportMenuItem, menuItemWrapperICS);
        return menuItemWrapperICS;
    }

    public final void internalClear() {
        SimpleArrayMap simpleArrayMap = this.mMenuItems;
        if (simpleArrayMap != null) {
            simpleArrayMap.clear();
        }
    }

    public final void internalRemoveGroup(int i) {
        if (this.mMenuItems == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.mMenuItems.size()) {
            if (((SupportMenuItem) this.mMenuItems.keyAt(i2)).getGroupId() == i) {
                this.mMenuItems.removeAt(i2);
                i2--;
            }
            i2++;
        }
    }

    public final void internalRemoveItem(int i) {
        if (this.mMenuItems == null) {
            return;
        }
        for (int i2 = 0; i2 < this.mMenuItems.size(); i2++) {
            if (((SupportMenuItem) this.mMenuItems.keyAt(i2)).getItemId() == i) {
                this.mMenuItems.removeAt(i2);
                return;
            }
        }
    }
}
