package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.appcompat.R$styleable;
import androidx.appcompat.text.AllCapsTransformationMethod;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    public final boolean mHasThumbTint;
    public final boolean mHasThumbTintMode;
    public final boolean mHasTrackTint;
    public final boolean mHasTrackTintMode;
    public final int mMinFlingVelocity;
    public StaticLayout mOffLayout;
    public StaticLayout mOnLayout;
    public ObjectAnimator mPositionAnimator;
    public final boolean mShowText;
    public final boolean mSplitTrack;
    public int mSwitchBottom;
    public int mSwitchHeight;
    public int mSwitchLeft;
    public final int mSwitchMinWidth;
    public final int mSwitchPadding;
    public int mSwitchRight;
    public int mSwitchTop;
    public final AllCapsTransformationMethod mSwitchTransformationMethod;
    public int mSwitchWidth;
    public final Rect mTempRect;
    public final ColorStateList mTextColors;
    public final CharSequence mTextOff;
    public final CharSequence mTextOn;
    public final TextPaint mTextPaint;
    public final Drawable mThumbDrawable;
    public float mThumbPosition;
    public final int mThumbTextPadding;
    public final ColorStateList mThumbTintList;
    public final PorterDuff.Mode mThumbTintMode;
    public int mThumbWidth;
    public int mTouchMode;
    public final int mTouchSlop;
    public float mTouchX;
    public float mTouchY;
    public final Drawable mTrackDrawable;
    public final ColorStateList mTrackTintList;
    public final PorterDuff.Mode mTrackTintMode;
    public final VelocityTracker mVelocityTracker;
    public static final AnonymousClass1 THUMB_POS = new Property(Float.class, "thumbPos");
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};

    /* renamed from: androidx.appcompat.widget.SwitchCompat$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends Property {
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Float.valueOf(((SwitchCompat) obj).mThumbPosition);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            SwitchCompat switchCompat = (SwitchCompat) obj;
            switchCompat.mThumbPosition = ((Float) obj2).floatValue();
            switchCompat.invalidate();
        }
    }

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.tawfiq.imaginstudio.imagetools.pixellab.R.attr.switchStyle);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.text.AllCapsTransformationMethod, java.lang.Object] */
    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable drawable;
        Drawable drawable2;
        AllCapsTransformationMethod allCapsTransformationMethod = null;
        this.mThumbTintList = null;
        this.mThumbTintMode = null;
        this.mHasThumbTint = false;
        this.mHasThumbTintMode = false;
        this.mTrackTintList = null;
        this.mTrackTintMode = null;
        this.mHasTrackTint = false;
        this.mHasTrackTintMode = false;
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mTempRect = new Rect();
        ThemeUtils.checkAppCompatTheme(getContext(), this);
        TextPaint textPaint = new TextPaint(1);
        this.mTextPaint = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = R$styleable.SwitchCompat;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        Drawable drawable3 = tintTypedArray.getDrawable(2);
        this.mThumbDrawable = drawable3;
        if (drawable3 != null) {
            drawable3.setCallback(this);
        }
        Drawable drawable4 = tintTypedArray.getDrawable(11);
        this.mTrackDrawable = drawable4;
        if (drawable4 != null) {
            drawable4.setCallback(this);
        }
        this.mTextOn = tintTypedArray.getText(0);
        this.mTextOff = tintTypedArray.getText(1);
        this.mShowText = tintTypedArray.getBoolean(3, true);
        this.mThumbTextPadding = tintTypedArray.getDimensionPixelSize(8, 0);
        this.mSwitchMinWidth = tintTypedArray.getDimensionPixelSize(5, 0);
        this.mSwitchPadding = tintTypedArray.getDimensionPixelSize(6, 0);
        this.mSplitTrack = tintTypedArray.getBoolean(4, false);
        ColorStateList colorStateList = tintTypedArray.getColorStateList(9);
        if (colorStateList != null) {
            this.mThumbTintList = colorStateList;
            this.mHasThumbTint = true;
        }
        PorterDuff.Mode parseTintMode = DrawableUtils.parseTintMode(tintTypedArray.getInt(10, -1), null);
        if (parseTintMode != null) {
            this.mThumbTintMode = parseTintMode;
            this.mHasThumbTintMode = true;
        }
        boolean z = this.mHasThumbTint;
        if ((z || this.mHasThumbTintMode) && (drawable = this.mThumbDrawable) != null) {
            boolean z2 = this.mHasThumbTintMode;
            if (z || z2) {
                Drawable mutate = DrawableCompat.wrap(drawable).mutate();
                this.mThumbDrawable = mutate;
                if (z) {
                    mutate.setTintList(this.mThumbTintList);
                }
                if (z2) {
                    this.mThumbDrawable.setTintMode(this.mThumbTintMode);
                }
                if (this.mThumbDrawable.isStateful()) {
                    this.mThumbDrawable.setState(getDrawableState());
                }
            }
        }
        ColorStateList colorStateList2 = tintTypedArray.getColorStateList(12);
        if (colorStateList2 != null) {
            this.mTrackTintList = colorStateList2;
            this.mHasTrackTint = true;
        }
        PorterDuff.Mode parseTintMode2 = DrawableUtils.parseTintMode(tintTypedArray.getInt(13, -1), null);
        if (parseTintMode2 != null) {
            this.mTrackTintMode = parseTintMode2;
            this.mHasTrackTintMode = true;
        }
        boolean z3 = this.mHasTrackTint;
        if ((z3 || this.mHasTrackTintMode) && (drawable2 = this.mTrackDrawable) != null) {
            boolean z4 = this.mHasTrackTintMode;
            if (z3 || z4) {
                Drawable mutate2 = DrawableCompat.wrap(drawable2).mutate();
                this.mTrackDrawable = mutate2;
                if (z3) {
                    mutate2.setTintList(this.mTrackTintList);
                }
                if (z4) {
                    this.mTrackDrawable.setTintMode(this.mTrackTintMode);
                }
                if (this.mTrackDrawable.isStateful()) {
                    this.mTrackDrawable.setState(getDrawableState());
                }
            }
        }
        int resourceId = tintTypedArray.getResourceId(7, 0);
        if (resourceId != 0) {
            TintTypedArray tintTypedArray2 = new TintTypedArray(context, context.obtainStyledAttributes(resourceId, R$styleable.TextAppearance));
            ColorStateList colorStateList3 = tintTypedArray2.getColorStateList(3);
            this.mTextColors = colorStateList3 == null ? getTextColors() : colorStateList3;
            int dimensionPixelSize = tintTypedArray2.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i2 = tintTypedArray2.getInt(1, -1);
            int i3 = tintTypedArray2.getInt(2, -1);
            Typeface typeface = i2 != 1 ? i2 != 2 ? i2 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            if (i3 > 0) {
                Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i3) : Typeface.create(typeface, i3);
                setSwitchTypeface(defaultFromStyle);
                int i4 = (~(defaultFromStyle != null ? defaultFromStyle.getStyle() : 0)) & i3;
                textPaint.setFakeBoldText((i4 & 1) != 0);
                textPaint.setTextSkewX((i4 & 2) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (tintTypedArray2.getBoolean(14, false)) {
                Context context2 = getContext();
                ?? obj = new Object();
                obj.mLocale = context2.getResources().getConfiguration().locale;
                allCapsTransformationMethod = obj;
            }
            this.mSwitchTransformationMethod = allCapsTransformationMethod;
            tintTypedArray2.recycle();
        }
        new AppCompatTextHelper(this).loadFromAttributes(attributeSet, i);
        tintTypedArray.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        int i3 = this.mSwitchLeft;
        int i4 = this.mSwitchTop;
        int i5 = this.mSwitchRight;
        int i6 = this.mSwitchBottom;
        int thumbScrollRange = ((int) (((ViewUtils.isLayoutRtl(this) ? 1.0f - this.mThumbPosition : this.mThumbPosition) * getThumbScrollRange()) + 0.5f)) + i3;
        Drawable drawable = this.mThumbDrawable;
        Rect opticalBounds = drawable != null ? DrawableUtils.getOpticalBounds(drawable) : DrawableUtils.INSETS_NONE;
        Drawable drawable2 = this.mTrackDrawable;
        Rect rect = this.mTempRect;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbScrollRange += i7;
            if (opticalBounds != null) {
                int i8 = opticalBounds.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = opticalBounds.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = opticalBounds.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = opticalBounds.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                    this.mTrackDrawable.setBounds(i3, i, i5, i2);
                }
            } else {
                i = i4;
            }
            i2 = i6;
            this.mTrackDrawable.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.mThumbDrawable;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbScrollRange - rect.left;
            int i16 = thumbScrollRange + this.mThumbWidth + rect.right;
            this.mThumbDrawable.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.mThumbDrawable;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mThumbDrawable;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        if (!ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.mSwitchWidth;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.mSwitchPadding : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingRight() {
        if (ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.mSwitchWidth;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.mSwitchPadding : compoundPaddingRight;
    }

    public final int getThumbScrollRange() {
        Drawable drawable = this.mTrackDrawable;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.mTempRect;
        drawable.getPadding(rect);
        Drawable drawable2 = this.mThumbDrawable;
        Rect opticalBounds = drawable2 != null ? DrawableUtils.getOpticalBounds(drawable2) : DrawableUtils.INSETS_NONE;
        return ((((this.mSwitchWidth - this.mThumbWidth) - rect.left) - rect.right) - opticalBounds.left) - opticalBounds.right;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mThumbDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.mPositionAnimator;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.mPositionAnimator.end();
        this.mPositionAnimator = null;
    }

    public final StaticLayout makeLayout(CharSequence charSequence) {
        AllCapsTransformationMethod allCapsTransformationMethod = this.mSwitchTransformationMethod;
        if (allCapsTransformationMethod != null) {
            charSequence = allCapsTransformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        return new StaticLayout(charSequence2, this.mTextPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.mTrackDrawable;
        Rect rect = this.mTempRect;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.mSwitchTop;
        int i2 = this.mSwitchBottom;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.mThumbDrawable;
        if (drawable != null) {
            if (!this.mSplitTrack || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable2);
                drawable2.copyBounds(rect);
                rect.left += opticalBounds.left;
                rect.right -= opticalBounds.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = (this.mThumbPosition > 0.5f ? 1 : (this.mThumbPosition == 0.5f ? 0 : -1)) > 0 ? this.mOnLayout : this.mOffLayout;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.mTextColors;
            TextPaint textPaint = this.mTextPaint;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i3 + i4) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.mTextOn : this.mTextOff;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        super.onLayout(z, i, i2, i3, i4);
        int i11 = 0;
        if (this.mThumbDrawable != null) {
            Drawable drawable = this.mTrackDrawable;
            Rect rect = this.mTempRect;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect opticalBounds = DrawableUtils.getOpticalBounds(this.mThumbDrawable);
            i5 = Math.max(0, opticalBounds.left - rect.left);
            i11 = Math.max(0, opticalBounds.right - rect.right);
        } else {
            i5 = 0;
        }
        if (ViewUtils.isLayoutRtl(this)) {
            i6 = getPaddingLeft() + i5;
            width = ((this.mSwitchWidth + i6) - i5) - i11;
        } else {
            width = (getWidth() - getPaddingRight()) - i11;
            i6 = (width - this.mSwitchWidth) + i5 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i12 = this.mSwitchHeight;
            int i13 = height - (i12 / 2);
            i7 = i12;
            i8 = i13;
        } else {
            if (gravity == 80) {
                i10 = getHeight() - getPaddingBottom();
                i9 = i10 - this.mSwitchHeight;
                this.mSwitchLeft = i6;
                this.mSwitchTop = i9;
                this.mSwitchBottom = i10;
                this.mSwitchRight = width;
            }
            i8 = getPaddingTop();
            i7 = this.mSwitchHeight;
        }
        int i14 = i7 + i8;
        i9 = i8;
        i10 = i14;
        this.mSwitchLeft = i6;
        this.mSwitchTop = i9;
        this.mSwitchBottom = i10;
        this.mSwitchRight = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        boolean z = this.mShowText;
        if (z) {
            if (this.mOnLayout == null) {
                this.mOnLayout = makeLayout(this.mTextOn);
            }
            if (this.mOffLayout == null) {
                this.mOffLayout = makeLayout(this.mTextOff);
            }
        }
        Drawable drawable = this.mThumbDrawable;
        int i6 = 0;
        Rect rect = this.mTempRect;
        if (drawable != null) {
            drawable.getPadding(rect);
            i3 = (this.mThumbDrawable.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.mThumbDrawable.getIntrinsicHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (z) {
            i5 = (this.mThumbTextPadding * 2) + Math.max(this.mOnLayout.getWidth(), this.mOffLayout.getWidth());
        } else {
            i5 = 0;
        }
        this.mThumbWidth = Math.max(i5, i3);
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i6 = this.mTrackDrawable.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i7 = rect.left;
        int i8 = rect.right;
        Drawable drawable3 = this.mThumbDrawable;
        if (drawable3 != null) {
            Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable3);
            i7 = Math.max(i7, opticalBounds.left);
            i8 = Math.max(i8, opticalBounds.right);
        }
        int max = Math.max(this.mSwitchMinWidth, (this.mThumbWidth * 2) + i7 + i8);
        int max2 = Math.max(i6, i4);
        this.mSwitchWidth = max;
        this.mSwitchHeight = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.mTextOn : this.mTextOff;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if (r1 != 3) goto L90;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                CharSequence charSequence = this.mTextOn;
                if (charSequence == null) {
                    charSequence = getResources().getString(com.tawfiq.imaginstudio.imagetools.pixellab.R.string.abc_capital_on);
                }
                ViewCompat.setStateDescription(charSequence, this);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence2 = this.mTextOff;
            if (charSequence2 == null) {
                charSequence2 = getResources().getString(com.tawfiq.imaginstudio.imagetools.pixellab.R.string.abc_capital_off);
            }
            ViewCompat.setStateDescription(charSequence2, this);
        }
        if (getWindowToken() != null) {
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            if (isLaidOut()) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, THUMB_POS, isChecked ? 1.0f : 0.0f);
                this.mPositionAnimator = ofFloat;
                ofFloat.setDuration(250L);
                this.mPositionAnimator.setAutoCancel(true);
                this.mPositionAnimator.start();
                return;
            }
        }
        ObjectAnimator objectAnimator = this.mPositionAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.mThumbPosition = isChecked ? 1.0f : 0.0f;
        invalidate();
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(callback, this));
    }

    public final void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.mTextPaint;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mThumbDrawable || drawable == this.mTrackDrawable;
    }
}
