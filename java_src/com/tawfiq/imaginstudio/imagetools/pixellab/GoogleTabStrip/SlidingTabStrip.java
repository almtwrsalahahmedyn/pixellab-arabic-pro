package com.tawfiq.imaginstudio.imagetools.pixellab.GoogleTabStrip;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.GoogleTabStrip.SlidingTabLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SlidingTabStrip extends LinearLayout {
    private static final byte DEFAULT_BOTTOM_BORDER_COLOR_ALPHA = 38;
    private static final int DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS = 0;
    private static final int DEFAULT_SELECTED_INDICATOR_COLOR = -13388315;
    private static final int SELECTED_INDICATOR_THICKNESS_DIPS = 3;
    private final Paint mBottomBorderPaint;
    private final int mBottomBorderThickness;
    private SlidingTabLayout.TabColorizer mCustomTabColorizer;
    private final int mDefaultBottomBorderColor;
    private final SimpleTabColorizer mDefaultTabColorizer;
    private final Paint mSelectedIndicatorPaint;
    private final int mSelectedIndicatorThickness;
    private int mSelectedPosition;
    private float mSelectionOffset;

    /* loaded from: classes.dex */
    public static class SimpleTabColorizer implements SlidingTabLayout.TabColorizer {
        private int[] mIndicatorColors;

        private SimpleTabColorizer() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.GoogleTabStrip.SlidingTabLayout.TabColorizer
        public final int getIndicatorColor(int i) {
            int[] iArr = this.mIndicatorColors;
            return iArr[i % iArr.length];
        }

        public void setIndicatorColors(int... iArr) {
            this.mIndicatorColors = iArr;
        }
    }

    public SlidingTabStrip(Context context) {
        this(context, null);
    }

    public SlidingTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        float f = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorForeground, typedValue, true);
        int colorAlpha = setColorAlpha(typedValue.data, DEFAULT_BOTTOM_BORDER_COLOR_ALPHA);
        this.mDefaultBottomBorderColor = colorAlpha;
        SimpleTabColorizer simpleTabColorizer = new SimpleTabColorizer();
        this.mDefaultTabColorizer = simpleTabColorizer;
        simpleTabColorizer.setIndicatorColors(DEFAULT_SELECTED_INDICATOR_COLOR);
        this.mBottomBorderThickness = (int) (0.0f * f);
        Paint paint = new Paint();
        this.mBottomBorderPaint = paint;
        paint.setColor(colorAlpha);
        this.mSelectedIndicatorThickness = (int) (f * 3.0f);
        this.mSelectedIndicatorPaint = new Paint();
    }

    private static int blendColors(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.rgb((int) ((Color.red(i2) * f2) + (Color.red(i) * f)), (int) ((Color.green(i2) * f2) + (Color.green(i) * f)), (int) ((Color.blue(i2) * f2) + (Color.blue(i) * f)));
    }

    private static int setColorAlpha(int i, byte b) {
        return Color.argb((int) b, Color.red(i), Color.green(i), Color.blue(i));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout.TabColorizer tabColorizer = this.mCustomTabColorizer;
        if (tabColorizer == null) {
            tabColorizer = this.mDefaultTabColorizer;
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.mSelectedPosition);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int indicatorColor = tabColorizer.getIndicatorColor(this.mSelectedPosition);
            if (this.mSelectionOffset > 0.0f && this.mSelectedPosition < getChildCount() - 1) {
                int indicatorColor2 = tabColorizer.getIndicatorColor(this.mSelectedPosition + 1);
                if (indicatorColor != indicatorColor2) {
                    indicatorColor = blendColors(indicatorColor2, indicatorColor, this.mSelectionOffset);
                }
                View childAt2 = getChildAt(this.mSelectedPosition + 1);
                float left2 = this.mSelectionOffset * childAt2.getLeft();
                float f = this.mSelectionOffset;
                left = (int) (((1.0f - f) * left) + left2);
                right = (int) (((1.0f - this.mSelectionOffset) * right) + (f * childAt2.getRight()));
            }
            this.mSelectedIndicatorPaint.setColor(indicatorColor);
            canvas.drawRect(left, height - this.mSelectedIndicatorThickness, right, height, this.mSelectedIndicatorPaint);
        }
        canvas.drawRect(0.0f, height - this.mBottomBorderThickness, getWidth(), height, this.mBottomBorderPaint);
    }

    public void onViewPagerPageChanged(int i, float f) {
        this.mSelectedPosition = i;
        this.mSelectionOffset = f;
        invalidate();
    }

    public void setCustomTabColorizer(SlidingTabLayout.TabColorizer tabColorizer) {
        this.mCustomTabColorizer = tabColorizer;
        invalidate();
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.mCustomTabColorizer = null;
        this.mDefaultTabColorizer.setIndicatorColors(iArr);
        invalidate();
    }
}
