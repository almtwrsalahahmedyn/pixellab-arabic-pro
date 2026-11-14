package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public final class AppCompatImageHelper {
    public TintInfo mImageTint;
    public TintInfo mTmpInfo;
    public final ImageView mView;

    public AppCompatImageHelper(ImageView imageView) {
        this.mView = imageView;
    }

    public final void applySupportImageTint() {
        ImageView imageView = this.mView;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            DrawableUtils.fixDrawable(drawable);
        }
        if (drawable != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 && i == 21) {
                if (this.mTmpInfo == null) {
                    this.mTmpInfo = new TintInfo();
                }
                TintInfo tintInfo = this.mTmpInfo;
                tintInfo.mTintList = null;
                tintInfo.mHasTintList = false;
                tintInfo.mTintMode = null;
                tintInfo.mHasTintMode = false;
                ColorStateList imageTintList = imageView.getImageTintList();
                if (imageTintList != null) {
                    tintInfo.mHasTintList = true;
                    tintInfo.mTintList = imageTintList;
                }
                PorterDuff.Mode imageTintMode = imageView.getImageTintMode();
                if (imageTintMode != null) {
                    tintInfo.mHasTintMode = true;
                    tintInfo.mTintMode = imageTintMode;
                }
                if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                    AppCompatDrawableManager.tintDrawable(drawable, tintInfo, imageView.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            TintInfo tintInfo2 = this.mImageTint;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.tintDrawable(drawable, tintInfo2, imageView.getDrawableState());
            }
        }
    }

    public final void loadFromAttributes(AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable drawable2;
        int resourceId;
        ImageView imageView = this.mView;
        Context context = imageView.getContext();
        int[] iArr = R$styleable.AppCompatImageView;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i);
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), iArr, attributeSet, obtainStyledAttributes.mWrapped, i);
        try {
            Drawable drawable3 = imageView.getDrawable();
            if (drawable3 == null && (resourceId = obtainStyledAttributes.getResourceId(1, -1)) != -1 && (drawable3 = AppCompatResources.getDrawable(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                DrawableUtils.fixDrawable(drawable3);
            }
            if (obtainStyledAttributes.hasValue(2)) {
                ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(2);
                int i2 = Build.VERSION.SDK_INT;
                imageView.setImageTintList(colorStateList);
                if (i2 == 21 && (drawable2 = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable2);
                }
            }
            if (obtainStyledAttributes.hasValue(3)) {
                PorterDuff.Mode parseTintMode = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(3, -1), null);
                int i3 = Build.VERSION.SDK_INT;
                imageView.setImageTintMode(parseTintMode);
                if (i3 == 21 && (drawable = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
