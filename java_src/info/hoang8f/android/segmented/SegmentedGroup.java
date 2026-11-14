package info.hoang8f.android.segmented;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class SegmentedGroup extends RadioGroup {
    public int mCheckedTextColor;
    public int mTintColor;
    public final int oneDP;
    public final Resources resources;

    public SegmentedGroup(Context context) {
        super(context);
        this.mCheckedTextColor = -1;
        Resources resources = getResources();
        this.resources = resources;
        this.mTintColor = resources.getColor(R.color.radio_button_selected_color);
        this.oneDP = (int) TypedValue.applyDimension(1, 1.0f, resources.getDisplayMetrics());
    }

    public SegmentedGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCheckedTextColor = -1;
        Resources resources = getResources();
        this.resources = resources;
        this.mTintColor = resources.getColor(R.color.radio_button_selected_color);
        this.oneDP = (int) TypedValue.applyDimension(1, 1.0f, resources.getDisplayMetrics());
    }

    @Override // android.widget.RadioGroup, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        updateBackground();
    }

    public final void setTintColor(int i) {
        this.mTintColor = i;
        this.mCheckedTextColor = -1;
        updateBackground();
    }

    public final void updateBackground() {
        View childAt;
        int i;
        int i2;
        View childAt2;
        int i3;
        int i4;
        int i5;
        View childAt3;
        int i6;
        int childCount = super.getChildCount();
        int i7 = 1;
        if (childCount > 1) {
            View childAt4 = getChildAt(0);
            RadioGroup.LayoutParams layoutParams = (RadioGroup.LayoutParams) childAt4.getLayoutParams();
            RadioGroup.LayoutParams layoutParams2 = new RadioGroup.LayoutParams(layoutParams.width, layoutParams.height, layoutParams.weight);
            int orientation = getOrientation();
            int i8 = this.oneDP;
            if (orientation == 0) {
                layoutParams2.setMargins(0, 0, -i8, 0);
            } else {
                layoutParams2.setMargins(0, 0, 0, -i8);
            }
            childAt4.setLayoutParams(layoutParams2);
            if (getOrientation() == 0) {
                childAt2 = getChildAt(0);
                i3 = R.drawable.radio_checked_left;
                i4 = R.drawable.radio_unchecked_left;
            } else {
                childAt2 = getChildAt(0);
                i3 = R.drawable.radio_checked_top;
                i4 = R.drawable.radio_unchecked_top;
            }
            updateBackground(childAt2, i3, i4);
            while (true) {
                i5 = childCount - 1;
                if (i7 >= i5) {
                    break;
                }
                if (getOrientation() == 0) {
                    childAt3 = getChildAt(i7);
                    i6 = R.drawable.radio_unchecked_middle;
                } else {
                    childAt3 = getChildAt(i7);
                    i6 = R.drawable.radio_unchecked_middle_vertical;
                }
                updateBackground(childAt3, R.drawable.radio_checked_middle, i6);
                View childAt5 = getChildAt(i7);
                RadioGroup.LayoutParams layoutParams3 = (RadioGroup.LayoutParams) childAt5.getLayoutParams();
                RadioGroup.LayoutParams layoutParams4 = new RadioGroup.LayoutParams(layoutParams3.width, layoutParams3.height, layoutParams3.weight);
                if (getOrientation() == 0) {
                    layoutParams4.setMargins(0, 0, -i8, 0);
                } else {
                    layoutParams4.setMargins(0, 0, 0, -i8);
                }
                childAt5.setLayoutParams(layoutParams4);
                i7++;
            }
            if (getOrientation() == 0) {
                childAt = getChildAt(i5);
                i = R.drawable.radio_checked_right;
                i2 = R.drawable.radio_unchecked_right;
            } else {
                childAt = getChildAt(i5);
                i = R.drawable.radio_checked_bottom;
                i2 = R.drawable.radio_unchecked_bottom;
            }
        } else {
            if (childCount != 1) {
                return;
            }
            childAt = getChildAt(0);
            i = R.drawable.radio_checked_default;
            i2 = R.drawable.radio_unchecked_default;
        }
        updateBackground(childAt, i, i2);
    }

    public final void updateBackground(View view, int i, int i2) {
        ((Button) view).setTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[]{-16842919, -16842912}, new int[]{-16842919, android.R.attr.state_checked}}, new int[]{-7829368, this.mTintColor, this.mCheckedTextColor}));
        Resources resources = this.resources;
        Drawable mutate = resources.getDrawable(i).mutate();
        Drawable mutate2 = resources.getDrawable(i2).mutate();
        ((GradientDrawable) mutate).setColor(this.mTintColor);
        ((GradientDrawable) mutate2).setStroke(this.oneDP, this.mTintColor);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842912}, mutate2);
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, mutate);
        view.setBackground(stateListDrawable);
    }
}
