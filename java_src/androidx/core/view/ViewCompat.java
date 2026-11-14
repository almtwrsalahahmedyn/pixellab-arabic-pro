package androidx.core.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.graphics.Insets;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.TextViewOnReceiveContentListener;
import androidx.fragment.app.Fragment$$ExternalSyntheticOutline0;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class ViewCompat {
    public static final AnonymousClass1 NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
    public static boolean sAccessibilityDelegateCheckFailed;
    public static Field sAccessibilityDelegateField;
    public static ThreadLocal sThreadLocalRect;
    public static WeakHashMap sViewPropertyAnimatorMap;

    /* renamed from: androidx.core.view.ViewCompat$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends AccessibilityViewProperty {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object frameworkGet(View view) {
            return Boolean.valueOf(view.isScreenReaderFocusable());
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends AccessibilityViewProperty {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object frameworkGet(View view) {
            return view.getAccessibilityPaneTitle();
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 extends AccessibilityViewProperty {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object frameworkGet(View view) {
            return view.getStateDescription();
        }

        public final void frameworkSet(View view, Object obj) {
            view.setStateDescription((CharSequence) obj);
        }

        public final boolean shouldUpdate(Object obj, Object obj2) {
            return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 extends AccessibilityViewProperty {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object frameworkGet(View view) {
            return Boolean.valueOf(view.isAccessibilityHeading());
        }
    }

    /* loaded from: classes.dex */
    public final class AccessibilityPaneVisibilityManager implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {
        public final WeakHashMap mPanesToVisible = new WeakHashMap();

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                WeakHashMap weakHashMap = this.mPanesToVisible;
                for (Map.Entry entry : weakHashMap.entrySet()) {
                    View view = (View) entry.getKey();
                    boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
                    boolean z = view.getVisibility() == 0;
                    if (booleanValue != z) {
                        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, z ? 16 : 32);
                        weakHashMap.put(view, Boolean.valueOf(z));
                    }
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    /* loaded from: classes.dex */
    public abstract class AccessibilityViewProperty {
        public final int mFrameworkMinimumSdk;
        public final int mTagKey;
        public final Class mType;

        public AccessibilityViewProperty(int i, Class cls, int i2, int i3) {
            this.mTagKey = i;
            this.mType = cls;
            this.mFrameworkMinimumSdk = i3;
        }

        public abstract Object frameworkGet(View view);

        public final Object get(View view) {
            if (Build.VERSION.SDK_INT >= this.mFrameworkMinimumSdk) {
                return frameworkGet(view);
            }
            Object tag = view.getTag(this.mTagKey);
            if (this.mType.isInstance(tag)) {
                return tag;
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public final class UnhandledKeyEventManager {
        public static final ArrayList sViewsWithListeners = new ArrayList();
        public WeakHashMap mViewsContainingListeners = null;
        public SparseArray mCapturedKeys = null;
        public WeakReference mLastDispatchedPreViewKeyEvent = null;

        public static void onUnhandledKeyEvent(View view) {
            int size;
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList == null || arrayList.size() - 1 < 0) {
                return;
            }
            Fragment$$ExternalSyntheticOutline0.m(arrayList.get(size));
            throw null;
        }

        public final View dispatchInOrder(View view) {
            View dispatchInOrder;
            WeakHashMap weakHashMap = this.mViewsContainingListeners;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                do {
                    childCount--;
                    if (childCount >= 0) {
                        dispatchInOrder = dispatchInOrder(viewGroup.getChildAt(childCount));
                    }
                } while (dispatchInOrder == null);
                return dispatchInOrder;
            }
            onUnhandledKeyEvent(view);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.core.view.ViewCompat$1] */
    static {
        new AtomicInteger(1);
        sViewPropertyAnimatorMap = null;
        sAccessibilityDelegateCheckFailed = false;
        NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR = new OnReceiveContentViewBehavior() { // from class: androidx.core.view.ViewCompat.1
            @Override // androidx.core.view.OnReceiveContentViewBehavior
            public final ContentInfoCompat onReceiveContent(ContentInfoCompat contentInfoCompat) {
                return contentInfoCompat;
            }
        };
        new AccessibilityPaneVisibilityManager();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.core.view.ViewPropertyAnimatorCompat, java.lang.Object] */
    public static ViewPropertyAnimatorCompat animate(View view) {
        if (sViewPropertyAnimatorMap == null) {
            sViewPropertyAnimatorMap = new WeakHashMap();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat) sViewPropertyAnimatorMap.get(view);
        if (viewPropertyAnimatorCompat != null) {
            return viewPropertyAnimatorCompat;
        }
        ?? obj = new Object();
        obj.mView = new WeakReference(view);
        sViewPropertyAnimatorMap.put(view, obj);
        return obj;
    }

    public static WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
            if (!dispatchApplyWindowInsets.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(view, dispatchApplyWindowInsets);
            }
        }
        return windowInsetsCompat;
    }

    public static boolean dispatchUnhandledKeyEventBeforeCallback(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = UnhandledKeyEventManager.sViewsWithListeners;
        UnhandledKeyEventManager unhandledKeyEventManager = (UnhandledKeyEventManager) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (unhandledKeyEventManager == null) {
            unhandledKeyEventManager = new UnhandledKeyEventManager();
            view.setTag(R.id.tag_unhandled_key_event_manager, unhandledKeyEventManager);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = unhandledKeyEventManager.mViewsContainingListeners;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = UnhandledKeyEventManager.sViewsWithListeners;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    if (unhandledKeyEventManager.mViewsContainingListeners == null) {
                        unhandledKeyEventManager.mViewsContainingListeners = new WeakHashMap();
                    }
                    int size = arrayList2.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        ArrayList arrayList3 = UnhandledKeyEventManager.sViewsWithListeners;
                        View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                        if (view2 == null) {
                            arrayList3.remove(size);
                        } else {
                            unhandledKeyEventManager.mViewsContainingListeners.put(view2, Boolean.TRUE);
                            for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                unhandledKeyEventManager.mViewsContainingListeners.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
        View dispatchInOrder = unhandledKeyEventManager.dispatchInOrder(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (dispatchInOrder != null && !KeyEvent.isModifierKey(keyCode)) {
                if (unhandledKeyEventManager.mCapturedKeys == null) {
                    unhandledKeyEventManager.mCapturedKeys = new SparseArray();
                }
                unhandledKeyEventManager.mCapturedKeys.put(keyCode, new WeakReference(dispatchInOrder));
            }
        }
        return dispatchInOrder != null;
    }

    public static View.AccessibilityDelegate getAccessibilityDelegateInternal(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        if (sAccessibilityDelegateCheckFailed) {
            return null;
        }
        if (sAccessibilityDelegateField == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                sAccessibilityDelegateField = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                sAccessibilityDelegateCheckFailed = true;
                return null;
            }
        }
        Object obj = sAccessibilityDelegateField.get(view);
        if (obj instanceof View.AccessibilityDelegate) {
            return (View.AccessibilityDelegate) obj;
        }
        return null;
    }

    public static CharSequence getAccessibilityPaneTitle(View view) {
        return (CharSequence) new AccessibilityViewProperty(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).get(view);
    }

    public static Rect getEmptyTempRect() {
        if (sThreadLocalRect == null) {
            sThreadLocalRect = new ThreadLocal();
        }
        Rect rect = (Rect) sThreadLocalRect.get();
        if (rect == null) {
            rect = new Rect();
            sThreadLocalRect.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static int getLayoutDirection(View view) {
        return view.getLayoutDirection();
    }

    public static WindowInsetsCompat getRootWindowInsets(View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(null, rootWindowInsets);
            WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
            impl.setRootWindowInsets(windowInsetsCompat);
            impl.copyRootViewBounds(view.getRootView());
            return windowInsetsCompat;
        }
        if (!WindowInsetsCompat.Api21ReflectionHolder.sReflectionSucceeded || !view.isAttachedToWindow()) {
            return null;
        }
        try {
            Object obj = WindowInsetsCompat.Api21ReflectionHolder.sViewAttachInfoField.get(view.getRootView());
            if (obj == null) {
                return null;
            }
            Rect rect = (Rect) WindowInsetsCompat.Api21ReflectionHolder.sStableInsets.get(obj);
            Rect rect2 = (Rect) WindowInsetsCompat.Api21ReflectionHolder.sContentInsets.get(obj);
            if (rect == null || rect2 == null) {
                return null;
            }
            WindowInsetsCompat.BuilderImpl builderImpl = new WindowInsetsCompat.Builder().mImpl;
            builderImpl.setStableInsets(Insets.of(rect.left, rect.top, rect.right, rect.bottom));
            builderImpl.setSystemWindowInsets(Insets.of(rect2.left, rect2.top, rect2.right, rect2.bottom));
            WindowInsetsCompat build = builderImpl.build();
            build.mImpl.setRootWindowInsets(build);
            build.mImpl.copyRootViewBounds(view.getRootView());
            return build;
        } catch (IllegalAccessException e) {
            e.getMessage();
            return null;
        }
    }

    public static void notifyViewAccessibilityStateChangedIfNeeded(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = getAccessibilityPaneTitle(view) != null && view.getVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i);
                if (z) {
                    obtain.getText().add(getAccessibilityPaneTitle(view));
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                    ViewParent parent = view.getParent();
                    while (true) {
                        if (!(parent instanceof View)) {
                            break;
                        }
                        if (((View) parent).getImportantForAccessibility() == 4) {
                            view.setImportantForAccessibility(2);
                            break;
                        }
                        parent = parent.getParent();
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                        return;
                    } catch (AbstractMethodError unused) {
                        view.getParent().getClass();
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            obtain2.setContentChangeTypes(i);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(getAccessibilityPaneTitle(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    public static void offsetLeftAndRight(View view, int i) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
            return;
        }
        Rect emptyTempRect = getEmptyTempRect();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            emptyTempRect.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !emptyTempRect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            tickleInvalidationFlag(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                tickleInvalidationFlag((View) parent2);
            }
        }
        if (z && emptyTempRect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(emptyTempRect);
        }
    }

    public static void offsetTopAndBottom(View view, int i) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
            return;
        }
        Rect emptyTempRect = getEmptyTempRect();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            emptyTempRect.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !emptyTempRect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            tickleInvalidationFlag(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                tickleInvalidationFlag((View) parent2);
            }
        }
        if (z && emptyTempRect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(emptyTempRect);
        }
    }

    public static WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
        if (windowInsets != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
            if (!onApplyWindowInsets.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(view, onApplyWindowInsets);
            }
        }
        return windowInsetsCompat;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ContentInfoCompat performReceiveContent(View view, ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Objects.toString(contentInfoCompat);
            view.getClass();
            view.getId();
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(R.id.tag_on_receive_content_listener);
        OnReceiveContentViewBehavior onReceiveContentViewBehavior = NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        if (onReceiveContentListener == null) {
            if (view instanceof OnReceiveContentViewBehavior) {
                onReceiveContentViewBehavior = (OnReceiveContentViewBehavior) view;
            }
            return onReceiveContentViewBehavior.onReceiveContent(contentInfoCompat);
        }
        ContentInfoCompat onReceiveContent = ((TextViewOnReceiveContentListener) onReceiveContentListener).onReceiveContent(view, contentInfoCompat);
        if (onReceiveContent == null) {
            return null;
        }
        if (view instanceof OnReceiveContentViewBehavior) {
            onReceiveContentViewBehavior = (OnReceiveContentViewBehavior) view;
        }
        return onReceiveContentViewBehavior.onReceiveContent(onReceiveContent);
    }

    public static void saveAttributeDataForStyleable(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        if (accessibilityDelegateCompat == null && (getAccessibilityDelegateInternal(view) instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        view.setAccessibilityDelegate(accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.mBridge);
    }

    public static void setOnApplyWindowInsetsListener(final View view, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, onApplyWindowInsetsListener);
        }
        if (onApplyWindowInsetsListener == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.ViewCompat$Api21Impl$1
                public WindowInsetsCompat mLastInsets = null;

                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(view2, windowInsets);
                    int i = Build.VERSION.SDK_INT;
                    OnApplyWindowInsetsListener onApplyWindowInsetsListener2 = onApplyWindowInsetsListener;
                    if (i < 30) {
                        View view3 = view;
                        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener3 = (View.OnApplyWindowInsetsListener) view3.getTag(R.id.tag_window_insets_animation_callback);
                        if (onApplyWindowInsetsListener3 != null) {
                            onApplyWindowInsetsListener3.onApplyWindowInsets(view3, windowInsets);
                        }
                        if (windowInsetsCompat.equals(this.mLastInsets)) {
                            return onApplyWindowInsetsListener2.onApplyWindowInsets(view2, windowInsetsCompat).toWindowInsets();
                        }
                    }
                    this.mLastInsets = windowInsetsCompat;
                    WindowInsetsCompat onApplyWindowInsets = onApplyWindowInsetsListener2.onApplyWindowInsets(view2, windowInsetsCompat);
                    if (i >= 30) {
                        return onApplyWindowInsets.toWindowInsets();
                    }
                    ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                    view2.requestApplyInsets();
                    return onApplyWindowInsets.toWindowInsets();
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.view.ViewCompat$AccessibilityViewProperty, androidx.core.view.ViewCompat$4] */
    public static void setStateDescription(CharSequence charSequence, View view) {
        ?? accessibilityViewProperty = new AccessibilityViewProperty(R.id.tag_state_description, CharSequence.class, 64, 30);
        if (Build.VERSION.SDK_INT >= 30) {
            accessibilityViewProperty.frameworkSet(view, charSequence);
            return;
        }
        if (accessibilityViewProperty.shouldUpdate(accessibilityViewProperty.get(view), charSequence)) {
            View.AccessibilityDelegate accessibilityDelegateInternal = getAccessibilityDelegateInternal(view);
            AccessibilityDelegateCompat accessibilityDelegateCompat = accessibilityDelegateInternal == null ? null : accessibilityDelegateInternal instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter ? ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) accessibilityDelegateInternal).mCompat : new AccessibilityDelegateCompat(accessibilityDelegateInternal);
            if (accessibilityDelegateCompat == null) {
                accessibilityDelegateCompat = new AccessibilityDelegateCompat();
            }
            setAccessibilityDelegate(view, accessibilityDelegateCompat);
            view.setTag(R.id.tag_state_description, charSequence);
            notifyViewAccessibilityStateChangedIfNeeded(view, 64);
        }
    }

    public static void tickleInvalidationFlag(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }
}
