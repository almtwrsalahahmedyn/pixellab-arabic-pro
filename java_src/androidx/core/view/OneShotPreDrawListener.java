package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.Objects;

/* loaded from: classes.dex */
public final class OneShotPreDrawListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    public final Runnable mRunnable;
    public final View mView;
    public ViewTreeObserver mViewTreeObserver;

    public OneShotPreDrawListener(ViewGroup viewGroup, Runnable runnable) {
        this.mView = viewGroup;
        this.mViewTreeObserver = viewGroup.getViewTreeObserver();
        this.mRunnable = runnable;
    }

    public static void add(ViewGroup viewGroup, Runnable runnable) {
        Objects.requireNonNull(viewGroup, "view == null");
        Objects.requireNonNull(runnable, "runnable == null");
        OneShotPreDrawListener oneShotPreDrawListener = new OneShotPreDrawListener(viewGroup, runnable);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(oneShotPreDrawListener);
        viewGroup.addOnAttachStateChangeListener(oneShotPreDrawListener);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean isAlive = this.mViewTreeObserver.isAlive();
        View view = this.mView;
        (isAlive ? this.mViewTreeObserver : view.getViewTreeObserver()).removeOnPreDrawListener(this);
        view.removeOnAttachStateChangeListener(this);
        this.mRunnable.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.mViewTreeObserver = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean isAlive = this.mViewTreeObserver.isAlive();
        View view2 = this.mView;
        (isAlive ? this.mViewTreeObserver : view2.getViewTreeObserver()).removeOnPreDrawListener(this);
        view2.removeOnAttachStateChangeListener(this);
    }
}
