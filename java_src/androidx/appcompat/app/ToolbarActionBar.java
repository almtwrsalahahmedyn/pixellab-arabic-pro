package androidx.appcompat.app;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment$$ExternalSyntheticOutline0;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ToolbarActionBar extends ActionBar {
    public final ToolbarWidgetWrapper mDecorToolbar;
    public boolean mLastMenuVisibility;
    public boolean mMenuCallbackSet;
    public boolean mToolbarMenuPrepared;
    public final ToolbarCallbackWrapper mWindowCallback;
    public final ArrayList mMenuVisibilityListeners = new ArrayList();
    public final AnonymousClass1 mMenuInvalidator = new Runnable() { // from class: androidx.appcompat.app.ToolbarActionBar.1
        @Override // java.lang.Runnable
        public final void run() {
            ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
            MenuBuilder menu = toolbarActionBar.getMenu();
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? menu : null;
            if (menuBuilder != null) {
                menuBuilder.stopDispatchingItemsChanged();
            }
            try {
                menu.clear();
                ToolbarCallbackWrapper toolbarCallbackWrapper = toolbarActionBar.mWindowCallback;
                if (!toolbarCallbackWrapper.onCreatePanelMenu(0, menu) || !toolbarCallbackWrapper.onPreparePanel(0, null, menu)) {
                    menu.clear();
                }
            } finally {
                if (menuBuilder != null) {
                    menuBuilder.startDispatchingItemsChanged();
                }
            }
        }
    };

    /* renamed from: androidx.appcompat.app.ToolbarActionBar$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements Toolbar.OnMenuItemClickListener, MenuBuilder.Callback {
        public /* synthetic */ AnonymousClass2() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
        
            if ((r1 != null && r1.isOverflowMenuShowing()) != false) goto L15;
         */
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder r6) {
            /*
                r5 = this;
                androidx.appcompat.app.ToolbarActionBar r0 = androidx.appcompat.app.ToolbarActionBar.this
                androidx.appcompat.app.ToolbarActionBar$ToolbarCallbackWrapper r1 = r0.mWindowCallback
                if (r1 == 0) goto L39
                androidx.appcompat.widget.ToolbarWidgetWrapper r1 = r0.mDecorToolbar
                androidx.appcompat.widget.Toolbar r1 = r1.mToolbar
                androidx.appcompat.widget.ActionMenuView r1 = r1.mMenuView
                r2 = 0
                if (r1 == 0) goto L20
                androidx.appcompat.widget.ActionMenuPresenter r1 = r1.mPresenter
                r3 = 1
                if (r1 == 0) goto L1c
                boolean r1 = r1.isOverflowMenuShowing()
                if (r1 == 0) goto L1c
                r1 = 1
                goto L1d
            L1c:
                r1 = 0
            L1d:
                if (r1 == 0) goto L20
                goto L21
            L20:
                r3 = 0
            L21:
                r1 = 108(0x6c, float:1.51E-43)
                if (r3 == 0) goto L2b
                androidx.appcompat.app.ToolbarActionBar$ToolbarCallbackWrapper r0 = r0.mWindowCallback
                r0.onPanelClosed(r1, r6)
                goto L39
            L2b:
                androidx.appcompat.app.ToolbarActionBar$ToolbarCallbackWrapper r3 = r0.mWindowCallback
                r4 = 0
                boolean r2 = r3.onPreparePanel(r2, r4, r6)
                if (r2 == 0) goto L39
                androidx.appcompat.app.ToolbarActionBar$ToolbarCallbackWrapper r0 = r0.mWindowCallback
                r0.onMenuOpened(r1, r6)
            L39:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.ToolbarActionBar.AnonymousClass2.onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder):void");
        }
    }

    /* loaded from: classes.dex */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        public boolean mClosingActionMenu;

        public ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            ActionMenuPresenter actionMenuPresenter;
            if (this.mClosingActionMenu) {
                return;
            }
            this.mClosingActionMenu = true;
            ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
            ActionMenuView actionMenuView = toolbarActionBar.mDecorToolbar.mToolbar.mMenuView;
            if (actionMenuView != null && (actionMenuPresenter = actionMenuView.mPresenter) != null) {
                actionMenuPresenter.hideOverflowMenu();
                ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = actionMenuPresenter.mActionButtonPopup;
                if (actionButtonSubmenu != null) {
                    actionButtonSubmenu.dismiss();
                }
            }
            ToolbarCallbackWrapper toolbarCallbackWrapper = toolbarActionBar.mWindowCallback;
            if (toolbarCallbackWrapper != null) {
                toolbarCallbackWrapper.onPanelClosed(108, menuBuilder);
            }
            this.mClosingActionMenu = false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            ToolbarCallbackWrapper toolbarCallbackWrapper = ToolbarActionBar.this.mWindowCallback;
            if (toolbarCallbackWrapper == null) {
                return false;
            }
            toolbarCallbackWrapper.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public final class ToolbarCallbackWrapper extends WindowCallbackWrapper {
        public ToolbarCallbackWrapper(AppCompatDelegateImpl.AppCompatWindowCallback appCompatWindowCallback) {
            super(appCompatWindowCallback);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            return i == 0 ? new View(ToolbarActionBar.this.mDecorToolbar.mToolbar.getContext()) : super.onCreatePanelView(i);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel) {
                ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
                if (!toolbarActionBar.mToolbarMenuPrepared) {
                    toolbarActionBar.mDecorToolbar.mMenuPrepared = true;
                    toolbarActionBar.mToolbarMenuPrepared = true;
                }
            }
            return onPreparePanel;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.app.ToolbarActionBar$1] */
    public ToolbarActionBar(Toolbar toolbar, CharSequence charSequence, AppCompatDelegateImpl.AppCompatWindowCallback appCompatWindowCallback) {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        ToolbarWidgetWrapper toolbarWidgetWrapper = new ToolbarWidgetWrapper(toolbar, false);
        this.mDecorToolbar = toolbarWidgetWrapper;
        ToolbarCallbackWrapper toolbarCallbackWrapper = new ToolbarCallbackWrapper(appCompatWindowCallback);
        this.mWindowCallback = toolbarCallbackWrapper;
        toolbarWidgetWrapper.mWindowCallback = toolbarCallbackWrapper;
        toolbar.mOnMenuItemClickListener = anonymousClass2;
        if (toolbarWidgetWrapper.mTitleSet) {
            return;
        }
        toolbarWidgetWrapper.mTitle = charSequence;
        if ((toolbarWidgetWrapper.mDisplayOpts & 8) != 0) {
            toolbarWidgetWrapper.mToolbar.setTitle(charSequence);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean closeOptionsMenu() {
        ActionMenuView actionMenuView = this.mDecorToolbar.mToolbar.mMenuView;
        if (actionMenuView == null) {
            return false;
        }
        ActionMenuPresenter actionMenuPresenter = actionMenuView.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.hideOverflowMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean collapseActionView() {
        Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.mDecorToolbar.mToolbar.mExpandedMenuPresenter;
        if (!((expandedActionViewMenuPresenter == null || expandedActionViewMenuPresenter.mCurrentExpandedItem == null) ? false : true)) {
            return false;
        }
        MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter == null ? null : expandedActionViewMenuPresenter.mCurrentExpandedItem;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void dispatchMenuVisibilityChanged(boolean z) {
        if (z == this.mLastMenuVisibility) {
            return;
        }
        this.mLastMenuVisibility = z;
        ArrayList arrayList = this.mMenuVisibilityListeners;
        if (arrayList.size() <= 0) {
            return;
        }
        Fragment$$ExternalSyntheticOutline0.m(arrayList.get(0));
        throw null;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final int getDisplayOptions() {
        return this.mDecorToolbar.mDisplayOpts;
    }

    public final MenuBuilder getMenu() {
        boolean z = this.mMenuCallbackSet;
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.mDecorToolbar;
        if (!z) {
            ActionMenuPresenterCallback actionMenuPresenterCallback = new ActionMenuPresenterCallback();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2();
            Toolbar toolbar = toolbarWidgetWrapper.mToolbar;
            toolbar.mActionMenuPresenterCallback = actionMenuPresenterCallback;
            toolbar.mMenuBuilderCallback = anonymousClass2;
            ActionMenuView actionMenuView = toolbar.mMenuView;
            if (actionMenuView != null) {
                actionMenuView.mActionMenuPresenterCallback = actionMenuPresenterCallback;
                actionMenuView.mMenuBuilderCallback = anonymousClass2;
            }
            this.mMenuCallbackSet = true;
        }
        return toolbarWidgetWrapper.mToolbar.getMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final Context getThemedContext() {
        return this.mDecorToolbar.mToolbar.getContext();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean invalidateOptionsMenu() {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.mDecorToolbar;
        Toolbar toolbar = toolbarWidgetWrapper.mToolbar;
        AnonymousClass1 anonymousClass1 = this.mMenuInvalidator;
        toolbar.removeCallbacks(anonymousClass1);
        Toolbar toolbar2 = toolbarWidgetWrapper.mToolbar;
        ViewCompat.AnonymousClass1 anonymousClass12 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        toolbar2.postOnAnimation(anonymousClass1);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void onConfigurationChanged() {
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void onDestroy() {
        this.mDecorToolbar.mToolbar.removeCallbacks(this.mMenuInvalidator);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        MenuBuilder menu = getMenu();
        if (menu == null) {
            return false;
        }
        menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menu.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean onMenuKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            openOptionsMenu();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean openOptionsMenu() {
        ActionMenuView actionMenuView = this.mDecorToolbar.mToolbar.mMenuView;
        if (actionMenuView == null) {
            return false;
        }
        ActionMenuPresenter actionMenuPresenter = actionMenuView.mPresenter;
        return actionMenuPresenter != null && actionMenuPresenter.showOverflowMenu();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setDefaultDisplayHomeAsUpEnabled(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setShowHideAnimationEnabled(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setWindowTitle(CharSequence charSequence) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = this.mDecorToolbar;
        if (toolbarWidgetWrapper.mTitleSet) {
            return;
        }
        toolbarWidgetWrapper.mTitle = charSequence;
        if ((toolbarWidgetWrapper.mDisplayOpts & 8) != 0) {
            toolbarWidgetWrapper.mToolbar.setTitle(charSequence);
        }
    }
}
