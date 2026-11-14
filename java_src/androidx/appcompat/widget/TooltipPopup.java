package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public final class TooltipPopup {
    public final View mContentView;
    public final Context mContext;
    public final WindowManager.LayoutParams mLayoutParams;
    public final TextView mMessageView;
    public final int[] mTmpAnchorPos;
    public final int[] mTmpAppPos;
    public final Rect mTmpDisplayFrame;

    public TooltipPopup(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.mLayoutParams = layoutParams;
        this.mTmpDisplayFrame = new Rect();
        this.mTmpAnchorPos = new int[2];
        this.mTmpAppPos = new int[2];
        this.mContext = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.mContentView = inflate;
        this.mMessageView = (TextView) inflate.findViewById(R.id.message);
        layoutParams.setTitle("TooltipPopup");
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = 2131886084;
        layoutParams.flags = 24;
    }

    public final void hide() {
        View view = this.mContentView;
        if (view.getParent() != null) {
            ((WindowManager) this.mContext.getSystemService("window")).removeView(view);
        }
    }

    public final void show(View view, int i, int i2, boolean z, CharSequence charSequence) {
        int height;
        int i3;
        View view2 = this.mContentView;
        if (view2.getParent() != null) {
            hide();
        }
        this.mMessageView.setText(charSequence);
        WindowManager.LayoutParams layoutParams = this.mLayoutParams;
        layoutParams.token = view.getApplicationWindowToken();
        Context context = this.mContext;
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
        int width = view.getWidth() >= dimensionPixelOffset ? i : view.getWidth() / 2;
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
            height = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
        if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
            Context context2 = view.getContext();
            while (true) {
                if (!(context2 instanceof ContextWrapper)) {
                    break;
                }
                if (context2 instanceof Activity) {
                    rootView = ((Activity) context2).getWindow().getDecorView();
                    break;
                }
                context2 = ((ContextWrapper) context2).getBaseContext();
            }
        }
        if (rootView != null) {
            Rect rect = this.mTmpDisplayFrame;
            rootView.getWindowVisibleDisplayFrame(rect);
            if (rect.left < 0 && rect.top < 0) {
                Resources resources = context.getResources();
                int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            int[] iArr = this.mTmpAppPos;
            rootView.getLocationOnScreen(iArr);
            int[] iArr2 = this.mTmpAnchorPos;
            view.getLocationOnScreen(iArr2);
            int i4 = iArr2[0] - iArr[0];
            iArr2[0] = i4;
            iArr2[1] = iArr2[1] - iArr[1];
            layoutParams.x = (i4 + width) - (rootView.getWidth() / 2);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            view2.measure(makeMeasureSpec, makeMeasureSpec);
            int measuredHeight = view2.getMeasuredHeight();
            int i5 = iArr2[1];
            int i6 = ((i3 + i5) - dimensionPixelOffset3) - measuredHeight;
            int i7 = i5 + height + dimensionPixelOffset3;
            if (!z ? measuredHeight + i7 <= rect.height() : i6 < 0) {
                layoutParams.y = i6;
            } else {
                layoutParams.y = i7;
            }
        }
        ((WindowManager) context.getSystemService("window")).addView(view2, layoutParams);
    }
}
