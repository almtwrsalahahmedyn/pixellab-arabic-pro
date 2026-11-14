package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ListMenuPresenter implements MenuPresenter, AdapterView.OnItemClickListener {
    public MenuAdapter mAdapter;
    public MenuPresenter.Callback mCallback;
    public Context mContext;
    public LayoutInflater mInflater;
    public MenuBuilder mMenu;
    public ExpandedMenuView mMenuView;

    /* loaded from: classes.dex */
    public final class MenuAdapter extends BaseAdapter {
        public int mExpandedIndex = -1;

        public MenuAdapter() {
            findExpandedIndex();
        }

        public final void findExpandedIndex() {
            MenuBuilder menuBuilder = ListMenuPresenter.this.mMenu;
            MenuItemImpl menuItemImpl = menuBuilder.mExpandedItem;
            if (menuItemImpl != null) {
                menuBuilder.flagActionItems();
                ArrayList arrayList = menuBuilder.mNonActionItems;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (((MenuItemImpl) arrayList.get(i)) == menuItemImpl) {
                        this.mExpandedIndex = i;
                        return;
                    }
                }
            }
            this.mExpandedIndex = -1;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
            MenuBuilder menuBuilder = listMenuPresenter.mMenu;
            menuBuilder.flagActionItems();
            int size = menuBuilder.mNonActionItems.size();
            listMenuPresenter.getClass();
            int i = size + 0;
            return this.mExpandedIndex < 0 ? i : i - 1;
        }

        @Override // android.widget.Adapter
        public final MenuItemImpl getItem(int i) {
            ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
            MenuBuilder menuBuilder = listMenuPresenter.mMenu;
            menuBuilder.flagActionItems();
            ArrayList arrayList = menuBuilder.mNonActionItems;
            listMenuPresenter.getClass();
            int i2 = i + 0;
            int i3 = this.mExpandedIndex;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return (MenuItemImpl) arrayList.get(i2);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ListMenuPresenter.this.mInflater.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
            }
            ((MenuView.ItemView) view).initialize(getItem(i));
            return view;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            findExpandedIndex();
            super.notifyDataSetChanged();
        }
    }

    public ListMenuPresenter(Context context) {
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean flagActionItems() {
        return false;
    }

    public final MenuAdapter getAdapter() {
        if (this.mAdapter == null) {
            this.mAdapter = new MenuAdapter();
        }
        return this.mAdapter;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void initForMenu(Context context, MenuBuilder menuBuilder) {
        if (this.mContext != null) {
            this.mContext = context;
            if (this.mInflater == null) {
                this.mInflater = LayoutInflater.from(context);
            }
        }
        this.mMenu = menuBuilder;
        MenuAdapter menuAdapter = this.mAdapter;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.mCallback;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.mMenu.performItemAction(this.mAdapter.getItem(i), this, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.view.menu.MenuPresenter$Callback, android.content.DialogInterface$OnClickListener, android.content.DialogInterface$OnKeyListener, androidx.appcompat.view.menu.MenuDialogHelper, java.lang.Object, android.content.DialogInterface$OnDismissListener] */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        ?? obj = new Object();
        obj.mMenu = subMenuBuilder;
        AlertDialog.Builder builder = new AlertDialog.Builder(subMenuBuilder.mContext);
        AlertController.AlertParams alertParams = builder.P;
        ListMenuPresenter listMenuPresenter = new ListMenuPresenter(alertParams.mContext);
        obj.mPresenter = listMenuPresenter;
        listMenuPresenter.mCallback = obj;
        subMenuBuilder.addMenuPresenter(listMenuPresenter);
        alertParams.mAdapter = obj.mPresenter.getAdapter();
        alertParams.mOnClickListener = obj;
        View view = subMenuBuilder.mHeaderView;
        if (view != null) {
            alertParams.mCustomTitleView = view;
        } else {
            alertParams.mIcon = subMenuBuilder.mHeaderIcon;
            alertParams.mTitle = subMenuBuilder.mHeaderTitle;
        }
        alertParams.mOnKeyListener = obj;
        AlertDialog create = builder.create();
        obj.mDialog = create;
        create.setOnDismissListener(obj);
        WindowManager.LayoutParams attributes = obj.mDialog.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        obj.mDialog.show();
        MenuPresenter.Callback callback = this.mCallback;
        if (callback == null) {
            return true;
        }
        callback.onOpenSubMenu(subMenuBuilder);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void setCallback(MenuPresenter.Callback callback) {
        this.mCallback = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void updateMenuView() {
        MenuAdapter menuAdapter = this.mAdapter;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }
}
