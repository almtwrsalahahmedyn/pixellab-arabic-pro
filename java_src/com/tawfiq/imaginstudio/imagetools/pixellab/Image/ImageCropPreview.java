package com.tawfiq.imaginstudio.imagetools.pixellab.Image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ImageCropPreview extends View {
    ArrayList<PointF> HandlesActive;
    float _lastX;
    float _lastY;
    handlesToggle activeHandles;
    private Drawable backgroundCheckers;
    float bottom;
    Rect bounds;
    public boolean circularCrop;
    RectF cropArea;
    PointF currentlyDraggedPoint;
    public boolean flipH;
    public boolean flipV;
    private Bitmap image;
    RectF imgArea;
    int imgHeight;
    int imgWidth;
    float left;
    OnCropPreviewAction listener;
    public boolean lockAspect;
    private float minDim;
    int padding;
    private Paint pntBorder;
    private Paint pntCrop;
    private Paint pntCropDark;
    private Paint pntDarken;
    private Paint pntImage;
    private Paint pntOval;
    float right;
    int rotation;
    boolean shouldUseDarkOnBitmap;
    float top;
    float touchRadius;
    ZoomWidget zoomWidgetReference;

    /* loaded from: classes.dex */
    public interface OnCropPreviewAction {
        void cropSizeChanged(float f, float f2, boolean z);
    }

    /* loaded from: classes.dex */
    public class handlesToggle {
        boolean active_00 = true;
        boolean active_10 = true;
        boolean active_11 = true;
        boolean active_01 = true;
        boolean active_H0 = true;
        boolean active_1H = true;
        boolean active_H1 = true;
        boolean active_0H = true;

        public handlesToggle() {
        }

        public void toggleAll(boolean z) {
            this.active_01 = z;
            this.active_11 = z;
            this.active_10 = z;
            this.active_00 = z;
            this.active_0H = z;
            this.active_H1 = z;
            this.active_1H = z;
            this.active_H0 = z;
        }

        public void toggleFree(boolean z) {
            this.active_0H = z;
            this.active_H1 = z;
            this.active_1H = z;
            this.active_H0 = z;
        }

        public void toggleMaintain(boolean z) {
            this.active_01 = z;
            this.active_11 = z;
            this.active_10 = z;
            this.active_00 = z;
        }
    }

    public ImageCropPreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.currentlyDraggedPoint = null;
        this.HandlesActive = new ArrayList<>();
        this.activeHandles = new handlesToggle();
        this.lockAspect = false;
        this.circularCrop = false;
        this.flipH = false;
        this.flipV = false;
        this.image = null;
        this.left = 20.0f;
        this.top = 20.0f;
        this.right = 80.0f;
        this.bottom = 80.0f;
        this.cropArea = null;
        this.bounds = null;
        this.imgArea = null;
        this.imgWidth = 100;
        this.imgHeight = 100;
        this.rotation = 0;
        this.touchRadius = dpToPixels(14);
        this.padding = (int) Math.ceil(r1 / 2.0f);
        this.minDim = this.touchRadius * 2.5f;
        this.shouldUseDarkOnBitmap = false;
        this.zoomWidgetReference = null;
        Paint paint = new Paint(1);
        this.pntImage = paint;
        paint.setFilterBitmap(true);
        Paint paint2 = new Paint(1);
        this.pntCrop = paint2;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.pntCrop.setColor(-1);
        this.pntCrop.setStrokeWidth(dpToPixels(2));
        Paint paint3 = new Paint(this.pntCrop);
        this.pntCropDark = paint3;
        paint3.setStrokeWidth(dpToPixels(1));
        this.pntCropDark.setColor(Color.parseColor("#2a2a2a"));
        Paint paint4 = new Paint(1);
        this.pntOval = paint4;
        paint4.setStyle(style);
        this.pntOval.setColor(Color.parseColor("#80ff1744"));
        this.pntOval.setStrokeWidth(dpToPixels(1));
        Paint paint5 = new Paint(1);
        this.pntDarken = paint5;
        paint5.setAlpha(100);
        Paint paint6 = new Paint(1);
        this.pntBorder = paint6;
        paint6.setColor(Color.argb(60, 0, 0, 0));
        this.pntBorder.setStyle(Paint.Style.FILL_AND_STROKE);
        this.pntBorder.setStrokeWidth(commonFuncs.dpToPx(1));
        updateAvailableHandlesPos();
        this.backgroundCheckers = getResources().getDrawable(R.drawable.checkered_bg);
    }

    private void drawCropper(Canvas canvas) {
        Paint paint = this.shouldUseDarkOnBitmap ? this.pntCropDark : this.pntCrop;
        if (this.circularCrop) {
            canvas.drawOval(this.cropArea, this.pntOval);
        } else {
            drawGrid(canvas, this.cropArea, 3, paint);
        }
        canvas.drawRect(this.cropArea, paint);
        drawAvailableHandles(canvas, this.pntCrop);
    }

    private void fixCropArea() {
        RectF rectF;
        float f;
        RectF rectF2 = this.cropArea;
        float f2 = rectF2.left;
        RectF rectF3 = this.imgArea;
        boolean z = f2 < rectF3.left;
        boolean z2 = rectF2.top < rectF3.top;
        boolean z3 = rectF2.right > rectF3.right;
        boolean z4 = rectF2.bottom > rectF3.bottom;
        if (z || z2 || z3 || z4) {
            float width = rectF2.width();
            float height = this.cropArea.height();
            if (z3 && z) {
                RectF rectF4 = this.cropArea;
                RectF rectF5 = this.imgArea;
                rectF4.left = rectF5.left;
                rectF4.right = rectF5.right;
            } else if (z3) {
                RectF rectF6 = this.cropArea;
                float f3 = this.imgArea.right;
                rectF6.right = f3;
                rectF6.left = f3 - width;
            } else if (z) {
                RectF rectF7 = this.cropArea;
                float f4 = this.imgArea.left;
                rectF7.left = f4;
                rectF7.right = f4 + width;
            }
            if (z4 && z2) {
                rectF = this.cropArea;
                RectF rectF8 = this.imgArea;
                rectF.top = rectF8.top;
                f = rectF8.bottom;
            } else {
                if (z4) {
                    RectF rectF9 = this.cropArea;
                    float f5 = this.imgArea.bottom;
                    rectF9.bottom = f5;
                    rectF9.top = f5 - height;
                    return;
                }
                if (!z2) {
                    return;
                }
                rectF = this.cropArea;
                float f6 = this.imgArea.top;
                rectF.top = f6;
                f = f6 + height;
            }
            rectF.bottom = f;
        }
    }

    private void updateAvailableHandlesPos() {
        this.HandlesActive.clear();
        if (this.activeHandles.active_H0) {
            this.HandlesActive.add(new PointF(0.5f, 0.0f));
        }
        if (this.activeHandles.active_1H) {
            this.HandlesActive.add(new PointF(1.0f, 0.5f));
        }
        if (this.activeHandles.active_H1) {
            this.HandlesActive.add(new PointF(0.5f, 1.0f));
        }
        if (this.activeHandles.active_0H) {
            this.HandlesActive.add(new PointF(0.0f, 0.5f));
        }
        if (this.activeHandles.active_00) {
            this.HandlesActive.add(new PointF(0.0f, 0.0f));
        }
        if (this.activeHandles.active_10) {
            this.HandlesActive.add(new PointF(1.0f, 0.0f));
        }
        if (this.activeHandles.active_11) {
            this.HandlesActive.add(new PointF(1.0f, 1.0f));
        }
        if (this.activeHandles.active_01) {
            this.HandlesActive.add(new PointF(0.0f, 1.0f));
        }
    }

    private boolean useDark(Bitmap bitmap) {
        int i = -16777216;
        try {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, 1, 1, true);
            i = createScaledBitmap.getPixel(0, 0);
            createScaledBitmap.recycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (((float) Color.blue(i)) * 0.114f) + ((((float) Color.green(i)) * 0.587f) + (((float) Color.red(i)) * 0.299f)) > 186.0f;
    }

    public void cyclicRotate(boolean z) {
        if (z) {
            float f = this.bottom;
            this.bottom = this.right;
            this.right = 100.0f - this.top;
            this.top = this.left;
            this.left = 100.0f - f;
            return;
        }
        float f2 = this.left;
        this.left = this.top;
        this.top = 100.0f - this.right;
        this.right = this.bottom;
        this.bottom = 100.0f - f2;
    }

    public void cyclicRotateRect(RectF rectF, int i) {
        if (i == 0) {
            return;
        }
        boolean z = i > 0;
        for (int abs = Math.abs(i % 360); abs > 0; abs -= 90) {
            cyclicRotateRect(rectF, z);
        }
    }

    public void cyclicRotateRect(RectF rectF, boolean z) {
        if (z) {
            float f = rectF.bottom;
            rectF.bottom = rectF.right;
            rectF.right = 100.0f - rectF.top;
            rectF.top = rectF.left;
            rectF.left = 100.0f - f;
            return;
        }
        float f2 = rectF.left;
        rectF.left = rectF.top;
        rectF.top = 100.0f - rectF.right;
        rectF.right = rectF.bottom;
        rectF.bottom = 100.0f - f2;
    }

    public float dist(PointF pointF, PointF pointF2) {
        float f = pointF.x;
        float f2 = pointF2.x;
        float f3 = (f - f2) * (f - f2);
        float f4 = pointF.y;
        float f5 = pointF2.y;
        return (float) Math.sqrt(((f4 - f5) * (f4 - f5)) + f3);
    }

    public float dpToPixels(int i) {
        return TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public int dpToPixelsInt(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void drawAvailableHandles(Canvas canvas, Paint paint) {
        Paint.Style style = paint.getStyle();
        paint.setStyle(Paint.Style.FILL);
        Iterator<PointF> it = this.HandlesActive.iterator();
        while (it.hasNext()) {
            PointF next = it.next();
            PointF absolutePoint = getAbsolutePoint(next, this.cropArea);
            boolean z = (next.x == 0.5f || next.y == 0.5f) ? false : true;
            int i = 3;
            canvas.drawCircle(absolutePoint.x, absolutePoint.y, this.touchRadius / (z ? 2 : 3), this.pntBorder);
            float f = absolutePoint.x;
            float f2 = absolutePoint.y;
            float f3 = this.touchRadius;
            if (z) {
                i = 2;
            }
            canvas.drawCircle(f, f2, f3 / i, paint);
        }
        paint.setStyle(style);
    }

    public void drawGrid(Canvas canvas, RectF rectF, int i, Paint paint) {
        float strokeWidth = paint.getStrokeWidth();
        paint.setStrokeWidth(dpToPixels(1));
        float f = i;
        float width = rectF.width() / f;
        float height = rectF.height() / f;
        int i2 = 0;
        if (width > 10.0f) {
            int i3 = 0;
            while (true) {
                float f2 = i3 + width;
                if (f2 >= rectF.width()) {
                    break;
                }
                float f3 = f2 + this.cropArea.left;
                canvas.drawLine(f3, rectF.top, f3, rectF.bottom, paint);
                i3 = (int) f2;
            }
        }
        if (height > 10.0f) {
            while (true) {
                float f4 = i2 + height;
                if (f4 >= rectF.height()) {
                    break;
                }
                float f5 = f4 + this.cropArea.top;
                canvas.drawLine(rectF.left, f5, rectF.right, f5, paint);
                i2 = (int) f4;
            }
        }
        paint.setStrokeWidth(strokeWidth);
    }

    public PointF getAbsolutePoint(PointF pointF, RectF rectF) {
        return new PointF((rectF.width() * pointF.x) + rectF.left, (rectF.height() * pointF.y) + rectF.top);
    }

    public RectF getCropBounds() {
        if (this.cropArea == null) {
            return null;
        }
        updateCropAreaPercentage();
        RectF rectF = new RectF(this.left, this.top, this.right, this.bottom);
        commonFuncs.flipPortion(rectF, this.flipH, this.flipV);
        cyclicRotateRect(rectF, this.rotation * (-1));
        return rectF;
    }

    public int getImageRotation() {
        return this.rotation;
    }

    public float getZoomFactor() {
        ZoomWidget zoomWidget = this.zoomWidgetReference;
        if (zoomWidget != null) {
            return zoomWidget.getZoomFactor();
        }
        return 1.0f;
    }

    public void imageUpdated() {
        if (this.bounds != null) {
            OnCropPreviewAction onCropPreviewAction = this.listener;
            if (onCropPreviewAction != null) {
                onCropPreviewAction.cropSizeChanged(this.right - this.left, this.bottom - this.top, (this.rotation / 90) % 2 != 0);
            }
            float min = Math.min(this.bounds.width() / this.imgWidth, this.bounds.height() / this.imgHeight);
            RectF rectF = new RectF(0.0f, 0.0f, this.imgWidth * min, min * this.imgHeight);
            this.imgArea = rectF;
            rectF.offset(this.bounds.centerX() - this.imgArea.centerX(), this.bounds.centerY() - this.imgArea.centerY());
            float width = (this.imgArea.width() * this.left) / 100.0f;
            RectF rectF2 = this.imgArea;
            float f = width + rectF2.left;
            float height = (rectF2.height() * this.top) / 100.0f;
            RectF rectF3 = this.imgArea;
            float f2 = height + rectF3.top;
            float width2 = (rectF3.width() * this.right) / 100.0f;
            RectF rectF4 = this.imgArea;
            this.cropArea = new RectF(f, f2, width2 + rectF4.left, ((rectF4.height() * this.bottom) / 100.0f) + this.imgArea.top);
        }
        invalidate();
    }

    public void maximize() {
        try {
            this.cropArea.set(this.imgArea);
            updateCropAreaPercentage();
        } catch (Error | Exception unused) {
        }
        OnCropPreviewAction onCropPreviewAction = this.listener;
        if (onCropPreviewAction != null) {
            onCropPreviewAction.cropSizeChanged(this.right - this.left, this.bottom - this.top, (this.rotation / 90) % 2 != 0);
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmap;
        super.onDraw(canvas);
        if (this.bounds == null || this.imgArea == null || (bitmap = this.image) == null || bitmap.isRecycled()) {
            return;
        }
        Drawable drawable = this.backgroundCheckers;
        if (drawable != null) {
            drawable.setBounds(rectFToRect(this.imgArea));
            this.backgroundCheckers.draw(canvas);
        }
        canvas.save();
        RectF rectF = new RectF(this.imgArea);
        rotateRect(rectF, this.rotation);
        canvas.scale(this.flipH ? -1.0f : 1.0f, this.flipV ? -1.0f : 1.0f, this.imgArea.centerX(), this.imgArea.centerY());
        canvas.rotate(this.rotation, this.imgArea.centerX(), this.imgArea.centerY());
        canvas.drawBitmap(this.image, (Rect) null, rectF, this.pntImage);
        canvas.restore();
        if (this.cropArea != null) {
            Path path = new Path();
            path.addRect(this.imgArea, Path.Direction.CW);
            if (this.circularCrop) {
                path.addOval(this.cropArea, Path.Direction.CCW);
            } else {
                path.addRect(this.cropArea, Path.Direction.CCW);
            }
            canvas.drawPath(path, this.pntDarken);
            drawCropper(canvas);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Rect rect = new Rect();
        this.bounds = rect;
        rect.set(0, 0, i, i2);
        Rect rect2 = this.bounds;
        int i5 = this.padding;
        rect2.inset(i5, i5);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        float rawY = motionEvent.getRawY() - this._lastY;
        float rawX = motionEvent.getRawX() - this._lastX;
        this._lastY = motionEvent.getRawY();
        this._lastX = motionEvent.getRawX();
        if (this.cropArea == null) {
            return false;
        }
        PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
        int action = motionEvent.getAction();
        if (action == 0) {
            updateCurrentlyDraggedPoint(pointF);
        } else if (action == 1) {
            this.currentlyDraggedPoint = null;
        } else if (action == 2) {
            PointF pointF2 = this.currentlyDraggedPoint;
            if (pointF2 != null) {
                boolean z = pointF2.x == 0.0f;
                boolean z2 = pointF2.y == 0.0f;
                float x = motionEvent.getX();
                RectF rectF = this.imgArea;
                float putInBounds = putInBounds(x, rectF.left, rectF.right);
                float y = motionEvent.getY();
                RectF rectF2 = this.imgArea;
                PointF pointF3 = new PointF(putInBounds, putInBounds(y, rectF2.top, rectF2.bottom));
                float f3 = this.minDim;
                if (z) {
                    f = this.cropArea.right;
                    f2 = pointF3.x;
                } else {
                    f = pointF3.x;
                    f2 = this.cropArea.left;
                }
                float max = Math.max(f3, f - f2);
                float max2 = Math.max(this.minDim, z2 ? this.cropArea.bottom - pointF3.y : pointF3.y - this.cropArea.top);
                PointF pointF4 = this.currentlyDraggedPoint;
                if (pointF4.x == 0.5f) {
                    RectF rectF3 = this.cropArea;
                    float f4 = z2 ? rectF3.bottom - max2 : rectF3.top;
                    rectF3.top = f4;
                    rectF3.bottom = z2 ? rectF3.bottom : f4 + max2;
                } else if (pointF4.y == 0.5f) {
                    RectF rectF4 = this.cropArea;
                    float f5 = z ? rectF4.right : rectF4.left + max;
                    rectF4.right = f5;
                    rectF4.left = z ? f5 - max : rectF4.left;
                } else {
                    float width = this.cropArea.width();
                    float height = this.cropArea.height();
                    float min = Math.min(max / width, max2 / height);
                    float f6 = width * min;
                    float f7 = min * height;
                    RectF rectF5 = this.cropArea;
                    float f8 = z ? rectF5.right : rectF5.left + f6;
                    rectF5.right = f8;
                    float f9 = z2 ? rectF5.bottom : rectF5.top + f7;
                    rectF5.bottom = f9;
                    rectF5.left = z ? f8 - f6 : rectF5.left;
                    rectF5.top = z2 ? f9 - f7 : rectF5.top;
                }
                if (this.listener != null) {
                    updateCropAreaPercentage();
                    this.listener.cropSizeChanged(this.right - this.left, this.bottom - this.top, (this.rotation / 90) % 2 != 0);
                }
            } else {
                this.cropArea.offset(rawX / getZoomFactor(), rawY / getZoomFactor());
                fixCropArea();
            }
            invalidate();
        }
        return true;
    }

    public float putInBounds(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    public Rect rectFToRect(RectF rectF) {
        return new Rect((int) Math.ceil(rectF.left), (int) Math.ceil(rectF.top), (int) Math.floor(rectF.right), (int) Math.floor(rectF.bottom));
    }

    public void rotateImg(boolean z) {
        boolean z2 = (this.flipH == this.flipV) == z;
        int i = this.rotation + (z2 ? 90 : -90);
        this.rotation = i;
        this.rotation = i % 360;
        float f = this.imgWidth;
        this.imgWidth = this.imgHeight;
        this.imgHeight = (int) f;
        updateCropAreaPercentage();
        cyclicRotate(z2);
        imageUpdated();
    }

    public void rotateRect(RectF rectF, int i) {
        Matrix matrix = new Matrix();
        matrix.setRotate(i, this.imgArea.centerX(), this.imgArea.centerY());
        matrix.mapRect(rectF);
    }

    public void setAspectAndLock(int i, int i2) {
        RectF rectF;
        if (this.cropArea == null || (rectF = this.imgArea) == null) {
            return;
        }
        float f = i;
        float f2 = i2;
        float min = Math.min(rectF.width() / f, this.imgArea.height() / f2);
        this.cropArea.set(0.0f, 0.0f, f * min, min * f2);
        this.cropArea.offset(this.imgArea.centerX() - this.cropArea.centerX(), this.imgArea.centerY() - this.cropArea.centerY());
        updateCropAreaPercentage();
        OnCropPreviewAction onCropPreviewAction = this.listener;
        if (onCropPreviewAction != null) {
            onCropPreviewAction.cropSizeChanged(this.right - this.left, this.bottom - this.top, (this.rotation / 90) % 2 != 0);
        }
        toggleLockAspect(true);
    }

    public void setImage(Bitmap bitmap, RectF rectF, int i, boolean z, boolean z2, boolean z3) {
        this.imgWidth = bitmap.getWidth();
        this.imgHeight = bitmap.getHeight();
        this.image = bitmap;
        this.shouldUseDarkOnBitmap = useDark(bitmap);
        this.rotation = i;
        int i2 = i % 360;
        this.rotation = i2;
        if ((i2 / 90) % 2 != 0) {
            int i3 = this.imgWidth;
            this.imgWidth = this.imgHeight;
            this.imgHeight = i3;
        }
        cyclicRotateRect(rectF, i2);
        commonFuncs.flipPortion(rectF, z2, z3);
        this.left = rectF.left;
        this.top = rectF.top;
        this.bottom = rectF.bottom;
        this.right = rectF.right;
        this.circularCrop = z;
        this.flipH = z2;
        this.flipV = z3;
        imageUpdated();
    }

    public void setListener(OnCropPreviewAction onCropPreviewAction) {
        this.listener = onCropPreviewAction;
    }

    public void setZoomWidget(ZoomWidget zoomWidget) {
        this.zoomWidgetReference = zoomWidget;
    }

    public void toggleLockAspect(boolean z) {
        this.lockAspect = z;
        if (z) {
            this.activeHandles.toggleFree(false);
        } else {
            this.activeHandles.toggleAll(true);
        }
        updateAvailableHandlesPos();
        invalidate();
    }

    public void updateCropAreaPercentage() {
        try {
            float f = this.cropArea.left;
            RectF rectF = this.imgArea;
            this.left = putInBounds(((f - rectF.left) * 100.0f) / rectF.width(), 0.0f, 100.0f);
            float f2 = this.cropArea.top;
            RectF rectF2 = this.imgArea;
            this.top = putInBounds(((f2 - rectF2.top) * 100.0f) / rectF2.height(), 0.0f, 100.0f);
            float f3 = this.cropArea.right;
            RectF rectF3 = this.imgArea;
            this.right = putInBounds(((f3 - rectF3.left) * 100.0f) / rectF3.width(), 0.0f, 100.0f);
            float f4 = this.cropArea.bottom;
            RectF rectF4 = this.imgArea;
            this.bottom = putInBounds(((f4 - rectF4.top) * 100.0f) / rectF4.height(), 0.0f, 100.0f);
        } catch (Error | Exception unused) {
        }
    }

    public void updateCurrentlyDraggedPoint(PointF pointF) {
        this.currentlyDraggedPoint = null;
        Iterator<PointF> it = this.HandlesActive.iterator();
        while (it.hasNext()) {
            PointF next = it.next();
            if (next.x != 0.5f && next.y != 0.5f && dist(getAbsolutePoint(next, this.cropArea), pointF) <= this.touchRadius * 2.0f) {
                this.currentlyDraggedPoint = next;
                return;
            }
        }
        Iterator<PointF> it2 = this.HandlesActive.iterator();
        while (it2.hasNext()) {
            PointF next2 = it2.next();
            if (next2.x == 0.5f) {
                if (Math.abs(getAbsolutePoint(next2, this.cropArea).y - pointF.y) <= this.touchRadius * 2.0f) {
                    this.currentlyDraggedPoint = next2;
                    return;
                }
            } else if (next2.y == 0.5f && Math.abs(getAbsolutePoint(next2, this.cropArea).x - pointF.x) <= this.touchRadius * 2.0f) {
                this.currentlyDraggedPoint = next2;
                return;
            }
        }
    }
}
