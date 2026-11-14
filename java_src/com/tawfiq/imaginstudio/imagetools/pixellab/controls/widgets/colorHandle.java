package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
class colorHandle extends View implements Comparable<colorHandle> {
    private int _xDelta;
    private int _yDelta;
    private Drawable backgroundCheckers;
    private int color;
    final int handleH;
    final int handleW;
    private final int parentHeight;
    int parentWidth;
    private int position;
    gradientTool_slider root;
    private boolean selectedHandle;
    OnHandleTouchListener touchListener;

    /* loaded from: classes.dex */
    public interface OnHandleTouchListener {
        void onHandleDoneEvent();

        void onHandleMoveEvent();

        void onHandleTouchEvent(colorHandle colorhandle);
    }

    public colorHandle(Context context, int i, int i2, int i3, int i4, Drawable drawable) {
        super(context);
        this.handleW = dpToPixels(26);
        this.handleH = dpToPixels(15);
        this.selectedHandle = true;
        this.color = i;
        this.position = i2;
        this.parentWidth = i3;
        this.parentHeight = i4;
        this.backgroundCheckers = drawable;
    }

    private int calculateContrastColor(int i) {
        int red = Color.red(i);
        return (((float) Color.blue(i)) * 0.114f) + ((((float) Color.green(i)) * 0.587f) + (((float) red) * 0.299f)) > 186.0f ? -12303292 : -3355444;
    }

    @Override // java.lang.Comparable
    public int compareTo(colorHandle colorhandle) {
        return this.position - colorhandle.getPosition();
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void drawStripes(Rect rect, Canvas canvas, int i, int i2) {
        canvas.clipRect(new Rect(rect));
        float sqrt = (float) Math.sqrt((rect.height() * rect.height()) + (rect.width() * rect.width()));
        float cos = (float) Math.cos(0.7853981633974483d);
        float sin = (float) Math.sin(0.7853981633974483d);
        float height = rect.height() / i;
        Paint paint = new Paint(1);
        paint.setColor(calculateContrastColor(i2));
        paint.setStrokeWidth(sqrt / (i * 2));
        for (int i3 = 1; i3 < i; i3++) {
            PointF pointF = new PointF(0.0f, i3 * height);
            PointF pointF2 = new PointF((sqrt * cos) + pointF.x, (sqrt * sin) + pointF.y);
            canvas.drawLine(pointF.x, pointF.y, pointF2.x, pointF2.y, paint);
        }
    }

    public int getColor() {
        return this.color;
    }

    public int getPosition() {
        return this.position;
    }

    @Override // android.view.View
    public void invalidate() {
        invalidateOuterParent();
        super.invalidate();
    }

    public void invalidateOuterParent() {
        if (getParent().getParent() == null || !(getParent().getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) getParent().getParent()).invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Rect rect = new Rect();
        canvas.getClipBounds(rect);
        rect.inset(-dpToPixels(6), -dpToPixels(6));
        canvas.clipRect(rect);
        Paint paint = new Paint(1);
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(getWidth(), 0.0f);
        path.lineTo(getWidth(), getHeight() - this.handleH);
        path.lineTo(getWidth() / 2.0f, getHeight());
        path.lineTo(0.0f, getHeight() - this.handleH);
        path.close();
        if (this.selectedHandle) {
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setColor(Color.parseColor("#ff9800"));
            paint.setAlpha(255);
            paint.setStrokeWidth(dpToPixels(6));
            canvas.drawPath(path, paint);
        }
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-12303292);
        paint.setAlpha(255);
        paint.setStrokeWidth(dpToPixels(2));
        canvas.drawPath(path, paint);
        paint.setColor(-1);
        paint.setAlpha(255);
        paint.setStrokeWidth(dpToPixels(1));
        canvas.drawPath(path, paint);
        Rect rect2 = new Rect(0, 0, getWidth(), getHeight() - this.handleH);
        rect2.inset(dpToPixels(1), dpToPixels(1));
        this.backgroundCheckers.setBounds(rect2);
        this.backgroundCheckers.draw(canvas);
        paint.setColor(this.color);
        canvas.drawRect(rect2, paint);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(this.handleW, this.parentHeight);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        if (this.root == null) {
            this.root = (gradientTool_slider) getParent();
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            this._xDelta = rawX - layoutParams.leftMargin;
            this._yDelta = rawY - layoutParams.topMargin;
            OnHandleTouchListener onHandleTouchListener = this.touchListener;
            if (onHandleTouchListener != null) {
                onHandleTouchListener.onHandleTouchEvent(this);
            }
        } else if (action == 1) {
            OnHandleTouchListener onHandleTouchListener2 = this.touchListener;
            if (onHandleTouchListener2 != null) {
                onHandleTouchListener2.onHandleDoneEvent();
            }
        } else if (action == 2) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) getLayoutParams();
            int max = Math.max(Math.min(rawX - this._xDelta, this.parentWidth - this.handleW), 0);
            layoutParams2.leftMargin = max;
            this.position = (int) ((max / (this.parentWidth - this.handleW)) * 1000.0f);
            layoutParams2.rightMargin = -250;
            setLayoutParams(layoutParams2);
            requestLayout();
            OnHandleTouchListener onHandleTouchListener3 = this.touchListener;
            if (onHandleTouchListener3 != null) {
                onHandleTouchListener3.onHandleMoveEvent();
            }
            invalidate();
        }
        gradientTool_slider gradienttool_slider = this.root;
        if (gradienttool_slider != null) {
            gradienttool_slider.invalidate();
        }
        return true;
    }

    public void setColor(int i) {
        this.color = i;
        invalidate();
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setTouchListener(OnHandleTouchListener onHandleTouchListener) {
        this.touchListener = onHandleTouchListener;
    }

    public void toggleSelect(boolean z) {
        this.selectedHandle = z;
        invalidate();
    }
}
