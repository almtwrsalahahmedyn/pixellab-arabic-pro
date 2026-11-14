package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class AppCompatCompoundButtonHelper {
    public final ColorStateList mButtonTintList = null;
    public final PorterDuff.Mode mButtonTintMode = null;
    public final boolean mHasButtonTint = false;
    public final boolean mHasButtonTintMode = false;
    public boolean mSkipNextApply;
    public final CompoundButton mView;

    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.mView = compoundButton;
    }

    public final void applyButtonTint() {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        CompoundButton compoundButton = this.mView;
        if (i >= 23) {
            drawable = compoundButton.getButtonDrawable();
        } else {
            if (!CompoundButtonCompat.sButtonDrawableFieldFetched) {
                try {
                    Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                    CompoundButtonCompat.sButtonDrawableField = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                CompoundButtonCompat.sButtonDrawableFieldFetched = true;
            }
            Field field = CompoundButtonCompat.sButtonDrawableField;
            if (field != null) {
                try {
                    drawable = (Drawable) field.get(compoundButton);
                } catch (IllegalAccessException unused2) {
                    CompoundButtonCompat.sButtonDrawableField = null;
                }
            }
            drawable = null;
        }
        if (drawable != null) {
            if (this.mHasButtonTint || this.mHasButtonTintMode) {
                Drawable mutate = DrawableCompat.wrap(drawable).mutate();
                if (this.mHasButtonTint) {
                    mutate.setTintList(this.mButtonTintList);
                }
                if (this.mHasButtonTintMode) {
                    mutate.setTintMode(this.mButtonTintMode);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0054 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:3:0x0019, B:5:0x0020, B:8:0x0026, B:10:0x0036, B:12:0x003c, B:14:0x0042, B:15:0x004d, B:17:0x0054, B:18:0x005b, B:20:0x0062), top: B:2:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0062 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:3:0x0019, B:5:0x0020, B:8:0x0026, B:10:0x0036, B:12:0x003c, B:14:0x0042, B:15:0x004d, B:17:0x0054, B:18:0x005b, B:20:0x0062), top: B:2:0x0019 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void loadFromAttributes(android.util.AttributeSet r9, int r10) {
        /*
            r8 = this;
            android.widget.CompoundButton r6 = r8.mView
            android.content.Context r0 = r6.getContext()
            int[] r2 = androidx.appcompat.R$styleable.CompoundButton
            androidx.appcompat.widget.TintTypedArray r7 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r0, r9, r2, r10)
            android.content.Context r1 = r6.getContext()
            android.content.res.TypedArray r4 = r7.mWrapped
            r0 = r6
            r3 = r9
            r5 = r10
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5)
            r9 = 1
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L73
            r0 = 0
            if (r10 == 0) goto L33
            int r10 = r7.getResourceId(r9, r0)     // Catch: java.lang.Throwable -> L73
            if (r10 == 0) goto L33
            android.content.Context r1 = r6.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L32 java.lang.Throwable -> L73
            android.graphics.drawable.Drawable r10 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r10)     // Catch: android.content.res.Resources.NotFoundException -> L32 java.lang.Throwable -> L73
            r6.setButtonDrawable(r10)     // Catch: android.content.res.Resources.NotFoundException -> L32 java.lang.Throwable -> L73
            goto L34
        L32:
        L33:
            r9 = 0
        L34:
            if (r9 != 0) goto L4d
            boolean r9 = r7.hasValue(r0)     // Catch: java.lang.Throwable -> L73
            if (r9 == 0) goto L4d
            int r9 = r7.getResourceId(r0, r0)     // Catch: java.lang.Throwable -> L73
            if (r9 == 0) goto L4d
            android.content.Context r10 = r6.getContext()     // Catch: java.lang.Throwable -> L73
            android.graphics.drawable.Drawable r9 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r10, r9)     // Catch: java.lang.Throwable -> L73
            r6.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L73
        L4d:
            r9 = 2
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L73
            if (r10 == 0) goto L5b
            android.content.res.ColorStateList r9 = r7.getColorStateList(r9)     // Catch: java.lang.Throwable -> L73
            r6.setButtonTintList(r9)     // Catch: java.lang.Throwable -> L73
        L5b:
            r9 = 3
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L73
            if (r10 == 0) goto L6f
            r10 = -1
            int r9 = r7.getInt(r9, r10)     // Catch: java.lang.Throwable -> L73
            r10 = 0
            android.graphics.PorterDuff$Mode r9 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r9, r10)     // Catch: java.lang.Throwable -> L73
            r6.setButtonTintMode(r9)     // Catch: java.lang.Throwable -> L73
        L6f:
            r7.recycle()
            return
        L73:
            r9 = move-exception
            r7.recycle()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public final void onSetButtonDrawable() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
        } else {
            this.mSkipNextApply = true;
            applyButtonTint();
        }
    }
}
