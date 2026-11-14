package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public final class AppCompatBackgroundHelper {
    public TintInfo mBackgroundTint;
    public TintInfo mInternalBackgroundTint;
    public TintInfo mTmpInfo;
    public final View mView;
    public int mBackgroundResId = -1;
    public final AppCompatDrawableManager mDrawableManager = AppCompatDrawableManager.get();

    public AppCompatBackgroundHelper(View view) {
        this.mView = view;
    }

    public final void applySupportBackgroundTint() {
        View view = this.mView;
        Drawable background = view.getBackground();
        if (background != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 ? i == 21 : this.mInternalBackgroundTint != null) {
                if (this.mTmpInfo == null) {
                    this.mTmpInfo = new TintInfo();
                }
                TintInfo tintInfo = this.mTmpInfo;
                tintInfo.mTintList = null;
                tintInfo.mHasTintList = false;
                tintInfo.mTintMode = null;
                tintInfo.mHasTintMode = false;
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    tintInfo.mHasTintList = true;
                    tintInfo.mTintList = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    tintInfo.mHasTintMode = true;
                    tintInfo.mTintMode = backgroundTintMode;
                }
                if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                    AppCompatDrawableManager.tintDrawable(background, tintInfo, view.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            TintInfo tintInfo2 = this.mBackgroundTint;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.tintDrawable(background, tintInfo2, view.getDrawableState());
                return;
            }
            TintInfo tintInfo3 = this.mInternalBackgroundTint;
            if (tintInfo3 != null) {
                AppCompatDrawableManager.tintDrawable(background, tintInfo3, view.getDrawableState());
            }
        }
    }

    public final ColorStateList getSupportBackgroundTintList() {
        TintInfo tintInfo = this.mBackgroundTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    public final PorterDuff.Mode getSupportBackgroundTintMode() {
        TintInfo tintInfo = this.mBackgroundTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0071 A[Catch: all -> 0x00bb, TryCatch #0 {all -> 0x00bb, blocks: (B:3:0x0019, B:5:0x0020, B:6:0x002e, B:9:0x0035, B:11:0x0038, B:14:0x003d, B:15:0x003e, B:17:0x003f, B:19:0x0048, B:21:0x0053, B:23:0x005d, B:29:0x006b, B:31:0x0071, B:32:0x0078, B:34:0x007b, B:36:0x0082, B:38:0x0092, B:40:0x009c, B:44:0x00a7, B:46:0x00ad, B:47:0x00b4, B:8:0x002f), top: B:2:0x0019, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void loadFromAttributes(android.util.AttributeSet r9, int r10) {
        /*
            r8 = this;
            android.view.View r6 = r8.mView
            android.content.Context r0 = r6.getContext()
            int[] r2 = androidx.appcompat.R$styleable.ViewBackgroundHelper
            androidx.appcompat.widget.TintTypedArray r7 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r0, r9, r2, r10)
            android.content.Context r1 = r6.getContext()
            android.content.res.TypedArray r4 = r7.mWrapped
            r0 = r6
            r3 = r9
            r5 = r10
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5)
            r9 = 0
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> Lbb
            r0 = -1
            if (r10 == 0) goto L3f
            int r10 = r7.getResourceId(r9, r0)     // Catch: java.lang.Throwable -> Lbb
            r8.mBackgroundResId = r10     // Catch: java.lang.Throwable -> Lbb
            androidx.appcompat.widget.AppCompatDrawableManager r10 = r8.mDrawableManager     // Catch: java.lang.Throwable -> Lbb
            android.content.Context r1 = r6.getContext()     // Catch: java.lang.Throwable -> Lbb
            int r2 = r8.mBackgroundResId     // Catch: java.lang.Throwable -> Lbb
            monitor-enter(r10)     // Catch: java.lang.Throwable -> Lbb
            androidx.appcompat.widget.ResourceManagerInternal r3 = r10.mResourceManager     // Catch: java.lang.Throwable -> L3c
            android.content.res.ColorStateList r1 = r3.getTintList(r1, r2)     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r10)     // Catch: java.lang.Throwable -> Lbb
            if (r1 == 0) goto L3f
            r8.setInternalBackgroundTint(r1)     // Catch: java.lang.Throwable -> Lbb
            goto L3f
        L3c:
            r9 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> Lbb
            throw r9     // Catch: java.lang.Throwable -> Lbb
        L3f:
            r10 = 1
            boolean r1 = r7.hasValue(r10)     // Catch: java.lang.Throwable -> Lbb
            r2 = 21
            if (r1 == 0) goto L7b
            android.content.res.ColorStateList r1 = r7.getColorStateList(r10)     // Catch: java.lang.Throwable -> Lbb
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lbb
            r6.setBackgroundTintList(r1)     // Catch: java.lang.Throwable -> Lbb
            if (r3 != r2) goto L7b
            android.graphics.drawable.Drawable r1 = r6.getBackground()     // Catch: java.lang.Throwable -> Lbb
            android.content.res.ColorStateList r3 = r6.getBackgroundTintList()     // Catch: java.lang.Throwable -> Lbb
            if (r3 != 0) goto L66
            android.graphics.PorterDuff$Mode r3 = r6.getBackgroundTintMode()     // Catch: java.lang.Throwable -> Lbb
            if (r3 == 0) goto L64
            goto L66
        L64:
            r3 = 0
            goto L67
        L66:
            r3 = 1
        L67:
            if (r1 == 0) goto L7b
            if (r3 == 0) goto L7b
            boolean r3 = r1.isStateful()     // Catch: java.lang.Throwable -> Lbb
            if (r3 == 0) goto L78
            int[] r3 = r6.getDrawableState()     // Catch: java.lang.Throwable -> Lbb
            r1.setState(r3)     // Catch: java.lang.Throwable -> Lbb
        L78:
            r6.setBackground(r1)     // Catch: java.lang.Throwable -> Lbb
        L7b:
            r1 = 2
            boolean r3 = r7.hasValue(r1)     // Catch: java.lang.Throwable -> Lbb
            if (r3 == 0) goto Lb7
            int r0 = r7.getInt(r1, r0)     // Catch: java.lang.Throwable -> Lbb
            r1 = 0
            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r0, r1)     // Catch: java.lang.Throwable -> Lbb
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lbb
            r6.setBackgroundTintMode(r0)     // Catch: java.lang.Throwable -> Lbb
            if (r1 != r2) goto Lb7
            android.graphics.drawable.Drawable r0 = r6.getBackground()     // Catch: java.lang.Throwable -> Lbb
            android.content.res.ColorStateList r1 = r6.getBackgroundTintList()     // Catch: java.lang.Throwable -> Lbb
            if (r1 != 0) goto La2
            android.graphics.PorterDuff$Mode r1 = r6.getBackgroundTintMode()     // Catch: java.lang.Throwable -> Lbb
            if (r1 == 0) goto La3
        La2:
            r9 = 1
        La3:
            if (r0 == 0) goto Lb7
            if (r9 == 0) goto Lb7
            boolean r9 = r0.isStateful()     // Catch: java.lang.Throwable -> Lbb
            if (r9 == 0) goto Lb4
            int[] r9 = r6.getDrawableState()     // Catch: java.lang.Throwable -> Lbb
            r0.setState(r9)     // Catch: java.lang.Throwable -> Lbb
        Lb4:
            r6.setBackground(r0)     // Catch: java.lang.Throwable -> Lbb
        Lb7:
            r7.recycle()
            return
        Lbb:
            r9 = move-exception
            r7.recycle()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatBackgroundHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public final void onSetBackgroundDrawable() {
        this.mBackgroundResId = -1;
        setInternalBackgroundTint(null);
        applySupportBackgroundTint();
    }

    public final void onSetBackgroundResource(int i) {
        ColorStateList colorStateList;
        this.mBackgroundResId = i;
        AppCompatDrawableManager appCompatDrawableManager = this.mDrawableManager;
        if (appCompatDrawableManager != null) {
            Context context = this.mView.getContext();
            synchronized (appCompatDrawableManager) {
                colorStateList = appCompatDrawableManager.mResourceManager.getTintList(context, i);
            }
        } else {
            colorStateList = null;
        }
        setInternalBackgroundTint(colorStateList);
        applySupportBackgroundTint();
    }

    public final void setInternalBackgroundTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalBackgroundTint == null) {
                this.mInternalBackgroundTint = new TintInfo();
            }
            TintInfo tintInfo = this.mInternalBackgroundTint;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.mInternalBackgroundTint = null;
        }
        applySupportBackgroundTint();
    }

    public final void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        applySupportBackgroundTint();
    }

    public final void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        applySupportBackgroundTint();
    }
}
