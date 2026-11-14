package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ShapesCreator extends View {
    ArrayList<PointF> HandlesActive;
    int alpha;
    RectF bounds;
    public boolean changedGeometry;
    PointF currentlyDraggedPoint;
    float dX;
    float dY;
    public ShapeComponent editShapeReference;
    private FillInfo fillInfo;
    private boolean isRendering;
    int minDim;
    Paint pnt;
    Paint pntHandles;
    float previousX;
    float previousY;
    BoundedShape shapeObject;
    Paint shapePaint;
    Paint strokePaint;
    int stroke_alpha;
    int stroke_blur;
    int touchRadius;

    public ShapesCreator(Context context) {
        super(context);
        this.HandlesActive = new ArrayList<>();
        this.currentlyDraggedPoint = null;
        this.touchRadius = commonFuncs.dpToPxInt(18);
        this.minDim = 3;
        this.isRendering = false;
        this.editShapeReference = null;
        this.stroke_alpha = 255;
        this.alpha = 255;
        this.previousX = 0.0f;
        this.previousY = 0.0f;
        this.dX = 0.0f;
        this.dY = 0.0f;
        setLayerType(1, null);
        Paint paint = new Paint(1);
        this.pnt = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.pnt.setPathEffect(new DashPathEffect(new float[]{commonFuncs.dpToPxInt(10), commonFuncs.dpToPxInt(10)}, 0.0f));
        this.pnt.setStrokeWidth(commonFuncs.dpToPxInt(2));
        this.pnt.setColor(-12303292);
        this.pnt.setAlpha(200);
        Paint paint2 = new Paint(1);
        this.pntHandles = paint2;
        paint2.setColor(-12303292);
        this.shapePaint = new Paint(1);
        this.strokePaint = new Paint(1);
        this.fillInfo = new FillInfo();
        restoreStyles();
    }

    private void updateAvailableHandlesPos() {
        if (this.shapeObject == null) {
            return;
        }
        this.HandlesActive.clear();
        if (this.shapeObject.activeHandles.active_H0) {
            this.HandlesActive.add(new PointF(0.5f, 0.0f));
        }
        if (this.shapeObject.activeHandles.active_1H) {
            this.HandlesActive.add(new PointF(1.0f, 0.5f));
        }
        if (this.shapeObject.activeHandles.active_H1) {
            this.HandlesActive.add(new PointF(0.5f, 1.0f));
        }
        if (this.shapeObject.activeHandles.active_0H) {
            this.HandlesActive.add(new PointF(0.0f, 0.5f));
        }
        if (this.shapeObject.activeHandles.active_00) {
            this.HandlesActive.add(new PointF(0.0f, 0.0f));
        }
        if (this.shapeObject.activeHandles.active_10) {
            this.HandlesActive.add(new PointF(1.0f, 0.0f));
        }
        if (this.shapeObject.activeHandles.active_11) {
            this.HandlesActive.add(new PointF(1.0f, 1.0f));
        }
        if (this.shapeObject.activeHandles.active_01) {
            this.HandlesActive.add(new PointF(0.0f, 1.0f));
        }
    }

    public void clearMe() {
        this.shapeObject = null;
        this.bounds = null;
        ShapeComponent shapeComponent = this.editShapeReference;
        if (shapeComponent != null) {
            shapeComponent.unhideTemp();
        }
        this.editShapeReference = null;
    }

    public float dist(PointF pointF, PointF pointF2) {
        float f = pointF.x;
        float f2 = pointF2.x;
        float f3 = (f - f2) * (f - f2);
        float f4 = pointF.y;
        float f5 = pointF2.y;
        return (float) Math.sqrt(((f4 - f5) * (f4 - f5)) + f3);
    }

    public void drawAvailableHandles(Canvas canvas, Paint paint) {
        Iterator<PointF> it = this.HandlesActive.iterator();
        while (it.hasNext()) {
            PointF next = it.next();
            PointF absolutePoint = getAbsolutePoint(next);
            canvas.drawCircle(absolutePoint.x, absolutePoint.y, this.touchRadius / ((next.x > 0.5f ? 1 : (next.x == 0.5f ? 0 : -1)) != 0 && (next.y > 0.5f ? 1 : (next.y == 0.5f ? 0 : -1)) != 0 ? 2 : 3), paint);
        }
    }

    public void drawShape(Canvas canvas) {
        RectF rectF;
        Paint paint;
        BoundedShape boundedShape = this.shapeObject;
        if (boundedShape == null || (rectF = this.bounds) == null) {
            return;
        }
        Path path = boundedShape.getPath(rectF);
        int i = -16777216;
        if (this.fillInfo.getStroke_width() != 0) {
            this.fillInfo.applyCapOnPaint(this.strokePaint);
            this.strokePaint.setStyle(Paint.Style.STROKE);
            this.strokePaint.setStrokeWidth(this.fillInfo.getStroke_width());
            if (this.fillInfo.getStroke_type() == unifiedColor_selector.TYPE_COLOR) {
                this.strokePaint.setShader(null);
                this.strokePaint.setColor(this.fillInfo.getStroke_color());
            } else if (this.fillInfo.getStroke_type() == unifiedColor_selector.TYPE_GRADIENT) {
                this.strokePaint.setShader(this.fillInfo.getStroke_gradient().getShader(this.bounds));
                this.strokePaint.setColor(-16777216);
            }
            this.strokePaint.setAlpha(this.stroke_alpha);
            this.strokePaint.setMaskFilter(this.stroke_blur != 0 ? new BlurMaskFilter(this.stroke_blur, BlurMaskFilter.Blur.NORMAL) : null);
            canvas.drawPath(path, this.strokePaint);
        }
        if (this.fillInfo.getFill_type() != unifiedColor_selector.TYPE_COLOR) {
            if (this.fillInfo.getFill_type() == unifiedColor_selector.TYPE_GRADIENT) {
                this.shapePaint.setShader(this.fillInfo.getFill_gradient().getShader(this.bounds));
                paint = this.shapePaint;
            }
            this.shapePaint.setAlpha(this.alpha);
            canvas.drawPath(path, this.shapePaint);
        }
        this.shapePaint.setShader(null);
        paint = this.shapePaint;
        i = this.fillInfo.getFill_color();
        paint.setColor(i);
        this.shapePaint.setAlpha(this.alpha);
        canvas.drawPath(path, this.shapePaint);
    }

    public void fromBundle(Bundle bundle) {
        BoundedShape.ShapeLabel shapeLabel;
        if (bundle == null) {
            return;
        }
        try {
            shapeLabel = BoundedShape.ShapeLabel.valueOf(bundle.getString(appStateConstants.SHAPE_CREATOR_SHAPE_LABEL));
        } catch (Exception unused) {
            shapeLabel = BoundedShape.ShapeLabel.rect;
        }
        setShape(shapeLabel, false, false);
        this.bounds = commonFuncs.absolutePortionF(commonFuncs.arrToRectF(bundle.getStringArrayList(appStateConstants.SHAPE_CREATOR_BOUNDING_BOX)), MainActivity.helperClass.getContainerWidth(), MainActivity.helperClass.getContainerHeight());
        this.fillInfo.fromBundle(bundle.getBundle(appStateConstants.SHAPE_CREATOR_STYLE));
        this.alpha = bundle.getInt(appStateConstants.SHAPE_CREATOR_ALPHA, 255);
        this.stroke_alpha = bundle.getInt(appStateConstants.SHAPE_CREATOR_STROKE_ALPHA, 255);
        this.stroke_blur = bundle.getInt(appStateConstants.SHAPE_CREATOR_STROKE_BLUR);
        this.shapeObject.rect_roundedCorners = bundle.getInt(appStateConstants.SHAPE_CREATOR_RECT_RADIUS);
        invalidate();
    }

    public PointF getAbsolutePoint(PointF pointF) {
        float width = this.bounds.width() * pointF.x;
        RectF rectF = this.bounds;
        return new PointF(width + rectF.left, (rectF.height() * pointF.y) + this.bounds.top);
    }

    public Rect getBoundingBox() {
        if (this.bounds == null) {
            return null;
        }
        Rect rect = new Rect((int) Math.floor(this.bounds.left), (int) Math.floor(this.bounds.top), (int) Math.ceil(this.bounds.right), (int) Math.ceil(this.bounds.bottom));
        rect.inset(((this.fillInfo.getStroke_width() / 2) + this.stroke_blur + 1) * (-1), ((this.fillInfo.getStroke_width() / 2) + this.stroke_blur + 1) * (-1));
        return rect;
    }

    public void init() {
        Bundle bundle;
        setVisibility(0);
        ShapeComponent shapeComponent = this.editShapeReference;
        if (shapeComponent == null || (bundle = shapeComponent.shapeDataBundle) == null) {
            setShape(BoundedShape.ShapeLabel.rect, true, true);
        } else {
            fromBundle(bundle);
        }
        this.changedGeometry = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.bounds == null || this.shapeObject == null) {
            return;
        }
        drawShape(canvas);
        if (this.isRendering) {
            return;
        }
        canvas.drawRect(this.bounds, this.pnt);
        drawAvailableHandles(canvas, this.pntHandles);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.bounds != null && this.shapeObject != null) {
            PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
            int action = motionEvent.getAction();
            if (action == 0) {
                this.dY = 0.0f;
                this.dX = 0.0f;
                this.previousX = motionEvent.getX();
                this.previousY = motionEvent.getY();
                updateCurrentlyDraggedPoint(pointF);
            } else if (action == 1) {
                MainActivity.helperClass.motionActionUp();
                this.currentlyDraggedPoint = null;
            } else if (action == 2) {
                this.dX = motionEvent.getX() - this.previousX;
                this.dY = motionEvent.getY() - this.previousY;
                this.previousX = motionEvent.getX();
                this.previousY = motionEvent.getY();
                PointF pointF2 = this.currentlyDraggedPoint;
                this.changedGeometry = true;
                if (pointF2 != null) {
                    boolean z = pointF2.x == 0.0f;
                    boolean z2 = pointF2.y == 0.0f;
                    float snapPosX = MainActivity.helperClass.snapPosX(motionEvent.getX(), false);
                    float snapPosY = MainActivity.helperClass.snapPosY(motionEvent.getY(), false);
                    float f = this.minDim;
                    RectF rectF = this.bounds;
                    float max = Math.max(f, z ? rectF.right - snapPosX : snapPosX - rectF.left);
                    float f2 = this.minDim;
                    RectF rectF2 = this.bounds;
                    float max2 = Math.max(f2, z2 ? rectF2.bottom - snapPosY : snapPosY - rectF2.top);
                    PointF pointF3 = this.currentlyDraggedPoint;
                    if (pointF3.x == 0.5f) {
                        RectF rectF3 = this.bounds;
                        float f3 = z2 ? rectF3.bottom - max2 : rectF3.top;
                        rectF3.top = f3;
                        rectF3.bottom = z2 ? rectF3.bottom : max2 + f3;
                    } else if (pointF3.y == 0.5f) {
                        RectF rectF4 = this.bounds;
                        float f4 = z ? rectF4.right : rectF4.left + max;
                        rectF4.right = f4;
                        rectF4.left = z ? f4 - max : rectF4.left;
                    } else {
                        float width = this.bounds.width();
                        float height = this.bounds.height();
                        float min = Math.min(max / width, max2 / height);
                        float f5 = width * min;
                        float f6 = min * height;
                        RectF rectF5 = this.bounds;
                        float f7 = z ? rectF5.right : rectF5.left + f5;
                        rectF5.right = f7;
                        float f8 = z2 ? rectF5.bottom : rectF5.top + f6;
                        rectF5.bottom = f8;
                        rectF5.left = z ? f7 - f5 : rectF5.left;
                        rectF5.top = z2 ? f8 - f6 : rectF5.top;
                    }
                } else {
                    this.bounds.offset(this.dX, this.dY);
                    RectF rectF6 = this.bounds;
                    float snapPosX2 = MainActivity.helperClass.snapPosX(rectF6.left, rectF6.width() * 0.5f, true);
                    displayInfo displayinfo = MainActivity.helperClass;
                    RectF rectF7 = this.bounds;
                    rectF6.offsetTo(snapPosX2, displayinfo.snapPosY(rectF7.top, rectF7.height() * 0.5f, true));
                }
                invalidate();
            }
        }
        return true;
    }

    public void prepareEdit(ShapeComponent shapeComponent) {
        this.editShapeReference = shapeComponent;
    }

    public void restoreStyles() {
        this.alpha = 255;
        this.fillInfo.setStroke_cap(Paint.Cap.ROUND);
        this.fillInfo.setFill_color(-1);
        this.fillInfo.setFill_type(unifiedColor_selector.TYPE_COLOR);
        this.fillInfo.setFill_gradient(new GradientMaker.GradientFill());
        this.fillInfo.setStroke_width(0);
        this.stroke_alpha = 255;
        this.fillInfo.setStroke_color(-16777216);
        this.fillInfo.setStroke_type(unifiedColor_selector.TYPE_COLOR);
        this.fillInfo.setStroke_gradient(new GradientMaker.GradientFill());
        this.stroke_blur = 0;
        BoundedShape boundedShape = this.shapeObject;
        if (boundedShape != null) {
            boundedShape.rect_roundedCorners = 0;
        }
    }

    public void setBorderRadius(int i) {
        BoundedShape boundedShape = this.shapeObject;
        if (boundedShape != null) {
            boundedShape.rect_roundedCorners = i;
            postInvalidate();
        }
    }

    public void setFillColor(int i) {
        this.fillInfo.setFill_type(unifiedColor_selector.TYPE_COLOR);
        this.fillInfo.setFill_color(i);
        invalidate();
    }

    public void setFillGradient(GradientMaker.GradientFill gradientFill) {
        this.fillInfo.setFill_type(unifiedColor_selector.TYPE_GRADIENT);
        this.fillInfo.setFill_gradient(gradientFill);
        invalidate();
    }

    public void setIsRendering(boolean z) {
        this.isRendering = z;
    }

    public void setOpacity(int i) {
        this.alpha = (int) Math.ceil((i / 100.0f) * 255.0f);
        invalidate();
    }

    public void setShape(BoundedShape.ShapeLabel shapeLabel, boolean z, boolean z2) {
        this.shapeObject = new BoundedShape(shapeLabel, false);
        if (z) {
            restoreStyles();
        }
        updateAvailableHandlesPos();
        if (z2) {
            post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapesCreator.1
                @Override // java.lang.Runnable
                public void run() {
                    ShapesCreator shapesCreator = ShapesCreator.this;
                    BoundedShape boundedShape = shapesCreator.shapeObject;
                    if (boundedShape != null) {
                        shapesCreator.bounds = boundedShape.getInitialArea(shapesCreator.getWidth(), ShapesCreator.this.getHeight(), true);
                        ShapesCreator.this.invalidate();
                    }
                }
            });
        }
    }

    public void setStrokeCap(Paint.Cap cap) {
        this.fillInfo.setStroke_cap(cap);
        invalidate();
    }

    public void setStroke_alpha(int i) {
        this.stroke_alpha = (int) Math.ceil((i / 100.0f) * 255.0f);
        invalidate();
    }

    public void setStroke_blur(int i) {
        this.stroke_blur = i;
        invalidate();
    }

    public void setStroke_colorFill(int i) {
        this.fillInfo.setStroke_type(unifiedColor_selector.TYPE_COLOR);
        this.fillInfo.setStroke_color(i);
        invalidate();
    }

    public void setStroke_gradientFill(GradientMaker.GradientFill gradientFill) {
        this.fillInfo.setStroke_type(unifiedColor_selector.TYPE_GRADIENT);
        this.fillInfo.setStroke_gradient(gradientFill);
        invalidate();
    }

    public void setStroke_width(int i) {
        this.fillInfo.setStroke_width(i);
        invalidate();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.shapeObject == null) {
            return bundle;
        }
        bundle.putBundle(appStateConstants.SHAPE_CREATOR_STYLE, this.fillInfo.toBundle());
        bundle.putInt(appStateConstants.SHAPE_CREATOR_ALPHA, this.alpha);
        bundle.putInt(appStateConstants.SHAPE_CREATOR_STROKE_ALPHA, this.stroke_alpha);
        bundle.putInt(appStateConstants.SHAPE_CREATOR_STROKE_BLUR, this.stroke_blur);
        int containerWidth = MainActivity.helperClass.getContainerWidth();
        int containerHeight = MainActivity.helperClass.getContainerHeight();
        RectF rectF = this.bounds;
        float f = containerWidth;
        float f2 = containerHeight;
        bundle.putStringArrayList(appStateConstants.SHAPE_CREATOR_BOUNDING_BOX, commonFuncs.rectFToArr(new RectF((rectF.left * 100.0f) / f, (rectF.top * 100.0f) / f2, (rectF.right * 100.0f) / f, (rectF.bottom * 100.0f) / f2)));
        bundle.putString(appStateConstants.SHAPE_CREATOR_SHAPE_LABEL, this.shapeObject.currShapeLabel.name());
        bundle.putInt(appStateConstants.SHAPE_CREATOR_RECT_RADIUS, this.shapeObject.rect_roundedCorners);
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateControlsFromBundle(com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ShapeChoiceId r11, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label r12, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui r13, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label r14, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui r15, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector r16, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label r17, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui r18, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label r19, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui r20, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector r21, com.tawfiq.imaginstudio.imagetools.pixellab.controls.SegmentedSelector r22, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label r23, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui r24) {
        /*
            r10 = this;
            r0 = r10
            r1 = r12
            r2 = r13
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent r3 = r0.editShapeReference
            if (r3 == 0) goto Ld3
            android.os.Bundle r3 = r3.shapeDataBundle
            if (r3 == 0) goto Ld3
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape r3 = r0.shapeObject
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape$ShapeLabel r3 = r3.currShapeLabel
            r4 = r11
            r11.setCurrShape(r3)
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape r3 = r0.shapeObject
            int r3 = r3.rect_roundedCorners
            r13.setBarValue(r3)
            int r3 = r0.alpha
            int r3 = r3 * 100
            float r3 = (float) r3
            r4 = 1132396544(0x437f0000, float:255.0)
            float r3 = r3 / r4
            int r3 = (int) r3
            r5 = r15
            r15.setBarValue(r3)
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r3 = r0.fillInfo
            int r3 = r3.getFill_type()
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r6 = r0.fillInfo
            int r6 = r6.getFill_color()
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r7 = r0.fillInfo
            com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker$GradientFill r7 = r7.getFill_gradient()
            r8 = r16
            r8.setParamsQuietly(r3, r6, r7)
            int r3 = r0.stroke_alpha
            int r3 = r3 * 100
            float r3 = (float) r3
            float r3 = r3 / r4
            int r3 = (int) r3
            r4 = r20
            r4.setBarValue(r3)
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r3 = r0.fillInfo
            int r3 = r3.getStroke_width()
            r6 = r18
            r6.setBarValue(r3)
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r3 = r0.fillInfo
            int r3 = r3.getStroke_type()
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r7 = r0.fillInfo
            int r7 = r7.getStroke_color()
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r8 = r0.fillInfo
            com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker$GradientFill r8 = r8.getStroke_gradient()
            r9 = r21
            r9.setParamsQuietly(r3, r7, r8)
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r3 = r0.fillInfo
            android.graphics.Paint$Cap r3 = r3.getStroke_cap()
            android.graphics.Paint$Cap r7 = android.graphics.Paint.Cap.SQUARE
            r8 = 0
            if (r3 != r7) goto L79
            r3 = 2
            goto L84
        L79:
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.FillInfo r3 = r0.fillInfo
            android.graphics.Paint$Cap r3 = r3.getStroke_cap()
            android.graphics.Paint$Cap r7 = android.graphics.Paint.Cap.BUTT
            if (r3 != r7) goto L87
            r3 = 1
        L84:
            r7 = r22
            goto L8a
        L87:
            r7 = r22
            r3 = 0
        L8a:
            r7.setSelected(r3)
            int r3 = r0.stroke_blur
            r7 = r24
            r7.setBarValue(r3)
            int r3 = r13.getBarValue()
            r12.setValue(r3)
            int r3 = r15.getBarValue()
            r5 = r14
            r14.setValue(r3)
            int r3 = r18.getBarValue()
            r5 = r17
            r5.setValue(r3)
            int r3 = r20.getBarValue()
            r4 = r19
            r4.setValue(r3)
            int r3 = r24.getBarValue()
            r4 = r23
            r4.setValue(r3)
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape r3 = r0.shapeObject
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape$ShapeLabel r3 = r3.currShapeLabel
            com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape$ShapeLabel r4 = com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape.ShapeLabel.rect
            if (r3 != r4) goto Lc7
            goto Lc9
        Lc7:
            r8 = 8
        Lc9:
            r12.setVisibility(r8)
            int r1 = r12.getVisibility()
            r13.setVisibility(r1)
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapesCreator.updateControlsFromBundle(com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ShapeChoiceId, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector, com.tawfiq.imaginstudio.imagetools.pixellab.controls.SegmentedSelector, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label, com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui):void");
    }

    public void updateCurrentlyDraggedPoint(PointF pointF) {
        this.currentlyDraggedPoint = null;
        Iterator<PointF> it = this.HandlesActive.iterator();
        while (it.hasNext()) {
            PointF next = it.next();
            if (dist(getAbsolutePoint(next), pointF) <= this.touchRadius) {
                this.currentlyDraggedPoint = next;
                return;
            }
        }
    }
}
