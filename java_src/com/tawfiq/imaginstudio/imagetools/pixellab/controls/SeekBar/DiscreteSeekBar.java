package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.PopupIndicator;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.SeekBarCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.ThumbDrawable;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.TrackRectDrawable;
import java.util.Formatter;
import java.util.Locale;

/* loaded from: classes.dex */
public class DiscreteSeekBar extends View {
    private static final String DEFAULT_FORMATTER = "%d";
    private static final int FOCUSED_STATE = 16842908;
    private static final int INDICATOR_DELAY_FOR_TAPS = 150;
    private static final int PRESSED_STATE = 16842919;
    private static final int PROGRESS_ANIMATION_DURATION = 250;
    private static final boolean isLollipopOrGreater = true;
    private boolean bubbleEnabled;
    private int mAddedTouchBounds;
    private boolean mAllowTrackClick;
    private float mAnimationPosition;
    private int mAnimationTarget;
    private float mDownX;
    private int mDragOffset;
    private MarkerDrawable.MarkerAnimationListener mFloaterListener;
    private StringBuilder mFormatBuilder;
    Formatter mFormatter;
    private PopupIndicator mIndicator;
    private String mIndicatorFormatter;
    private Rect mInvalidateRect;
    private boolean mIsDragging;
    private int mKeyProgressIncrement;
    private int mMax;
    private int mMin;
    private boolean mMirrorForRtl;
    private NumericTransformer mNumericTransformer;
    private AnimatorCompat mPositionAnimator;
    private OnProgressChangeListener mPublicChangeListener;
    private Drawable mRipple;
    private Drawable mScrubber;
    private int mScrubberHeight;
    private Runnable mShowIndicatorRunnable;
    private Rect mTempRect;
    private ThumbDrawable mThumb;
    private float mTouchSlop;
    private Drawable mTrack;
    private int mTrackHeight;
    private int mValue;
    private boolean notifyButtonAsStopTrack;

    /* loaded from: classes.dex */
    public static class CustomState extends View.BaseSavedState {
        public static final Parcelable.Creator<CustomState> CREATOR = new Parcelable.Creator<CustomState>() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.CustomState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomState createFromParcel(Parcel parcel) {
                return new CustomState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomState[] newArray(int i) {
                return new CustomState[i];
            }
        };
        private int max;
        private int min;
        private int progress;

        public CustomState(Parcel parcel) {
            super(parcel);
            this.progress = parcel.readInt();
            this.max = parcel.readInt();
            this.min = parcel.readInt();
        }

        public CustomState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.progress);
            parcel.writeInt(this.max);
            parcel.writeInt(this.min);
        }
    }

    /* loaded from: classes.dex */
    public static class DefaultNumericTransformer extends NumericTransformer {
        private DefaultNumericTransformer() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.NumericTransformer
        public int transform(int i) {
            return i;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class NumericTransformer {
        public abstract int transform(int i);

        public String transformToString(int i) {
            return String.valueOf(i);
        }

        public boolean useStringTransform() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface OnProgressChangeListener {

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar$OnProgressChangeListener$-CC, reason: invalid class name */
        /* loaded from: classes.dex */
        public final /* synthetic */ class CC {
            public static void $default$onStartTrackingTouch(OnProgressChangeListener onProgressChangeListener, DiscreteSeekBar discreteSeekBar) {
            }

            public static void $default$onStopTrackingTouch(OnProgressChangeListener onProgressChangeListener, DiscreteSeekBar discreteSeekBar) {
            }
        }

        void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z);

        void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar);

        void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar);
    }

    public DiscreteSeekBar(Context context) {
        this(context, null);
    }

    public DiscreteSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.style.DefaultSeekBar);
    }

    public DiscreteSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mKeyProgressIncrement = 1;
        this.mMirrorForRtl = false;
        this.mAllowTrackClick = true;
        this.bubbleEnabled = false;
        this.mInvalidateRect = new Rect();
        this.mTempRect = new Rect();
        this.mShowIndicatorRunnable = new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.2
            @Override // java.lang.Runnable
            public void run() {
                DiscreteSeekBar.this.showFloater();
            }
        };
        this.mFloaterListener = new MarkerDrawable.MarkerAnimationListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.3
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable.MarkerAnimationListener
            public void onClosingComplete() {
                DiscreteSeekBar.this.mThumb.animateToNormal();
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable.MarkerAnimationListener
            public void onOpeningComplete() {
            }
        };
        setFocusable(true);
        setWillNotDraw(false);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        float f = context.getResources().getDisplayMetrics().density;
        this.mTrackHeight = (int) (1.0f * f);
        this.mScrubberHeight = (int) (4.0f * f);
        int i2 = (int) (12.0f * f);
        this.mAddedTouchBounds = (((int) (f * 32.0f)) - i2) / 2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DiscreteSeekBar, R.attr.discreteSeekBarStyle, i);
        this.mMirrorForRtl = obtainStyledAttributes.getBoolean(8, this.mMirrorForRtl);
        this.mAllowTrackClick = obtainStyledAttributes.getBoolean(0, this.mAllowTrackClick);
        TypedValue typedValue = new TypedValue();
        int dimensionPixelSize = obtainStyledAttributes.getValue(6, typedValue) ? typedValue.type == 5 ? obtainStyledAttributes.getDimensionPixelSize(6, 100) : obtainStyledAttributes.getInteger(6, 100) : 100;
        int dimensionPixelSize2 = obtainStyledAttributes.getValue(7, typedValue) ? typedValue.type == 5 ? obtainStyledAttributes.getDimensionPixelSize(7, 0) : obtainStyledAttributes.getInteger(7, 0) : 0;
        int dimensionPixelSize3 = obtainStyledAttributes.getValue(12, typedValue) ? typedValue.type == 5 ? obtainStyledAttributes.getDimensionPixelSize(12, 0) : obtainStyledAttributes.getInteger(12, 0) : 0;
        this.mMin = dimensionPixelSize2;
        this.mMax = Math.max(dimensionPixelSize2 + 1, dimensionPixelSize);
        this.mValue = Math.max(dimensionPixelSize2, Math.min(dimensionPixelSize, dimensionPixelSize3));
        updateKeyboardRange();
        this.mIndicatorFormatter = obtainStyledAttributes.getString(4);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(11);
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(9);
        ColorStateList colorStateList3 = obtainStyledAttributes.getColorStateList(10);
        boolean isInEditMode = isInEditMode();
        if (isInEditMode && colorStateList3 == null) {
            colorStateList3 = new ColorStateList(new int[][]{new int[0]}, new int[]{-12303292});
        }
        if (isInEditMode && colorStateList == null) {
            colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{-7829368});
        }
        if (isInEditMode && colorStateList2 == null) {
            colorStateList2 = new ColorStateList(new int[][]{new int[0]}, new int[]{-16738680});
        }
        Drawable ripple = SeekBarCompat.getRipple(colorStateList3);
        this.mRipple = ripple;
        if (isLollipopOrGreater) {
            SeekBarCompat.setBackground(this, ripple);
        } else {
            ripple.setCallback(this);
        }
        TrackRectDrawable trackRectDrawable = new TrackRectDrawable(colorStateList);
        this.mTrack = trackRectDrawable;
        trackRectDrawable.setCallback(this);
        TrackRectDrawable trackRectDrawable2 = new TrackRectDrawable(colorStateList2);
        this.mScrubber = trackRectDrawable2;
        trackRectDrawable2.setCallback(this);
        ThumbDrawable thumbDrawable = new ThumbDrawable(colorStateList2, i2);
        this.mThumb = thumbDrawable;
        thumbDrawable.setCallback(this);
        ThumbDrawable thumbDrawable2 = this.mThumb;
        thumbDrawable2.setBounds(0, 0, thumbDrawable2.getIntrinsicWidth(), this.mThumb.getIntrinsicHeight());
        if (!isInEditMode) {
            PopupIndicator popupIndicator = new PopupIndicator(context, attributeSet, i, convertValueToMessage(this.mMax));
            this.mIndicator = popupIndicator;
            popupIndicator.setListener(this.mFloaterListener);
        }
        setBubbleEnabled(obtainStyledAttributes.getBoolean(3, true));
        obtainStyledAttributes.recycle();
        setNumericTransformer(new DefaultNumericTransformer());
    }

    private void attemptClaimDrag() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private String convertValueToMessage(int i) {
        String str = this.mIndicatorFormatter;
        if (str == null) {
            str = DEFAULT_FORMATTER;
        }
        Formatter formatter = this.mFormatter;
        if (formatter == null || !formatter.locale().equals(Locale.getDefault())) {
            int length = String.valueOf(this.mMax).length() + str.length();
            StringBuilder sb = this.mFormatBuilder;
            if (sb == null) {
                this.mFormatBuilder = new StringBuilder(length);
            } else {
                sb.ensureCapacity(length);
            }
            this.mFormatter = new Formatter(this.mFormatBuilder, Locale.getDefault());
        } else {
            this.mFormatBuilder.setLength(0);
        }
        return this.mFormatter.format(str, Integer.valueOf(i)).toString();
    }

    private int getAnimatedProgress() {
        return isAnimationRunning() ? getAnimationTarget() : this.mValue;
    }

    private int getAnimationTarget() {
        return this.mAnimationTarget;
    }

    private void hideFloater() {
        removeCallbacks(this.mShowIndicatorRunnable);
        if (isInEditMode()) {
            return;
        }
        this.mIndicator.dismiss();
        notifyBubble(false);
    }

    private boolean isDragging() {
        return this.mIsDragging;
    }

    private boolean isInScrollingContainer() {
        return SeekBarCompat.isInScrollingContainer(getParent());
    }

    private void notifyBubble(boolean z) {
        if (z) {
            onShowBubble();
        } else {
            onHideBubble();
        }
    }

    private void notifyProgress(int i, boolean z) {
        OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
        if (onProgressChangeListener != null) {
            onProgressChangeListener.onProgressChanged(this, i, z);
        }
        onValueChanged(i);
    }

    private void setHotspot(float f, float f2) {
        this.mRipple.setHotspot(f, f2);
    }

    private void setProgress(int i, boolean z) {
        int max = Math.max(this.mMin, Math.min(this.mMax, i));
        if (isAnimationRunning()) {
            this.mPositionAnimator.cancel();
        }
        if (this.mValue != max) {
            this.mValue = max;
            notifyProgress(max, z);
            updateProgressMessage(max);
            updateThumbPosFromCurrentProgress();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFloater() {
        if (!isBubbleEnabled() || isInEditMode()) {
            return;
        }
        this.mThumb.animateToPressed();
        this.mIndicator.showIndicator(this, this.mThumb.getBounds());
        notifyBubble(true);
    }

    private boolean startDragging(MotionEvent motionEvent, boolean z) {
        Rect rect = this.mTempRect;
        this.mThumb.copyBounds(rect);
        int i = -this.mAddedTouchBounds;
        rect.inset(i, i);
        boolean contains = rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        this.mIsDragging = contains;
        if (!contains && this.mAllowTrackClick && !z) {
            this.mIsDragging = true;
            this.mDragOffset = (rect.width() / 2) - this.mAddedTouchBounds;
            updateDragging(motionEvent);
            this.mThumb.copyBounds(rect);
            int i2 = -this.mAddedTouchBounds;
            rect.inset(i2, i2);
        }
        if (this.mIsDragging) {
            setPressed(true);
            attemptClaimDrag();
            setHotspot(motionEvent.getX(), motionEvent.getY());
            this.mDragOffset = (int) ((motionEvent.getX() - rect.left) - this.mAddedTouchBounds);
            OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
            if (onProgressChangeListener != null) {
                onProgressChangeListener.onStartTrackingTouch(this);
            }
        }
        return this.mIsDragging;
    }

    private void stopDragging() {
        OnProgressChangeListener onProgressChangeListener = this.mPublicChangeListener;
        if (onProgressChangeListener != null) {
            onProgressChangeListener.onStopTrackingTouch(this);
        }
        this.mIsDragging = false;
        setPressed(false);
    }

    private void updateDragging(MotionEvent motionEvent) {
        setHotspot(motionEvent.getX(), motionEvent.getY());
        int x = (int) motionEvent.getX();
        int width = this.mThumb.getBounds().width() / 2;
        int i = this.mAddedTouchBounds;
        int i2 = (x - this.mDragOffset) + width;
        int paddingLeft = getPaddingLeft() + width + i;
        int width2 = getWidth() - ((getPaddingRight() + width) + i);
        if (i2 < paddingLeft) {
            i2 = paddingLeft;
        } else if (i2 > width2) {
            i2 = width2;
        }
        float f = (i2 - paddingLeft) / (width2 - paddingLeft);
        if (isRtl()) {
            f = 1.0f - f;
        }
        int i3 = this.mMax;
        setProgress(Math.round((f * (i3 - r1)) + this.mMin), true);
    }

    private void updateFromDrawableState() {
        int[] drawableState = getDrawableState();
        boolean z = false;
        boolean z2 = false;
        for (int i : drawableState) {
            if (i == 16842908) {
                z = true;
            } else if (i == 16842919) {
                z2 = true;
            }
        }
        if (isEnabled() && (z || z2)) {
            removeCallbacks(this.mShowIndicatorRunnable);
            postDelayed(this.mShowIndicatorRunnable, 150L);
        } else {
            hideFloater();
        }
        this.mThumb.setState(drawableState);
        this.mTrack.setState(drawableState);
        this.mScrubber.setState(drawableState);
        this.mRipple.setState(drawableState);
    }

    private void updateKeyboardRange() {
        int i = this.mMax - this.mMin;
        int i2 = this.mKeyProgressIncrement;
        if (i2 == 0 || i / i2 > 20) {
            this.mKeyProgressIncrement = Math.max(1, Math.round(i / 20.0f));
        }
    }

    private void updateProgressFromAnimation(float f) {
        int width = this.mThumb.getBounds().width() / 2;
        int i = this.mAddedTouchBounds;
        int width2 = (getWidth() - ((getPaddingRight() + width) + i)) - ((getPaddingLeft() + width) + i);
        int i2 = this.mMax;
        int round = Math.round(((i2 - r1) * f) + this.mMin);
        if (round != getProgress()) {
            this.mValue = round;
            notifyProgress(round, true);
            updateProgressMessage(round);
        }
        updateThumbPos((int) ((f * width2) + 0.5f));
    }

    private void updateProgressMessage(int i) {
        PopupIndicator popupIndicator;
        String convertValueToMessage;
        if (isInEditMode()) {
            return;
        }
        if (this.mNumericTransformer.useStringTransform()) {
            popupIndicator = this.mIndicator;
            convertValueToMessage = this.mNumericTransformer.transformToString(i);
        } else {
            popupIndicator = this.mIndicator;
            convertValueToMessage = convertValueToMessage(this.mNumericTransformer.transform(i));
        }
        popupIndicator.setValue(convertValueToMessage);
    }

    private void updateThumbPos(int i) {
        int paddingLeft;
        int i2;
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int i3 = intrinsicWidth / 2;
        if (isRtl()) {
            paddingLeft = (getWidth() - getPaddingRight()) - this.mAddedTouchBounds;
            i2 = (paddingLeft - i) - intrinsicWidth;
        } else {
            paddingLeft = getPaddingLeft() + this.mAddedTouchBounds;
            i2 = i + paddingLeft;
        }
        this.mThumb.copyBounds(this.mInvalidateRect);
        ThumbDrawable thumbDrawable = this.mThumb;
        Rect rect = this.mInvalidateRect;
        thumbDrawable.setBounds(i2, rect.top, intrinsicWidth + i2, rect.bottom);
        if (isRtl()) {
            this.mScrubber.getBounds().right = paddingLeft - i3;
            this.mScrubber.getBounds().left = i2 + i3;
        } else {
            this.mScrubber.getBounds().left = paddingLeft + i3;
            this.mScrubber.getBounds().right = i2 + i3;
        }
        Rect rect2 = this.mTempRect;
        this.mThumb.copyBounds(rect2);
        if (!isInEditMode()) {
            this.mIndicator.move(rect2.centerX());
        }
        Rect rect3 = this.mInvalidateRect;
        int i4 = -this.mAddedTouchBounds;
        rect3.inset(i4, i4);
        int i5 = -this.mAddedTouchBounds;
        rect2.inset(i5, i5);
        this.mInvalidateRect.union(rect2);
        SeekBarCompat.setHotspotBounds(this.mRipple, rect2.left, rect2.top, rect2.right, rect2.bottom);
        invalidate(this.mInvalidateRect);
    }

    private void updateThumbPosFromCurrentProgress() {
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int i = this.mAddedTouchBounds;
        int i2 = intrinsicWidth / 2;
        int i3 = this.mValue;
        int i4 = this.mMin;
        updateThumbPos((int) ((((i3 - i4) / (this.mMax - i4)) * ((getWidth() - ((getPaddingRight() + i2) + i)) - ((getPaddingLeft() + i2) + i))) + 0.5f));
    }

    public void animateSetProgress(int i) {
        float animationPosition = isAnimationRunning() ? getAnimationPosition() : getProgress();
        int i2 = this.mMin;
        if (i < i2 || i > (i2 = this.mMax)) {
            i = i2;
        }
        AnimatorCompat animatorCompat = this.mPositionAnimator;
        if (animatorCompat != null) {
            animatorCompat.cancel();
        }
        this.mAnimationTarget = i;
        AnimatorCompat create = AnimatorCompat.create(animationPosition, i, new AnimatorCompat.AnimationFrameUpdateListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.1
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat.AnimationFrameUpdateListener
            public void onAnimationFrame(float f) {
                DiscreteSeekBar.this.setAnimationPosition(f);
            }
        });
        this.mPositionAnimator = create;
        create.setDuration(PROGRESS_ANIMATION_DURATION);
        this.mPositionAnimator.start();
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        updateFromDrawableState();
    }

    public float getAnimationPosition() {
        return this.mAnimationPosition;
    }

    public int getMax() {
        return this.mMax;
    }

    public int getMin() {
        return this.mMin;
    }

    public NumericTransformer getNumericTransformer() {
        return this.mNumericTransformer;
    }

    public int getProgress() {
        return this.mValue;
    }

    public boolean isAnimationRunning() {
        AnimatorCompat animatorCompat = this.mPositionAnimator;
        return animatorCompat != null && animatorCompat.isRunning();
    }

    public boolean isBubbleEnabled() {
        return this.bubbleEnabled;
    }

    public boolean isRtl() {
        return false;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mShowIndicatorRunnable);
        if (isInEditMode()) {
            return;
        }
        this.mIndicator.dismissComplete();
    }

    @Override // android.view.View
    public synchronized void onDraw(Canvas canvas) {
        if (!isLollipopOrGreater) {
            this.mRipple.draw(canvas);
        }
        super.onDraw(canvas);
        this.mTrack.draw(canvas);
        this.mScrubber.draw(canvas);
        this.mThumb.draw(canvas);
    }

    public void onHideBubble() {
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        int i2;
        if (isEnabled()) {
            int animatedProgress = getAnimatedProgress();
            if (i == 21) {
                if (animatedProgress > this.mMin) {
                    i2 = animatedProgress - this.mKeyProgressIncrement;
                    animateSetProgress(i2);
                }
                z = true;
            } else if (i == 22) {
                if (animatedProgress < this.mMax) {
                    i2 = animatedProgress + this.mKeyProgressIncrement;
                    animateSetProgress(i2);
                }
                z = true;
            }
            return z || super.onKeyDown(i, keyEvent);
        }
        z = false;
        if (z) {
            return true;
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            removeCallbacks(this.mShowIndicatorRunnable);
            if (!isInEditMode()) {
                this.mIndicator.dismissComplete();
            }
            updateFromDrawableState();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), (this.mAddedTouchBounds * 2) + getPaddingBottom() + getPaddingTop() + this.mThumb.getIntrinsicHeight());
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(CustomState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        CustomState customState = (CustomState) parcelable;
        setMin(customState.min);
        setMax(customState.max);
        setProgress(customState.progress, false);
        super.onRestoreInstanceState(customState.getSuperState());
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        CustomState customState = new CustomState(super.onSaveInstanceState());
        customState.progress = getProgress();
        customState.max = this.mMax;
        customState.min = this.mMin;
        return customState;
    }

    public void onShowBubble() {
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int intrinsicWidth = this.mThumb.getIntrinsicWidth();
        int intrinsicHeight = this.mThumb.getIntrinsicHeight();
        int i5 = this.mAddedTouchBounds;
        int i6 = intrinsicWidth / 2;
        int paddingLeft = getPaddingLeft() + i5;
        int paddingRight = getPaddingRight();
        int height = (getHeight() - getPaddingBottom()) - i5;
        this.mThumb.setBounds(paddingLeft, height - intrinsicHeight, intrinsicWidth + paddingLeft, height);
        int max = Math.max(this.mTrackHeight / 2, 1);
        int i7 = paddingLeft + i6;
        int i8 = height - i6;
        this.mTrack.setBounds(i7, i8 - max, ((getWidth() - i6) - paddingRight) - i5, max + i8);
        int max2 = Math.max(this.mScrubberHeight / 2, 2);
        this.mScrubber.setBounds(i7, i8 - max2, i7, i8 + max2);
        updateThumbPosFromCurrentProgress();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0015, code lost:
    
        if (r0 != 3) goto L21;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            int r0 = r5.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L3b
            if (r0 == r2) goto L37
            r3 = 2
            if (r0 == r3) goto L18
            r5 = 3
            if (r0 == r5) goto L37
            goto L48
        L18:
            boolean r0 = r4.isDragging()
            if (r0 == 0) goto L22
            r4.updateDragging(r5)
            goto L48
        L22:
            float r0 = r5.getX()
            float r3 = r4.mDownX
            float r0 = r0 - r3
            float r0 = java.lang.Math.abs(r0)
            float r3 = r4.mTouchSlop
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L48
            r4.startDragging(r5, r1)
            goto L48
        L37:
            r4.stopDragging()
            goto L48
        L3b:
            float r0 = r5.getX()
            r4.mDownX = r0
            boolean r0 = r4.isInScrollingContainer()
            r4.startDragging(r5, r0)
        L48:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void onValueChanged(int i) {
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    public void setAnimationPosition(float f) {
        this.mAnimationPosition = f;
        updateProgressFromAnimation((f - this.mMin) / (this.mMax - r0));
    }

    public void setBubbleEnabled(boolean z) {
        this.bubbleEnabled = z;
    }

    public void setIndicatorFormatter(String str) {
        this.mIndicatorFormatter = str;
        updateProgressMessage(this.mValue);
    }

    public void setMax(int i) {
        this.mMax = i;
        if (i < this.mMin) {
            setMin(i - 1);
        }
        updateKeyboardRange();
        int i2 = this.mValue;
        int i3 = this.mMin;
        if (i2 < i3 || i2 > this.mMax) {
            setProgress(i3);
        }
    }

    public void setMin(int i) {
        this.mMin = i;
        if (i > this.mMax) {
            setMax(i + 1);
        }
        updateKeyboardRange();
        int i2 = this.mValue;
        int i3 = this.mMin;
        if (i2 < i3 || i2 > this.mMax) {
            setProgress(i3);
        }
    }

    public void setNotifyButtonAsStopTrack(boolean z) {
        this.notifyButtonAsStopTrack = z;
    }

    public void setNumericTransformer(NumericTransformer numericTransformer) {
        PopupIndicator popupIndicator;
        String convertValueToMessage;
        if (numericTransformer == null) {
            numericTransformer = new DefaultNumericTransformer();
        }
        this.mNumericTransformer = numericTransformer;
        if (!isInEditMode()) {
            if (this.mNumericTransformer.useStringTransform()) {
                popupIndicator = this.mIndicator;
                convertValueToMessage = this.mNumericTransformer.transformToString(this.mMax);
            } else {
                popupIndicator = this.mIndicator;
                convertValueToMessage = convertValueToMessage(this.mNumericTransformer.transform(this.mMax));
            }
            popupIndicator.updateSizes(convertValueToMessage);
        }
        updateProgressMessage(this.mValue);
    }

    public void setOnProgressChangeListener(OnProgressChangeListener onProgressChangeListener) {
        this.mPublicChangeListener = onProgressChangeListener;
    }

    public void setProgress(int i) {
        setProgress(i, false);
    }

    public void setProgressAsIfTheUserHadDoneSo(int i) {
        OnProgressChangeListener onProgressChangeListener;
        setProgress(i, true);
        if (!this.notifyButtonAsStopTrack || (onProgressChangeListener = this.mPublicChangeListener) == null) {
            return;
        }
        onProgressChangeListener.onStopTrackingTouch(this);
    }

    public void setScrubberColor(int i) {
        this.mScrubber.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
    }

    public void setThumbColor(int i, int i2) {
        this.mThumb.setColorStateList(ColorStateList.valueOf(i));
        this.mIndicator.setColors(i, i2);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mThumb || drawable == this.mTrack || drawable == this.mScrubber || drawable == this.mRipple || super.verifyDrawable(drawable);
    }
}
