package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class SupportMenuInflater extends MenuInflater {
    public static final Class[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE;
    public static final Class[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
    public final Object[] mActionProviderConstructorArguments;
    public final Object[] mActionViewConstructorArguments;
    public final Context mContext;
    public Object mRealOwner;

    /* loaded from: classes.dex */
    public final class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        public static final Class[] PARAM_TYPES = {MenuItem.class};
        public Method mMethod;
        public Object mRealOwner;

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            Method method = this.mMethod;
            try {
                Class<?> returnType = method.getReturnType();
                Class<?> cls = Boolean.TYPE;
                Object obj = this.mRealOwner;
                if (returnType == cls) {
                    return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                }
                method.invoke(obj, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class MenuState {
        public ActionProvider itemActionProvider;
        public String itemActionViewClassName;
        public int itemActionViewLayout;
        public boolean itemAdded;
        public int itemAlphabeticModifiers;
        public char itemAlphabeticShortcut;
        public int itemCategoryOrder;
        public int itemCheckable;
        public boolean itemChecked;
        public CharSequence itemContentDescription;
        public boolean itemEnabled;
        public int itemIconResId;
        public int itemId;
        public String itemListenerMethodName;
        public int itemNumericModifiers;
        public char itemNumericShortcut;
        public int itemShowAsAction;
        public CharSequence itemTitle;
        public CharSequence itemTitleCondensed;
        public CharSequence itemTooltipText;
        public boolean itemVisible;
        public final Menu menu;
        public ColorStateList itemIconTintList = null;
        public PorterDuff.Mode itemIconTintMode = null;
        public int groupId = 0;
        public int groupCategory = 0;
        public int groupOrder = 0;
        public int groupCheckable = 0;
        public boolean groupVisible = true;
        public boolean groupEnabled = true;

        public MenuState(Menu menu) {
            this.menu = menu;
        }

        public final Object newInstance(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, SupportMenuInflater.this.mContext.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v30, types: [android.view.MenuItem$OnMenuItemClickListener, androidx.appcompat.view.SupportMenuInflater$InflatedOnMenuItemClickListener, java.lang.Object] */
        public final void setItem(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled).setCheckable(this.itemCheckable >= 1).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId);
            int i = this.itemShowAsAction;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            String str = this.itemListenerMethodName;
            SupportMenuInflater supportMenuInflater = SupportMenuInflater.this;
            if (str != null) {
                if (supportMenuInflater.mContext.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                if (supportMenuInflater.mRealOwner == null) {
                    supportMenuInflater.mRealOwner = SupportMenuInflater.findRealOwner(supportMenuInflater.mContext);
                }
                Object obj = supportMenuInflater.mRealOwner;
                String str2 = this.itemListenerMethodName;
                ?? obj2 = new Object();
                obj2.mRealOwner = obj;
                Class<?> cls = obj.getClass();
                try {
                    obj2.mMethod = cls.getMethod(str2, InflatedOnMenuItemClickListener.PARAM_TYPES);
                    menuItem.setOnMenuItemClickListener(obj2);
                } catch (Exception e) {
                    InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str2 + " in class " + cls.getName());
                    inflateException.initCause(e);
                    throw inflateException;
                }
            }
            if (this.itemCheckable >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
                    menuItemImpl.mFlags = (menuItemImpl.mFlags & (-5)) | 4;
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    MenuItemWrapperICS menuItemWrapperICS = (MenuItemWrapperICS) menuItem;
                    try {
                        Method method = menuItemWrapperICS.mSetExclusiveCheckableMethod;
                        SupportMenuItem supportMenuItem = menuItemWrapperICS.mWrappedObject;
                        if (method == null) {
                            menuItemWrapperICS.mSetExclusiveCheckableMethod = supportMenuItem.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        menuItemWrapperICS.mSetExclusiveCheckableMethod.invoke(supportMenuItem, Boolean.TRUE);
                    } catch (Exception unused) {
                    }
                }
            }
            String str3 = this.itemActionViewClassName;
            if (str3 != null) {
                menuItem.setActionView((View) newInstance(str3, SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE, supportMenuInflater.mActionViewConstructorArguments));
                z = true;
            }
            int i2 = this.itemActionViewLayout;
            if (i2 > 0 && !z) {
                menuItem.setActionView(i2);
            }
            ActionProvider actionProvider = this.itemActionProvider;
            if (actionProvider != null && (menuItem instanceof SupportMenuItem)) {
                ((SupportMenuItem) menuItem).setSupportActionProvider(actionProvider);
            }
            CharSequence charSequence = this.itemContentDescription;
            boolean z2 = menuItem instanceof SupportMenuItem;
            if (z2) {
                ((SupportMenuItem) menuItem).setContentDescription(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.itemTooltipText;
            if (z2) {
                ((SupportMenuItem) menuItem).setTooltipText(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c = this.itemAlphabeticShortcut;
            int i3 = this.itemAlphabeticModifiers;
            if (z2) {
                ((SupportMenuItem) menuItem).setAlphabeticShortcut(c, i3);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c, i3);
            }
            char c2 = this.itemNumericShortcut;
            int i4 = this.itemNumericModifiers;
            if (z2) {
                ((SupportMenuItem) menuItem).setNumericShortcut(c2, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c2, i4);
            }
            PorterDuff.Mode mode = this.itemIconTintMode;
            if (mode != null) {
                if (z2) {
                    ((SupportMenuItem) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.itemIconTintList;
            if (colorStateList != null) {
                if (z2) {
                    ((SupportMenuItem) menuItem).setIconTintList(colorStateList);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintList(colorStateList);
                }
            }
        }
    }

    static {
        Class[] clsArr = {Context.class};
        ACTION_VIEW_CONSTRUCTOR_SIGNATURE = clsArr;
        ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.mContext = context;
        Object[] objArr = {context};
        this.mActionViewConstructorArguments = objArr;
        this.mActionProviderConstructorArguments = objArr;
    }

    public static Object findRealOwner(Context context) {
        return (!(context instanceof Activity) && (context instanceof ContextWrapper)) ? findRealOwner(((ContextWrapper) context).getBaseContext()) : context;
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.mContext.getResources().getLayout(i);
                    parseMenu(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                    xmlResourceParser.close();
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void parseMenu(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) {
        int i;
        ColorStateList colorStateList;
        MenuState menuState = new MenuState(menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            i = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != i) {
                if (eventType == 3) {
                    String name2 = xmlResourceParser.getName();
                    if (z2 && name2.equals(str)) {
                        z2 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        menuState.groupId = 0;
                        menuState.groupCategory = 0;
                        menuState.groupOrder = 0;
                        menuState.groupCheckable = 0;
                        menuState.groupVisible = true;
                        menuState.groupEnabled = true;
                    } else if (name2.equals("item")) {
                        if (!menuState.itemAdded) {
                            ActionProvider actionProvider = menuState.itemActionProvider;
                            if (actionProvider == null || !((MenuItemWrapperICS.ActionProviderWrapper) actionProvider).mInner.hasSubMenu()) {
                                menuState.itemAdded = true;
                                menuState.setItem(menuState.menu.add(menuState.groupId, menuState.itemId, menuState.itemCategoryOrder, menuState.itemTitle));
                            } else {
                                menuState.itemAdded = true;
                                menuState.setItem(menuState.menu.addSubMenu(menuState.groupId, menuState.itemId, menuState.itemCategoryOrder, menuState.itemTitle).getItem());
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlResourceParser.getName();
                boolean equals = name3.equals("group");
                SupportMenuInflater supportMenuInflater = SupportMenuInflater.this;
                if (equals) {
                    TypedArray obtainStyledAttributes = supportMenuInflater.mContext.obtainStyledAttributes(attributeSet, R$styleable.MenuGroup);
                    menuState.groupId = obtainStyledAttributes.getResourceId(1, 0);
                    menuState.groupCategory = obtainStyledAttributes.getInt(3, 0);
                    menuState.groupOrder = obtainStyledAttributes.getInt(4, 0);
                    menuState.groupCheckable = obtainStyledAttributes.getInt(5, 0);
                    menuState.groupVisible = obtainStyledAttributes.getBoolean(2, true);
                    menuState.groupEnabled = obtainStyledAttributes.getBoolean(0, true);
                    obtainStyledAttributes.recycle();
                } else if (name3.equals("item")) {
                    Context context = supportMenuInflater.mContext;
                    TintTypedArray tintTypedArray = new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, R$styleable.MenuItem));
                    menuState.itemId = tintTypedArray.getResourceId(2, 0);
                    menuState.itemCategoryOrder = (tintTypedArray.getInt(5, menuState.groupCategory) & (-65536)) | (tintTypedArray.getInt(6, menuState.groupOrder) & 65535);
                    menuState.itemTitle = tintTypedArray.getText(7);
                    menuState.itemTitleCondensed = tintTypedArray.getText(8);
                    menuState.itemIconResId = tintTypedArray.getResourceId(0, 0);
                    String string = tintTypedArray.getString(9);
                    menuState.itemAlphabeticShortcut = string == null ? (char) 0 : string.charAt(0);
                    menuState.itemAlphabeticModifiers = tintTypedArray.getInt(16, 4096);
                    String string2 = tintTypedArray.getString(10);
                    menuState.itemNumericShortcut = string2 == null ? (char) 0 : string2.charAt(0);
                    menuState.itemNumericModifiers = tintTypedArray.getInt(20, 4096);
                    menuState.itemCheckable = tintTypedArray.hasValue(11) ? tintTypedArray.getBoolean(11, false) : menuState.groupCheckable;
                    menuState.itemChecked = tintTypedArray.getBoolean(3, false);
                    menuState.itemVisible = tintTypedArray.getBoolean(4, menuState.groupVisible);
                    menuState.itemEnabled = tintTypedArray.getBoolean(1, menuState.groupEnabled);
                    menuState.itemShowAsAction = tintTypedArray.getInt(21, -1);
                    menuState.itemListenerMethodName = tintTypedArray.getString(12);
                    menuState.itemActionViewLayout = tintTypedArray.getResourceId(13, 0);
                    menuState.itemActionViewClassName = tintTypedArray.getString(15);
                    String string3 = tintTypedArray.getString(14);
                    menuState.itemActionProvider = ((string3 != null) && menuState.itemActionViewLayout == 0 && menuState.itemActionViewClassName == null) ? (ActionProvider) menuState.newInstance(string3, ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, supportMenuInflater.mActionProviderConstructorArguments) : null;
                    menuState.itemContentDescription = tintTypedArray.getText(17);
                    menuState.itemTooltipText = tintTypedArray.getText(22);
                    if (tintTypedArray.hasValue(19)) {
                        menuState.itemIconTintMode = DrawableUtils.parseTintMode(tintTypedArray.getInt(19, -1), menuState.itemIconTintMode);
                        colorStateList = null;
                    } else {
                        colorStateList = null;
                        menuState.itemIconTintMode = null;
                    }
                    if (tintTypedArray.hasValue(18)) {
                        menuState.itemIconTintList = tintTypedArray.getColorStateList(18);
                    } else {
                        menuState.itemIconTintList = colorStateList;
                    }
                    tintTypedArray.recycle();
                    menuState.itemAdded = false;
                } else if (name3.equals("menu")) {
                    menuState.itemAdded = true;
                    SubMenu addSubMenu = menuState.menu.addSubMenu(menuState.groupId, menuState.itemId, menuState.itemCategoryOrder, menuState.itemTitle);
                    menuState.setItem(addSubMenu.getItem());
                    parseMenu(xmlResourceParser, attributeSet, addSubMenu);
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlResourceParser.next();
            i = 2;
        }
    }
}
