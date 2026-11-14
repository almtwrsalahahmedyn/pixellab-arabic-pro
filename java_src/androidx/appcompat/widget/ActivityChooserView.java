package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.core.view.ViewCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;

/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup {
    public final View mActivityChooserContent;
    public final ActivityChooserViewAdapter mAdapter;
    public final Callbacks mCallbacks;
    public final FrameLayout mDefaultActivityButton;
    public final FrameLayout mExpandActivityOverflowButton;
    public boolean mIsAttachedToWindow;
    public ListPopupWindow mListPopupWindow;
    public final AnonymousClass2 mOnGlobalLayoutListener;

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends View.AccessibilityDelegate {
        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setCanOpenPopup(true);
        }
    }

    /* loaded from: classes.dex */
    public final class ActivityChooserViewAdapter extends BaseAdapter {
        public ActivityChooserViewAdapter() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            throw null;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            throw null;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            getItemViewType(i);
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == null || view.getId() != R.id.list_item) {
                view = LayoutInflater.from(activityChooserView.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            activityChooserView.getContext().getPackageManager();
            getItem(i);
            throw null;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 3;
        }
    }

    /* loaded from: classes.dex */
    public final class Callbacks implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        public Callbacks() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            FrameLayout frameLayout = activityChooserView.mDefaultActivityButton;
            ActivityChooserViewAdapter activityChooserViewAdapter = activityChooserView.mAdapter;
            if (view == frameLayout) {
                activityChooserView.dismissPopup();
                activityChooserViewAdapter.getClass();
                throw null;
            }
            if (view != activityChooserView.mExpandActivityOverflowButton) {
                throw new IllegalArgumentException();
            }
            activityChooserViewAdapter.getClass();
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            activityChooserView.getClass();
            activityChooserView.getClass();
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
            ((ActivityChooserViewAdapter) adapterView.getAdapter()).getClass();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            activityChooserView.dismissPopup();
            activityChooserView.mAdapter.getClass();
            throw null;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.mDefaultActivityButton) {
                throw new IllegalArgumentException();
            }
            activityChooserView.mAdapter.getClass();
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class InnerLayout extends LinearLayout {
        public static final int[] TINT_ATTRS = {android.R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TintTypedArray tintTypedArray = new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, TINT_ATTRS));
            setBackgroundDrawable(tintTypedArray.getDrawable(0));
            tintTypedArray.recycle();
        }
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.ActivityChooserView$2] */
    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                super.onChanged();
                ActivityChooserView.this.mAdapter.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public final void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.mAdapter.notifyDataSetInvalidated();
            }
        };
        this.mOnGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                if (activityChooserView.getListPopupWindow().isShowing()) {
                    boolean isShown = activityChooserView.isShown();
                    ListPopupWindow listPopupWindow = activityChooserView.getListPopupWindow();
                    if (isShown) {
                        listPopupWindow.show();
                    } else {
                        listPopupWindow.dismiss();
                    }
                }
            }
        };
        int[] iArr = R$styleable.ActivityChooserView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        obtainStyledAttributes.getInt(1, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        Callbacks callbacks = new Callbacks();
        this.mCallbacks = callbacks;
        View findViewById = findViewById(R.id.activity_chooser_view_content);
        this.mActivityChooserContent = findViewById;
        findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.default_activity_button);
        this.mDefaultActivityButton = frameLayout;
        frameLayout.setOnClickListener(callbacks);
        frameLayout.setOnLongClickListener(callbacks);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R.id.expand_activities_button);
        frameLayout2.setOnClickListener(callbacks);
        frameLayout2.setAccessibilityDelegate(new View.AccessibilityDelegate());
        frameLayout2.setOnTouchListener(new ForwardingListener(frameLayout2) { // from class: androidx.appcompat.widget.ActivityChooserView.4
            @Override // androidx.appcompat.widget.ForwardingListener
            public final ShowableListMenu getPopup() {
                return ActivityChooserView.this.getListPopupWindow();
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public final boolean onForwardingStarted() {
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                if (activityChooserView.getListPopupWindow().isShowing() || !activityChooserView.mIsAttachedToWindow) {
                    return true;
                }
                activityChooserView.mAdapter.getClass();
                throw new IllegalStateException("No data model. Did you call #setDataModel?");
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public final boolean onForwardingStopped() {
                ActivityChooserView.this.dismissPopup();
                return true;
            }
        });
        this.mExpandActivityOverflowButton = frameLayout2;
        ((ImageView) frameLayout2.findViewById(R.id.image)).setImageDrawable(drawable);
        ActivityChooserViewAdapter activityChooserViewAdapter = new ActivityChooserViewAdapter();
        this.mAdapter = activityChooserViewAdapter;
        activityChooserViewAdapter.registerDataSetObserver(new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.5
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                super.onChanged();
                ActivityChooserView.this.mAdapter.getClass();
                throw null;
            }
        });
        Resources resources = context.getResources();
        Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    }

    public final void dismissPopup() {
        if (getListPopupWindow().isShowing()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
            }
        }
    }

    public final ListPopupWindow getListPopupWindow() {
        if (this.mListPopupWindow == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext(), null, R.attr.listPopupWindowStyle);
            this.mListPopupWindow = listPopupWindow;
            listPopupWindow.setAdapter(this.mAdapter);
            ListPopupWindow listPopupWindow2 = this.mListPopupWindow;
            listPopupWindow2.mDropDownAnchorView = this;
            listPopupWindow2.mModal = true;
            listPopupWindow2.mPopup.setFocusable(true);
            ListPopupWindow listPopupWindow3 = this.mListPopupWindow;
            Callbacks callbacks = this.mCallbacks;
            listPopupWindow3.mItemClickListener = callbacks;
            listPopupWindow3.mPopup.setOnDismissListener(callbacks);
        }
        return this.mListPopupWindow;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAdapter.getClass();
        this.mIsAttachedToWindow = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAdapter.getClass();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
        }
        if (getListPopupWindow().isShowing()) {
            dismissPopup();
        }
        this.mIsAttachedToWindow = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mActivityChooserContent.layout(0, 0, i3 - i, i4 - i2);
        if (getListPopupWindow().isShowing()) {
            return;
        }
        dismissPopup();
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.mDefaultActivityButton.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        View view = this.mActivityChooserContent;
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }
}
