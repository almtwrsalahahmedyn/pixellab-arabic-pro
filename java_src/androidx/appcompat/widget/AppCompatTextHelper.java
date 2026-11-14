package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.AutoSizeableTextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AppCompatTextHelper {
    public boolean mAsyncFontPending;
    public final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    public TintInfo mDrawableBottomTint;
    public TintInfo mDrawableEndTint;
    public TintInfo mDrawableLeftTint;
    public TintInfo mDrawableRightTint;
    public TintInfo mDrawableStartTint;
    public TintInfo mDrawableTint;
    public TintInfo mDrawableTopTint;
    public Typeface mFontTypeface;
    public final TextView mView;
    public int mStyle = 0;
    public int mFontWeight = -1;

    public AppCompatTextHelper(TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(textView);
    }

    public static TintInfo createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList tintList;
        synchronized (appCompatDrawableManager) {
            tintList = appCompatDrawableManager.mResourceManager.getTintList(context, i);
        }
        if (tintList == null) {
            return null;
        }
        TintInfo tintInfo = new TintInfo();
        tintInfo.mHasTintList = true;
        tintInfo.mTintList = tintList;
        return tintInfo;
    }

    public static void populateSurroundingTextIfNeeded(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i >= 30) {
            editorInfo.setInitialSurroundingSubText(text, 0);
            return;
        }
        Objects.requireNonNull(text);
        if (i >= 30) {
            editorInfo.setInitialSurroundingSubText(text, 0);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = (i2 > i3 ? i3 : i2) - 0;
        if (i2 <= i3) {
            i2 = i3;
        }
        int i5 = i2 - 0;
        int length = text.length();
        if (i4 >= 0 && i5 <= length) {
            int i6 = editorInfo.inputType & 4095;
            if (!(i6 == 129 || i6 == 225 || i6 == 18)) {
                if (length <= 2048) {
                    EditorInfoCompat.setSurroundingText(editorInfo, text, i4, i5);
                    return;
                }
                int i7 = i5 - i4;
                int i8 = i7 > 1024 ? 0 : i7;
                int i9 = 2048 - i8;
                int min = Math.min(text.length() - i5, i9 - Math.min(i4, (int) (i9 * 0.8d)));
                int min2 = Math.min(i4, i9 - min);
                int i10 = i4 - min2;
                if (Character.isLowSurrogate(text.charAt(i10))) {
                    i10++;
                    min2--;
                }
                if (Character.isHighSurrogate(text.charAt((i5 + min) - 1))) {
                    min--;
                }
                CharSequence concat = i8 != i7 ? TextUtils.concat(text.subSequence(i10, i10 + min2), text.subSequence(i5, min + i5)) : text.subSequence(i10, min2 + i8 + min + i10);
                int i11 = min2 + 0;
                EditorInfoCompat.setSurroundingText(editorInfo, concat, i11, i8 + i11);
                return;
            }
        }
        EditorInfoCompat.setSurroundingText(editorInfo, null, 0, 0);
    }

    public final void applyCompoundDrawableTint(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
    }

    public final void applyCompoundDrawablesTints() {
        TintInfo tintInfo = this.mDrawableLeftTint;
        TextView textView = this.mView;
        if (tintInfo != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint == null && this.mDrawableEndTint == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
        applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
    }

    public final void autoSizeText() {
        this.mAutoSizeTextHelper.autoSizeText();
    }

    public final int getAutoSizeMaxTextSize() {
        return Math.round(this.mAutoSizeTextHelper.mAutoSizeMaxTextSizeInPx);
    }

    public final int getAutoSizeMinTextSize() {
        return Math.round(this.mAutoSizeTextHelper.mAutoSizeMinTextSizeInPx);
    }

    public final int getAutoSizeStepGranularity() {
        return Math.round(this.mAutoSizeTextHelper.mAutoSizeStepGranularityInPx);
    }

    public final int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextHelper.mAutoSizeTextSizesInPx;
    }

    public final int getAutoSizeTextType() {
        return this.mAutoSizeTextHelper.mAutoSizeTextType;
    }

    public final boolean isAutoSizeEnabled() {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.mAutoSizeTextHelper;
        return appCompatTextViewAutoSizeHelper.supportsAutoSizeText() && appCompatTextViewAutoSizeHelper.mAutoSizeTextType != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void loadFromAttributes(android.util.AttributeSet r28, int r29) {
        /*
            Method dump skipped, instructions count: 1095
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatTextHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public final void onSetTextAppearance(Context context, int i) {
        String string;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        TintTypedArray tintTypedArray = new TintTypedArray(context, context.obtainStyledAttributes(i, R$styleable.TextAppearance));
        boolean hasValue = tintTypedArray.hasValue(14);
        TextView textView = this.mView;
        if (hasValue) {
            textView.setAllCaps(tintTypedArray.getBoolean(14, false));
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            if (tintTypedArray.hasValue(3) && (colorStateList3 = tintTypedArray.getColorStateList(3)) != null) {
                textView.setTextColor(colorStateList3);
            }
            if (tintTypedArray.hasValue(5) && (colorStateList2 = tintTypedArray.getColorStateList(5)) != null) {
                textView.setLinkTextColor(colorStateList2);
            }
            if (tintTypedArray.hasValue(4) && (colorStateList = tintTypedArray.getColorStateList(4)) != null) {
                textView.setHintTextColor(colorStateList);
            }
        }
        if (tintTypedArray.hasValue(0) && tintTypedArray.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, tintTypedArray);
        if (i2 >= 26 && tintTypedArray.hasValue(13) && (string = tintTypedArray.getString(13)) != null) {
            textView.setFontVariationSettings(string);
        }
        tintTypedArray.recycle();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            textView.setTypeface(typeface, this.mStyle);
        }
    }

    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.mAutoSizeTextHelper;
        if (appCompatTextViewAutoSizeHelper.supportsAutoSizeText()) {
            DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.mContext.getResources().getDisplayMetrics();
            appCompatTextViewAutoSizeHelper.validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (appCompatTextViewAutoSizeHelper.setupAutoSizeText()) {
                appCompatTextViewAutoSizeHelper.autoSizeText();
            }
        }
    }

    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.mAutoSizeTextHelper;
        if (appCompatTextViewAutoSizeHelper.supportsAutoSizeText()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.mContext.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                appCompatTextViewAutoSizeHelper.mAutoSizeTextSizesInPx = AppCompatTextViewAutoSizeHelper.cleanupAutoSizePresetSizes(iArr2);
                if (!appCompatTextViewAutoSizeHelper.setupAutoSizeUniformPresetSizesConfiguration()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                appCompatTextViewAutoSizeHelper.mHasPresetAutoSizeValues = false;
            }
            if (appCompatTextViewAutoSizeHelper.setupAutoSizeText()) {
                appCompatTextViewAutoSizeHelper.autoSizeText();
            }
        }
    }

    public final void setAutoSizeTextTypeWithDefaults(int i) {
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.mAutoSizeTextHelper;
        if (appCompatTextViewAutoSizeHelper.supportsAutoSizeText()) {
            if (i == 0) {
                appCompatTextViewAutoSizeHelper.mAutoSizeTextType = 0;
                appCompatTextViewAutoSizeHelper.mAutoSizeMinTextSizeInPx = -1.0f;
                appCompatTextViewAutoSizeHelper.mAutoSizeMaxTextSizeInPx = -1.0f;
                appCompatTextViewAutoSizeHelper.mAutoSizeStepGranularityInPx = -1.0f;
                appCompatTextViewAutoSizeHelper.mAutoSizeTextSizesInPx = new int[0];
                appCompatTextViewAutoSizeHelper.mNeedsAutoSizeText = false;
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
            DisplayMetrics displayMetrics = appCompatTextViewAutoSizeHelper.mContext.getResources().getDisplayMetrics();
            appCompatTextViewAutoSizeHelper.validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (appCompatTextViewAutoSizeHelper.setupAutoSizeText()) {
                appCompatTextViewAutoSizeHelper.autoSizeText();
            }
        }
    }

    public final void setTextSize(int i, float f) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE || isAutoSizeEnabled()) {
            return;
        }
        this.mAutoSizeTextHelper.setTextSizeInternal(i, f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.appcompat.widget.AppCompatTextHelper$1] */
    public final void updateTypefaceAndStyle(Context context, TintTypedArray tintTypedArray) {
        String string;
        Typeface create;
        Typeface typeface;
        this.mStyle = tintTypedArray.getInt(2, this.mStyle);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int i2 = tintTypedArray.getInt(11, -1);
            this.mFontWeight = i2;
            if (i2 != -1) {
                this.mStyle = (this.mStyle & 2) | 0;
            }
        }
        if (!tintTypedArray.hasValue(10) && !tintTypedArray.hasValue(12)) {
            if (tintTypedArray.hasValue(1)) {
                this.mAsyncFontPending = false;
                int i3 = tintTypedArray.getInt(1, 1);
                if (i3 == 1) {
                    typeface = Typeface.SANS_SERIF;
                } else if (i3 == 2) {
                    typeface = Typeface.SERIF;
                } else if (i3 != 3) {
                    return;
                } else {
                    typeface = Typeface.MONOSPACE;
                }
                this.mFontTypeface = typeface;
                return;
            }
            return;
        }
        this.mFontTypeface = null;
        int i4 = tintTypedArray.hasValue(12) ? 12 : 10;
        final int i5 = this.mFontWeight;
        final int i6 = this.mStyle;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.mView);
            try {
                Typeface font = tintTypedArray.getFont(i4, this.mStyle, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public final void onFontRetrievalFailed(int i7) {
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public final void onFontRetrieved(final Typeface typeface2) {
                        int i7;
                        if (Build.VERSION.SDK_INT >= 28 && (i7 = i5) != -1) {
                            typeface2 = Typeface.create(typeface2, i7, (i6 & 2) != 0);
                        }
                        AppCompatTextHelper appCompatTextHelper = AppCompatTextHelper.this;
                        if (appCompatTextHelper.mAsyncFontPending) {
                            appCompatTextHelper.mFontTypeface = typeface2;
                            final TextView textView = (TextView) weakReference.get();
                            if (textView != null) {
                                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                                if (!textView.isAttachedToWindow()) {
                                    textView.setTypeface(typeface2, appCompatTextHelper.mStyle);
                                } else {
                                    final int i8 = appCompatTextHelper.mStyle;
                                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            textView.setTypeface(typeface2, i8);
                                        }
                                    });
                                }
                            }
                        }
                    }
                });
                if (font != null) {
                    if (i >= 28 && this.mFontWeight != -1) {
                        font = Typeface.create(Typeface.create(font, 0), this.mFontWeight, (this.mStyle & 2) != 0);
                    }
                    this.mFontTypeface = font;
                }
                this.mAsyncFontPending = this.mFontTypeface == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface != null || (string = tintTypedArray.getString(i4)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.mFontWeight == -1) {
            create = Typeface.create(string, this.mStyle);
        } else {
            create = Typeface.create(Typeface.create(string, 0), this.mFontWeight, (this.mStyle & 2) != 0);
        }
        this.mFontTypeface = create;
    }
}
