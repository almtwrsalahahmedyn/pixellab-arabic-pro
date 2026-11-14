package androidx.appcompat.widget;

import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class TooltipCompatHandler implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static TooltipCompatHandler sActiveHandler;
    public static TooltipCompatHandler sPendingHandler;
    public final View mAnchor;
    public int mAnchorX;
    public int mAnchorY;
    public boolean mFromTouch;
    public final int mHoverSlop;
    public TooltipPopup mPopup;
    public final CharSequence mTooltipText;
    public final AnonymousClass1 mShowRunnable = new Runnable() { // from class: androidx.appcompat.widget.TooltipCompatHandler.1
        @Override // java.lang.Runnable
        public final void run() {
            TooltipCompatHandler.this.show(false);
        }
    };
    public final AnonymousClass2 mHideRunnable = new Runnable() { // from class: androidx.appcompat.widget.TooltipCompatHandler.2
        @Override // java.lang.Runnable
        public final void run() {
            TooltipCompatHandler.this.hide();
        }
    };

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.TooltipCompatHandler$1] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.TooltipCompatHandler$2] */
    public TooltipCompatHandler(CharSequence charSequence, View view) {
        this.mAnchor = view;
        this.mTooltipText = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = ViewConfigurationCompat.sGetScaledScrollFactorMethod;
        this.mHoverSlop = Build.VERSION.SDK_INT >= 28 ? viewConfiguration.getScaledHoverSlop() : viewConfiguration.getScaledTouchSlop() / 2;
        this.mAnchorX = Integer.MAX_VALUE;
        this.mAnchorY = Integer.MAX_VALUE;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void setPendingHandler(TooltipCompatHandler tooltipCompatHandler) {
        TooltipCompatHandler tooltipCompatHandler2 = sPendingHandler;
        if (tooltipCompatHandler2 != null) {
            tooltipCompatHandler2.mAnchor.removeCallbacks(tooltipCompatHandler2.mShowRunnable);
        }
        sPendingHandler = tooltipCompatHandler;
        if (tooltipCompatHandler != null) {
            tooltipCompatHandler.mAnchor.postDelayed(tooltipCompatHandler.mShowRunnable, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void hide() {
        TooltipCompatHandler tooltipCompatHandler = sActiveHandler;
        View view = this.mAnchor;
        if (tooltipCompatHandler == this) {
            sActiveHandler = null;
            TooltipPopup tooltipPopup = this.mPopup;
            if (tooltipPopup != null) {
                tooltipPopup.hide();
                this.mPopup = null;
                this.mAnchorX = Integer.MAX_VALUE;
                this.mAnchorY = Integer.MAX_VALUE;
                view.removeOnAttachStateChangeListener(this);
            }
        }
        if (sPendingHandler == this) {
            setPendingHandler(null);
        }
        view.removeCallbacks(this.mHideRunnable);
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.mPopup != null && this.mFromTouch) {
            return false;
        }
        View view2 = this.mAnchor;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view2.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                this.mAnchorX = Integer.MAX_VALUE;
                this.mAnchorY = Integer.MAX_VALUE;
                hide();
            }
        } else if (view2.isEnabled() && this.mPopup == null) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int abs = Math.abs(x - this.mAnchorX);
            int i = this.mHoverSlop;
            if (abs > i || Math.abs(y - this.mAnchorY) > i) {
                this.mAnchorX = x;
                this.mAnchorY = y;
                z = true;
            } else {
                z = false;
            }
            if (z) {
                setPendingHandler(this);
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.mAnchorX = view.getWidth() / 2;
        this.mAnchorY = view.getHeight() / 2;
        show(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        hide();
    }

    public final void show(boolean z) {
        int longPressTimeout;
        long j;
        long j2;
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        View view = this.mAnchor;
        if (view.isAttachedToWindow()) {
            setPendingHandler(null);
            TooltipCompatHandler tooltipCompatHandler = sActiveHandler;
            if (tooltipCompatHandler != null) {
                tooltipCompatHandler.hide();
            }
            sActiveHandler = this;
            this.mFromTouch = z;
            TooltipPopup tooltipPopup = new TooltipPopup(view.getContext());
            this.mPopup = tooltipPopup;
            tooltipPopup.show(this.mAnchor, this.mAnchorX, this.mAnchorY, this.mFromTouch, this.mTooltipText);
            view.addOnAttachStateChangeListener(this);
            if (this.mFromTouch) {
                j2 = 2500;
            } else {
                if ((view.getWindowSystemUiVisibility() & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 15000;
                }
                j2 = j - longPressTimeout;
            }
            AnonymousClass2 anonymousClass2 = this.mHideRunnable;
            view.removeCallbacks(anonymousClass2);
            view.postDelayed(anonymousClass2, j2);
        }
    }
}
