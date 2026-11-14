package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ZoomWidget extends View implements ScaleGestureDetector.OnScaleGestureListener, View.OnTouchListener {
    private static final float MAX_ZOOM = 30.0f;
    private static final float MIN_ZOOM = 1.0f;
    private static final String TAG = "ZoomLayout";
    private RectF bounds;
    private View child;
    private float dx;
    private float dy;
    RectF horScroll;
    RectF horScrollArea;
    private float lastScaleFactor;
    ArrayList<OnZoomListener> listeners;
    private Mode mode;
    Paint pntBg;
    private float prevDx;
    private float prevDy;
    int previewQuadrant;
    private float scale;
    ScaleGestureDetector scaleDetector;
    final float scrollBarPadding;
    final float scrollBarWidth;
    Paint scrollPaint;
    Paint scrollPaintBorder;
    private float startX;
    private float startY;
    private ZoomButton toNotify;
    RectF verScroll;
    RectF verScrollArea;
    boolean zoomEnabled;

    /* loaded from: classes.dex */
    public enum Mode {
        NONE,
        DRAG,
        ZOOM
    }

    /* loaded from: classes.dex */
    public interface OnZoomListener {
        void zoomChanged(float f);
    }

    public ZoomWidget(Context context) {
        super(context);
        this.child = null;
        this.zoomEnabled = false;
        this.bounds = null;
        this.scrollBarWidth = commonFuncs.dpToPx(10);
        this.scrollBarPadding = commonFuncs.dpToPx(4);
        this.listeners = new ArrayList<>();
        this.mode = Mode.NONE;
        this.scale = MIN_ZOOM;
        this.lastScaleFactor = 0.0f;
        this.previewQuadrant = 3;
        this.startX = 0.0f;
        this.startY = 0.0f;
        this.dx = 0.0f;
        this.dy = 0.0f;
        this.prevDx = 0.0f;
        this.prevDy = 0.0f;
        init(context);
    }

    public ZoomWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.child = null;
        this.zoomEnabled = false;
        this.bounds = null;
        this.scrollBarWidth = commonFuncs.dpToPx(10);
        this.scrollBarPadding = commonFuncs.dpToPx(4);
        this.listeners = new ArrayList<>();
        this.mode = Mode.NONE;
        this.scale = MIN_ZOOM;
        this.lastScaleFactor = 0.0f;
        this.previewQuadrant = 3;
        this.startX = 0.0f;
        this.startY = 0.0f;
        this.dx = 0.0f;
        this.dy = 0.0f;
        this.prevDx = 0.0f;
        this.prevDy = 0.0f;
        init(context);
    }

    public ZoomWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.child = null;
        this.zoomEnabled = false;
        this.bounds = null;
        this.scrollBarWidth = commonFuncs.dpToPx(10);
        this.scrollBarPadding = commonFuncs.dpToPx(4);
        this.listeners = new ArrayList<>();
        this.mode = Mode.NONE;
        this.scale = MIN_ZOOM;
        this.lastScaleFactor = 0.0f;
        this.previewQuadrant = 3;
        this.startX = 0.0f;
        this.startY = 0.0f;
        this.dx = 0.0f;
        this.dy = 0.0f;
        this.prevDx = 0.0f;
        this.prevDy = 0.0f;
        init(context);
    }

    private void applyScaleAndTranslation() {
        child().setScaleX(this.scale);
        child().setScaleY(this.scale);
        child().setTranslationX(this.dx);
        child().setTranslationY(this.dy);
        invalidate();
    }

    private View child() {
        return this.child;
    }

    private void init(Context context) {
        Paint paint = new Paint(1);
        this.pntBg = paint;
        paint.setColor(-16777216);
        this.pntBg.setAlpha(100);
        this.scaleDetector = new ScaleGestureDetector(context, this);
        this.scrollPaint = new Paint(1);
        this.scrollPaintBorder = new Paint(1);
        this.scrollPaint.setColor(Color.parseColor("#a6a6a6"));
        this.scrollPaintBorder.setColor(Color.parseColor("#69222222"));
        this.scrollPaintBorder.setStyle(Paint.Style.FILL_AND_STROKE);
        this.scrollPaintBorder.setStrokeWidth(commonFuncs.dpToPx(2));
        this.verScroll = new RectF();
        this.horScroll = new RectF();
        setOnTouchListener(this);
    }

    private void notifyScaleChanged() {
        Iterator<OnZoomListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().zoomChanged(this.scale);
        }
        ZoomButton zoomButton = this.toNotify;
        if (zoomButton != null) {
            zoomButton.updateZoom(this.scale);
        }
    }

    private boolean setPreviewQuadrant(float f, float f2) {
        int i = this.previewQuadrant;
        int i2 = f > ((float) getWidth()) / 2.0f ? f2 > ((float) getHeight()) / 2.0f ? 1 : 4 : f2 > ((float) getHeight()) / 2.0f ? 2 : 3;
        this.previewQuadrant = i2;
        return i != i2;
    }

    public void addListener(OnZoomListener onZoomListener) {
        this.listeners.add(onZoomListener);
    }

    public float dpToPixels(int i) {
        return TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void drawScrollBars(Canvas canvas) {
        RectF rectF;
        if (this.horScrollArea == null || (rectF = this.verScrollArea) == null) {
            return;
        }
        this.verScroll.set(rectF);
        this.horScroll.set(this.horScrollArea);
        RectF rectF2 = this.verScroll;
        float f = rectF2.bottom;
        float f2 = this.scale;
        rectF2.bottom = f / f2;
        this.horScroll.right /= f2;
        if (f2 > MIN_ZOOM) {
            rectF2.offset(0.0f, this.verScrollArea.centerY() - this.verScroll.centerY());
            float height = child().getHeight();
            float height2 = child().getHeight();
            float f3 = this.scale;
            this.verScroll.offset(0.0f, (((this.verScrollArea.height() - this.verScroll.height()) / 2.0f) / (((height - (height2 / f3)) / 2.0f) * f3)) * (-1.0f) * this.dy);
            this.horScroll.offset(this.horScrollArea.centerX() - this.horScroll.centerX(), 0.0f);
            float width = child().getWidth();
            float width2 = child().getWidth();
            float f4 = this.scale;
            this.horScroll.offset((((this.horScrollArea.width() - this.horScroll.width()) / 2.0f) / (((width - (width2 / f4)) / 2.0f) * f4)) * (-1.0f) * this.dx, 0.0f);
        }
        canvas.drawRect(this.verScroll, this.scrollPaintBorder);
        canvas.drawRect(this.verScroll, this.scrollPaint);
        canvas.drawRect(this.horScroll, this.scrollPaintBorder);
        canvas.drawRect(this.horScroll, this.scrollPaint);
    }

    public PointF getViewOrigin() {
        return new PointF(inRange((child().getWidth() / 2.0f) - (((getWidth() / 2.0f) + this.dx) / this.scale), 0.0f, child().getWidth()), inRange((child().getHeight() / 2.0f) - (((getHeight() / 2.0f) + this.dy) / this.scale), 0.0f, child().getWidth()));
    }

    public float getZoomFactor() {
        return this.scale;
    }

    public float inRange(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.zoomEnabled || this.bounds == null) {
            return;
        }
        drawScrollBars(canvas);
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (this.lastScaleFactor != 0.0f && Math.signum(scaleFactor) != Math.signum(this.lastScaleFactor)) {
            this.lastScaleFactor = 0.0f;
            return true;
        }
        float f = this.scale * scaleFactor;
        this.scale = f;
        this.scale = Math.max(MIN_ZOOM, Math.min(f, MAX_ZOOM));
        notifyScaleChanged();
        this.lastScaleFactor = scaleFactor;
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.bounds == null) {
            this.bounds = new RectF();
        }
        if (this.horScrollArea == null) {
            this.horScrollArea = new RectF();
        }
        if (this.verScrollArea == null) {
            this.verScrollArea = new RectF();
        }
        this.bounds.set(0.0f, 0.0f, i, i2);
        this.horScrollArea.set(0.0f, getHeight() - this.scrollBarWidth, getWidth(), getHeight());
        this.horScrollArea.inset((this.scrollBarPadding * 2.0f) + this.scrollBarWidth, 0.0f);
        this.horScrollArea.offset(0.0f, -this.scrollBarPadding);
        this.verScrollArea.set(getWidth() - this.scrollBarWidth, 0.0f, getWidth(), getHeight());
        this.verScrollArea.inset(0.0f, (this.scrollBarPadding * 2.0f) + this.scrollBarWidth);
        this.verScrollArea.offset(-this.scrollBarPadding, 0.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
    
        if (setPreviewQuadrant(r6.getX(), r6.getY()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x007b, code lost:
    
        invalidate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0079, code lost:
    
        if (setPreviewQuadrant(r6.getX(), r6.getY()) != false) goto L24;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r5, android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void resetZoom(boolean z) {
        if (this.scale != MIN_ZOOM || this.dx != 0.0f || this.dy != 0.0f) {
            this.scale = MIN_ZOOM;
            notifyScaleChanged();
            this.prevDx = this.dx;
            this.prevDy = this.dy;
            this.dx = 0.0f;
            this.dy = 0.0f;
            child().animate().setListener(new Animator.AnimatorListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ZoomWidget.this.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).scaleX(this.scale).scaleY(this.scale).translationX(this.dx).translationY(this.dy).setDuration(200L).setInterpolator(new AccelerateDecelerateInterpolator()).start();
        }
        if (z) {
            toggleZoom(false);
        }
    }

    public void setChild(View view) {
        this.child = view;
    }

    public void setNotifyOnChange(ZoomButton zoomButton) {
        this.toNotify = zoomButton;
    }

    public void setZoomLevel(float f) {
        this.scale = f;
        notifyScaleChanged();
        this.prevDx = this.dx;
        this.prevDy = this.dy;
        this.dx = 0.0f;
        this.dy = 0.0f;
        child().animate().setListener(new Animator.AnimatorListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ZoomWidget.this.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).scaleX(this.scale).translationX(this.dx).translationY(this.dy).scaleY(this.scale).setDuration(200L).setInterpolator(new AccelerateInterpolator()).start();
    }

    public void toggleZoom(boolean z) {
        boolean z2 = this.zoomEnabled;
        this.zoomEnabled = z;
        if (z != z2) {
            ZoomButton zoomButton = this.toNotify;
            if (zoomButton != null) {
                zoomButton.setZoomOn(z);
            }
            invalidate();
        }
    }

    public boolean toggleZoom() {
        toggleZoom(!this.zoomEnabled);
        return this.zoomEnabled;
    }
}
