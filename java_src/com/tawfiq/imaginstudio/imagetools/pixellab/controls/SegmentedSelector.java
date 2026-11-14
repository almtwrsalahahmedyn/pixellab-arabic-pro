package com.tawfiq.imaginstudio.imagetools.pixellab.controls;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SegmentedSelector extends View {
    RectF aChoiceArea;
    int additionalHorPadding;
    RectF anIconArea;
    ArrayList<SegmentedItem> choices;
    RectF fullArea;
    int hoverColor;
    int itemHeight;
    int itemWidth;
    OnSegmentedSelect listener;
    int padding;
    Paint pntArrow;
    Paint pntFill;
    Paint pntStroke;
    Paint pntText;
    SegmentedItem pressedItem;
    int radius;
    int selectedColor;
    SegmentedItem selectedItem;
    int unselectedColor;

    /* loaded from: classes.dex */
    public interface OnSegmentedSelect {
        void selected(int i);
    }

    /* loaded from: classes.dex */
    public class SegmentedItem {
        ArrowPanel.ArrowHead arrowHead;
        boolean hovered;
        Drawable iconD;
        int iconRes;
        boolean selected;
        String text;

        public SegmentedItem(int i) {
            this.text = null;
            this.iconD = null;
            this.arrowHead = null;
            this.selected = false;
            this.hovered = false;
            this.iconRes = i;
            try {
                this.iconD = ContextCompat.getDrawable(SegmentedSelector.this.getContext(), i);
            } catch (Exception unused) {
                this.iconD = null;
            }
        }

        public SegmentedItem(ArrowPanel.ArrowHead arrowHead) {
            this.iconRes = 0;
            this.text = null;
            this.iconD = null;
            this.selected = false;
            this.hovered = false;
            this.arrowHead = arrowHead;
        }

        public SegmentedItem(String str) {
            this.iconRes = 0;
            this.iconD = null;
            this.arrowHead = null;
            this.selected = false;
            this.hovered = false;
            this.text = str;
        }

        public void drawIcon(Canvas canvas, RectF rectF) {
            int i = !this.selected ? !this.hovered ? SegmentedSelector.this.selectedColor : SegmentedSelector.this.hoverColor : SegmentedSelector.this.unselectedColor;
            Drawable drawable = this.iconD;
            if (drawable != null) {
                drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                this.iconD.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
                this.iconD.draw(canvas);
                this.iconD.setColorFilter(null);
                return;
            }
            if (this.arrowHead != null) {
                SegmentedSelector.this.pntArrow.setColor(i);
                this.arrowHead.draw(canvas, SegmentedSelector.this.pntArrow, new PointF(rectF.centerX(), rectF.centerY()), rectF.width());
            } else if (this.text != null) {
                SegmentedSelector.this.pntText.setColor(i);
                SegmentedSelector.this.pntText.setTextSize(rectF.height() * 0.8f);
                canvas.drawText(this.text, rectF.centerX(), rectF.centerY() - ((SegmentedSelector.this.pntText.getFontMetrics().ascent + SegmentedSelector.this.pntText.getFontMetrics().descent) * 0.5f), SegmentedSelector.this.pntText);
            }
        }

        public float getTextWidth() {
            String str = this.text;
            if (str == null) {
                return 0.0f;
            }
            return SegmentedSelector.this.pntText.measureText(str);
        }

        public boolean isHovered() {
            return this.hovered;
        }

        public boolean isSelected() {
            return this.selected;
        }

        public void setHovered(boolean z) {
            this.hovered = z;
        }

        public void setSelected(boolean z) {
            this.selected = z;
        }
    }

    public SegmentedSelector(Context context) {
        super(context);
        this.listener = null;
        this.itemWidth = commonFuncs.dpToPxInt(24);
        this.itemHeight = commonFuncs.dpToPxInt(24);
        this.padding = commonFuncs.dpToPxInt(8);
        this.additionalHorPadding = commonFuncs.dpToPxInt(8);
        this.radius = commonFuncs.dpToPxInt(4);
        this.pntStroke = new Paint(1);
        this.pntArrow = new Paint(1);
        this.pntText = new Paint(1);
        this.choices = new ArrayList<>();
        this.selectedItem = null;
        this.selectedColor = -16777216;
        this.unselectedColor = Color.parseColor("#f5f3f0");
        this.hoverColor = Color.parseColor("#9d9d9d");
        this.fullArea = new RectF();
        this.aChoiceArea = new RectF();
        this.anIconArea = new RectF();
        this.pressedItem = null;
        init();
    }

    public SegmentedSelector(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.listener = null;
        this.itemWidth = commonFuncs.dpToPxInt(24);
        this.itemHeight = commonFuncs.dpToPxInt(24);
        this.padding = commonFuncs.dpToPxInt(8);
        this.additionalHorPadding = commonFuncs.dpToPxInt(8);
        this.radius = commonFuncs.dpToPxInt(4);
        this.pntStroke = new Paint(1);
        this.pntArrow = new Paint(1);
        this.pntText = new Paint(1);
        this.choices = new ArrayList<>();
        this.selectedItem = null;
        this.selectedColor = -16777216;
        this.unselectedColor = Color.parseColor("#f5f3f0");
        this.hoverColor = Color.parseColor("#9d9d9d");
        this.fullArea = new RectF();
        this.aChoiceArea = new RectF();
        this.anIconArea = new RectF();
        this.pressedItem = null;
        init();
    }

    private void actionClick(float f, float f2) {
        if (this.pressedItem != null) {
            SegmentedItem itemAtPos = getItemAtPos(f, f2);
            SegmentedItem segmentedItem = this.pressedItem;
            if (itemAtPos == segmentedItem) {
                int indexOf = this.choices.indexOf(segmentedItem);
                setSelected(indexOf);
                OnSegmentedSelect onSegmentedSelect = this.listener;
                if (onSegmentedSelect != null) {
                    onSegmentedSelect.selected(indexOf);
                }
            }
        }
    }

    private void actionPress(float f, float f2) {
        SegmentedItem itemAtPos = getItemAtPos(f, f2);
        if (itemAtPos != null) {
            playSoundEffect(0);
            itemAtPos.setHovered(true);
            this.pressedItem = itemAtPos;
        }
    }

    public void addItems(int... iArr) {
        for (int i : iArr) {
            this.choices.add(new SegmentedItem(i));
        }
        requestLayout();
        setSelected(0);
    }

    public void addItems(ArrowPanel.ArrowHead... arrowHeadArr) {
        for (ArrowPanel.ArrowHead arrowHead : arrowHeadArr) {
            this.choices.add(new SegmentedItem(arrowHead));
        }
        requestLayout();
        setSelected(0);
    }

    public void addItems(String... strArr) {
        for (String str : strArr) {
            this.choices.add(new SegmentedItem(str));
        }
        requestLayout();
        setSelected(0);
    }

    public ArrowPanel.ArrowHead getArrowHeadFromId(int i) {
        ArrowPanel.ArrowHead arrowHead = this.choices.get(i).arrowHead;
        return arrowHead != null ? arrowHead : new ArrowPanel.ArrowHead1();
    }

    public SegmentedItem getItemAtPos(float f, float f2) {
        if (!this.fullArea.contains(f, f2)) {
            return null;
        }
        RectF rectF = this.aChoiceArea;
        RectF rectF2 = this.fullArea;
        rectF.offsetTo(rectF2.left, rectF2.top);
        for (int i = 0; i < this.choices.size(); i++) {
            if (this.aChoiceArea.contains(f, f2)) {
                return this.choices.get(i);
            }
            RectF rectF3 = this.aChoiceArea;
            rectF3.offset(rectF3.width(), 0.0f);
        }
        return null;
    }

    public void init() {
        this.pntStroke.setColor(ContextCompat.getColor(getContext(), R.color.blue_normal));
        this.pntStroke.setStyle(Paint.Style.STROKE);
        this.pntStroke.setStrokeWidth(commonFuncs.dpToPx(1));
        Paint paint = new Paint(this.pntStroke);
        this.pntFill = paint;
        paint.setStyle(Paint.Style.FILL);
        this.pntText.setTextSize(commonFuncs.spToPx(14));
        this.pntText.setTextAlign(Paint.Align.CENTER);
        this.selectedColor = ContextCompat.getColor(getContext(), R.color.blue_normal);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.fullArea;
        float f = this.radius;
        canvas.drawRoundRect(rectF, f, f, this.pntStroke);
        RectF rectF2 = this.aChoiceArea;
        RectF rectF3 = this.fullArea;
        rectF2.offsetTo(rectF3.left, rectF3.top);
        this.anIconArea.offset(this.aChoiceArea.centerX() - this.anIconArea.centerX(), this.aChoiceArea.centerY() - this.anIconArea.centerY());
        int i = 0;
        while (i < this.choices.size()) {
            if (this.choices.get(i).isSelected()) {
                commonFuncs.drawRoundedRectCustom(this.aChoiceArea, this.radius, i == 0, i == this.choices.size() - 1, this.pntFill, canvas);
            } else if (i != this.choices.size() - 1) {
                RectF rectF4 = this.aChoiceArea;
                float f2 = rectF4.right;
                canvas.drawLine(f2, rectF4.top, f2, rectF4.bottom, this.pntStroke);
            }
            this.choices.get(i).drawIcon(canvas, this.anIconArea);
            RectF rectF5 = this.aChoiceArea;
            rectF5.offset(rectF5.width(), 0.0f);
            this.anIconArea.offset(this.aChoiceArea.centerX() - this.anIconArea.centerX(), this.aChoiceArea.centerY() - this.anIconArea.centerY());
            i++;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension((Math.max(1, this.choices.size()) * this.itemWidth) + ((Math.max(this.choices.size() - 1, 0) + 2) * (this.padding + this.additionalHorPadding)), (this.padding * 2) + this.itemHeight);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updateAreas();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                actionClick(x, y);
                SegmentedItem segmentedItem = this.pressedItem;
                if (segmentedItem != null) {
                    segmentedItem.setHovered(false);
                }
                this.pressedItem = null;
            }
            return true;
        }
        actionPress(x, y);
        invalidate();
        return true;
    }

    public void setListener(OnSegmentedSelect onSegmentedSelect) {
        this.listener = onSegmentedSelect;
    }

    public void setSelected(int i) {
        if (this.choices.isEmpty()) {
            return;
        }
        this.selectedItem = this.choices.get(Math.min(this.choices.size() - 1, Math.max(0, i)));
        Iterator<SegmentedItem> it = this.choices.iterator();
        while (it.hasNext()) {
            SegmentedItem next = it.next();
            next.setSelected(next == this.selectedItem);
        }
        invalidate();
    }

    public void updateAreas() {
        this.fullArea.set(0.0f, 0.0f, getWidth(), getHeight());
        this.fullArea.inset(this.pntStroke.getStrokeWidth(), this.pntStroke.getStrokeWidth());
        RectF rectF = this.aChoiceArea;
        RectF rectF2 = this.fullArea;
        float f = rectF2.left;
        rectF.set(f, rectF2.top, (rectF2.width() / Math.max(1, this.choices.size())) + f, this.fullArea.bottom);
        RectF rectF3 = this.anIconArea;
        float f2 = this.itemWidth;
        rectF3.set(0.0f, 0.0f, f2, f2);
        this.anIconArea.offset(this.aChoiceArea.centerX() - this.anIconArea.centerX(), this.aChoiceArea.centerY() - this.anIconArea.centerY());
    }
}
