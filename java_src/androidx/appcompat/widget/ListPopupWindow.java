package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.core.view.ViewCompat;
import androidx.core.widget.PopupWindowCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ListPopupWindow implements ShowableListMenu {
    public static final Method sGetMaxAvailableHeightMethod;
    public static final Method sSetClipToWindowEnabledMethod;
    public static final Method sSetEpicenterBoundsMethod;
    public ListAdapter mAdapter;
    public final Context mContext;
    public View mDropDownAnchorView;
    public int mDropDownGravity;
    public final int mDropDownHeight;
    public int mDropDownHorizontalOffset;
    public DropDownListView mDropDownList;
    public int mDropDownVerticalOffset;
    public boolean mDropDownVerticalOffsetSet;
    public int mDropDownWidth;
    public final int mDropDownWindowLayoutType;
    public Rect mEpicenterBounds;
    public final Handler mHandler;
    public final ListSelectorHider mHideSelector;
    public AdapterView.OnItemClickListener mItemClickListener;
    public final int mListItemExpandMaximum;
    public boolean mModal;
    public PopupDataSetObserver mObserver;
    public boolean mOverlapAnchor;
    public boolean mOverlapAnchorSet;
    public final PopupWindow mPopup;
    public final ResizePopupRunnable mResizePopupRunnable;
    public final PopupScrollListener mScrollListener;
    public final Rect mTempRect;
    public final PopupTouchInterceptor mTouchInterceptor;

    /* loaded from: classes.dex */
    public final class ListSelectorHider implements Runnable {
        public ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DropDownListView dropDownListView = ListPopupWindow.this.mDropDownList;
            if (dropDownListView != null) {
                dropDownListView.mListSelectionHidden = true;
                dropDownListView.requestLayout();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class PopupDataSetObserver extends DataSetObserver {
        public PopupDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (listPopupWindow.isShowing()) {
                listPopupWindow.show();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* loaded from: classes.dex */
    public final class PopupScrollListener implements AbsListView.OnScrollListener {
        public PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                if ((listPopupWindow.mPopup.getInputMethodMode() == 2) || listPopupWindow.mPopup.getContentView() == null) {
                    return;
                }
                Handler handler = listPopupWindow.mHandler;
                ResizePopupRunnable resizePopupRunnable = listPopupWindow.mResizePopupRunnable;
                handler.removeCallbacks(resizePopupRunnable);
                resizePopupRunnable.run();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class PopupTouchInterceptor implements View.OnTouchListener {
        public PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (action == 0 && (popupWindow = listPopupWindow.mPopup) != null && popupWindow.isShowing() && x >= 0 && x < listPopupWindow.mPopup.getWidth() && y >= 0 && y < listPopupWindow.mPopup.getHeight()) {
                listPopupWindow.mHandler.postDelayed(listPopupWindow.mResizePopupRunnable, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            listPopupWindow.mHandler.removeCallbacks(listPopupWindow.mResizePopupRunnable);
            return false;
        }
    }

    /* loaded from: classes.dex */
    public final class ResizePopupRunnable implements Runnable {
        public ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            DropDownListView dropDownListView = listPopupWindow.mDropDownList;
            if (dropDownListView != null) {
                ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
                if (!dropDownListView.isAttachedToWindow() || listPopupWindow.mDropDownList.getCount() <= listPopupWindow.mDropDownList.getChildCount() || listPopupWindow.mDropDownList.getChildCount() > listPopupWindow.mListItemExpandMaximum) {
                    return;
                }
                listPopupWindow.mPopup.setInputMethodMode(2);
                listPopupWindow.show();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                sSetClipToWindowEnabledMethod = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                sSetEpicenterBoundsMethod = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                sGetMaxAvailableHeightMethod = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.appcompat.widget.AppCompatPopupWindow, android.widget.PopupWindow] */
    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mDropDownHeight = -2;
        this.mDropDownWidth = -2;
        this.mDropDownWindowLayoutType = 1002;
        this.mDropDownGravity = 0;
        this.mListItemExpandMaximum = Integer.MAX_VALUE;
        this.mResizePopupRunnable = new ResizePopupRunnable();
        this.mTouchInterceptor = new PopupTouchInterceptor();
        this.mScrollListener = new PopupScrollListener();
        this.mHideSelector = new ListSelectorHider();
        this.mTempRect = new Rect();
        this.mContext = context;
        this.mHandler = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPopupWindow, i, i2);
        this.mDropDownHorizontalOffset = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.mDropDownVerticalOffset = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.mDropDownVerticalOffsetSet = true;
        }
        obtainStyledAttributes.recycle();
        ?? popupWindow = new PopupWindow(context, attributeSet, i, i2);
        popupWindow.init(context, attributeSet, i, i2);
        this.mPopup = popupWindow;
        popupWindow.setInputMethodMode(1);
    }

    public DropDownListView createDropDownListView(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        PopupWindow popupWindow = this.mPopup;
        popupWindow.dismiss();
        popupWindow.setContentView(null);
        this.mDropDownList = null;
        this.mHandler.removeCallbacks(this.mResizePopupRunnable);
    }

    public final Drawable getBackground() {
        return this.mPopup.getBackground();
    }

    public final int getHorizontalOffset() {
        return this.mDropDownHorizontalOffset;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final DropDownListView getListView() {
        return this.mDropDownList;
    }

    public final int getVerticalOffset() {
        if (this.mDropDownVerticalOffsetSet) {
            return this.mDropDownVerticalOffset;
        }
        return 0;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean isShowing() {
        return this.mPopup.isShowing();
    }

    public void setAdapter(ListAdapter listAdapter) {
        PopupDataSetObserver popupDataSetObserver = this.mObserver;
        if (popupDataSetObserver == null) {
            this.mObserver = new PopupDataSetObserver();
        } else {
            ListAdapter listAdapter2 = this.mAdapter;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(popupDataSetObserver);
            }
        }
        this.mAdapter = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.mObserver);
        }
        DropDownListView dropDownListView = this.mDropDownList;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.mAdapter);
        }
    }

    public final void setBackgroundDrawable(Drawable drawable) {
        this.mPopup.setBackgroundDrawable(drawable);
    }

    public final void setContentWidth(int i) {
        Drawable background = this.mPopup.getBackground();
        if (background == null) {
            this.mDropDownWidth = i;
            return;
        }
        Rect rect = this.mTempRect;
        background.getPadding(rect);
        this.mDropDownWidth = rect.left + rect.right + i;
    }

    public final void setHorizontalOffset(int i) {
        this.mDropDownHorizontalOffset = i;
    }

    public final void setVerticalOffset(int i) {
        this.mDropDownVerticalOffset = i;
        this.mDropDownVerticalOffsetSet = true;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void show() {
        int i;
        int maxAvailableHeight;
        int paddingBottom;
        DropDownListView dropDownListView;
        DropDownListView dropDownListView2 = this.mDropDownList;
        PopupWindow popupWindow = this.mPopup;
        Context context = this.mContext;
        if (dropDownListView2 == null) {
            DropDownListView createDropDownListView = createDropDownListView(context, !this.mModal);
            this.mDropDownList = createDropDownListView;
            createDropDownListView.setAdapter(this.mAdapter);
            this.mDropDownList.setOnItemClickListener(this.mItemClickListener);
            this.mDropDownList.setFocusable(true);
            this.mDropDownList.setFocusableInTouchMode(true);
            this.mDropDownList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onItemSelected(AdapterView adapterView, View view, int i2, long j) {
                    DropDownListView dropDownListView3;
                    if (i2 == -1 || (dropDownListView3 = ListPopupWindow.this.mDropDownList) == null) {
                        return;
                    }
                    dropDownListView3.mListSelectionHidden = false;
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onNothingSelected(AdapterView adapterView) {
                }
            });
            this.mDropDownList.setOnScrollListener(this.mScrollListener);
            popupWindow.setContentView(this.mDropDownList);
        }
        Drawable background = popupWindow.getBackground();
        Rect rect = this.mTempRect;
        if (background != null) {
            background.getPadding(rect);
            int i2 = rect.top;
            i = rect.bottom + i2;
            if (!this.mDropDownVerticalOffsetSet) {
                this.mDropDownVerticalOffset = -i2;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        boolean z = popupWindow.getInputMethodMode() == 2;
        View view = this.mDropDownAnchorView;
        int i3 = this.mDropDownVerticalOffset;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = sGetMaxAvailableHeightMethod;
            if (method != null) {
                try {
                    maxAvailableHeight = ((Integer) method.invoke(popupWindow, view, Integer.valueOf(i3), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                }
            }
            maxAvailableHeight = popupWindow.getMaxAvailableHeight(view, i3);
        } else {
            maxAvailableHeight = popupWindow.getMaxAvailableHeight(view, i3, z);
        }
        int i4 = this.mDropDownHeight;
        if (i4 == -1) {
            paddingBottom = maxAvailableHeight + i;
        } else {
            int i5 = this.mDropDownWidth;
            int measureHeightOfChildrenCompat = this.mDropDownList.measureHeightOfChildrenCompat(i5 != -2 ? i5 != -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), maxAvailableHeight + 0);
            paddingBottom = measureHeightOfChildrenCompat + (measureHeightOfChildrenCompat > 0 ? this.mDropDownList.getPaddingBottom() + this.mDropDownList.getPaddingTop() + i + 0 : 0);
        }
        boolean z2 = this.mPopup.getInputMethodMode() == 2;
        PopupWindowCompat.setWindowLayoutType(popupWindow, this.mDropDownWindowLayoutType);
        if (popupWindow.isShowing()) {
            View view2 = this.mDropDownAnchorView;
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            if (view2.isAttachedToWindow()) {
                int i6 = this.mDropDownWidth;
                if (i6 == -1) {
                    i6 = -1;
                } else if (i6 == -2) {
                    i6 = this.mDropDownAnchorView.getWidth();
                }
                if (i4 == -1) {
                    i4 = z2 ? paddingBottom : -1;
                    int i7 = this.mDropDownWidth;
                    if (z2) {
                        popupWindow.setWidth(i7 == -1 ? -1 : 0);
                        popupWindow.setHeight(0);
                    } else {
                        popupWindow.setWidth(i7 == -1 ? -1 : 0);
                        popupWindow.setHeight(-1);
                    }
                } else if (i4 == -2) {
                    i4 = paddingBottom;
                }
                popupWindow.setOutsideTouchable(true);
                View view3 = this.mDropDownAnchorView;
                int i8 = this.mDropDownHorizontalOffset;
                int i9 = this.mDropDownVerticalOffset;
                if (i6 < 0) {
                    i6 = -1;
                }
                popupWindow.update(view3, i8, i9, i6, i4 < 0 ? -1 : i4);
                return;
            }
            return;
        }
        int i10 = this.mDropDownWidth;
        if (i10 == -1) {
            i10 = -1;
        } else if (i10 == -2) {
            i10 = this.mDropDownAnchorView.getWidth();
        }
        if (i4 == -1) {
            i4 = -1;
        } else if (i4 == -2) {
            i4 = paddingBottom;
        }
        popupWindow.setWidth(i10);
        popupWindow.setHeight(i4);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = sSetClipToWindowEnabledMethod;
            if (method2 != null) {
                try {
                    method2.invoke(popupWindow, Boolean.TRUE);
                } catch (Exception unused2) {
                }
            }
        } else {
            popupWindow.setIsClippedToScreen(true);
        }
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(this.mTouchInterceptor);
        if (this.mOverlapAnchorSet) {
            PopupWindowCompat.setOverlapAnchor(popupWindow, this.mOverlapAnchor);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = sSetEpicenterBoundsMethod;
            if (method3 != null) {
                try {
                    method3.invoke(popupWindow, this.mEpicenterBounds);
                } catch (Exception unused3) {
                }
            }
        } else {
            popupWindow.setEpicenterBounds(this.mEpicenterBounds);
        }
        popupWindow.showAsDropDown(this.mDropDownAnchorView, this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, this.mDropDownGravity);
        this.mDropDownList.setSelection(-1);
        if ((!this.mModal || this.mDropDownList.isInTouchMode()) && (dropDownListView = this.mDropDownList) != null) {
            dropDownListView.mListSelectionHidden = true;
            dropDownListView.requestLayout();
        }
        if (this.mModal) {
            return;
        }
        this.mHandler.post(this.mHideSelector);
    }
}
