package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.IBinder;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.core.content.pm.ActivityInfoCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.SeekBarCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable;

/* loaded from: classes.dex */
public class PopupIndicator {
    private MarkerDrawable.MarkerAnimationListener mListener;
    private Floater mPopupView;
    private boolean mShowing;
    private final WindowManager mWindowManager;
    private int[] mDrawingLocation = new int[2];
    Point screenSize = new Point();

    /* loaded from: classes.dex */
    public class Floater extends FrameLayout implements MarkerDrawable.MarkerAnimationListener {
        private Marker mMarker;
        private int mOffset;

        public Floater(Context context, AttributeSet attributeSet, int i, String str) {
            super(context);
            Marker marker = new Marker(context, attributeSet, i, str);
            this.mMarker = marker;
            addView(marker, new FrameLayout.LayoutParams(-2, -2, 51));
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable.MarkerAnimationListener
        public void onClosingComplete() {
            if (PopupIndicator.this.mListener != null) {
                PopupIndicator.this.mListener.onClosingComplete();
            }
            PopupIndicator.this.dismissComplete();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int measuredWidth = this.mOffset - (this.mMarker.getMeasuredWidth() / 2);
            Marker marker = this.mMarker;
            marker.layout(measuredWidth, 0, marker.getMeasuredWidth() + measuredWidth, this.mMarker.getMeasuredHeight());
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            measureChildren(i, i2);
            setMeasuredDimension(View.MeasureSpec.getSize(i), this.mMarker.getMeasuredHeight());
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.drawable.MarkerDrawable.MarkerAnimationListener
        public void onOpeningComplete() {
            if (PopupIndicator.this.mListener != null) {
                PopupIndicator.this.mListener.onOpeningComplete();
            }
        }

        public void setColors(int i, int i2) {
            this.mMarker.setColors(i, i2);
        }

        public void setFloatOffset(int i) {
            this.mOffset = i;
            int measuredWidth = i - (this.mMarker.getMeasuredWidth() / 2);
            Marker marker = this.mMarker;
            marker.offsetLeftAndRight(measuredWidth - marker.getLeft());
            if (SeekBarCompat.isHardwareAccelerated(this)) {
                return;
            }
            invalidate();
        }
    }

    public PopupIndicator(Context context, AttributeSet attributeSet, int i, String str) {
        this.mWindowManager = (WindowManager) context.getSystemService("window");
        this.mPopupView = new Floater(context, attributeSet, i, str);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.screenSize.set(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    private int computeFlags(int i) {
        return (i & (-426521)) | 32768 | 8 | 16 | ActivityInfoCompat.CONFIG_UI_MODE;
    }

    private WindowManager.LayoutParams createPopupLayout(IBinder iBinder) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.flags = computeFlags(layoutParams.flags);
        layoutParams.type = 1000;
        layoutParams.token = iBinder;
        layoutParams.softInputMode = 3;
        layoutParams.setTitle("DiscreteSeekBar Indicator:" + Integer.toHexString(hashCode()));
        return layoutParams;
    }

    private void invokePopup(WindowManager.LayoutParams layoutParams) {
        this.mWindowManager.addView(this.mPopupView, layoutParams);
        this.mPopupView.mMarker.animateOpen();
    }

    private void measureFloater() {
        this.mPopupView.measure(View.MeasureSpec.makeMeasureSpec(this.screenSize.x, 1073741824), View.MeasureSpec.makeMeasureSpec(this.screenSize.y, Integer.MIN_VALUE));
    }

    private void translateViewIntoPosition(int i) {
        this.mPopupView.setFloatOffset(i + this.mDrawingLocation[0]);
    }

    private void updateLayoutParamsForPosiion(View view, WindowManager.LayoutParams layoutParams, int i) {
        measureFloater();
        int measuredHeight = this.mPopupView.getMeasuredHeight();
        int paddingBottom = this.mPopupView.mMarker.getPaddingBottom();
        view.getLocationInWindow(this.mDrawingLocation);
        layoutParams.x = 0;
        layoutParams.y = (this.mDrawingLocation[1] - measuredHeight) + i + paddingBottom;
        layoutParams.width = this.screenSize.x;
        layoutParams.height = measuredHeight;
    }

    public void dismiss() {
        this.mPopupView.mMarker.animateClose();
    }

    public void dismissComplete() {
        if (isShowing()) {
            this.mShowing = false;
            this.mWindowManager.removeViewImmediate(this.mPopupView);
        }
    }

    public boolean isShowing() {
        return this.mShowing;
    }

    public void move(int i) {
        if (isShowing()) {
            translateViewIntoPosition(i);
        }
    }

    public void setColors(int i, int i2) {
        this.mPopupView.setColors(i, i2);
    }

    public void setListener(MarkerDrawable.MarkerAnimationListener markerAnimationListener) {
        this.mListener = markerAnimationListener;
    }

    public void setValue(CharSequence charSequence) {
        this.mPopupView.mMarker.setValue(charSequence);
    }

    public void showIndicator(View view, Rect rect) {
        if (isShowing()) {
            this.mPopupView.mMarker.animateOpen();
            return;
        }
        IBinder windowToken = view.getWindowToken();
        if (windowToken != null) {
            WindowManager.LayoutParams createPopupLayout = createPopupLayout(windowToken);
            createPopupLayout.gravity = 8388659;
            updateLayoutParamsForPosiion(view, createPopupLayout, rect.bottom);
            this.mShowing = true;
            translateViewIntoPosition(rect.centerX());
            invokePopup(createPopupLayout);
        }
    }

    public void updateSizes(String str) {
        dismissComplete();
        Floater floater = this.mPopupView;
        if (floater != null) {
            floater.mMarker.resetSizes(str);
        }
    }
}
