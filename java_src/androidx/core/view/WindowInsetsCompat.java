package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.graphics.Insets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes.dex */
public final class WindowInsetsCompat {
    public static final WindowInsetsCompat CONSUMED;
    public final Impl mImpl;

    /* loaded from: classes.dex */
    public final class Api21ReflectionHolder {
        public static final Field sContentInsets;
        public static final boolean sReflectionSucceeded;
        public static final Field sStableInsets;
        public static final Field sViewAttachInfoField;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                sViewAttachInfoField = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                sStableInsets = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                sContentInsets = declaredField3;
                declaredField3.setAccessible(true);
                sReflectionSucceeded = true;
            } catch (ReflectiveOperationException e) {
                e.getMessage();
            }
        }

        private Api21ReflectionHolder() {
        }
    }

    /* loaded from: classes.dex */
    public final class Builder {
        public final BuilderImpl mImpl;

        public Builder() {
            int i = Build.VERSION.SDK_INT;
            this.mImpl = i >= 30 ? new BuilderImpl30() : i >= 29 ? new BuilderImpl29() : new BuilderImpl20();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.core.view.WindowInsetsCompat$BuilderImpl, androidx.core.view.WindowInsetsCompat$BuilderImpl20] */
        public Builder(WindowInsetsCompat windowInsetsCompat) {
            BuilderImpl29 builderImpl29;
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                builderImpl29 = new BuilderImpl29(windowInsetsCompat);
            } else if (i >= 29) {
                builderImpl29 = new BuilderImpl29(windowInsetsCompat);
            } else {
                ?? builderImpl = new BuilderImpl(windowInsetsCompat);
                builderImpl.mPlatformInsets = windowInsetsCompat.toWindowInsets();
                builderImpl29 = builderImpl;
            }
            this.mImpl = builderImpl29;
        }
    }

    /* loaded from: classes.dex */
    public class BuilderImpl {
        public final WindowInsetsCompat mInsets;

        public BuilderImpl() {
            this(new WindowInsetsCompat());
        }

        public BuilderImpl(WindowInsetsCompat windowInsetsCompat) {
            this.mInsets = windowInsetsCompat;
        }

        public WindowInsetsCompat build() {
            return this.mInsets;
        }

        public void setStableInsets(Insets insets) {
        }

        public void setSystemWindowInsets(Insets insets) {
        }
    }

    /* loaded from: classes.dex */
    public final class BuilderImpl20 extends BuilderImpl {
        public static Constructor sConstructor;
        public static boolean sConstructorFetched;
        public static Field sConsumedField;
        public static boolean sConsumedFieldFetched;
        public WindowInsets mPlatformInsets;
        public Insets mStableInsets;

        public BuilderImpl20() {
            WindowInsets windowInsets;
            if (!sConsumedFieldFetched) {
                try {
                    sConsumedField = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                sConsumedFieldFetched = true;
            }
            Field field = sConsumedField;
            WindowInsets windowInsets2 = null;
            if (field != null) {
                try {
                    windowInsets = (WindowInsets) field.get(null);
                } catch (ReflectiveOperationException unused2) {
                }
                if (windowInsets != null) {
                    windowInsets2 = new WindowInsets(windowInsets);
                    this.mPlatformInsets = windowInsets2;
                }
            }
            if (!sConstructorFetched) {
                try {
                    sConstructor = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                sConstructorFetched = true;
            }
            Constructor constructor = sConstructor;
            if (constructor != null) {
                try {
                    windowInsets2 = (WindowInsets) constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            this.mPlatformInsets = windowInsets2;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public final WindowInsetsCompat build() {
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(null, this.mPlatformInsets);
            Impl impl = windowInsetsCompat.mImpl;
            impl.setOverriddenInsets();
            impl.setStableInsets(this.mStableInsets);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public final void setStableInsets(Insets insets) {
            this.mStableInsets = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public final void setSystemWindowInsets(Insets insets) {
            WindowInsets windowInsets = this.mPlatformInsets;
            if (windowInsets != null) {
                int i = insets.bottom;
                this.mPlatformInsets = windowInsets.replaceSystemWindowInsets(insets.left, insets.top, insets.right, i);
            }
        }
    }

    /* loaded from: classes.dex */
    public class BuilderImpl29 extends BuilderImpl {
        public final WindowInsets.Builder mPlatBuilder;

        public BuilderImpl29() {
            this.mPlatBuilder = new WindowInsets.Builder();
        }

        public BuilderImpl29(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            this.mPlatBuilder = windowInsets != null ? new WindowInsets.Builder(windowInsets) : new WindowInsets.Builder();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public final WindowInsetsCompat build() {
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(null, this.mPlatBuilder.build());
            windowInsetsCompat.mImpl.setOverriddenInsets();
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public final void setStableInsets(Insets insets) {
            this.mPlatBuilder.setStableInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public final void setSystemWindowInsets(Insets insets) {
            this.mPlatBuilder.setSystemWindowInsets(insets.toPlatformInsets());
        }
    }

    /* loaded from: classes.dex */
    public final class BuilderImpl30 extends BuilderImpl29 {
    }

    /* loaded from: classes.dex */
    public class Impl {
        public static final WindowInsetsCompat CONSUMED = new Builder().mImpl.build().mImpl.consumeDisplayCutout().mImpl.consumeStableInsets().mImpl.consumeSystemWindowInsets();
        public final WindowInsetsCompat mHost;

        public Impl(WindowInsetsCompat windowInsetsCompat) {
            this.mHost = windowInsetsCompat;
        }

        public WindowInsetsCompat consumeDisplayCutout() {
            return this.mHost;
        }

        public WindowInsetsCompat consumeStableInsets() {
            return this.mHost;
        }

        public WindowInsetsCompat consumeSystemWindowInsets() {
            return this.mHost;
        }

        public void copyRootViewBounds(View view) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl)) {
                return false;
            }
            Impl impl = (Impl) obj;
            return isRound() == impl.isRound() && isConsumed() == impl.isConsumed() && Objects.equals(getSystemWindowInsets(), impl.getSystemWindowInsets()) && Objects.equals(getStableInsets(), impl.getStableInsets()) && Objects.equals(getDisplayCutout(), impl.getDisplayCutout());
        }

        public DisplayCutoutCompat getDisplayCutout() {
            return null;
        }

        public Insets getStableInsets() {
            return Insets.NONE;
        }

        public Insets getSystemWindowInsets() {
            return Insets.NONE;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(isRound()), Boolean.valueOf(isConsumed()), getSystemWindowInsets(), getStableInsets(), getDisplayCutout());
        }

        public WindowInsetsCompat inset(int i, int i2, int i3, int i4) {
            return CONSUMED;
        }

        public boolean isConsumed() {
            return false;
        }

        public boolean isRound() {
            return false;
        }

        public void setOverriddenInsets() {
        }

        public void setRootWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        }

        public void setStableInsets(Insets insets) {
        }
    }

    /* loaded from: classes.dex */
    public abstract class Impl20 extends Impl {
        public static Class sAttachInfoClass;
        public static Field sAttachInfoField;
        public static Method sGetViewRootImplMethod;
        public static Class sViewRootImplClass;
        public static Field sVisibleInsetsField;
        public static boolean sVisibleRectReflectionFetched;
        public final WindowInsets mPlatformInsets;
        public Insets mRootViewVisibleInsets;
        public Insets mSystemWindowInsets;

        public Impl20(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.mSystemWindowInsets = null;
            this.mPlatformInsets = windowInsets;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
        @Override // androidx.core.view.WindowInsetsCompat.Impl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void copyRootViewBounds(android.view.View r6) {
            /*
                r5 = this;
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 30
                if (r0 >= r1) goto L90
                boolean r0 = androidx.core.view.WindowInsetsCompat.Impl20.sVisibleRectReflectionFetched
                r1 = 0
                if (r0 != 0) goto L4d
                r0 = 1
                java.lang.Class<android.view.View> r2 = android.view.View.class
                java.lang.String r3 = "getViewRootImpl"
                java.lang.Class[] r4 = new java.lang.Class[r1]     // Catch: java.lang.ReflectiveOperationException -> L45
                java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r4)     // Catch: java.lang.ReflectiveOperationException -> L45
                androidx.core.view.WindowInsetsCompat.Impl20.sGetViewRootImplMethod = r2     // Catch: java.lang.ReflectiveOperationException -> L45
                java.lang.String r2 = "android.view.ViewRootImpl"
                java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ReflectiveOperationException -> L45
                androidx.core.view.WindowInsetsCompat.Impl20.sViewRootImplClass = r2     // Catch: java.lang.ReflectiveOperationException -> L45
                java.lang.String r2 = "android.view.View$AttachInfo"
                java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ReflectiveOperationException -> L45
                androidx.core.view.WindowInsetsCompat.Impl20.sAttachInfoClass = r2     // Catch: java.lang.ReflectiveOperationException -> L45
                java.lang.String r3 = "mVisibleInsets"
                java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch: java.lang.ReflectiveOperationException -> L45
                androidx.core.view.WindowInsetsCompat.Impl20.sVisibleInsetsField = r2     // Catch: java.lang.ReflectiveOperationException -> L45
                java.lang.Class r2 = androidx.core.view.WindowInsetsCompat.Impl20.sViewRootImplClass     // Catch: java.lang.ReflectiveOperationException -> L45
                java.lang.String r3 = "mAttachInfo"
                java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch: java.lang.ReflectiveOperationException -> L45
                androidx.core.view.WindowInsetsCompat.Impl20.sAttachInfoField = r2     // Catch: java.lang.ReflectiveOperationException -> L45
                java.lang.reflect.Field r2 = androidx.core.view.WindowInsetsCompat.Impl20.sVisibleInsetsField     // Catch: java.lang.ReflectiveOperationException -> L45
                r2.setAccessible(r0)     // Catch: java.lang.ReflectiveOperationException -> L45
                java.lang.reflect.Field r2 = androidx.core.view.WindowInsetsCompat.Impl20.sAttachInfoField     // Catch: java.lang.ReflectiveOperationException -> L45
                r2.setAccessible(r0)     // Catch: java.lang.ReflectiveOperationException -> L45
                goto L4b
            L45:
                r2 = move-exception
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r2.getMessage()
            L4b:
                androidx.core.view.WindowInsetsCompat.Impl20.sVisibleRectReflectionFetched = r0
            L4d:
                java.lang.reflect.Method r0 = androidx.core.view.WindowInsetsCompat.Impl20.sGetViewRootImplMethod
                if (r0 == 0) goto L88
                java.lang.Class r2 = androidx.core.view.WindowInsetsCompat.Impl20.sAttachInfoClass
                if (r2 == 0) goto L88
                java.lang.reflect.Field r2 = androidx.core.view.WindowInsetsCompat.Impl20.sVisibleInsetsField
                if (r2 != 0) goto L5a
                goto L88
            L5a:
                java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.ReflectiveOperationException -> L82
                java.lang.Object r6 = r0.invoke(r6, r1)     // Catch: java.lang.ReflectiveOperationException -> L82
                if (r6 != 0) goto L65
                java.lang.NullPointerException r6 = new java.lang.NullPointerException     // Catch: java.lang.ReflectiveOperationException -> L82
                goto L88
            L65:
                java.lang.reflect.Field r0 = androidx.core.view.WindowInsetsCompat.Impl20.sAttachInfoField     // Catch: java.lang.ReflectiveOperationException -> L82
                java.lang.Object r6 = r0.get(r6)     // Catch: java.lang.ReflectiveOperationException -> L82
                java.lang.reflect.Field r0 = androidx.core.view.WindowInsetsCompat.Impl20.sVisibleInsetsField     // Catch: java.lang.ReflectiveOperationException -> L82
                java.lang.Object r6 = r0.get(r6)     // Catch: java.lang.ReflectiveOperationException -> L82
                android.graphics.Rect r6 = (android.graphics.Rect) r6     // Catch: java.lang.ReflectiveOperationException -> L82
                if (r6 == 0) goto L88
                int r0 = r6.left     // Catch: java.lang.ReflectiveOperationException -> L82
                int r1 = r6.top     // Catch: java.lang.ReflectiveOperationException -> L82
                int r2 = r6.right     // Catch: java.lang.ReflectiveOperationException -> L82
                int r6 = r6.bottom     // Catch: java.lang.ReflectiveOperationException -> L82
                androidx.core.graphics.Insets r6 = androidx.core.graphics.Insets.of(r0, r1, r2, r6)     // Catch: java.lang.ReflectiveOperationException -> L82
                goto L89
            L82:
                r6 = move-exception
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r6.getMessage()
            L88:
                r6 = 0
            L89:
                if (r6 != 0) goto L8d
                androidx.core.graphics.Insets r6 = androidx.core.graphics.Insets.NONE
            L8d:
                r5.mRootViewVisibleInsets = r6
                return
            L90:
                java.lang.UnsupportedOperationException r6 = new java.lang.UnsupportedOperationException
                java.lang.String r0 = "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.WindowInsetsCompat.Impl20.copyRootViewBounds(android.view.View):void");
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.mRootViewVisibleInsets, ((Impl20) obj).mRootViewVisibleInsets);
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final Insets getSystemWindowInsets() {
            if (this.mSystemWindowInsets == null) {
                WindowInsets windowInsets = this.mPlatformInsets;
                this.mSystemWindowInsets = Insets.of(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
            }
            return this.mSystemWindowInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat inset(int i, int i2, int i3, int i4) {
            Builder builder = new Builder(WindowInsetsCompat.toWindowInsetsCompat(null, this.mPlatformInsets));
            Insets insetInsets = WindowInsetsCompat.insetInsets(getSystemWindowInsets(), i, i2, i3, i4);
            BuilderImpl builderImpl = builder.mImpl;
            builderImpl.setSystemWindowInsets(insetInsets);
            builderImpl.setStableInsets(WindowInsetsCompat.insetInsets(getStableInsets(), i, i2, i3, i4));
            return builderImpl.build();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final boolean isRound() {
            return this.mPlatformInsets.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final void setOverriddenInsets() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final void setRootWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        }
    }

    /* loaded from: classes.dex */
    public class Impl21 extends Impl20 {
        public Insets mStableInsets;

        public Impl21(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.mStableInsets = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final WindowInsetsCompat consumeStableInsets() {
            return WindowInsetsCompat.toWindowInsetsCompat(null, this.mPlatformInsets.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final WindowInsetsCompat consumeSystemWindowInsets() {
            return WindowInsetsCompat.toWindowInsetsCompat(null, this.mPlatformInsets.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final Insets getStableInsets() {
            if (this.mStableInsets == null) {
                WindowInsets windowInsets = this.mPlatformInsets;
                this.mStableInsets = Insets.of(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
            }
            return this.mStableInsets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final boolean isConsumed() {
            return this.mPlatformInsets.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void setStableInsets(Insets insets) {
            this.mStableInsets = insets;
        }
    }

    /* loaded from: classes.dex */
    public class Impl28 extends Impl21 {
        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final WindowInsetsCompat consumeDisplayCutout() {
            return WindowInsetsCompat.toWindowInsetsCompat(null, this.mPlatformInsets.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl28)) {
                return false;
            }
            Impl28 impl28 = (Impl28) obj;
            return Objects.equals(this.mPlatformInsets, impl28.mPlatformInsets) && Objects.equals(this.mRootViewVisibleInsets, impl28.mRootViewVisibleInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final DisplayCutoutCompat getDisplayCutout() {
            DisplayCutout displayCutout = this.mPlatformInsets.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new DisplayCutoutCompat(displayCutout);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final int hashCode() {
            return this.mPlatformInsets.hashCode();
        }
    }

    /* loaded from: classes.dex */
    public class Impl29 extends Impl28 {
        public Impl29(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public final WindowInsetsCompat inset(int i, int i2, int i3, int i4) {
            return WindowInsetsCompat.toWindowInsetsCompat(null, this.mPlatformInsets.inset(i, i2, i3, i4));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl21, androidx.core.view.WindowInsetsCompat.Impl
        public final void setStableInsets(Insets insets) {
        }
    }

    /* loaded from: classes.dex */
    public final class Impl30 extends Impl29 {
        public static final WindowInsetsCompat CONSUMED = WindowInsetsCompat.toWindowInsetsCompat(null, WindowInsets.CONSUMED);

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public final void copyRootViewBounds(View view) {
        }
    }

    static {
        CONSUMED = Build.VERSION.SDK_INT >= 30 ? Impl30.CONSUMED : Impl.CONSUMED;
    }

    public WindowInsetsCompat() {
        this.mImpl = new Impl(this);
    }

    public WindowInsetsCompat(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        this.mImpl = i >= 30 ? new Impl29(this, windowInsets) : i >= 29 ? new Impl29(this, windowInsets) : i >= 28 ? new Impl21(this, windowInsets) : new Impl21(this, windowInsets);
    }

    public static Insets insetInsets(Insets insets, int i, int i2, int i3, int i4) {
        int max = Math.max(0, insets.left - i);
        int max2 = Math.max(0, insets.top - i2);
        int max3 = Math.max(0, insets.right - i3);
        int max4 = Math.max(0, insets.bottom - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? insets : Insets.of(max, max2, max3, max4);
    }

    public static WindowInsetsCompat toWindowInsetsCompat(View view, WindowInsets windowInsets) {
        Objects.requireNonNull(windowInsets);
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
            Impl impl = windowInsetsCompat.mImpl;
            impl.setRootWindowInsets(rootWindowInsets);
            impl.copyRootViewBounds(view.getRootView());
        }
        return windowInsetsCompat;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowInsetsCompat)) {
            return false;
        }
        return Objects.equals(this.mImpl, ((WindowInsetsCompat) obj).mImpl);
    }

    public final int getSystemWindowInsetBottom() {
        return this.mImpl.getSystemWindowInsets().bottom;
    }

    public final int getSystemWindowInsetLeft() {
        return this.mImpl.getSystemWindowInsets().left;
    }

    public final int getSystemWindowInsetRight() {
        return this.mImpl.getSystemWindowInsets().right;
    }

    public final int getSystemWindowInsetTop() {
        return this.mImpl.getSystemWindowInsets().top;
    }

    public final int hashCode() {
        Impl impl = this.mImpl;
        if (impl == null) {
            return 0;
        }
        return impl.hashCode();
    }

    public final WindowInsets toWindowInsets() {
        Impl impl = this.mImpl;
        if (impl instanceof Impl20) {
            return ((Impl20) impl).mPlatformInsets;
        }
        return null;
    }
}
