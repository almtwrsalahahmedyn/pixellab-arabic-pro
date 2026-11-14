package androidx.core.view;

import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuItemImpl;

/* loaded from: classes.dex */
public abstract class ActionProvider {

    /* loaded from: classes.dex */
    public interface VisibilityListener {
    }

    public abstract boolean isVisible();

    public abstract View onCreateActionView(MenuItem menuItem);

    public abstract boolean overridesItemVisibility();

    public abstract void setVisibilityListener(MenuItemImpl.AnonymousClass1 anonymousClass1);
}
