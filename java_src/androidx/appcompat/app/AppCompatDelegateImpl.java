package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NavUtils;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentManager;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    public ActionBar mActionBar;
    public AnonymousClass3 mActionMenuPresenterCallback;
    public ActionMode mActionMode;
    public PopupWindow mActionModePopup;
    public ActionBarContextView mActionModeView;
    public boolean mActivityHandlesUiMode;
    public boolean mActivityHandlesUiModeChecked;
    public final AppCompatCallback mAppCompatCallback;
    public AppCompatViewInflater mAppCompatViewInflater;
    public AppCompatWindowCallback mAppCompatWindowCallback;
    public AutoBatteryNightModeManager mAutoBatteryNightModeManager;
    public AutoTimeNightModeManager mAutoTimeNightModeManager;
    public boolean mBaseContextAttached;
    public boolean mClosingActionMenu;
    public final Context mContext;
    public boolean mCreated;
    public DecorContentParent mDecorContentParent;
    public boolean mEnableDefaultActionBarUp;
    public boolean mFeatureIndeterminateProgress;
    public boolean mFeatureProgress;
    public boolean mHasActionBar;
    public final Object mHost;
    public int mInvalidatePanelMenuFeatures;
    public boolean mInvalidatePanelMenuPosted;
    public boolean mIsDestroyed;
    public boolean mIsFloating;
    public final int mLocalNightMode;
    public boolean mLongPressBackDown;
    public SupportMenuInflater mMenuInflater;
    public boolean mOverlayActionBar;
    public boolean mOverlayActionMode;
    public PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    public PanelFeatureState[] mPanels;
    public PanelFeatureState mPreparedPanel;
    public AnonymousClass6 mShowActionModePopup;
    public boolean mStarted;
    public View mStatusGuard;
    public ViewGroup mSubDecor;
    public boolean mSubDecorInstalled;
    public Rect mTempRect1;
    public Rect mTempRect2;
    public int mThemeResId;
    public CharSequence mTitle;
    public TextView mTitleView;
    public Window mWindow;
    public boolean mWindowNoTitle;
    public static final SimpleArrayMap sLocalNightModes = new SimpleArrayMap();
    public static final int[] sWindowBackgroundStyleable = {R.attr.windowBackground};
    public static final boolean sCanReturnDifferentContext = !"robolectric".equals(Build.FINGERPRINT);
    public static final boolean sCanApplyOverrideConfiguration = true;
    public ViewPropertyAnimatorCompat mFadeAnim = null;
    public final boolean mHandleNativeActionModes = true;
    public final AnonymousClass2 mInvalidatePanelMenuRunnable = new AnonymousClass2();

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.mInvalidatePanelMenuFeatures & 1) != 0) {
                appCompatDelegateImpl.doInvalidatePanelMenu(0);
            }
            if ((appCompatDelegateImpl.mInvalidatePanelMenuFeatures & 4096) != 0) {
                appCompatDelegateImpl.doInvalidatePanelMenu(108);
            }
            appCompatDelegateImpl.mInvalidatePanelMenuPosted = false;
            appCompatDelegateImpl.mInvalidatePanelMenuFeatures = 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements OnApplyWindowInsetsListener, ContentFrameLayout.OnAttachListener, MenuPresenter.Callback {
        public /* synthetic */ AnonymousClass3() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            boolean z;
            View view2;
            WindowInsetsCompat windowInsetsCompat2;
            boolean z2;
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            appCompatDelegateImpl.getClass();
            int systemWindowInsetTop2 = windowInsetsCompat.getSystemWindowInsetTop();
            ActionBarContextView actionBarContextView = appCompatDelegateImpl.mActionModeView;
            if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                z = false;
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) appCompatDelegateImpl.mActionModeView.getLayoutParams();
                if (appCompatDelegateImpl.mActionModeView.isShown()) {
                    if (appCompatDelegateImpl.mTempRect1 == null) {
                        appCompatDelegateImpl.mTempRect1 = new Rect();
                        appCompatDelegateImpl.mTempRect2 = new Rect();
                    }
                    Rect rect = appCompatDelegateImpl.mTempRect1;
                    Rect rect2 = appCompatDelegateImpl.mTempRect2;
                    rect.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                    ViewGroup viewGroup = appCompatDelegateImpl.mSubDecor;
                    Method method = ViewUtils.sComputeFitSystemWindowsMethod;
                    if (method != null) {
                        try {
                            method.invoke(viewGroup, rect, rect2);
                        } catch (Exception unused) {
                        }
                    }
                    int i = rect.top;
                    int i2 = rect.left;
                    int i3 = rect.right;
                    WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(appCompatDelegateImpl.mSubDecor);
                    int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                    int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                    if (marginLayoutParams.topMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3) {
                        z2 = false;
                    } else {
                        marginLayoutParams.topMargin = i;
                        marginLayoutParams.leftMargin = i2;
                        marginLayoutParams.rightMargin = i3;
                        z2 = true;
                    }
                    Context context = appCompatDelegateImpl.mContext;
                    if (i <= 0 || appCompatDelegateImpl.mStatusGuard != null) {
                        View view3 = appCompatDelegateImpl.mStatusGuard;
                        if (view3 != null) {
                            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view3.getLayoutParams();
                            int i4 = marginLayoutParams2.height;
                            int i5 = marginLayoutParams.topMargin;
                            if (i4 != i5 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                                marginLayoutParams2.height = i5;
                                marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                                marginLayoutParams2.rightMargin = systemWindowInsetRight;
                                appCompatDelegateImpl.mStatusGuard.setLayoutParams(marginLayoutParams2);
                            }
                        }
                    } else {
                        View view4 = new View(context);
                        appCompatDelegateImpl.mStatusGuard = view4;
                        view4.setVisibility(8);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                        layoutParams.leftMargin = systemWindowInsetLeft;
                        layoutParams.rightMargin = systemWindowInsetRight;
                        appCompatDelegateImpl.mSubDecor.addView(appCompatDelegateImpl.mStatusGuard, -1, layoutParams);
                    }
                    View view5 = appCompatDelegateImpl.mStatusGuard;
                    z = view5 != null;
                    if (z && view5.getVisibility() != 0) {
                        View view6 = appCompatDelegateImpl.mStatusGuard;
                        view6.setBackgroundColor(ContextCompat.getColor(context, (view6.getWindowSystemUiVisibility() & 8192) != 0 ? com.tawfiq.imaginstudio.imagetools.pixellab.R.color.abc_decor_view_status_guard_light : com.tawfiq.imaginstudio.imagetools.pixellab.R.color.abc_decor_view_status_guard));
                    }
                    if (!appCompatDelegateImpl.mOverlayActionMode && z) {
                        systemWindowInsetTop2 = 0;
                    }
                } else {
                    if (marginLayoutParams.topMargin != 0) {
                        marginLayoutParams.topMargin = 0;
                    } else {
                        r8 = false;
                    }
                    z2 = r8;
                    z = false;
                }
                if (z2) {
                    appCompatDelegateImpl.mActionModeView.setLayoutParams(marginLayoutParams);
                }
            }
            View view7 = appCompatDelegateImpl.mStatusGuard;
            if (view7 != null) {
                view7.setVisibility(z ? 0 : 8);
            }
            if (systemWindowInsetTop != systemWindowInsetTop2) {
                int systemWindowInsetLeft2 = windowInsetsCompat.getSystemWindowInsetLeft();
                int systemWindowInsetRight2 = windowInsetsCompat.getSystemWindowInsetRight();
                int systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
                WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
                Insets of = Insets.of(systemWindowInsetLeft2, systemWindowInsetTop2, systemWindowInsetRight2, systemWindowInsetBottom);
                WindowInsetsCompat.BuilderImpl builderImpl = builder.mImpl;
                builderImpl.setSystemWindowInsets(of);
                windowInsetsCompat2 = builderImpl.build();
                view2 = view;
            } else {
                view2 = view;
                windowInsetsCompat2 = windowInsetsCompat;
            }
            return ViewCompat.onApplyWindowInsets(view2, windowInsetsCompat2);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImpl.this.checkCloseActionMenu(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback windowCallback = AppCompatDelegateImpl.this.getWindowCallback();
            if (windowCallback == null) {
                return true;
            }
            windowCallback.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public final class ActionModeCallbackWrapperV9 implements ActionMode.Callback {
        public final ActionMode.Callback mWrapped;

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, MenuBuilder menuBuilder) {
            return this.mWrapped.onCreateActionMode(actionMode, menuBuilder);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.mActionModePopup != null) {
                appCompatDelegateImpl.mWindow.getDecorView().removeCallbacks(appCompatDelegateImpl.mShowActionModePopup);
            }
            if (appCompatDelegateImpl.mActionModeView != null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.mFadeAnim;
                if (viewPropertyAnimatorCompat != null) {
                    viewPropertyAnimatorCompat.cancel();
                }
                ViewPropertyAnimatorCompat animate = ViewCompat.animate(appCompatDelegateImpl.mActionModeView);
                animate.alpha(0.0f);
                appCompatDelegateImpl.mFadeAnim = animate;
                animate.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9.1
                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void onAnimationEnd() {
                        ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9 = ActionModeCallbackWrapperV9.this;
                        AppCompatDelegateImpl.this.mActionModeView.setVisibility(8);
                        AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                        PopupWindow popupWindow = appCompatDelegateImpl2.mActionModePopup;
                        if (popupWindow != null) {
                            popupWindow.dismiss();
                        } else if (appCompatDelegateImpl2.mActionModeView.getParent() instanceof View) {
                            View view = (View) appCompatDelegateImpl2.mActionModeView.getParent();
                            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                            view.requestApplyInsets();
                        }
                        appCompatDelegateImpl2.mActionModeView.killMode();
                        appCompatDelegateImpl2.mFadeAnim.setListener(null);
                        appCompatDelegateImpl2.mFadeAnim = null;
                        ViewGroup viewGroup = appCompatDelegateImpl2.mSubDecor;
                        ViewCompat.AnonymousClass1 anonymousClass12 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                        viewGroup.requestApplyInsets();
                    }
                });
            }
            AppCompatCallback appCompatCallback = appCompatDelegateImpl.mAppCompatCallback;
            if (appCompatCallback != null) {
                appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl.mActionMode);
            }
            appCompatDelegateImpl.mActionMode = null;
            ViewGroup viewGroup = appCompatDelegateImpl.mSubDecor;
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            viewGroup.requestApplyInsets();
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, MenuBuilder menuBuilder) {
            ViewGroup viewGroup = AppCompatDelegateImpl.this.mSubDecor;
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            viewGroup.requestApplyInsets();
            return this.mWrapped.onPrepareActionMode(actionMode, menuBuilder);
        }
    }

    /* loaded from: classes.dex */
    public final class AppCompatWindowCallback extends WindowCallbackWrapper {
        public AppCompatWindowCallback(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
        
            if (r6 != false) goto L20;
         */
        /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x004e A[ORIG_RETURN, RETURN] */
        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean dispatchKeyShortcutEvent(android.view.KeyEvent r6) {
            /*
                r5 = this;
                boolean r0 = super.dispatchKeyShortcutEvent(r6)
                r1 = 1
                if (r0 != 0) goto L4f
                int r0 = r6.getKeyCode()
                androidx.appcompat.app.AppCompatDelegateImpl r2 = androidx.appcompat.app.AppCompatDelegateImpl.this
                r2.initWindowDecorActionBar()
                androidx.appcompat.app.ActionBar r3 = r2.mActionBar
                r4 = 0
                if (r3 == 0) goto L1c
                boolean r0 = r3.onKeyShortcut(r0, r6)
                if (r0 == 0) goto L1c
                goto L48
            L1c:
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = r2.mPreparedPanel
                if (r0 == 0) goto L31
                int r3 = r6.getKeyCode()
                boolean r0 = r2.performPanelShortcut(r0, r3, r6)
                if (r0 == 0) goto L31
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r6 = r2.mPreparedPanel
                if (r6 == 0) goto L48
                r6.isHandled = r1
                goto L48
            L31:
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = r2.mPreparedPanel
                if (r0 != 0) goto L4a
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = r2.getPanelState(r4)
                r2.preparePanel(r0, r6)
                int r3 = r6.getKeyCode()
                boolean r6 = r2.performPanelShortcut(r0, r3, r6)
                r0.isPrepared = r4
                if (r6 == 0) goto L4a
            L48:
                r6 = 1
                goto L4b
            L4a:
                r6 = 0
            L4b:
                if (r6 == 0) goto L4e
                goto L4f
            L4e:
                r1 = 0
            L4f:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.AppCompatWindowCallback.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onContentChanged() {
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof MenuBuilder)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i == 108) {
                appCompatDelegateImpl.initWindowDecorActionBar();
                ActionBar actionBar = appCompatDelegateImpl.mActionBar;
                if (actionBar != null) {
                    actionBar.dispatchMenuVisibilityChanged(true);
                }
            } else {
                appCompatDelegateImpl.getClass();
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i == 108) {
                appCompatDelegateImpl.initWindowDecorActionBar();
                ActionBar actionBar = appCompatDelegateImpl.mActionBar;
                if (actionBar != null) {
                    actionBar.dispatchMenuVisibilityChanged(false);
                    return;
                }
                return;
            }
            if (i != 0) {
                appCompatDelegateImpl.getClass();
                return;
            }
            PanelFeatureState panelState = appCompatDelegateImpl.getPanelState(i);
            if (panelState.isOpen) {
                appCompatDelegateImpl.closePanel(panelState, false);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.mOverrideVisibleItems = true;
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (menuBuilder != null) {
                menuBuilder.mOverrideVisibleItems = false;
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
            MenuBuilder menuBuilder = AppCompatDelegateImpl.this.getPanelState(0).menu;
            if (menuBuilder != null) {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.mHandleNativeActionModes) {
                return super.onWindowStartingActionMode(callback);
            }
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(appCompatDelegateImpl.mContext, callback);
            androidx.appcompat.view.ActionMode startSupportActionMode = appCompatDelegateImpl.startSupportActionMode(callbackWrapper);
            if (startSupportActionMode != null) {
                return callbackWrapper.getActionModeWrapper(startSupportActionMode);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.mHandleNativeActionModes || i != 0) {
                return super.onWindowStartingActionMode(callback, i);
            }
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(appCompatDelegateImpl.mContext, callback);
            androidx.appcompat.view.ActionMode startSupportActionMode = appCompatDelegateImpl.startSupportActionMode(callbackWrapper);
            if (startSupportActionMode != null) {
                return callbackWrapper.getActionModeWrapper(startSupportActionMode);
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public final class AutoBatteryNightModeManager extends AutoNightModeManager {
        public final PowerManager mPowerManager;

        public AutoBatteryNightModeManager(Context context) {
            super();
            this.mPowerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final IntentFilter createIntentFilterForBroadcastReceiver() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final int getApplyableNightMode() {
            return this.mPowerManager.isPowerSaveMode() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final void onChange() {
            AppCompatDelegateImpl.this.applyDayNight(true);
        }
    }

    /* loaded from: classes.dex */
    public abstract class AutoNightModeManager {
        public AnonymousClass1 mReceiver;

        public AutoNightModeManager() {
        }

        public final void cleanup() {
            AnonymousClass1 anonymousClass1 = this.mReceiver;
            if (anonymousClass1 != null) {
                try {
                    AppCompatDelegateImpl.this.mContext.unregisterReceiver(anonymousClass1);
                } catch (IllegalArgumentException unused) {
                }
                this.mReceiver = null;
            }
        }

        public abstract IntentFilter createIntentFilterForBroadcastReceiver();

        public abstract int getApplyableNightMode();

        public abstract void onChange();

        /* JADX WARN: Type inference failed for: r1v4, types: [androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager$1] */
        public final void setup() {
            cleanup();
            IntentFilter createIntentFilterForBroadcastReceiver = createIntentFilterForBroadcastReceiver();
            if (createIntentFilterForBroadcastReceiver == null || createIntentFilterForBroadcastReceiver.countActions() == 0) {
                return;
            }
            if (this.mReceiver == null) {
                this.mReceiver = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager.1
                    @Override // android.content.BroadcastReceiver
                    public final void onReceive(Context context, Intent intent) {
                        AutoNightModeManager.this.onChange();
                    }
                };
            }
            AppCompatDelegateImpl.this.mContext.registerReceiver(this.mReceiver, createIntentFilterForBroadcastReceiver);
        }
    }

    /* loaded from: classes.dex */
    public final class AutoTimeNightModeManager extends AutoNightModeManager {
        public final TwilightManager mTwilightManager;

        public AutoTimeNightModeManager(TwilightManager twilightManager) {
            super();
            this.mTwilightManager = twilightManager;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final IntentFilter createIntentFilterForBroadcastReceiver() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00dc  */
        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int getApplyableNightMode() {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.AutoTimeNightModeManager.getApplyableNightMode():int");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final void onChange() {
            AppCompatDelegateImpl.this.applyDayNight(true);
        }
    }

    /* loaded from: classes.dex */
    public final class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(ContextThemeWrapper contextThemeWrapper) {
            super(contextThemeWrapper);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                    appCompatDelegateImpl.closePanel(appCompatDelegateImpl.getPanelState(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i) {
            setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i));
        }
    }

    /* loaded from: classes.dex */
    public final class PanelFeatureState {
        public int background;
        public View createdPanelView;
        public ListMenuDecorView decorView;
        public int featureId;
        public Bundle frozenActionViewState;
        public int gravity;
        public boolean isHandled;
        public boolean isOpen;
        public boolean isPrepared;
        public ListMenuPresenter listMenuPresenter;
        public ContextThemeWrapper listPresenterContext;
        public MenuBuilder menu;
        public boolean refreshDecorView;
        public boolean refreshMenuContent;
        public View shownPanelView;
        public int windowAnimations;

        /* loaded from: classes.dex */
        class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.1
                @Override // android.os.Parcelable.Creator
                public final Object createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.readFromParcel(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public final Object[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            public int featureId;
            public boolean isOpen;
            public Bundle menuState;

            public static SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                boolean z = parcel.readInt() == 1;
                savedState.isOpen = z;
                if (z) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }
        }

        public final boolean hasPanelItems() {
            if (this.shownPanelView == null) {
                return false;
            }
            return this.createdPanelView != null || this.listMenuPresenter.getAdapter().getCount() > 0;
        }
    }

    /* loaded from: classes.dex */
    public final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        public PanelMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            PanelFeatureState panelFeatureState;
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            int i = 0;
            boolean z2 = rootMenu != menuBuilder;
            if (z2) {
                menuBuilder = rootMenu;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            PanelFeatureState[] panelFeatureStateArr = appCompatDelegateImpl.mPanels;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            while (true) {
                if (i < length) {
                    panelFeatureState = panelFeatureStateArr[i];
                    if (panelFeatureState != null && panelFeatureState.menu == menuBuilder) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                if (!z2) {
                    appCompatDelegateImpl.closePanel(panelFeatureState, z);
                } else {
                    appCompatDelegateImpl.callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, rootMenu);
                    appCompatDelegateImpl.closePanel(panelFeatureState, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback windowCallback;
            if (menuBuilder != menuBuilder.getRootMenu()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.mHasActionBar || (windowCallback = appCompatDelegateImpl.getWindowCallback()) == null || appCompatDelegateImpl.mIsDestroyed) {
                return true;
            }
            windowCallback.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        AppCompatActivity appCompatActivity;
        this.mLocalNightMode = -100;
        this.mContext = context;
        this.mAppCompatCallback = appCompatCallback;
        this.mHost = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof AppCompatActivity)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    appCompatActivity = (AppCompatActivity) context;
                    break;
                }
            }
            appCompatActivity = null;
            if (appCompatActivity != null) {
                this.mLocalNightMode = appCompatActivity.getDelegate().getLocalNightMode();
            }
        }
        if (this.mLocalNightMode == -100) {
            SimpleArrayMap simpleArrayMap = sLocalNightModes;
            Integer num = (Integer) simpleArrayMap.getOrDefault(obj.getClass().getName(), null);
            if (num != null) {
                this.mLocalNightMode = num.intValue();
                simpleArrayMap.remove(obj.getClass().getName());
            }
        }
        if (window != null) {
            attachToWindow(window);
        }
        AppCompatDrawableManager.preload();
    }

    public static Configuration createOverrideConfigurationForDayNight(Context context, int i, Configuration configuration) {
        int i2 = i != 1 ? i != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ((ViewGroup) this.mSubDecor.findViewById(R.id.content)).addView(view, layoutParams);
        this.mAppCompatWindowCallback.mWrapped.onContentChanged();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b1, code lost:
    
        if (androidx.core.app.ActivityRecreator.recreate(r15) == false) goto L53;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean applyDayNight(boolean r15) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.applyDayNight(boolean):boolean");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final Context attachBaseContext2(Context context) {
        this.mBaseContextAttached = true;
        int i = this.mLocalNightMode;
        if (i == -100) {
            i = -100;
        }
        int mapNightMode = mapNightMode(context, i);
        Configuration configuration = null;
        if (sCanApplyOverrideConfiguration && (context instanceof android.view.ContextThemeWrapper)) {
            try {
                ((android.view.ContextThemeWrapper) context).applyOverrideConfiguration(createOverrideConfigurationForDayNight(context, mapNightMode, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(createOverrideConfigurationForDayNight(context, mapNightMode, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!sCanReturnDifferentContext) {
            return context;
        }
        int i2 = Build.VERSION.SDK_INT;
        Configuration configuration2 = new Configuration();
        configuration2.uiMode = -1;
        configuration2.fontScale = 0.0f;
        Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
        Configuration configuration4 = context.getResources().getConfiguration();
        configuration3.uiMode = configuration4.uiMode;
        if (!configuration3.equals(configuration4)) {
            configuration = new Configuration();
            configuration.fontScale = 0.0f;
            if (configuration3.diff(configuration4) != 0) {
                float f = configuration3.fontScale;
                float f2 = configuration4.fontScale;
                if (f != f2) {
                    configuration.fontScale = f2;
                }
                int i3 = configuration3.mcc;
                int i4 = configuration4.mcc;
                if (i3 != i4) {
                    configuration.mcc = i4;
                }
                int i5 = configuration3.mnc;
                int i6 = configuration4.mnc;
                if (i5 != i6) {
                    configuration.mnc = i6;
                }
                if (i2 >= 24) {
                    LocaleList locales = configuration3.getLocales();
                    LocaleList locales2 = configuration4.getLocales();
                    if (!locales.equals(locales2)) {
                        configuration.setLocales(locales2);
                        configuration.locale = configuration4.locale;
                    }
                } else if (!Objects.equals(configuration3.locale, configuration4.locale)) {
                    configuration.locale = configuration4.locale;
                }
                int i7 = configuration3.touchscreen;
                int i8 = configuration4.touchscreen;
                if (i7 != i8) {
                    configuration.touchscreen = i8;
                }
                int i9 = configuration3.keyboard;
                int i10 = configuration4.keyboard;
                if (i9 != i10) {
                    configuration.keyboard = i10;
                }
                int i11 = configuration3.keyboardHidden;
                int i12 = configuration4.keyboardHidden;
                if (i11 != i12) {
                    configuration.keyboardHidden = i12;
                }
                int i13 = configuration3.navigation;
                int i14 = configuration4.navigation;
                if (i13 != i14) {
                    configuration.navigation = i14;
                }
                int i15 = configuration3.navigationHidden;
                int i16 = configuration4.navigationHidden;
                if (i15 != i16) {
                    configuration.navigationHidden = i16;
                }
                int i17 = configuration3.orientation;
                int i18 = configuration4.orientation;
                if (i17 != i18) {
                    configuration.orientation = i18;
                }
                int i19 = configuration3.screenLayout & 15;
                int i20 = configuration4.screenLayout & 15;
                if (i19 != i20) {
                    configuration.screenLayout |= i20;
                }
                int i21 = configuration3.screenLayout & 192;
                int i22 = configuration4.screenLayout & 192;
                if (i21 != i22) {
                    configuration.screenLayout |= i22;
                }
                int i23 = configuration3.screenLayout & 48;
                int i24 = configuration4.screenLayout & 48;
                if (i23 != i24) {
                    configuration.screenLayout |= i24;
                }
                int i25 = configuration3.screenLayout & 768;
                int i26 = configuration4.screenLayout & 768;
                if (i25 != i26) {
                    configuration.screenLayout |= i26;
                }
                if (i2 >= 26) {
                    int i27 = configuration3.colorMode & 3;
                    int i28 = configuration4.colorMode & 3;
                    if (i27 != i28) {
                        configuration.colorMode |= i28;
                    }
                    int i29 = configuration3.colorMode & 12;
                    int i30 = configuration4.colorMode & 12;
                    if (i29 != i30) {
                        configuration.colorMode |= i30;
                    }
                }
                int i31 = configuration3.uiMode & 15;
                int i32 = configuration4.uiMode & 15;
                if (i31 != i32) {
                    configuration.uiMode |= i32;
                }
                int i33 = configuration3.uiMode & 48;
                int i34 = configuration4.uiMode & 48;
                if (i33 != i34) {
                    configuration.uiMode |= i34;
                }
                int i35 = configuration3.screenWidthDp;
                int i36 = configuration4.screenWidthDp;
                if (i35 != i36) {
                    configuration.screenWidthDp = i36;
                }
                int i37 = configuration3.screenHeightDp;
                int i38 = configuration4.screenHeightDp;
                if (i37 != i38) {
                    configuration.screenHeightDp = i38;
                }
                int i39 = configuration3.smallestScreenWidthDp;
                int i40 = configuration4.smallestScreenWidthDp;
                if (i39 != i40) {
                    configuration.smallestScreenWidthDp = i40;
                }
                int i41 = configuration3.densityDpi;
                int i42 = configuration4.densityDpi;
                if (i41 != i42) {
                    configuration.densityDpi = i42;
                }
            }
        }
        Configuration createOverrideConfigurationForDayNight = createOverrideConfigurationForDayNight(context, mapNightMode, configuration);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 2131886385);
        contextThemeWrapper.applyOverrideConfiguration(createOverrideConfigurationForDayNight);
        boolean z = false;
        try {
            z = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z) {
            ResourcesCompat.ThemeCompat.rebase(contextThemeWrapper.getTheme());
        }
        return contextThemeWrapper;
    }

    public final void attachToWindow(Window window) {
        if (this.mWindow != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof AppCompatWindowCallback) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        AppCompatWindowCallback appCompatWindowCallback = new AppCompatWindowCallback(callback);
        this.mAppCompatWindowCallback = appCompatWindowCallback;
        window.setCallback(appCompatWindowCallback);
        Context context = this.mContext;
        TintTypedArray tintTypedArray = new TintTypedArray(context, context.obtainStyledAttributes((AttributeSet) null, sWindowBackgroundStyleable));
        Drawable drawableIfKnown = tintTypedArray.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            window.setBackgroundDrawable(drawableIfKnown);
        }
        tintTypedArray.recycle();
        this.mWindow = window;
    }

    public final void callOnPanelClosed(int i, PanelFeatureState panelFeatureState, MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            menuBuilder = panelFeatureState.menu;
        }
        if (panelFeatureState.isOpen && !this.mIsDestroyed) {
            this.mAppCompatWindowCallback.mWrapped.onPanelClosed(i, menuBuilder);
        }
    }

    public final void checkCloseActionMenu(MenuBuilder menuBuilder) {
        ActionMenuPresenter actionMenuPresenter;
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.mDecorContentParent;
        actionBarOverlayLayout.pullChildren();
        ActionMenuView actionMenuView = ((ToolbarWidgetWrapper) actionBarOverlayLayout.mDecorToolbar).mToolbar.mMenuView;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.mPresenter) != null) {
            actionMenuPresenter.hideOverflowMenu();
            ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = actionMenuPresenter.mActionButtonPopup;
            if (actionButtonSubmenu != null) {
                actionButtonSubmenu.dismiss();
            }
        }
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback != null && !this.mIsDestroyed) {
            windowCallback.onPanelClosed(108, menuBuilder);
        }
        this.mClosingActionMenu = false;
    }

    public final void closePanel(PanelFeatureState panelFeatureState, boolean z) {
        ListMenuDecorView listMenuDecorView;
        DecorContentParent decorContentParent;
        if (z && panelFeatureState.featureId == 0 && (decorContentParent = this.mDecorContentParent) != null && ((ActionBarOverlayLayout) decorContentParent).isOverflowMenuShowing()) {
            checkCloseActionMenu(panelFeatureState.menu);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && panelFeatureState.isOpen && (listMenuDecorView = panelFeatureState.decorView) != null) {
            windowManager.removeView(listMenuDecorView);
            if (z) {
                callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, null);
            }
        }
        panelFeatureState.isPrepared = false;
        panelFeatureState.isHandled = false;
        panelFeatureState.isOpen = false;
        panelFeatureState.shownPanelView = null;
        panelFeatureState.refreshDecorView = true;
        if (this.mPreparedPanel == panelFeatureState) {
            this.mPreparedPanel = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d5, code lost:
    
        if ((r7 != null && r7.showOverflowMenu()) != false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f6, code lost:
    
        if ((r7 != null && r7.hideOverflowMenu()) != false) goto L93;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public final void doInvalidatePanelMenu(int i) {
        PanelFeatureState panelState = getPanelState(i);
        if (panelState.menu != null) {
            Bundle bundle = new Bundle();
            panelState.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState.frozenActionViewState = bundle;
            }
            panelState.menu.stopDispatchingItemsChanged();
            panelState.menu.clear();
        }
        panelState.refreshMenuContent = true;
        panelState.refreshDecorView = true;
        if ((i == 108 || i == 0) && this.mDecorContentParent != null) {
            PanelFeatureState panelState2 = getPanelState(0);
            panelState2.isPrepared = false;
            preparePanel(panelState2, null);
        }
    }

    public final void ensureSubDecor() {
        ViewGroup viewGroup;
        if (this.mSubDecorInstalled) {
            return;
        }
        int[] iArr = R$styleable.AppCompatTheme;
        Context context = this.mContext;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(126, false)) {
            requestWindowFeature(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            requestWindowFeature(108);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            requestWindowFeature(109);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            requestWindowFeature(10);
        }
        this.mIsFloating = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        ensureWindow();
        this.mWindow.getDecorView();
        LayoutInflater from = LayoutInflater.from(context);
        if (this.mWindowNoTitle) {
            viewGroup = (ViewGroup) from.inflate(this.mOverlayActionMode ? com.tawfiq.imaginstudio.imagetools.pixellab.R.layout.abc_screen_simple_overlay_action_mode : com.tawfiq.imaginstudio.imagetools.pixellab.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.mIsFloating) {
            viewGroup = (ViewGroup) from.inflate(com.tawfiq.imaginstudio.imagetools.pixellab.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.mOverlayActionBar = false;
            this.mHasActionBar = false;
        } else if (this.mHasActionBar) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.tawfiq.imaginstudio.imagetools.pixellab.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new ContextThemeWrapper(context, typedValue.resourceId) : context).inflate(com.tawfiq.imaginstudio.imagetools.pixellab.R.layout.abc_screen_toolbar, (ViewGroup) null);
            DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(com.tawfiq.imaginstudio.imagetools.pixellab.R.id.decor_content_parent);
            this.mDecorContentParent = decorContentParent;
            Window.Callback windowCallback = getWindowCallback();
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) decorContentParent;
            actionBarOverlayLayout.pullChildren();
            ((ToolbarWidgetWrapper) actionBarOverlayLayout.mDecorToolbar).mWindowCallback = windowCallback;
            if (this.mOverlayActionBar) {
                ((ActionBarOverlayLayout) this.mDecorContentParent).initFeature(109);
            }
            if (this.mFeatureProgress) {
                ((ActionBarOverlayLayout) this.mDecorContentParent).initFeature(2);
            }
            if (this.mFeatureIndeterminateProgress) {
                ((ActionBarOverlayLayout) this.mDecorContentParent).initFeature(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.mHasActionBar + ", windowActionBarOverlay: " + this.mOverlayActionBar + ", android:windowIsFloating: " + this.mIsFloating + ", windowActionModeOverlay: " + this.mOverlayActionMode + ", windowNoTitle: " + this.mWindowNoTitle + " }");
        }
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new AnonymousClass3());
        if (this.mDecorContentParent == null) {
            this.mTitleView = (TextView) viewGroup.findViewById(com.tawfiq.imaginstudio.imagetools.pixellab.R.id.title);
        }
        Method method = ViewUtils.sComputeFitSystemWindowsMethod;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.tawfiq.imaginstudio.imagetools.pixellab.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.mWindow.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.mWindow.setContentView(viewGroup);
        contentFrameLayout.mAttachListener = new AnonymousClass3();
        this.mSubDecor = viewGroup;
        Object obj = this.mHost;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.mTitle;
        if (!TextUtils.isEmpty(title)) {
            DecorContentParent decorContentParent2 = this.mDecorContentParent;
            if (decorContentParent2 != null) {
                ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) decorContentParent2;
                actionBarOverlayLayout2.pullChildren();
                ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) actionBarOverlayLayout2.mDecorToolbar;
                if (!toolbarWidgetWrapper.mTitleSet) {
                    toolbarWidgetWrapper.mTitle = title;
                    if ((toolbarWidgetWrapper.mDisplayOpts & 8) != 0) {
                        toolbarWidgetWrapper.mToolbar.setTitle(title);
                    }
                }
            } else {
                ActionBar actionBar = this.mActionBar;
                if (actionBar != null) {
                    actionBar.setWindowTitle(title);
                } else {
                    TextView textView = this.mTitleView;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.mSubDecor.findViewById(R.id.content);
        View decorView = this.mWindow.getDecorView();
        contentFrameLayout2.mDecorPadding.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        if (contentFrameLayout2.mMinWidthMajor == null) {
            contentFrameLayout2.mMinWidthMajor = new TypedValue();
        }
        obtainStyledAttributes2.getValue(124, contentFrameLayout2.mMinWidthMajor);
        if (contentFrameLayout2.mMinWidthMinor == null) {
            contentFrameLayout2.mMinWidthMinor = new TypedValue();
        }
        obtainStyledAttributes2.getValue(125, contentFrameLayout2.mMinWidthMinor);
        if (obtainStyledAttributes2.hasValue(122)) {
            if (contentFrameLayout2.mFixedWidthMajor == null) {
                contentFrameLayout2.mFixedWidthMajor = new TypedValue();
            }
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.mFixedWidthMajor);
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            if (contentFrameLayout2.mFixedWidthMinor == null) {
                contentFrameLayout2.mFixedWidthMinor = new TypedValue();
            }
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.mFixedWidthMinor);
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            if (contentFrameLayout2.mFixedHeightMajor == null) {
                contentFrameLayout2.mFixedHeightMajor = new TypedValue();
            }
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.mFixedHeightMajor);
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            if (contentFrameLayout2.mFixedHeightMinor == null) {
                contentFrameLayout2.mFixedHeightMinor = new TypedValue();
            }
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.mFixedHeightMinor);
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.mSubDecorInstalled = true;
        PanelFeatureState panelState = getPanelState(0);
        if (this.mIsDestroyed || panelState.menu != null) {
            return;
        }
        this.mInvalidatePanelMenuFeatures |= 4096;
        if (this.mInvalidatePanelMenuPosted) {
            return;
        }
        this.mWindow.getDecorView().postOnAnimation(this.mInvalidatePanelMenuRunnable);
        this.mInvalidatePanelMenuPosted = true;
    }

    public final void ensureWindow() {
        if (this.mWindow == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                attachToWindow(((Activity) obj).getWindow());
            }
        }
        if (this.mWindow == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final View findViewById(int i) {
        ensureSubDecor();
        return this.mWindow.findViewById(i);
    }

    public final AutoNightModeManager getAutoTimeNightModeManager(Context context) {
        if (this.mAutoTimeNightModeManager == null) {
            if (TwilightManager.sInstance == null) {
                Context applicationContext = context.getApplicationContext();
                TwilightManager.sInstance = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.mAutoTimeNightModeManager = new AutoTimeNightModeManager(TwilightManager.sInstance);
        }
        return this.mAutoTimeNightModeManager;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.fragment.app.FragmentManager$2] */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public final FragmentManager.AnonymousClass2 getDrawerToggleDelegate() {
        return new Object();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final int getLocalNightMode() {
        return this.mLocalNightMode;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            this.mMenuInflater = new SupportMenuInflater(actionBar != null ? actionBar.getThemedContext() : this.mContext);
        }
        return this.mMenuInflater;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r2 <= r5) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState getPanelState(int r5) {
        /*
            r4 = this;
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = r4.mPanels
            r1 = 0
            if (r0 == 0) goto L8
            int r2 = r0.length
            if (r2 > r5) goto L15
        L8:
            int r2 = r5 + 1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r2 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[r2]
            if (r0 == 0) goto L12
            int r3 = r0.length
            java.lang.System.arraycopy(r0, r1, r2, r1, r3)
        L12:
            r4.mPanels = r2
            r0 = r2
        L15:
            r2 = r0[r5]
            if (r2 != 0) goto L24
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r2 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState
            r2.<init>()
            r2.featureId = r5
            r2.refreshDecorView = r1
            r0[r5] = r2
        L24:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.getPanelState(int):androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionBar getSupportActionBar() {
        initWindowDecorActionBar();
        return this.mActionBar;
    }

    public final Window.Callback getWindowCallback() {
        return this.mWindow.getCallback();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initWindowDecorActionBar() {
        /*
            r3 = this;
            r3.ensureSubDecor()
            boolean r0 = r3.mHasActionBar
            if (r0 == 0) goto L33
            androidx.appcompat.app.ActionBar r0 = r3.mActionBar
            if (r0 == 0) goto Lc
            goto L33
        Lc:
            java.lang.Object r0 = r3.mHost
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L1e
            androidx.appcompat.app.WindowDecorActionBar r1 = new androidx.appcompat.app.WindowDecorActionBar
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r2 = r3.mOverlayActionBar
            r1.<init>(r0, r2)
        L1b:
            r3.mActionBar = r1
            goto L2a
        L1e:
            boolean r1 = r0 instanceof android.app.Dialog
            if (r1 == 0) goto L2a
            androidx.appcompat.app.WindowDecorActionBar r1 = new androidx.appcompat.app.WindowDecorActionBar
            android.app.Dialog r0 = (android.app.Dialog) r0
            r1.<init>(r0)
            goto L1b
        L2a:
            androidx.appcompat.app.ActionBar r0 = r3.mActionBar
            if (r0 == 0) goto L33
            boolean r1 = r3.mEnableDefaultActionBarUp
            r0.setDefaultDisplayHomeAsUpEnabled(r1)
        L33:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.initWindowDecorActionBar():void");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void installViewFactory() {
        LayoutInflater from = LayoutInflater.from(this.mContext);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else {
            boolean z = from.getFactory2() instanceof AppCompatDelegateImpl;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void invalidateOptionsMenu() {
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar == null || !actionBar.invalidateOptionsMenu()) {
            this.mInvalidatePanelMenuFeatures |= 1;
            if (this.mInvalidatePanelMenuPosted) {
                return;
            }
            View decorView = this.mWindow.getDecorView();
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            decorView.postOnAnimation(this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuPosted = true;
        }
    }

    public final int mapNightMode(Context context, int i) {
        AutoNightModeManager autoTimeNightModeManager;
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i != 0) {
                if (i != 1 && i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                    }
                    if (this.mAutoBatteryNightModeManager == null) {
                        this.mAutoBatteryNightModeManager = new AutoBatteryNightModeManager(context);
                    }
                    autoTimeNightModeManager = this.mAutoBatteryNightModeManager;
                }
            } else {
                if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                autoTimeNightModeManager = getAutoTimeNightModeManager(context);
            }
            return autoTimeNightModeManager.getApplyableNightMode();
        }
        return i;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void onConfigurationChanged(Configuration configuration) {
        if (this.mHasActionBar && this.mSubDecorInstalled) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.onConfigurationChanged();
            }
        }
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        Context context = this.mContext;
        synchronized (appCompatDrawableManager) {
            appCompatDrawableManager.mResourceManager.onConfigurationChanged(context);
        }
        applyDayNight(false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void onCreate() {
        String str;
        this.mBaseContextAttached = true;
        applyDayNight(false);
        ensureWindow();
        Object obj = this.mHost;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = NavUtils.getParentActivityName(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                ActionBar actionBar = this.mActionBar;
                if (actionBar == null) {
                    this.mEnableDefaultActionBarUp = true;
                } else {
                    actionBar.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
            synchronized (AppCompatDelegate.sActivityDelegatesLock) {
                AppCompatDelegate.removeDelegateFromActives(this);
                AppCompatDelegate.sActivityDelegates.add(new WeakReference(this));
            }
        }
        this.mCreated = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x00ec, code lost:
    
        if (r9.equals("ImageButton") == false) goto L77;
     */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r8, java.lang.String r9, android.content.Context r10, android.util.AttributeSet r11) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDestroy() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.mHost
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = androidx.appcompat.app.AppCompatDelegate.sActivityDelegatesLock
            monitor-enter(r0)
            androidx.appcompat.app.AppCompatDelegate.removeDelegateFromActives(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.mInvalidatePanelMenuPosted
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.mWindow
            android.view.View r0 = r0.getDecorView()
            androidx.appcompat.app.AppCompatDelegateImpl$2 r1 = r3.mInvalidatePanelMenuRunnable
            r0.removeCallbacks(r1)
        L20:
            r0 = 0
            r3.mStarted = r0
            r0 = 1
            r3.mIsDestroyed = r0
            int r0 = r3.mLocalNightMode
            r1 = -100
            if (r0 == r1) goto L50
            java.lang.Object r0 = r3.mHost
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L50
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L50
            androidx.collection.SimpleArrayMap r0 = androidx.appcompat.app.AppCompatDelegateImpl.sLocalNightModes
            java.lang.Object r1 = r3.mHost
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.mLocalNightMode
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5f
        L50:
            androidx.collection.SimpleArrayMap r0 = androidx.appcompat.app.AppCompatDelegateImpl.sLocalNightModes
            java.lang.Object r1 = r3.mHost
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5f:
            androidx.appcompat.app.ActionBar r0 = r3.mActionBar
            if (r0 == 0) goto L66
            r0.onDestroy()
        L66:
            androidx.appcompat.app.AppCompatDelegateImpl$AutoTimeNightModeManager r0 = r3.mAutoTimeNightModeManager
            if (r0 == 0) goto L6d
            r0.cleanup()
        L6d:
            androidx.appcompat.app.AppCompatDelegateImpl$AutoBatteryNightModeManager r0 = r3.mAutoBatteryNightModeManager
            if (r0 == 0) goto L74
            r0.cleanup()
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onDestroy():void");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState panelFeatureState;
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback != null && !this.mIsDestroyed) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            PanelFeatureState[] panelFeatureStateArr = this.mPanels;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            int i = 0;
            while (true) {
                if (i < length) {
                    panelFeatureState = panelFeatureStateArr[i];
                    if (panelFeatureState != null && panelFeatureState.menu == rootMenu) {
                        break;
                    }
                    i++;
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                return windowCallback.onMenuItemSelected(panelFeatureState.featureId, menuItem);
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005d, code lost:
    
        if (r6 == false) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005a  */
    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder r6) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder):void");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void onPostCreate() {
        ensureSubDecor();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void onPostResume() {
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void onSaveInstanceState() {
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void onStart() {
        this.mStarted = true;
        applyDayNight(true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void onStop() {
        this.mStarted = false;
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x014b, code lost:
    
        if (r15 != null) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void openPanel(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r14, android.view.KeyEvent r15) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.openPanel(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):void");
    }

    public final boolean performPanelShortcut(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.isPrepared || preparePanel(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.menu) != null) {
            return menuBuilder.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    public final boolean preparePanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        Resources.Theme theme;
        DecorContentParent decorContentParent3;
        DecorContentParent decorContentParent4;
        if (this.mIsDestroyed) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.mPreparedPanel;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            closePanel(panelFeatureState2, false);
        }
        Window.Callback windowCallback = getWindowCallback();
        int i = panelFeatureState.featureId;
        if (windowCallback != null) {
            panelFeatureState.createdPanelView = windowCallback.onCreatePanelView(i);
        }
        boolean z = i == 0 || i == 108;
        if (z && (decorContentParent4 = this.mDecorContentParent) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) decorContentParent4;
            actionBarOverlayLayout.pullChildren();
            ((ToolbarWidgetWrapper) actionBarOverlayLayout.mDecorToolbar).mMenuPrepared = true;
        }
        if (panelFeatureState.createdPanelView == null && (!z || !(this.mActionBar instanceof ToolbarActionBar))) {
            MenuBuilder menuBuilder = panelFeatureState.menu;
            if (menuBuilder == null || panelFeatureState.refreshMenuContent) {
                if (menuBuilder == null) {
                    Context context = this.mContext;
                    if ((i == 0 || i == 108) && this.mDecorContentParent != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(com.tawfiq.imaginstudio.imagetools.pixellab.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(com.tawfiq.imaginstudio.imagetools.pixellab.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme2.resolveAttribute(com.tawfiq.imaginstudio.imagetools.pixellab.R.attr.actionBarWidgetTheme, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                            contextThemeWrapper.getTheme().setTo(theme);
                            context = contextThemeWrapper;
                        }
                    }
                    MenuBuilder menuBuilder2 = new MenuBuilder(context);
                    menuBuilder2.mCallback = this;
                    MenuBuilder menuBuilder3 = panelFeatureState.menu;
                    if (menuBuilder2 != menuBuilder3) {
                        if (menuBuilder3 != null) {
                            menuBuilder3.removeMenuPresenter(panelFeatureState.listMenuPresenter);
                        }
                        panelFeatureState.menu = menuBuilder2;
                        ListMenuPresenter listMenuPresenter = panelFeatureState.listMenuPresenter;
                        if (listMenuPresenter != null) {
                            menuBuilder2.addMenuPresenter(listMenuPresenter);
                        }
                    }
                    if (panelFeatureState.menu == null) {
                        return false;
                    }
                }
                if (z && (decorContentParent2 = this.mDecorContentParent) != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new AnonymousClass3();
                    }
                    ((ActionBarOverlayLayout) decorContentParent2).setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.stopDispatchingItemsChanged();
                if (!windowCallback.onCreatePanelMenu(i, panelFeatureState.menu)) {
                    MenuBuilder menuBuilder4 = panelFeatureState.menu;
                    if (menuBuilder4 != null) {
                        if (menuBuilder4 != null) {
                            menuBuilder4.removeMenuPresenter(panelFeatureState.listMenuPresenter);
                        }
                        panelFeatureState.menu = null;
                    }
                    if (z && (decorContentParent = this.mDecorContentParent) != null) {
                        ((ActionBarOverlayLayout) decorContentParent).setMenu(null, this.mActionMenuPresenterCallback);
                    }
                    return false;
                }
                panelFeatureState.refreshMenuContent = false;
            }
            panelFeatureState.menu.stopDispatchingItemsChanged();
            Bundle bundle = panelFeatureState.frozenActionViewState;
            if (bundle != null) {
                panelFeatureState.menu.restoreActionViewStates(bundle);
                panelFeatureState.frozenActionViewState = null;
            }
            if (!windowCallback.onPreparePanel(0, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                if (z && (decorContentParent3 = this.mDecorContentParent) != null) {
                    ((ActionBarOverlayLayout) decorContentParent3).setMenu(null, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.startDispatchingItemsChanged();
                return false;
            }
            panelFeatureState.menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            panelFeatureState.menu.startDispatchingItemsChanged();
        }
        panelFeatureState.isPrepared = true;
        panelFeatureState.isHandled = false;
        this.mPreparedPanel = panelFeatureState;
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final boolean requestWindowFeature(int i) {
        if (i == 8) {
            i = 108;
        } else if (i == 9) {
            i = 109;
        }
        if (this.mWindowNoTitle && i == 108) {
            return false;
        }
        if (this.mHasActionBar && i == 1) {
            this.mHasActionBar = false;
        }
        if (i == 1) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mWindowNoTitle = true;
            return true;
        }
        if (i == 2) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mFeatureProgress = true;
            return true;
        }
        if (i == 5) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mFeatureIndeterminateProgress = true;
            return true;
        }
        if (i == 10) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mOverlayActionMode = true;
            return true;
        }
        if (i == 108) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mHasActionBar = true;
            return true;
        }
        if (i != 109) {
            return this.mWindow.requestFeature(i);
        }
        throwFeatureRequestIfSubDecorInstalled();
        this.mOverlayActionBar = true;
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setContentView(int i) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i, viewGroup);
        this.mAppCompatWindowCallback.mWrapped.onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setContentView(View view) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mAppCompatWindowCallback.mWrapped.onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.mAppCompatWindowCallback.mWrapped.onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setSupportActionBar(Toolbar toolbar) {
        Window window;
        Window.Callback callback;
        Object obj = this.mHost;
        if (obj instanceof Activity) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            if (actionBar instanceof WindowDecorActionBar) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.mMenuInflater = null;
            if (actionBar != null) {
                actionBar.onDestroy();
            }
            if (toolbar != null) {
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : this.mTitle, this.mAppCompatWindowCallback);
                this.mActionBar = toolbarActionBar;
                window = this.mWindow;
                callback = toolbarActionBar.mWindowCallback;
            } else {
                this.mActionBar = null;
                window = this.mWindow;
                callback = this.mAppCompatWindowCallback;
            }
            window.setCallback(callback);
            invalidateOptionsMenu();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setTheme(int i) {
        this.mThemeResId = i;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent == null) {
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.setWindowTitle(charSequence);
                return;
            }
            TextView textView = this.mTitleView;
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            return;
        }
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) decorContentParent;
        actionBarOverlayLayout.pullChildren();
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) actionBarOverlayLayout.mDecorToolbar;
        if (toolbarWidgetWrapper.mTitleSet) {
            return;
        }
        toolbarWidgetWrapper.mTitle = charSequence;
        if ((toolbarWidgetWrapper.mDisplayOpts & 8) != 0) {
            toolbarWidgetWrapper.mToolbar.setTitle(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x014e, code lost:
    
        if (r9.isLaidOut() != false) goto L63;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004a  */
    /* JADX WARN: Type inference failed for: r2v18, types: [androidx.appcompat.app.AppCompatDelegateImpl$6] */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.appcompat.view.StandaloneActionMode, androidx.appcompat.view.menu.MenuBuilder$Callback, androidx.appcompat.view.ActionMode] */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.appcompat.view.ActionMode startSupportActionMode(androidx.appcompat.view.ActionMode.Callback r9) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.startSupportActionMode(androidx.appcompat.view.ActionMode$Callback):androidx.appcompat.view.ActionMode");
    }

    public final void throwFeatureRequestIfSubDecorInstalled() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }
}
