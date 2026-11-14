package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.SeekBarCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable;

/* loaded from: classes.dex */
public class Marker extends ViewGroup implements MarkerDrawable.MarkerAnimationListener {
    private static final int ELEVATION_DP = 8;
    private static final int PADDING_DP = 4;
    private static final int SEPARATION_DP = 30;
    MarkerDrawable mMarkerDrawable;
    private TextView mNumber;
    private int mSeparation;
    private int mWidth;

    public Marker(Context context) {
        this(context, null);
    }

    public Marker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.discreteSeekBarStyle);
    }

    public Marker(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, "0");
    }

    public Marker(Context context, AttributeSet attributeSet, int i, String str) {
        super(context, attributeSet, i);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DiscreteSeekBar, R.attr.discreteSeekBarStyle, R.style.DefaultSeekBar);
        int i2 = ((int) (displayMetrics.density * 4.0f)) * 2;
        int resourceId = obtainStyledAttributes.getResourceId(5, R.style.DefaultIndicatorTextAppearance);
        TextView textView = new TextView(context);
        this.mNumber = textView;
        textView.setPadding(i2, 0, i2, 0);
        this.mNumber.setTextAppearance(context, resourceId);
        this.mNumber.setGravity(17);
        this.mNumber.setText(str);
        this.mNumber.setMaxLines(1);
        this.mNumber.setSingleLine(true);
        SeekBarCompat.setTextDirection(this.mNumber, 5);
        this.mNumber.setVisibility(4);
        setPadding(i2, i2, i2, i2);
        resetSizes(str);
        float f = displayMetrics.density;
        this.mSeparation = (int) (30.0f * f);
        MarkerDrawable markerDrawable = new MarkerDrawable(obtainStyledAttributes.getColorStateList(1), (int) (f * 12.0f));
        this.mMarkerDrawable = markerDrawable;
        markerDrawable.setCallback(this);
        this.mMarkerDrawable.setMarkerListener(this);
        this.mMarkerDrawable.setExternalOffset(i2);
        float dimension = obtainStyledAttributes.getDimension(2, displayMetrics.density * 8.0f);
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        setElevation(dimension);
        SeekBarCompat.setOutlineProvider(this, this.mMarkerDrawable);
        obtainStyledAttributes.recycle();
    }

    public void animateClose() {
        this.mMarkerDrawable.stop();
        this.mNumber.setVisibility(4);
        this.mMarkerDrawable.animateToNormal();
    }

    public void animateOpen() {
        this.mMarkerDrawable.stop();
        this.mMarkerDrawable.animateToPressed();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.mMarkerDrawable.draw(canvas);
        super.dispatchDraw(canvas);
    }

    public CharSequence getValue() {
        return this.mNumber.getText();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        animateOpen();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable.MarkerAnimationListener
    public void onClosingComplete() {
        if (getParent() instanceof MarkerDrawable.MarkerAnimationListener) {
            ((MarkerDrawable.MarkerAnimationListener) getParent()).onClosingComplete();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mMarkerDrawable.stop();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        TextView textView = this.mNumber;
        int i5 = this.mWidth;
        textView.layout(paddingLeft, paddingTop, paddingLeft + i5, i5 + paddingTop);
        this.mMarkerDrawable.setBounds(paddingLeft, paddingTop, width, height);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        measureChildren(i, i2);
        int paddingRight = getPaddingRight() + getPaddingLeft() + this.mWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + this.mWidth;
        float f = this.mWidth;
        setMeasuredDimension(paddingRight, (((int) ((1.41f * f) - f)) / 2) + paddingBottom + this.mSeparation);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable.MarkerAnimationListener
    public void onOpeningComplete() {
        this.mNumber.setVisibility(0);
        if (getParent() instanceof MarkerDrawable.MarkerAnimationListener) {
            ((MarkerDrawable.MarkerAnimationListener) getParent()).onOpeningComplete();
        }
    }

    public void resetSizes(String str) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.mNumber.setText("-" + str);
        this.mNumber.measure(View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE));
        this.mWidth = Math.max(this.mNumber.getMeasuredWidth(), this.mNumber.getMeasuredHeight());
        removeView(this.mNumber);
        TextView textView = this.mNumber;
        int i = this.mWidth;
        addView(textView, new FrameLayout.LayoutParams(i, i, 51));
    }

    public void setColors(int i, int i2) {
        this.mMarkerDrawable.setColors(i, i2);
    }

    public void setValue(CharSequence charSequence) {
        this.mNumber.setText(charSequence);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mMarkerDrawable || super.verifyDrawable(drawable);
    }
}
