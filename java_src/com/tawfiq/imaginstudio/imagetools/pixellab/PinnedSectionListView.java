package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SectionIndexer;

/* loaded from: classes.dex */
public class PinnedSectionListView extends ListView {
    private final DataSetObserver mDataSetObserver;
    AbsListView.OnScrollListener mDelegateOnScrollListener;
    private MotionEvent mDownEvent;
    private final AbsListView.OnScrollListener mOnScrollListener;
    PinnedSection mPinnedSection;
    PinnedSection mRecycleSection;
    private int mSectionsDistanceY;
    private GradientDrawable mShadowDrawable;
    private int mShadowHeight;
    private final PointF mTouchPoint;
    private final Rect mTouchRect;
    private int mTouchSlop;
    private View mTouchTarget;
    int mTranslateY;

    /* loaded from: classes.dex */
    public static class PinnedSection {
        public long id;
        public int position;
        public View view;
    }

    /* loaded from: classes.dex */
    public interface PinnedSectionListAdapter extends ListAdapter {
        boolean isItemViewTypePinned(int i);
    }

    public PinnedSectionListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTouchRect = new Rect();
        this.mTouchPoint = new PointF();
        this.mOnScrollListener = new AbsListView.OnScrollListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.PinnedSectionListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                AbsListView.OnScrollListener onScrollListener = PinnedSectionListView.this.mDelegateOnScrollListener;
                if (onScrollListener != null) {
                    onScrollListener.onScroll(absListView, i, i2, i3);
                }
                ListAdapter adapter = PinnedSectionListView.this.getAdapter();
                if (adapter == null || i2 == 0) {
                    return;
                }
                if (!PinnedSectionListView.isItemViewTypePinned(adapter, adapter.getItemViewType(i))) {
                    int findCurrentSectionPosition = PinnedSectionListView.this.findCurrentSectionPosition(i);
                    if (findCurrentSectionPosition > -1) {
                        PinnedSectionListView.this.ensureShadowForPosition(findCurrentSectionPosition, i, i2);
                        return;
                    }
                } else if (PinnedSectionListView.this.getChildAt(0).getTop() != PinnedSectionListView.this.getPaddingTop()) {
                    PinnedSectionListView.this.ensureShadowForPosition(i, i, i2);
                    return;
                }
                PinnedSectionListView.this.destroyPinnedShadow();
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                AbsListView.OnScrollListener onScrollListener = PinnedSectionListView.this.mDelegateOnScrollListener;
                if (onScrollListener != null) {
                    onScrollListener.onScrollStateChanged(absListView, i);
                }
            }
        };
        this.mDataSetObserver = new DataSetObserver() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.PinnedSectionListView.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                PinnedSectionListView.this.recreatePinnedShadow();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                PinnedSectionListView.this.recreatePinnedShadow();
            }
        };
        initView();
    }

    public PinnedSectionListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTouchRect = new Rect();
        this.mTouchPoint = new PointF();
        this.mOnScrollListener = new AbsListView.OnScrollListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.PinnedSectionListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i2, int i22, int i3) {
                AbsListView.OnScrollListener onScrollListener = PinnedSectionListView.this.mDelegateOnScrollListener;
                if (onScrollListener != null) {
                    onScrollListener.onScroll(absListView, i2, i22, i3);
                }
                ListAdapter adapter = PinnedSectionListView.this.getAdapter();
                if (adapter == null || i22 == 0) {
                    return;
                }
                if (!PinnedSectionListView.isItemViewTypePinned(adapter, adapter.getItemViewType(i2))) {
                    int findCurrentSectionPosition = PinnedSectionListView.this.findCurrentSectionPosition(i2);
                    if (findCurrentSectionPosition > -1) {
                        PinnedSectionListView.this.ensureShadowForPosition(findCurrentSectionPosition, i2, i22);
                        return;
                    }
                } else if (PinnedSectionListView.this.getChildAt(0).getTop() != PinnedSectionListView.this.getPaddingTop()) {
                    PinnedSectionListView.this.ensureShadowForPosition(i2, i2, i22);
                    return;
                }
                PinnedSectionListView.this.destroyPinnedShadow();
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i2) {
                AbsListView.OnScrollListener onScrollListener = PinnedSectionListView.this.mDelegateOnScrollListener;
                if (onScrollListener != null) {
                    onScrollListener.onScrollStateChanged(absListView, i2);
                }
            }
        };
        this.mDataSetObserver = new DataSetObserver() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.PinnedSectionListView.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                PinnedSectionListView.this.recreatePinnedShadow();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                PinnedSectionListView.this.recreatePinnedShadow();
            }
        };
        initView();
    }

    private void clearTouchTarget() {
        this.mTouchTarget = null;
        MotionEvent motionEvent = this.mDownEvent;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.mDownEvent = null;
        }
    }

    private void initView() {
        setOnScrollListener(this.mOnScrollListener);
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        initShadow(true);
    }

    public static boolean isItemViewTypePinned(ListAdapter listAdapter, int i) {
        if (listAdapter instanceof HeaderViewListAdapter) {
            listAdapter = ((HeaderViewListAdapter) listAdapter).getWrappedAdapter();
        }
        return ((PinnedSectionListAdapter) listAdapter).isItemViewTypePinned(i);
    }

    private boolean isPinnedViewTouched(View view, float f, float f2) {
        view.getHitRect(this.mTouchRect);
        Rect rect = this.mTouchRect;
        int i = rect.top;
        int i2 = this.mTranslateY;
        rect.top = i + i2;
        rect.bottom = getPaddingTop() + i2 + rect.bottom;
        Rect rect2 = this.mTouchRect;
        rect2.left = getPaddingLeft() + rect2.left;
        this.mTouchRect.right -= getPaddingRight();
        return this.mTouchRect.contains((int) f, (int) f2);
    }

    private boolean performPinnedItemClick() {
        AdapterView.OnItemClickListener onItemClickListener;
        if (this.mPinnedSection == null || (onItemClickListener = getOnItemClickListener()) == null || !getAdapter().isEnabled(this.mPinnedSection.position)) {
            return false;
        }
        View view = this.mPinnedSection.view;
        playSoundEffect(0);
        if (view != null) {
            view.sendAccessibilityEvent(1);
        }
        PinnedSection pinnedSection = this.mPinnedSection;
        onItemClickListener.onItemClick(this, view, pinnedSection.position, pinnedSection.id);
        return true;
    }

    public void createPinnedShadow(int i) {
        PinnedSection pinnedSection = this.mRecycleSection;
        this.mRecycleSection = null;
        if (pinnedSection == null) {
            pinnedSection = new PinnedSection();
        }
        View view = getAdapter().getView(i, pinnedSection.view, this);
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
            view.setLayoutParams(layoutParams);
        }
        int mode = View.MeasureSpec.getMode(layoutParams.height);
        int size = View.MeasureSpec.getSize(layoutParams.height);
        if (mode == 0) {
            mode = 1073741824;
        }
        int height = (getHeight() - getListPaddingTop()) - getListPaddingBottom();
        if (size > height) {
            size = height;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getWidth() - getListPaddingLeft()) - getListPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(size, mode));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        this.mTranslateY = 0;
        pinnedSection.view = view;
        pinnedSection.position = i;
        pinnedSection.id = getAdapter().getItemId(i);
        this.mPinnedSection = pinnedSection;
    }

    public void destroyPinnedShadow() {
        PinnedSection pinnedSection = this.mPinnedSection;
        if (pinnedSection != null) {
            this.mRecycleSection = pinnedSection;
            this.mPinnedSection = null;
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mPinnedSection != null) {
            int listPaddingLeft = getListPaddingLeft();
            int listPaddingTop = getListPaddingTop();
            View view = this.mPinnedSection.view;
            canvas.save();
            canvas.clipRect(listPaddingLeft, listPaddingTop, view.getWidth() + listPaddingLeft, view.getHeight() + (this.mShadowDrawable == null ? 0 : Math.min(this.mShadowHeight, this.mSectionsDistanceY)) + listPaddingTop);
            canvas.translate(listPaddingLeft, listPaddingTop + this.mTranslateY);
            drawChild(canvas, this.mPinnedSection.view, getDrawingTime());
            GradientDrawable gradientDrawable = this.mShadowDrawable;
            if (gradientDrawable != null && this.mSectionsDistanceY > 0) {
                gradientDrawable.setBounds(this.mPinnedSection.view.getLeft(), this.mPinnedSection.view.getBottom(), this.mPinnedSection.view.getRight(), this.mPinnedSection.view.getBottom() + this.mShadowHeight);
                this.mShadowDrawable.draw(canvas);
            }
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        PinnedSection pinnedSection;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0 && this.mTouchTarget == null && (pinnedSection = this.mPinnedSection) != null && isPinnedViewTouched(pinnedSection.view, x, y)) {
            this.mTouchTarget = this.mPinnedSection.view;
            PointF pointF = this.mTouchPoint;
            pointF.x = x;
            pointF.y = y;
            this.mDownEvent = MotionEvent.obtain(motionEvent);
        }
        View view = this.mTouchTarget;
        if (view == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (isPinnedViewTouched(view, x, y)) {
            this.mTouchTarget.dispatchTouchEvent(motionEvent);
        }
        if (action == 1) {
            super.dispatchTouchEvent(motionEvent);
            performPinnedItemClick();
        } else if (action != 3) {
            if (action == 2 && Math.abs(y - this.mTouchPoint.y) > this.mTouchSlop) {
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setAction(3);
                this.mTouchTarget.dispatchTouchEvent(obtain);
                obtain.recycle();
                super.dispatchTouchEvent(this.mDownEvent);
                super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }
        clearTouchTarget();
        return true;
    }

    public void ensureShadowForPosition(int i, int i2, int i3) {
        if (i3 < 2) {
            destroyPinnedShadow();
            return;
        }
        PinnedSection pinnedSection = this.mPinnedSection;
        if (pinnedSection != null && pinnedSection.position != i) {
            destroyPinnedShadow();
        }
        if (this.mPinnedSection == null) {
            createPinnedShadow(i);
        }
        int i4 = i + 1;
        if (i4 < getCount()) {
            int findFirstVisibleSectionPosition = findFirstVisibleSectionPosition(i4, i3 - (i4 - i2));
            if (findFirstVisibleSectionPosition <= -1) {
                this.mTranslateY = 0;
                this.mSectionsDistanceY = Integer.MAX_VALUE;
                return;
            }
            View childAt = getChildAt(findFirstVisibleSectionPosition - i2);
            int top = childAt.getTop() - (getPaddingTop() + this.mPinnedSection.view.getBottom());
            this.mSectionsDistanceY = top;
            if (top < 0) {
                this.mTranslateY = top;
            } else {
                this.mTranslateY = 0;
            }
        }
    }

    public int findCurrentSectionPosition(int i) {
        ListAdapter adapter = getAdapter();
        if (i >= adapter.getCount()) {
            return -1;
        }
        if (adapter instanceof SectionIndexer) {
            SectionIndexer sectionIndexer = (SectionIndexer) adapter;
            int positionForSection = sectionIndexer.getPositionForSection(sectionIndexer.getSectionForPosition(i));
            if (isItemViewTypePinned(adapter, adapter.getItemViewType(positionForSection))) {
                return positionForSection;
            }
        }
        while (i >= 0) {
            if (isItemViewTypePinned(adapter, adapter.getItemViewType(i))) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public int findFirstVisibleSectionPosition(int i, int i2) {
        ListAdapter adapter = getAdapter();
        int count = adapter.getCount();
        if (getLastVisiblePosition() >= count) {
            return -1;
        }
        if (i + i2 >= count) {
            i2 = count - i;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i + i3;
            if (isItemViewTypePinned(adapter, adapter.getItemViewType(i4))) {
                return i4;
            }
        }
        return -1;
    }

    public void initShadow(boolean z) {
        int i;
        if (z) {
            if (this.mShadowDrawable != null) {
                return;
            }
            this.mShadowDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor("#ffa0a0a0"), Color.parseColor("#50a0a0a0"), Color.parseColor("#00a0a0a0")});
            i = (int) (getResources().getDisplayMetrics().density * 8.0f);
        } else {
            if (this.mShadowDrawable == null) {
                return;
            }
            this.mShadowDrawable = null;
            i = 0;
        }
        this.mShadowHeight = i;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mPinnedSection == null || ((i3 - i) - getPaddingLeft()) - getPaddingRight() == this.mPinnedSection.view.getWidth()) {
            return;
        }
        recreatePinnedShadow();
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.PinnedSectionListView.3
            @Override // java.lang.Runnable
            public void run() {
                PinnedSectionListView.this.recreatePinnedShadow();
            }
        });
    }

    public void recreatePinnedShadow() {
        int firstVisiblePosition;
        int findCurrentSectionPosition;
        destroyPinnedShadow();
        ListAdapter adapter = getAdapter();
        if (adapter == null || adapter.getCount() <= 0 || (findCurrentSectionPosition = findCurrentSectionPosition((firstVisiblePosition = getFirstVisiblePosition()))) == -1) {
            return;
        }
        ensureShadowForPosition(findCurrentSectionPosition, firstVisiblePosition, getLastVisiblePosition() - firstVisiblePosition);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        ListAdapter adapter = getAdapter();
        if (adapter != null) {
            adapter.unregisterDataSetObserver(this.mDataSetObserver);
        }
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.mDataSetObserver);
        }
        if (adapter != listAdapter) {
            destroyPinnedShadow();
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        if (onScrollListener == this.mOnScrollListener) {
            super.setOnScrollListener(onScrollListener);
        } else {
            this.mDelegateOnScrollListener = onScrollListener;
        }
    }

    public void setShadowVisible(boolean z) {
        initShadow(z);
        PinnedSection pinnedSection = this.mPinnedSection;
        if (pinnedSection != null) {
            View view = pinnedSection.view;
            invalidate(view.getLeft(), view.getTop(), view.getRight(), view.getBottom() + this.mShadowHeight);
        }
    }
}
