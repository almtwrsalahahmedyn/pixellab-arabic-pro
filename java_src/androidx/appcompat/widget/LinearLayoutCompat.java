package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    public boolean mBaselineAligned;
    public final int mBaselineAlignedChildIndex;
    public int mBaselineChildTop;
    public final Drawable mDivider;
    public final int mDividerHeight;
    public final int mDividerPadding;
    public final int mDividerWidth;
    public final int mGravity;
    public int[] mMaxAscent;
    public int[] mMaxDescent;
    public final int mOrientation;
    public final int mShowDividers;
    public int mTotalLength;
    public final boolean mUseLargestChild;
    public final float mWeightSum;

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        int[] iArr = R$styleable.LinearLayoutCompat;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        int i2 = tintTypedArray.getInt(1, -1);
        if (i2 >= 0 && this.mOrientation != i2) {
            this.mOrientation = i2;
            requestLayout();
        }
        int i3 = tintTypedArray.getInt(0, -1);
        if (i3 >= 0 && this.mGravity != i3) {
            i3 = (8388615 & i3) == 0 ? i3 | 8388611 : i3;
            this.mGravity = (i3 & 112) == 0 ? i3 | 48 : i3;
            requestLayout();
        }
        boolean z = tintTypedArray.getBoolean(2, true);
        if (!z) {
            this.mBaselineAligned = z;
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(4, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArray.getInt(3, -1);
        this.mUseLargestChild = tintTypedArray.getBoolean(7, false);
        Drawable drawable = tintTypedArray.getDrawable(5);
        if (drawable != this.mDivider) {
            this.mDivider = drawable;
            if (drawable != null) {
                this.mDividerWidth = drawable.getIntrinsicWidth();
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerWidth = 0;
                this.mDividerHeight = 0;
            }
            setWillNotDraw(drawable == null);
            requestLayout();
        }
        this.mShowDividers = tintTypedArray.getInt(8, 0);
        this.mDividerPadding = tintTypedArray.getDimensionPixelSize(6, 0);
        tintTypedArray.recycle();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void drawHorizontalDivider(Canvas canvas, int i) {
        Drawable drawable = this.mDivider;
        int paddingLeft = getPaddingLeft();
        int i2 = this.mDividerPadding;
        drawable.setBounds(paddingLeft + i2, i, (getWidth() - getPaddingRight()) - i2, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    public final void drawVerticalDivider(Canvas canvas, int i) {
        Drawable drawable = this.mDivider;
        int paddingTop = getPaddingTop();
        int i2 = this.mDividerPadding;
        drawable.setBounds(i, paddingTop + i2, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - i2);
        this.mDivider.draw(canvas);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.mOrientation;
        if (i == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LinearLayout.LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final int getBaseline() {
        int i;
        int i2 = this.mBaselineAlignedChildIndex;
        if (i2 < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (i2 == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
            if (i == 16) {
                i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i == 80) {
                i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    public final boolean hasDividerBeforeChildAt(int i) {
        int i2 = this.mShowDividers;
        if (i == 0) {
            return (i2 & 1) != 0;
        }
        if (i == getChildCount()) {
            return (i2 & 4) != 0;
        }
        if ((i2 & 2) == 0) {
            return false;
        }
        for (int i3 = i - 1; i3 >= 0; i3--) {
            if (getChildAt(i3).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i;
        if (this.mDivider == null) {
            return;
        }
        int i2 = 0;
        if (this.mOrientation == 1) {
            int childCount = getChildCount();
            while (i2 < childCount) {
                View childAt = getChildAt(i2);
                if (childAt != null && childAt.getVisibility() != 8 && hasDividerBeforeChildAt(i2)) {
                    drawHorizontalDivider(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin) - this.mDividerHeight);
                }
                i2++;
            }
            if (hasDividerBeforeChildAt(childCount)) {
                View childAt2 = getChildAt(childCount - 1);
                drawHorizontalDivider(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int childCount2 = getChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        while (i2 < childCount2) {
            View childAt3 = getChildAt(i2);
            if (childAt3 != null && childAt3.getVisibility() != 8 && hasDividerBeforeChildAt(i2)) {
                LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                drawVerticalDivider(canvas, isLayoutRtl ? childAt3.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.mDividerWidth);
            }
            i2++;
        }
        if (hasDividerBeforeChildAt(childCount2)) {
            View childAt4 = getChildAt(childCount2 - 1);
            if (childAt4 != null) {
                LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                if (isLayoutRtl) {
                    left = childAt4.getLeft();
                    i = ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    right = (left - i) - this.mDividerWidth;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            } else if (isLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth();
                i = getPaddingRight();
                right = (left - i) - this.mDividerWidth;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x018f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r26, int r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0858  */
    /* JADX WARN: Removed duplicated region for block: B:354:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0148  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r40, int r41) {
        /*
            Method dump skipped, instructions count: 2200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
