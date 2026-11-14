package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BmpPathMasks;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.EraserMask;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class ImageEraseView extends View {
    public static final float defaultStrokeWidth = commonFuncs.dpToPx(7);
    private float TOUCH_TOLERANCE;
    BitmapShader backgroundCheckersShader;
    Rect bounds;
    EraserMode currEraserMode;
    CustomPath currSelectionPath;
    RectF currSelectionRect;
    SelectionShape currSelectionShape;
    int currStrokeBlur;
    float currStrokeWidth;
    TouchMode currTouchMode;
    float dX;
    float dY;
    boolean draggingSecondaryHandle;
    private final boolean enableStripes;
    boolean firstQuadTo;
    int gridSize;
    int handlesDrag;
    Bitmap image;
    RectF imgArea;
    PointF lastSelectionPoint;
    OnMaskChange listener;
    private float mX;
    private float mY;
    public BmpPathMasks masks;
    boolean needUpdateArea;
    float oldX;
    float oldY;
    Paint pntBackgroundCheckers;
    Paint pntBlack;
    Paint pntEraserInd;
    Paint pntGrid;
    Paint pntImg;
    Paint pntMask;
    Paint pntSelection;
    Paint pntSelection2;
    Paint pntSelection3;
    Paint pntSelectionHandle;
    Paint pntSelectionHandleInv;
    OnNeedUpdatePreview previewListener;
    Paint secondaryHandlePaint;
    private final float secondaryHandleRad;
    float selectionHandleRad;
    float selectionHandleRad2;
    public float sizeUnder;
    PointF touchCenterDist;

    /* loaded from: classes.dex */
    public enum EraserMode {
        erase,
        select
    }

    /* loaded from: classes.dex */
    public interface OnMaskChange {
        void freeSelCountChanged(int i);

        void imgAreaUpdated(Rect rect);

        void masksCountChanged(int i);

        void selTypeChanged(SelectionShape selectionShape);
    }

    /* loaded from: classes.dex */
    public interface OnNeedUpdatePreview {
        void disable();

        void update(Bitmap bitmap, RectF rectF, PointF pointF, float f, float f2);
    }

    /* loaded from: classes.dex */
    public enum SelectionShape {
        free,
        square,
        circle
    }

    /* loaded from: classes.dex */
    public enum TouchMode {
        drag,
        none
    }

    public ImageEraseView(Context context, Bitmap bitmap, final OnMaskChange onMaskChange) {
        super(context);
        BitmapShader bitmapShader;
        this.mX = -10000.0f;
        this.mY = -10000.0f;
        this.TOUCH_TOLERANCE = 1.0f;
        this.needUpdateArea = false;
        this.selectionHandleRad = commonFuncs.dpToPx(3) * 2.0f;
        this.selectionHandleRad2 = commonFuncs.dpToPx(5) * 2.0f;
        this.enableStripes = false;
        this.secondaryHandleRad = commonFuncs.dpToPx(10);
        Paint paint = new Paint(1);
        this.secondaryHandlePaint = paint;
        paint.setStrokeWidth(commonFuncs.dpToPx(1));
        this.currTouchMode = TouchMode.none;
        this.currEraserMode = EraserMode.erase;
        this.currSelectionShape = SelectionShape.free;
        this.currSelectionPath = new CustomPath();
        this.currSelectionRect = new RectF();
        this.currStrokeWidth = defaultStrokeWidth;
        this.currStrokeBlur = 0;
        this.masks = new BmpPathMasks();
        this.pntGrid = new Paint(1);
        this.gridSize = commonFuncs.dpToPxInt(10);
        this.lastSelectionPoint = new PointF();
        this.firstQuadTo = false;
        this.dX = 0.0f;
        this.dY = 0.0f;
        this.oldX = 0.0f;
        this.oldY = 0.0f;
        this.handlesDrag = -2;
        this.touchCenterDist = new PointF();
        this.pntBlack = new Paint(1);
        this.image = bitmap;
        this.listener = onMaskChange;
        Paint paint2 = new Paint(1);
        this.pntImg = paint2;
        paint2.setFilterBitmap(true);
        Paint paint3 = new Paint(1);
        this.pntMask = paint3;
        paint3.setStrokeWidth(5.0f);
        Paint paint4 = this.pntMask;
        Paint.Style style = Paint.Style.STROKE;
        paint4.setStyle(style);
        Paint paint5 = new Paint(1);
        this.pntEraserInd = paint5;
        Paint.Style style2 = Paint.Style.FILL;
        paint5.setStyle(style2);
        Paint paint6 = new Paint(1);
        this.pntSelection = paint6;
        paint6.setColor(Color.argb(200, 255, 255, 255));
        this.pntSelection.setStrokeWidth(commonFuncs.dpToPx(1));
        this.pntSelection.setPathEffect(new DashPathEffect(new float[]{commonFuncs.dpToPx(5), commonFuncs.dpToPx(2)}, 0.0f));
        this.pntSelection.setStyle(style);
        this.pntSelection2 = new Paint(1);
        this.pntSelection3 = new Paint(1);
        this.pntSelection2.setColor(Color.argb(80, 233, 30, 99));
        this.pntSelection3.setColor(Color.argb(80, 0, 0, 0));
        this.pntSelection3.setStyle(style);
        this.pntSelection3.setStrokeWidth(commonFuncs.dpToPx(1));
        Paint paint7 = new Paint(1);
        this.pntSelectionHandle = paint7;
        paint7.setColor(Color.argb(180, 255, 255, 255));
        this.pntSelectionHandle.setStyle(style2);
        Paint paint8 = new Paint(1);
        this.pntSelectionHandleInv = paint8;
        paint8.setStrokeWidth(commonFuncs.dpToPx(1));
        this.pntSelectionHandleInv.setStyle(style);
        this.pntSelectionHandleInv.setColor(Color.argb(80, 0, 0, 0));
        this.currSelectionPath.setOnPathChangeListener(new CustomPath.OnPathChange() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView.1
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.CustomPath.OnPathChange
            public void countChanged(int i) {
                onMaskChange.freeSelCountChanged(i);
            }
        });
        Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), R.drawable.checkered);
        if (decodeResource != null) {
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapShader = new BitmapShader(decodeResource, tileMode, tileMode);
        } else {
            bitmapShader = null;
        }
        this.backgroundCheckersShader = bitmapShader;
        if (decodeResource != null) {
            Paint paint9 = new Paint(1);
            this.pntBackgroundCheckers = paint9;
            paint9.setShader(this.backgroundCheckersShader);
        }
        setLayerType(1, null);
    }

    public static void drawMasks(Canvas canvas, Paint paint, BmpPathMasks bmpPathMasks, RectF rectF, BitmapShader bitmapShader) {
        RectF rectF2 = new RectF();
        canvas.save();
        for (EraserMask eraserMask : bmpPathMasks.getMasks()) {
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStyle(eraserMask.isStrokeFill() ? Paint.Style.FILL : Paint.Style.STROKE);
            paint.setStrokeWidth(eraserMask.getStrokeWidth());
            if (bitmapShader != null) {
                paint.setShader(bitmapShader);
            } else {
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            paint.setMaskFilter(eraserMask.blur == 0 ? null : new BlurMaskFilter(eraserMask.blur, BlurMaskFilter.Blur.NORMAL));
            if (!commonFuncs.equalsRectF(eraserMask.relativeArea, rectF2)) {
                rectF2.set(eraserMask.relativeArea);
                canvas.restore();
                canvas.save();
                canvas.scale(rectF.width() / rectF2.width(), rectF.height() / rectF2.height());
                canvas.translate(rectF2.left * (-1.0f), rectF2.top * (-1.0f));
            }
            canvas.drawPath(eraserMask.getPath().getPath(), paint);
        }
        canvas.restore();
    }

    private float getSecondaryHandleOffset() {
        float f = this.sizeUnder;
        if (f > 0.0f) {
            return (this.currStrokeWidth * 0.5f) + this.secondaryHandleRad + f;
        }
        return 0.0f;
    }

    private void updateArea() {
        if (this.needUpdateArea) {
            float min = Math.min(this.bounds.width() / this.image.getWidth(), this.bounds.height() / this.image.getHeight());
            RectF rectF = new RectF(0.0f, 0.0f, this.image.getWidth() * min, min * this.image.getHeight());
            this.imgArea = rectF;
            rectF.offset(this.bounds.exactCenterX() - this.imgArea.centerX(), this.bounds.centerY() - this.imgArea.centerY());
            OnMaskChange onMaskChange = this.listener;
            if (onMaskChange != null) {
                onMaskChange.imgAreaUpdated(new Rect((int) Math.ceil(this.imgArea.left), (int) Math.ceil(this.imgArea.top), (int) Math.floor(this.imgArea.right), (int) Math.floor(this.imgArea.bottom)));
            }
            this.needUpdateArea = false;
        }
    }

    private void updateSelectionPathFromRect() {
        SelectionShape selectionShape = this.currSelectionShape;
        if (selectionShape == SelectionShape.circle) {
            this.currSelectionPath.reset();
            this.currSelectionPath.addOval(this.currSelectionRect);
        } else if (selectionShape == SelectionShape.square) {
            this.currSelectionPath.reset();
            this.currSelectionPath.addRect(this.currSelectionRect);
        }
    }

    public void delLastFreeSelection() {
        if (this.currSelectionShape == SelectionShape.free) {
            this.currSelectionPath.removeLast();
            invalidate();
        }
    }

    public void drawAlphaGrid(Canvas canvas, RectF rectF) {
        if (rectF == null) {
            return;
        }
        this.pntGrid.setColor(Color.argb(150, 255, 255, 255));
        for (int i = 0; this.gridSize * i < rectF.height(); i++) {
            for (int i2 = 0; this.gridSize * i2 < rectF.width(); i2++) {
                if ((i2 % 2 == 0) ^ (i % 2 == 0)) {
                    int i3 = this.gridSize;
                    float f = rectF.left;
                    float f2 = rectF.top;
                    RectF rectF2 = new RectF((i3 * i2) + f, (i3 * i) + f2, ((i2 + 1) * i3) + f, ((i + 1) * i3) + f2);
                    rectF2.left = Math.max(rectF.left, rectF2.left);
                    rectF2.top = Math.max(rectF.top, rectF2.top);
                    rectF2.bottom = Math.min(rectF.bottom, rectF2.bottom);
                    rectF2.right = Math.min(rectF.right, rectF2.right);
                    canvas.drawRect(rectF2, this.pntGrid);
                }
            }
        }
    }

    public void drawStripes(Canvas canvas, RectF rectF) {
        this.pntBlack.setAlpha(150);
        canvas.save();
        canvas.rotate(45.0f, rectF.centerX(), rectF.centerY());
        float ceil = (int) Math.ceil(Math.sqrt((rectF.height() * rectF.height()) + (rectF.width() * rectF.width())));
        float f = ceil / 40;
        float width = (ceil - rectF.width()) * 0.5f;
        float height = (ceil - rectF.height()) * 0.5f;
        for (float f2 = rectF.left - width; f2 <= rectF.right + width; f2 += f) {
            canvas.drawLine(f2, rectF.top - height, f2, rectF.bottom + height, this.pntBlack);
        }
        canvas.restore();
    }

    public float getCurrentEraserRadius() {
        return this.currStrokeWidth;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.image == null || this.bounds == null) {
            return;
        }
        updateArea();
        Paint paint = this.pntBackgroundCheckers;
        if (paint != null) {
            canvas.drawRect(this.imgArea, paint);
        }
        canvas.drawBitmap(this.image, (Rect) null, this.imgArea, this.pntImg);
        canvas.save();
        canvas.clipRect(this.imgArea);
        RectF rectF = this.imgArea;
        canvas.translate(rectF.left, rectF.top);
        drawMasks(canvas, this.pntMask, this.masks, this.imgArea, this.backgroundCheckersShader);
        RectF rectF2 = this.imgArea;
        canvas.translate(rectF2.left * (-1.0f), rectF2.top * (-1.0f));
        canvas.restore();
        EraserMode eraserMode = this.currEraserMode;
        if (eraserMode == EraserMode.erase) {
            if (this.sizeUnder > 0.0f) {
                this.secondaryHandlePaint.setStyle(Paint.Style.STROKE);
                this.secondaryHandlePaint.setColor(1962934272);
                float f4 = this.mX;
                float f5 = this.mY;
                canvas.drawLine(f4, f5, f4, f5 + getSecondaryHandleOffset(), this.secondaryHandlePaint);
                canvas.drawCircle(this.mX, this.mY + getSecondaryHandleOffset(), this.secondaryHandleRad, this.secondaryHandlePaint);
                this.secondaryHandlePaint.setStyle(Paint.Style.FILL);
                this.secondaryHandlePaint.setColor(-1);
                float f6 = this.mX;
                float f7 = this.mY;
                canvas.drawLine(f6, f7, f6, f7 + getSecondaryHandleOffset(), this.secondaryHandlePaint);
                canvas.drawCircle(this.mX, this.mY + getSecondaryHandleOffset(), this.secondaryHandleRad, this.secondaryHandlePaint);
            }
            this.pntEraserInd.setColor(-1778384896);
            canvas.drawCircle(this.mX, this.mY, this.currStrokeWidth * 0.5f, this.pntEraserInd);
            this.pntEraserInd.setColor(-1761607681);
            canvas.drawCircle(this.mX, this.mY, this.currStrokeWidth * 0.5f, this.pntEraserInd);
            canvas.drawCircle(this.mX, this.mY, 1.0f, this.pntBlack);
            return;
        }
        if (eraserMode == EraserMode.select) {
            canvas.drawPath(this.currSelectionPath.getPath(), this.pntSelection2);
            SelectionShape selectionShape = this.currSelectionShape;
            SelectionShape selectionShape2 = SelectionShape.free;
            if (selectionShape == selectionShape2 || selectionShape == SelectionShape.square) {
                canvas.drawPath(this.currSelectionPath.getPath(), this.pntSelection3);
                canvas.drawPath(this.currSelectionPath.getPath(), this.pntSelection);
            } else if (selectionShape == SelectionShape.circle) {
                canvas.drawRect(this.currSelectionRect, this.pntSelection3);
                canvas.drawRect(this.currSelectionRect, this.pntSelection);
            }
            if (this.currSelectionPath.isEmpty()) {
                return;
            }
            SelectionShape selectionShape3 = this.currSelectionShape;
            if (selectionShape3 == selectionShape2 && this.currTouchMode == TouchMode.none) {
                PointF lastPoint = this.currSelectionPath.getLastPoint();
                this.lastSelectionPoint = lastPoint;
                canvas.drawCircle(lastPoint.x, lastPoint.y, this.selectionHandleRad / 1.4f, this.pntSelectionHandleInv);
                PointF pointF = this.lastSelectionPoint;
                f = pointF.x;
                f2 = pointF.y;
                f3 = this.selectionHandleRad / 1.4f;
            } else {
                if (selectionShape3 != SelectionShape.circle && selectionShape3 != SelectionShape.square) {
                    return;
                }
                canvas.drawCircle(this.currSelectionRect.centerX(), this.currSelectionRect.top, this.selectionHandleRad2, this.pntSelectionHandleInv);
                RectF rectF3 = this.currSelectionRect;
                canvas.drawCircle(rectF3.left, rectF3.centerY(), this.selectionHandleRad2, this.pntSelectionHandleInv);
                RectF rectF4 = this.currSelectionRect;
                canvas.drawCircle(rectF4.right, rectF4.bottom, this.selectionHandleRad2, this.pntSelectionHandleInv);
                canvas.drawCircle(this.currSelectionRect.centerX(), this.currSelectionRect.top, this.selectionHandleRad2, this.pntSelectionHandle);
                RectF rectF5 = this.currSelectionRect;
                canvas.drawCircle(rectF5.left, rectF5.centerY(), this.selectionHandleRad2, this.pntSelectionHandle);
                RectF rectF6 = this.currSelectionRect;
                f = rectF6.right;
                f2 = rectF6.bottom;
                f3 = this.selectionHandleRad2;
            }
            canvas.drawCircle(f, f2, f3, this.pntSelectionHandle);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.bounds = new Rect(0, 0, i, i2);
        int min = (int) (Math.min(r3.width(), this.bounds.height()) * 0.05f);
        this.bounds.inset(min, min);
        this.needUpdateArea = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x01a7, code lost:
    
        if (r2 == 0.0f) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0050, code lost:
    
        if (r2 != 3) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01b0  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public Rect rectFToRect(RectF rectF) {
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return rect;
    }

    public void removeFreeSelection(boolean z) {
        this.masks.add(new EraserMask(!z ? this.currSelectionPath : this.currSelectionPath.getInverted(this.imgArea, 3), this.imgArea));
        if (this.currSelectionShape == SelectionShape.free) {
            this.currSelectionPath.reset();
        }
        invalidate();
        this.listener.masksCountChanged(this.masks.getCount());
    }

    public void setCurrStrokeBlur(int i) {
        this.currStrokeBlur = i;
    }

    public void setCurrentEraserRadius(int i) {
        this.currStrokeWidth = i;
        invalidate();
    }

    public void setMasks(BmpPathMasks bmpPathMasks) {
        if (bmpPathMasks == null) {
            bmpPathMasks = this.masks;
        }
        this.masks = bmpPathMasks;
        invalidate();
    }

    public void setMode(EraserMode eraserMode) {
        if (eraserMode != this.currEraserMode) {
            this.currSelectionShape = SelectionShape.free;
            this.currSelectionPath.reset();
            this.currEraserMode = eraserMode;
            invalidate();
        }
    }

    public void setPreviewListener(OnNeedUpdatePreview onNeedUpdatePreview) {
        this.previewListener = onNeedUpdatePreview;
    }

    public void setSelectionType(SelectionShape selectionShape) {
        OnMaskChange onMaskChange = this.listener;
        if (onMaskChange != null) {
            onMaskChange.selTypeChanged(selectionShape);
        }
        if (this.currSelectionShape != selectionShape) {
            this.currSelectionShape = selectionShape;
            if (selectionShape == SelectionShape.square || selectionShape == SelectionShape.circle) {
                float min = Math.min(this.imgArea.width(), this.imgArea.height()) * 0.85f;
                RectF rectF = new RectF(0.0f, 0.0f, min, min);
                this.currSelectionRect = rectF;
                rectF.offset(this.imgArea.centerX() - this.currSelectionRect.centerX(), this.imgArea.centerY() - this.currSelectionRect.centerY());
            }
            this.currSelectionPath.reset();
            updateSelectionPathFromRect();
            invalidate();
        }
    }

    public void setSizeUnder(int i) {
        this.sizeUnder = commonFuncs.dpToPx(i);
        invalidate();
    }

    public void touchFreeModeMove(float f, float f2) {
        CustomPath customPath;
        float abs = Math.abs(f - this.mX);
        float abs2 = Math.abs(f2 - this.mY);
        float f3 = this.TOUCH_TOLERANCE;
        if (abs >= f3 || abs2 >= f3) {
            CustomPath customPath2 = this.currSelectionPath;
            if (this.currEraserMode == EraserMode.erase) {
                EraserMask last = this.masks.getLast();
                CustomPath path = last.getPath();
                last.moved();
                customPath = path;
            } else {
                customPath = customPath2;
            }
            float f4 = this.mX;
            float f5 = this.mY;
            customPath.quadTo(f4, f5, (f + f4) / 2.0f, (f2 + f5) / 2.0f, this.firstQuadTo);
            this.firstQuadTo = false;
            this.mX = f;
            this.mY = f2;
        }
        invalidate();
    }

    public void touchFreeModeStart(float f, float f2) {
        this.firstQuadTo = true;
        EraserMode eraserMode = this.currEraserMode;
        if (eraserMode == EraserMode.erase) {
            this.masks.add(new EraserMask(this.currStrokeWidth, false, this.currStrokeBlur, this.imgArea));
            this.masks.getLast().getPath().reset();
            this.masks.getLast().getPath().lineTo(f, f2, this.currSelectionPath.isEmpty());
            this.listener.masksCountChanged(this.masks.getCount());
        } else if (eraserMode == EraserMode.select) {
            CustomPath customPath = this.currSelectionPath;
            customPath.lineTo(f, f2, customPath.isEmpty());
            invalidate();
        }
        this.mX = f;
        this.mY = f2;
    }

    public int touchedRectSide(PointF pointF, RectF rectF) {
        float width = this.currSelectionRect.width();
        float f = this.selectionHandleRad2;
        if (width > f * 3.0f) {
            f *= 2.0f;
        }
        int i = (int) f;
        float height = this.currSelectionRect.height();
        float f2 = this.selectionHandleRad2;
        if (height > 3.0f * f2) {
            f2 *= 2.0f;
        }
        RectF rectF2 = new RectF();
        float f3 = i;
        float f4 = (int) f2;
        rectF2.set(rectF.left + f3, rectF.top + f4, rectF.right - f3, rectF.bottom - f4);
        if (rectF2.contains(pointF.x, pointF.y)) {
            return -1;
        }
        float f5 = rectF.left;
        rectF2.set(f5 - f3, rectF.top, f5 + f3, rectF.bottom);
        if (rectF2.contains(pointF.x, pointF.y)) {
            return 0;
        }
        float f6 = rectF.left;
        float f7 = rectF.top;
        rectF2.set(f6, f7 - f4, rectF.right, f7 + f4);
        if (rectF2.contains(pointF.x, pointF.y)) {
            return 1;
        }
        float f8 = rectF.right;
        float f9 = rectF.bottom;
        rectF2.set(f8 - f3, f9 - f4, f8 + f3, f9 + f4);
        return rectF2.contains(pointF.x, pointF.y) ? 2 : -2;
    }

    public void undoAll() {
        this.masks.remAll();
        invalidate();
        this.listener.masksCountChanged(this.masks.getCount());
    }

    public void undoOp() {
        this.masks.remLast();
        invalidate();
        this.listener.masksCountChanged(this.masks.getCount());
    }
}
