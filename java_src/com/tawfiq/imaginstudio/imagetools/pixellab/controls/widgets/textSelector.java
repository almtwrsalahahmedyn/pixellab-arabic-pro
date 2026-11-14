package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.interval;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.spansIntervals;
import com.tawfiq.imaginstudio.imagetools.pixellab.font.CustomTypefaceSpan;
import com.tawfiq.imaginstudio.imagetools.pixellab.font.customTypeface;

/* loaded from: classes.dex */
public class textSelector extends AppCompatTextView {
    int DRAG_HANDLE_1;
    int DRAG_HANDLE_2;
    String currText;
    int dragId;
    ScrollView escapeTouchFor;
    spansIntervals fontsIds;
    private boolean frozen;
    Rect handle;
    PointF handle1;
    PointF handle1F;
    PointF handle2;
    PointF handle2F;
    Bitmap handleDrawable;
    Bitmap handleDrawable1;
    int handleMargin;
    private int maxHeight;
    int paddingSides;
    PointF previousPos;
    public int selectionEnd;
    public int selectionStart;
    boolean showBackground;

    /* loaded from: classes.dex */
    public class circle {
        PointF center;
        float rad;

        public circle(PointF pointF, float f) {
            new PointF(0.0f, 0.0f);
            this.center = pointF;
            this.rad = f;
        }

        public circle(Rect rect) {
            this.center = new PointF(0.0f, 0.0f);
            this.rad = 0.0f;
            this.center = new PointF(rect.centerX(), rect.centerY());
            this.rad = textSelector.this.rectRad(rect);
        }

        public PointF getCenter() {
            return this.center;
        }

        public float getRad() {
            return this.rad;
        }

        public void offset(float f, float f2) {
            this.center.offset(f, f2);
        }

        public circle offsetCopy(float f, float f2) {
            PointF pointF = this.center;
            PointF pointF2 = new PointF(pointF.x, pointF.y);
            pointF2.offset(f, f2);
            return new circle(pointF2, this.rad);
        }

        public void setCenter(PointF pointF) {
            this.center = pointF;
        }

        public void setRad(float f) {
            this.rad = f;
        }
    }

    public textSelector(Context context) {
        super(context, null);
        this.dragId = -1;
        this.DRAG_HANDLE_2 = 1;
        this.DRAG_HANDLE_1 = 2;
        this.handleMargin = 0;
        this.handle2 = new PointF(0.0f, 0.0f);
        this.handle2F = new PointF(0.0f, 0.0f);
        this.handle1 = new PointF(0.0f, 0.0f);
        this.handle1F = new PointF(0.0f, 0.0f);
        this.previousPos = null;
        this.handle = new Rect(0, 0, dpToPixels(25), dpToPixels(25));
        this.paddingSides = dpToPixels(4);
        this.selectionStart = 0;
        this.selectionEnd = 1;
        this.showBackground = false;
        this.escapeTouchFor = null;
        this.fontsIds = new spansIntervals();
        this.currText = "new text";
        this.frozen = false;
        init();
    }

    public textSelector(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dragId = -1;
        this.DRAG_HANDLE_2 = 1;
        this.DRAG_HANDLE_1 = 2;
        this.handleMargin = 0;
        this.handle2 = new PointF(0.0f, 0.0f);
        this.handle2F = new PointF(0.0f, 0.0f);
        this.handle1 = new PointF(0.0f, 0.0f);
        this.handle1F = new PointF(0.0f, 0.0f);
        this.previousPos = null;
        this.handle = new Rect(0, 0, dpToPixels(25), dpToPixels(25));
        this.paddingSides = dpToPixels(4);
        this.selectionStart = 0;
        this.selectionEnd = 1;
        this.showBackground = false;
        this.escapeTouchFor = null;
        this.fontsIds = new spansIntervals();
        this.currText = "new text";
        this.frozen = false;
        init();
    }

    private RectF getRectToLeft(PointF pointF) {
        RectF rectF = new RectF(this.handle);
        rectF.offsetTo(pointF.x - this.handle.width(), pointF.y);
        return rectF;
    }

    private RectF getRectToRight(PointF pointF) {
        RectF rectF = new RectF(this.handle);
        rectF.offsetTo(pointF.x, pointF.y);
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFonts() {
        SpannableString spannableString = (SpannableString) getText();
        for (CustomTypefaceSpan customTypefaceSpan : (CustomTypefaceSpan[]) spannableString.getSpans(0, getText().length(), CustomTypefaceSpan.class)) {
            spannableString.removeSpan(customTypefaceSpan);
        }
        for (interval intervalVar : this.fontsIds.getIntervals()) {
            int max = Math.max(0, intervalVar.getStart());
            int min = Math.min(intervalVar.getEnd(), getText().length());
            if (max < getText().length()) {
                spannableString.setSpan(new CustomTypefaceSpan(intervalVar.getFont().getTypeface()), max, min, 34);
            }
        }
        setSelection(this.selectionStart, this.selectionEnd);
    }

    public Typeface createFontFromPath(String str) {
        Typeface typeface = Typeface.DEFAULT;
        try {
            try {
                return Typeface.createFromAsset(getContext().getAssets(), str);
            } catch (Exception unused) {
                return Typeface.createFromFile(str);
            }
        } catch (Exception unused2) {
            return typeface;
        }
    }

    public float dist(PointF pointF, PointF pointF2) {
        PointF pointF3 = new PointF(pointF2.x - pointF.x, pointF2.y - pointF.y);
        float f = pointF3.x;
        float f2 = pointF3.y;
        return (float) Math.sqrt((f2 * f2) + (f * f));
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void freezeRedraw() {
        this.frozen = true;
    }

    public int getCharIndexFromCoordinate(float f, float f2) {
        if (getLayout() == null) {
            return -1;
        }
        return getLayout().getOffsetForHorizontal(getLayout().getLineForVertical((int) f2), f);
    }

    public spansIntervals getFontsIds() {
        return this.fontsIds;
    }

    public void init() {
        setGravity(17);
        setPadding(this.handle.width(), 0, this.handle.width(), this.handle.height() + this.handleMargin);
        Resources resources = getResources();
        this.handleDrawable = BitmapFactory.decodeResource(resources, R.drawable.handle_blue);
        this.handleDrawable1 = BitmapFactory.decodeResource(resources, R.drawable.handle_r_blue);
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.frozen) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        if (this.frozen) {
            return;
        }
        super.invalidate(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        if (this.frozen) {
            return;
        }
        super.invalidate(rect);
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.handle.width(), 0.0f);
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        if (getText().length() != 0) {
            canvas.drawBitmap(this.handleDrawable1, (Rect) null, getRectToLeft(this.handle1), paint);
            canvas.drawBitmap(this.handleDrawable, (Rect) null, getRectToRight(this.handle2), paint);
        }
        canvas.restore();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        PointF pointF;
        PointF pointF2;
        PointF pointF3 = new PointF(motionEvent.getX() - this.handle.width(), motionEvent.getY());
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            RectF rectToRight = getRectToRight(this.handle2);
            rectToRight.top -= getLineHeight();
            rectToRight.right += dpToPixels(10);
            rectToRight.left -= dpToPixels(10);
            RectF rectToLeft = getRectToLeft(this.handle1);
            rectToLeft.top -= getLineHeight();
            rectToLeft.left -= dpToPixels(10);
            rectToLeft.right += dpToPixels(10);
            if (rectToLeft.contains(pointF3.x, pointF3.y)) {
                this.dragId = this.DRAG_HANDLE_1;
                this.previousPos = new PointF(pointF3.x, pointF3.y);
                ScrollView scrollView = this.escapeTouchFor;
                if (scrollView != null) {
                    scrollView.requestDisallowInterceptTouchEvent(true);
                }
            }
            if (rectToRight.contains(pointF3.x, pointF3.y)) {
                this.dragId = this.DRAG_HANDLE_2;
                this.previousPos = new PointF(pointF3.x, pointF3.y);
                ScrollView scrollView2 = this.escapeTouchFor;
                if (scrollView2 != null) {
                    scrollView2.requestDisallowInterceptTouchEvent(true);
                }
            }
        } else if (action == 1) {
            this.dragId = -1;
            this.previousPos = null;
        } else if (action == 2) {
            int i = this.dragId;
            if (i == this.DRAG_HANDLE_2) {
                float f = pointF3.x;
                PointF pointF4 = this.previousPos;
                PointF pointF5 = new PointF(f - pointF4.x, pointF3.y - pointF4.y);
                this.handle2.offset(pointF5.x, pointF5.y);
                PointF pointF6 = this.handle2;
                this.handle2F = new PointF(pointF6.x, (pointF6.y - this.handleMargin) - (getLineHeight() / 2));
                int lineForVertical = getLayout().getLineForVertical((int) this.handle2F.y);
                float lineBottom = getLayout().getLineBottom(lineForVertical) + this.handleMargin;
                float primaryHorizontal = getLayout().getPrimaryHorizontal(getLayout().getOffsetForHorizontal(lineForVertical, this.handle2F.x));
                int offsetForHorizontal = getLayout().getOffsetForHorizontal(lineForVertical, primaryHorizontal);
                this.selectionEnd = offsetForHorizontal;
                if (offsetForHorizontal > this.selectionStart) {
                    updateSelection();
                    PointF pointF7 = this.handle2;
                    pointF = new PointF(primaryHorizontal - pointF7.x, lineBottom - pointF7.y);
                    this.handle2.set(primaryHorizontal, lineBottom);
                    pointF2 = new PointF(pointF3.x, pointF3.y);
                } else {
                    int max = Math.max(lineForVertical, getLayout().getLineForVertical((((int) this.handle1.y) - this.handleMargin) - (getLineHeight() / 2)));
                    float lineBottom2 = getLayout().getLineBottom(max) + this.handleMargin;
                    float max2 = Math.max(this.handle1.x, this.handle2.x);
                    int offsetForHorizontal2 = getLayout().getOffsetForHorizontal(max, max2);
                    this.selectionEnd = offsetForHorizontal2;
                    if (offsetForHorizontal2 == this.selectionStart) {
                        this.selectionEnd = offsetForHorizontal2 + 1;
                        max2 = getLayout().getPrimaryHorizontal(this.selectionEnd);
                    }
                    updateSelection();
                    PointF pointF8 = this.handle2;
                    pointF = new PointF(max2 - pointF8.x, lineBottom2 - pointF8.y);
                    this.handle2.set(max2, lineBottom2);
                    pointF2 = new PointF(pointF3.x, pointF3.y);
                }
            } else if (i == this.DRAG_HANDLE_1) {
                float f2 = pointF3.x;
                PointF pointF9 = this.previousPos;
                PointF pointF10 = new PointF(f2 - pointF9.x, pointF3.y - pointF9.y);
                this.handle1.offset(pointF10.x, pointF10.y);
                PointF pointF11 = this.handle1;
                this.handle1F = new PointF(pointF11.x, (pointF11.y - this.handleMargin) - (getLineHeight() / 2));
                int lineForVertical2 = getLayout().getLineForVertical((int) this.handle1F.y);
                float lineBottom3 = getLayout().getLineBottom(lineForVertical2) + this.handleMargin;
                float primaryHorizontal2 = getLayout().getPrimaryHorizontal(getLayout().getOffsetForHorizontal(lineForVertical2, this.handle1F.x));
                int offsetForHorizontal3 = getLayout().getOffsetForHorizontal(lineForVertical2, primaryHorizontal2);
                this.selectionStart = offsetForHorizontal3;
                if (offsetForHorizontal3 < this.selectionEnd) {
                    updateSelection();
                    PointF pointF12 = this.handle1;
                    pointF = new PointF(primaryHorizontal2 - pointF12.x, lineBottom3 - pointF12.y);
                    this.handle1.set(primaryHorizontal2, lineBottom3);
                    pointF2 = new PointF(pointF3.x, pointF3.y);
                } else {
                    int min = Math.min(lineForVertical2, getLayout().getLineForVertical((((int) this.handle2.y) - this.handleMargin) - (getLineHeight() / 2)));
                    float lineBottom4 = getLayout().getLineBottom(min) + this.handleMargin;
                    float min2 = Math.min(this.handle1.x, this.handle2.x);
                    int offsetForHorizontal4 = getLayout().getOffsetForHorizontal(min, min2);
                    this.selectionStart = offsetForHorizontal4;
                    if (offsetForHorizontal4 == this.selectionEnd) {
                        this.selectionStart = offsetForHorizontal4 - 1;
                        min2 = getLayout().getPrimaryHorizontal(this.selectionStart);
                    }
                    updateSelection();
                    PointF pointF13 = this.handle1;
                    pointF = new PointF(min2 - pointF13.x, lineBottom4 - pointF13.y);
                    this.handle1.set(min2, lineBottom4);
                    pointF2 = new PointF(pointF3.x, pointF3.y);
                }
            }
            this.previousPos = pointF2;
            pointF2.offset(pointF.x, pointF.y);
        }
        invalidate();
        return true;
    }

    @Override // android.view.View
    public void postInvalidate() {
        if (this.frozen) {
            return;
        }
        super.postInvalidate();
    }

    @Override // android.view.View
    public void postInvalidate(int i, int i2, int i3, int i4) {
        if (this.frozen) {
            return;
        }
        super.postInvalidate(i, i2, i3, i4);
    }

    public float rectRad(Rect rect) {
        return (float) (Math.sqrt((rect.height() * rect.height()) + (rect.width() * rect.width())) / 2.0d);
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.frozen) {
            return;
        }
        super.requestLayout();
    }

    public void setFontToSelected(String str) {
        this.fontsIds.addInterval(new interval(this.selectionStart, this.selectionEnd, new customTypeface(str, createFontFromPath(str))));
        updateFonts();
    }

    public void setFonts(spansIntervals spansintervals) {
        if (spansintervals == null) {
            spansintervals = new spansIntervals();
        }
        this.fontsIds = spansintervals;
    }

    public void setParentTouchInterceptor(ScrollView scrollView) {
        this.escapeTouchFor = scrollView;
    }

    public void setSelection(int i, int i2) {
        this.selectionStart = Math.min(i, i2);
        this.selectionEnd = Math.max(i, i2);
        updateSelection();
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textSelector.3
            @Override // java.lang.Runnable
            public void run() {
                if (textSelector.this.getLayout() != null) {
                    try {
                        textSelector textselector = textSelector.this;
                        textselector.handle2.set(textselector.getLayout().getPrimaryHorizontal(textSelector.this.selectionEnd), textSelector.this.getLayout().getLineBottom(textSelector.this.getLayout().getLineForOffset(textSelector.this.selectionEnd)));
                        textSelector textselector2 = textSelector.this;
                        textselector2.handle1.set(textselector2.getLayout().getPrimaryHorizontal(textSelector.this.selectionStart), textSelector.this.getLayout().getLineBottom(textSelector.this.getLayout().getLineForOffset(textSelector.this.selectionStart)));
                    } catch (Exception unused) {
                    }
                }
                textSelector.this.postInvalidate();
            }
        });
    }

    public void setShowBackground(boolean z) {
        this.showBackground = z;
    }

    public void unfreezeRedraw() {
        this.frozen = false;
        requestLayout();
        invalidate();
    }

    public void updateBackgroundColor() {
        if (this.showBackground) {
            setBackgroundDrawable(new Drawable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textSelector.2
                @Override // android.graphics.drawable.Drawable
                public void draw(Canvas canvas) {
                    Paint paint = new Paint(1);
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeWidth(textSelector.this.dpToPixels(1));
                    paint.setColor(Color.rgb(141, 139, 141));
                    float paddingLeft = textSelector.this.getPaddingLeft() - textSelector.this.paddingSides;
                    float strokeWidth = paint.getStrokeWidth() + r3.getPaddingTop();
                    int width = textSelector.this.getWidth() - textSelector.this.getPaddingRight();
                    textSelector textselector = textSelector.this;
                    RectF rectF = new RectF(paddingLeft, strokeWidth, width + textselector.paddingSides, textselector.getHeight() - textSelector.this.getPaddingBottom());
                    if (textSelector.this.showBackground) {
                        canvas.drawRect(rectF, paint);
                    }
                    Paint paint2 = new Paint();
                    paint2.setColor(-1);
                    canvas.drawRect(rectF, paint2);
                }

                @Override // android.graphics.drawable.Drawable
                public int getOpacity() {
                    return 0;
                }

                @Override // android.graphics.drawable.Drawable
                public void setAlpha(int i) {
                }

                @Override // android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                }
            });
        }
    }

    public void updateSelection() {
        SpannableString spannableString = (SpannableString) getText();
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spannableString.getSpans(0, getText().length(), BackgroundColorSpan.class)) {
            spannableString.removeSpan(backgroundColorSpan);
        }
        spannableString.setSpan(new BackgroundColorSpan(Color.rgb(156, 206, 255)), Math.min(Math.max(this.selectionStart, 0), Math.min(this.selectionEnd, getText().length())), Math.max(Math.max(this.selectionStart, 0), Math.min(this.selectionEnd, getText().length())), 33);
    }

    public void updateText(String str) {
        setText(str, TextView.BufferType.SPANNABLE);
        updateBackgroundColor();
        this.selectionStart = 0;
        this.selectionEnd = getText().length();
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.textSelector.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                textSelector.this.updateFonts();
            }
        });
    }
}
