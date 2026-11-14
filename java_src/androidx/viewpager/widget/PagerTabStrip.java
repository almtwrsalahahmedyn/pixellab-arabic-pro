package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;

/* loaded from: classes.dex */
public class PagerTabStrip extends PagerTitleStrip {
    public boolean mDrawFullUnderline;
    public final int mFullUnderlineHeight;
    public boolean mIgnoreTap;
    public final int mIndicatorColor;
    public final int mIndicatorHeight;
    public float mInitialMotionX;
    public float mInitialMotionY;
    public final int mMinPaddingBottom;
    public final int mMinStripHeight;
    public int mTabAlpha;
    public final int mTabPadding;
    public final Paint mTabPaint;
    public final Rect mTempRect;
    public final int mTouchSlop;

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.mTabPaint = paint;
        this.mTempRect = new Rect();
        this.mTabAlpha = 255;
        this.mDrawFullUnderline = false;
        int i = this.mTextColor;
        this.mIndicatorColor = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.mIndicatorHeight = (int) ((3.0f * f) + 0.5f);
        this.mMinPaddingBottom = (int) ((6.0f * f) + 0.5f);
        int i2 = (int) (64.0f * f);
        this.mTabPadding = (int) ((16.0f * f) + 0.5f);
        this.mFullUnderlineHeight = (int) ((1.0f * f) + 0.5f);
        this.mMinStripHeight = (int) ((f * 32.0f) + 0.5f);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        int i3 = this.mScaledTextSpacing;
        this.mScaledTextSpacing = i3 >= i2 ? i3 : i2;
        requestLayout();
        setWillNotDraw(false);
        this.mPrevText.setFocusable(true);
        this.mPrevText.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PagerTabStrip.this.mPager.setCurrentItem(r2.getCurrentItem() - 1);
            }
        });
        this.mNextText.setFocusable(true);
        this.mNextText.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ViewPager viewPager = PagerTabStrip.this.mPager;
                viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
            }
        });
        if (getBackground() == null) {
            this.mDrawFullUnderline = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public final int getMinHeight() {
        return Math.max(super.getMinHeight(), this.mMinStripHeight);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        TextView textView = this.mCurrText;
        int left = textView.getLeft();
        int i = this.mTabPadding;
        int i2 = left - i;
        int right = textView.getRight() + i;
        int i3 = height - this.mIndicatorHeight;
        Paint paint = this.mTabPaint;
        int i4 = this.mTabAlpha << 24;
        int i5 = this.mIndicatorColor;
        paint.setColor(i4 | (i5 & 16777215));
        float f = right;
        float f2 = height;
        canvas.drawRect(i2, i3, f, f2, paint);
        if (this.mDrawFullUnderline) {
            paint.setColor((-16777216) | (i5 & 16777215));
            canvas.drawRect(getPaddingLeft(), height - this.mFullUnderlineHeight, getWidth() - getPaddingRight(), f2, paint);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewPager viewPager;
        int currentItem;
        int action = motionEvent.getAction();
        if (action != 0 && this.mIgnoreTap) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action == 0) {
            this.mInitialMotionX = x;
            this.mInitialMotionY = y;
            this.mIgnoreTap = false;
        } else if (action == 1) {
            int left = this.mCurrText.getLeft();
            int i = this.mTabPadding;
            if (x < left - i) {
                viewPager = this.mPager;
                currentItem = viewPager.getCurrentItem() - 1;
            } else if (x > r5.getRight() + i) {
                viewPager = this.mPager;
                currentItem = viewPager.getCurrentItem() + 1;
            }
            viewPager.setCurrentItem(currentItem);
        } else if (action == 2) {
            float abs = Math.abs(x - this.mInitialMotionX);
            int i2 = this.mTouchSlop;
            if (abs > i2 || Math.abs(y - this.mInitialMotionY) > i2) {
                this.mIgnoreTap = true;
            }
        }
        return true;
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        this.mDrawFullUnderline = (i & (-16777216)) == 0;
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        this.mDrawFullUnderline = drawable == null;
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        this.mDrawFullUnderline = i == 0;
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.mMinPaddingBottom;
        if (i4 < i5) {
            i4 = i5;
        }
        super.setPadding(i, i2, i3, i4);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public final void updateTextPositions(int i, float f, boolean z) {
        int height = getHeight();
        TextView textView = this.mCurrText;
        int left = textView.getLeft();
        int i2 = this.mTabPadding;
        int right = textView.getRight() + i2;
        int i3 = height - this.mIndicatorHeight;
        Rect rect = this.mTempRect;
        rect.set(left - i2, i3, right, height);
        super.updateTextPositions(i, f, z);
        this.mTabAlpha = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(textView.getLeft() - i2, i3, textView.getRight() + i2, height);
        invalidate(rect);
    }
}
