package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.core.graphics.ColorUtils;

/* loaded from: classes.dex */
public final class ThemeUtils {
    public static final ThreadLocal TL_TYPED_VALUE = new ThreadLocal();
    public static final int[] DISABLED_STATE_SET = {-16842910};
    public static final int[] FOCUSED_STATE_SET = {R.attr.state_focused};
    public static final int[] PRESSED_STATE_SET = {R.attr.state_pressed};
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final int[] EMPTY_STATE_SET = new int[0];
    public static final int[] TEMP_ARRAY = new int[1];

    private ThemeUtils() {
    }

    public static void checkAppCompatTheme(Context context, View view) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R$styleable.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(117)) {
                view.getClass().toString();
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int getDisabledThemeAttrColor(Context context, int i) {
        ColorStateList themeAttrColorStateList = getThemeAttrColorStateList(context, i);
        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
            return themeAttrColorStateList.getColorForState(DISABLED_STATE_SET, themeAttrColorStateList.getDefaultColor());
        }
        ThreadLocal threadLocal = TL_TYPED_VALUE;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        float f = typedValue.getFloat();
        int themeAttrColor = getThemeAttrColor(context, i);
        int round = Math.round(Color.alpha(themeAttrColor) * f);
        int i2 = ColorUtils.$r8$clinit;
        if (round < 0 || round > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (themeAttrColor & 16777215) | (round << 24);
    }

    public static int getThemeAttrColor(Context context, int i) {
        int[] iArr = TEMP_ARRAY;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            tintTypedArray.recycle();
        }
    }

    public static ColorStateList getThemeAttrColorStateList(Context context, int i) {
        int[] iArr = TEMP_ARRAY;
        iArr[0] = i;
        TintTypedArray tintTypedArray = new TintTypedArray(context, context.obtainStyledAttributes((AttributeSet) null, iArr));
        try {
            return tintTypedArray.getColorStateList(0);
        } finally {
            tintTypedArray.recycle();
        }
    }
}
