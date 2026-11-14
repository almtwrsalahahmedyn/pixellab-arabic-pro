package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrowPanel extends View {
    public static final int defaultArrowMultiplier = 2;
    public static final int defaultMiddleSize = (int) commonFuncs.dpToPx(7);
    RectF PathBounds;
    float beginArrowMultiplier;
    public boolean changedGeometry;
    PointF dragged;
    float dx;
    float dy;
    public ShapeComponent editShapeReference;
    PointF end;
    ArrowHead endArrowHead;
    float endArrowMultiplier;
    Path endPath;
    PointF farthest;
    public int fillAlpha;
    public FillInfo fillOptions;
    float handleRad;
    OnArrowListener listener;
    PointF middle;
    Path middlePath;
    float middleSize;
    boolean needUpdateEnd;
    boolean needUpdateMiddle;
    boolean needUpdateStart;
    PointF origin;
    Paint pntArrow;
    Paint pntArrowStroke;
    Paint pntHandles;
    Paint pntHandlesStroke;
    float prevX;
    float prevY;
    boolean renderMode;
    PointF start;
    ArrowHead startArrowHead;
    Path startPath;
    public int strokeAlpha;
    Path tmpPath;

    /* loaded from: classes.dex */
    public static abstract class ArrowHead {
        static Class[] subclasses = {ArrowHead1.class, ArrowHead2.class, ArrowHead3.class, ArrowHead4.class, ArrowHead5.class, ArrowHead6.class, ArrowHead7.class};

        public abstract void doShapeSpecific(Path path, PointF pointF, PointF pointF2);

        public void draw(Canvas canvas, Paint paint, PointF pointF, float f) {
            RectF rectF = new RectF(0.0f, 0.0f, 0.3f * f, 0.7f * f);
            rectF.offset(pointF.x - rectF.centerX(), ((0.2f * f) + pointF.y) - rectF.centerY());
            canvas.drawRect(rectF, paint);
            Path path = new Path();
            getPath(path, pointF, new PointF(pointF.x, pointF.y - ((isAdjustableSize() ? 0.4f : 0.15f) * f)));
            path.offset(0.0f, f * (-0.1f));
            canvas.drawPath(path, paint);
        }

        public void getPath(Path path, PointF pointF, PointF pointF2) {
            path.reset();
            if (pointF.x == pointF2.x && pointF.y == pointF2.y) {
                return;
            }
            doShapeSpecific(path, pointF, pointF2);
        }

        public boolean isAdjustableSize() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class ArrowHead1 extends ArrowHead {
        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public void doShapeSpecific(Path path, PointF pointF, PointF pointF2) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public final boolean isAdjustableSize() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class ArrowHead2 extends ArrowHead {
        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public void doShapeSpecific(Path path, PointF pointF, PointF pointF2) {
            PointF rotateAroundDegrees = commonFuncs.rotateAroundDegrees(pointF2, pointF, 90.0f);
            PointF rotateAroundDegrees2 = commonFuncs.rotateAroundDegrees(pointF2, pointF, -90.0f);
            path.moveTo(rotateAroundDegrees.x, rotateAroundDegrees.y);
            path.lineTo(pointF2.x, pointF2.y);
            path.lineTo(rotateAroundDegrees2.x, rotateAroundDegrees2.y);
            path.close();
        }
    }

    /* loaded from: classes.dex */
    public static class ArrowHead3 extends ArrowHead {
        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public void doShapeSpecific(Path path, PointF pointF, PointF pointF2) {
            path.addCircle(pointF.x, pointF.y, commonFuncs.dist(pointF, pointF2), Path.Direction.CCW);
        }
    }

    /* loaded from: classes.dex */
    public static class ArrowHead4 extends ArrowHead {
        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public void doShapeSpecific(Path path, PointF pointF, PointF pointF2) {
            PointF rotateAroundDegrees = commonFuncs.rotateAroundDegrees(pointF2, pointF, 45.0f);
            PointF rotateAroundDegrees2 = commonFuncs.rotateAroundDegrees(rotateAroundDegrees, pointF, 90.0f);
            PointF rotateAroundDegrees3 = commonFuncs.rotateAroundDegrees(rotateAroundDegrees2, pointF, 90.0f);
            PointF rotateAroundDegrees4 = commonFuncs.rotateAroundDegrees(rotateAroundDegrees3, pointF, 90.0f);
            path.moveTo(rotateAroundDegrees.x, rotateAroundDegrees.y);
            path.lineTo(rotateAroundDegrees2.x, rotateAroundDegrees2.y);
            path.lineTo(rotateAroundDegrees3.x, rotateAroundDegrees3.y);
            path.lineTo(rotateAroundDegrees4.x, rotateAroundDegrees4.y);
            path.close();
        }
    }

    /* loaded from: classes.dex */
    public static class ArrowHead5 extends ArrowHead {
        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public void doShapeSpecific(Path path, PointF pointF, PointF pointF2) {
            PointF pointF3 = new PointF(pointF2.x, pointF2.y);
            PointF rotateAroundDegrees = commonFuncs.rotateAroundDegrees(pointF3, pointF, 90.0f);
            PointF rotateAroundDegrees2 = commonFuncs.rotateAroundDegrees(rotateAroundDegrees, pointF, 90.0f);
            PointF rotateAroundDegrees3 = commonFuncs.rotateAroundDegrees(rotateAroundDegrees2, pointF, 90.0f);
            path.moveTo(pointF3.x, pointF3.y);
            path.lineTo(rotateAroundDegrees.x, rotateAroundDegrees.y);
            path.lineTo(rotateAroundDegrees2.x, rotateAroundDegrees2.y);
            path.lineTo(rotateAroundDegrees3.x, rotateAroundDegrees3.y);
            path.close();
        }
    }

    /* loaded from: classes.dex */
    public static class ArrowHead6 extends ArrowHead {
        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public void doShapeSpecific(Path path, PointF pointF, PointF pointF2) {
            PointF pointAlongSegment = commonFuncs.pointAlongSegment(pointF, pointF2, -1.0f);
            PointF pointAlongSegment2 = commonFuncs.pointAlongSegment(pointF, pointAlongSegment, 1.8f);
            PointF pointAlongSegment3 = commonFuncs.pointAlongSegment(pointF, pointAlongSegment, 2.2f);
            PointF pointF3 = new PointF(pointAlongSegment2.x, pointAlongSegment2.y);
            PointF pointF4 = new PointF(pointAlongSegment3.x, pointAlongSegment3.y);
            PointF rotateAroundDegrees = commonFuncs.rotateAroundDegrees(pointAlongSegment2, pointAlongSegment, 90.0f);
            PointF rotateAroundDegrees2 = commonFuncs.rotateAroundDegrees(pointAlongSegment3, pointAlongSegment, 90.0f);
            PointF rotateAroundDegrees3 = commonFuncs.rotateAroundDegrees(pointF3, pointAlongSegment, -90.0f);
            PointF rotateAroundDegrees4 = commonFuncs.rotateAroundDegrees(pointF4, pointAlongSegment, -90.0f);
            path.moveTo(pointF2.x, pointF2.y);
            path.lineTo(rotateAroundDegrees2.x, rotateAroundDegrees2.y);
            path.lineTo(rotateAroundDegrees.x, rotateAroundDegrees.y);
            path.lineTo(pointF.x, pointF.y);
            path.lineTo(rotateAroundDegrees3.x, rotateAroundDegrees3.y);
            path.lineTo(rotateAroundDegrees4.x, rotateAroundDegrees4.y);
            path.close();
        }
    }

    /* loaded from: classes.dex */
    public static class ArrowHead7 extends ArrowHead {
        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public void doShapeSpecific(Path path, PointF pointF, PointF pointF2) {
            float dist = commonFuncs.dist(pointF, pointF2);
            PointF rotateAroundDegrees = commonFuncs.rotateAroundDegrees(pointF2, pointF, 90.0f);
            PointF pointF3 = new PointF(rotateAroundDegrees.x, rotateAroundDegrees.y);
            float f = dist * 2.0f;
            commonFuncs.translatePointAlongVector(pointF3, pointF, pointF2, f);
            PointF rotateAroundDegrees2 = commonFuncs.rotateAroundDegrees(pointF2, pointF, -90.0f);
            PointF pointF4 = new PointF(rotateAroundDegrees2.x, rotateAroundDegrees2.y);
            commonFuncs.translatePointAlongVector(pointF4, pointF, pointF2, f);
            path.moveTo(rotateAroundDegrees.x, rotateAroundDegrees.y);
            path.lineTo(pointF3.x, pointF3.y);
            path.lineTo(pointF2.x, pointF2.y);
            path.lineTo(pointF4.x, pointF4.y);
            path.lineTo(rotateAroundDegrees2.x, rotateAroundDegrees2.y);
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.ArrowHead
        public final boolean isAdjustableSize() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface OnArrowListener {
        void endChanged(ArrowHead arrowHead);

        void startChanged(ArrowHead arrowHead);
    }

    public ArrowPanel(Context context) {
        super(context);
        this.start = new PointF();
        this.end = new PointF();
        this.middle = new PointF();
        this.middleSize = defaultMiddleSize;
        this.beginArrowMultiplier = 2.0f;
        this.endArrowMultiplier = 2.0f;
        this.handleRad = commonFuncs.dpToPx(6);
        this.pntHandles = new Paint(1);
        this.pntHandlesStroke = new Paint(1);
        this.pntArrow = new Paint(1);
        this.pntArrowStroke = new Paint(1);
        this.startPath = new Path();
        this.middlePath = new Path();
        this.endPath = new Path();
        this.endArrowHead = new ArrowHead2();
        this.startArrowHead = new ArrowHead1();
        this.editShapeReference = null;
        this.renderMode = false;
        this.origin = new PointF();
        this.farthest = new PointF(100.0f, 100.0f);
        this.needUpdateMiddle = true;
        this.needUpdateStart = true;
        this.needUpdateEnd = true;
        this.dragged = null;
        this.dx = 0.0f;
        this.dy = 0.0f;
        this.prevX = 0.0f;
        this.prevY = 0.0f;
        this.PathBounds = new RectF();
        this.fillAlpha = 100;
        this.strokeAlpha = 50;
        setLayerType(1, null);
        this.pntHandles.setColor(-1);
        this.pntHandlesStroke.setColor(Color.argb(160, 0, 0, 0));
        this.pntHandlesStroke.setStyle(Paint.Style.FILL_AND_STROKE);
        this.pntHandlesStroke.setStrokeWidth(commonFuncs.dpToPx(2));
        this.pntArrow.setStyle(Paint.Style.FILL);
        this.pntArrowStroke.setStyle(Paint.Style.STROKE);
    }

    private void drawPaths(Canvas canvas, Paint paint) {
        canvas.drawPath(this.startPath, paint);
        canvas.drawPath(this.middlePath, paint);
        canvas.drawPath(this.endPath, paint);
    }

    private ArrowHead getArrowHeadById(int i) {
        try {
            return (ArrowHead) ArrowHead.subclasses[i].newInstance();
        } catch (Exception unused) {
            return new ArrowHead1();
        }
    }

    public static ArrowHead[] getArrowInstances() {
        int length = ArrowHead.subclasses.length;
        ArrowHead[] arrowHeadArr = new ArrowHead[length];
        for (int i = 0; i < length; i++) {
            try {
                arrowHeadArr[i] = (ArrowHead) ArrowHead.subclasses[i].newInstance();
            } catch (Exception unused) {
                arrowHeadArr[i] = new ArrowHead1();
            }
        }
        return arrowHeadArr;
    }

    private int getIdFromArrowHead(ArrowHead arrowHead) {
        if (arrowHead != null) {
            for (int i = 0; i < ArrowHead.subclasses.length; i++) {
                if (arrowHead.getClass().equals(ArrowHead.subclasses[i])) {
                    return i;
                }
            }
        }
        return 0;
    }

    private ArrayList<String> getPositions(int i, int i2) {
        float f = i;
        float f2 = i2;
        return new ArrayList<>(Arrays.asList(String.valueOf(this.start.x / f), String.valueOf(this.start.y / f2), String.valueOf(this.end.x / f), String.valueOf(this.end.y / f2)));
    }

    private void initDefaultStyle() {
        this.middleSize = defaultMiddleSize;
        this.beginArrowMultiplier = 2.0f;
        this.endArrowMultiplier = 2.0f;
        this.endArrowHead = new ArrowHead2();
        this.startArrowHead = new ArrowHead1();
        this.fillOptions = new FillInfo(unifiedColor_selector.TYPE_COLOR, -1, new GradientMaker.GradientFill(), unifiedColor_selector.TYPE_COLOR, Color.parseColor("#212121"), new GradientMaker.GradientFill(), commonFuncs.dpToPxInt(3), Paint.Cap.ROUND);
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.1
            @Override // java.lang.Runnable
            public void run() {
                ArrowPanel.this.farthest.set(r0.getWidth(), ArrowPanel.this.getHeight());
                ArrowPanel arrowPanel = ArrowPanel.this;
                arrowPanel.start.set(commonFuncs.pointAlongSegment(arrowPanel.farthest, arrowPanel.origin, 0.4f));
                ArrowPanel arrowPanel2 = ArrowPanel.this;
                arrowPanel2.middle.set(commonFuncs.pointAlongSegment(arrowPanel2.farthest, arrowPanel2.origin, 0.5f));
                ArrowPanel arrowPanel3 = ArrowPanel.this;
                arrowPanel3.end.set(commonFuncs.pointAlongSegment(arrowPanel3.farthest, arrowPanel3.origin, 0.6f));
                ArrowPanel arrowPanel4 = ArrowPanel.this;
                arrowPanel4.needUpdateMiddle = true;
                arrowPanel4.needUpdateStart = true;
                arrowPanel4.needUpdateEnd = true;
                arrowPanel4.invalidate();
                ArrowPanel.this.setVisibility(0);
            }
        });
    }

    private void updatePaint() {
        computeBounds();
        if (this.fillOptions.getFill_type() == unifiedColor_selector.TYPE_GRADIENT) {
            this.pntArrow.setShader(this.fillOptions.getFill_gradient().getShader(this.PathBounds));
        } else {
            this.pntArrow.setShader(null);
            this.pntArrow.setColor(this.fillOptions.getFill_color());
        }
        this.pntArrow.setAlpha((int) (this.fillAlpha * 2.55d));
        if (this.fillOptions.getStroke_type() == unifiedColor_selector.TYPE_GRADIENT) {
            this.pntArrowStroke.setShader(this.fillOptions.getStroke_gradient().getShader(this.PathBounds));
        } else {
            this.pntArrowStroke.setShader(null);
            this.pntArrowStroke.setColor(this.fillOptions.getStroke_color());
        }
        this.pntArrowStroke.setAlpha((int) (this.strokeAlpha * 2.55d));
        this.pntArrowStroke.setStrokeWidth(this.fillOptions.getStroke_width());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePositions(int i, int i2, ArrayList<String> arrayList) {
        if (arrayList != null && arrayList.size() == 4) {
            try {
                float f = i;
                float f2 = i2;
                this.start.set(Float.parseFloat(arrayList.get(0)) * f, Float.parseFloat(arrayList.get(1)) * f2);
                this.end.set(Float.parseFloat(arrayList.get(2)) * f, Float.parseFloat(arrayList.get(3)) * f2);
            } catch (Exception unused) {
            }
        }
    }

    public void clearMe() {
        ShapeComponent shapeComponent = this.editShapeReference;
        if (shapeComponent != null) {
            shapeComponent.unhideTemp();
        }
        this.editShapeReference = null;
        this.listener = null;
    }

    public void computeBounds() {
        if (this.needUpdateEnd || this.needUpdateStart || this.needUpdateMiddle) {
            return;
        }
        if (this.fillOptions.getFill_type() == unifiedColor_selector.TYPE_GRADIENT || this.fillOptions.getStroke_type() == unifiedColor_selector.TYPE_GRADIENT) {
            this.PathBounds.set(0.0f, 0.0f, 0.0f, 0.0f);
            commonFuncs.computePathsBounds(this.PathBounds, this.startPath, this.middlePath, this.endPath);
        }
    }

    public Path constructFinalPath() {
        Path path = new Path();
        this.tmpPath = path;
        path.setFillType(Path.FillType.WINDING);
        this.tmpPath.addPath(this.startPath);
        this.tmpPath.addPath(this.middlePath);
        this.tmpPath.addPath(this.endPath);
        return this.tmpPath;
    }

    public void drawHandles(Canvas canvas, Paint paint) {
        PointF pointF = this.start;
        canvas.drawCircle(pointF.x, pointF.y, this.handleRad, paint);
        PointF pointF2 = this.end;
        canvas.drawCircle(pointF2.x, pointF2.y, this.handleRad, paint);
    }

    public void fromBundle(Bundle bundle) {
        final int containerWidth = MainActivity.helperClass.getContainerWidth();
        final int containerHeight = MainActivity.helperClass.getContainerHeight();
        this.endArrowMultiplier = bundle.getInt(appStateConstants.SHAPE_ARROW_END_MUL, 200) / 100.0f;
        this.beginArrowMultiplier = bundle.getInt(appStateConstants.SHAPE_ARROW_START_MUL, 200) / 100.0f;
        this.middleSize = Float.parseFloat(bundle.getString(appStateConstants.SHAPE_ARROW_SIZE)) * containerWidth;
        this.endArrowHead = getArrowHeadById(bundle.getInt(appStateConstants.SHAPE_ARROW_END_HEAD, 0));
        this.startArrowHead = getArrowHeadById(bundle.getInt(appStateConstants.SHAPE_ARROW_START_HEAD, 0));
        this.fillOptions.fromBundle(bundle.getBundle(appStateConstants.SHAPE_ARROW_STYLE));
        this.strokeAlpha = bundle.getInt(appStateConstants.SHAPE_ARROW_STROKE_ALPHA, 100);
        this.fillAlpha = bundle.getInt(appStateConstants.SHAPE_ARROW_ALPHA, 255);
        final ArrayList<String> stringArrayList = bundle.getStringArrayList(appStateConstants.SHAPE_ARROW_POSITIONS);
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.2
            @Override // java.lang.Runnable
            public void run() {
                ArrowPanel.this.updatePositions(containerWidth, containerHeight, stringArrayList);
                ArrowPanel arrowPanel = ArrowPanel.this;
                arrowPanel.needUpdateMiddle = true;
                arrowPanel.needUpdateStart = true;
                arrowPanel.needUpdateEnd = true;
                arrowPanel.invalidate();
                ArrowPanel.this.setVisibility(0);
            }
        });
    }

    public Bitmap getBitmapFromBezierPanel(int i) throws Exception {
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        Bitmap createBitmap = Bitmap.createBitmap(rect.width() * i, rect.height() * i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        float f = i;
        canvas.scale(f, f);
        canvas.translate(rect.left * (-1), rect.top * (-1));
        this.renderMode = true;
        draw(canvas);
        this.renderMode = false;
        return createBitmap;
    }

    public void init() {
    }

    public void initiate(OnArrowListener onArrowListener) {
        Bundle bundle;
        setVisibility(4);
        ShapeComponent shapeComponent = this.editShapeReference;
        if (shapeComponent == null || (bundle = shapeComponent.arrowDataBundle) == null) {
            initDefaultStyle();
        } else {
            fromBundle(bundle);
        }
        this.listener = onArrowListener;
        if (onArrowListener != null) {
            onArrowListener.startChanged(this.startArrowHead);
        }
        if (onArrowListener != null) {
            onArrowListener.endChanged(this.endArrowHead);
        }
        this.changedGeometry = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        updatePaths();
        updatePaint();
        if (this.fillOptions.getStroke_width() > 0) {
            drawPaths(canvas, this.pntArrowStroke);
        }
        drawPaths(canvas, this.pntArrow);
        if (this.renderMode) {
            return;
        }
        drawHandles(canvas, this.pntHandlesStroke);
        drawHandles(canvas, this.pntHandles);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.needUpdateMiddle = true;
        this.needUpdateStart = true;
        this.needUpdateEnd = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
    
        if (r9 != 3) goto L18;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            float r0 = r9.getX()
            float r1 = r9.getY()
            int r9 = r9.getActionMasked()
            r2 = 3
            r3 = 2
            r4 = 1
            if (r9 == 0) goto L8a
            if (r9 == r4) goto L83
            if (r9 == r3) goto L19
            if (r9 == r2) goto L83
            goto Lae
        L19:
            float r9 = r8.prevX
            float r9 = r0 - r9
            r8.dx = r9
            float r2 = r8.prevY
            float r2 = r1 - r2
            r8.dy = r2
            r8.prevX = r0
            r8.prevY = r1
            android.graphics.PointF r0 = r8.dragged
            if (r0 == 0) goto Lae
            com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo r1 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.helperClass
            float r2 = r0.x
            float r2 = r2 + r9
            float r9 = r1.snapPosX(r2, r4)
            com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo r1 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.helperClass
            android.graphics.PointF r2 = r8.dragged
            float r2 = r2.y
            float r3 = r8.dy
            float r2 = r2 + r3
            float r1 = r1.snapPosY(r2, r4)
            r0.set(r9, r1)
            android.graphics.PointF r9 = r8.dragged
            android.graphics.PointF r0 = r8.middle
            if (r9 != r0) goto L6b
            android.graphics.PointF r9 = r8.end
            float r0 = r9.x
            float r1 = r8.dx
            float r0 = r0 + r1
            float r1 = r9.y
            float r2 = r8.dy
            float r1 = r1 + r2
            r9.set(r0, r1)
            android.graphics.PointF r9 = r8.start
            float r0 = r9.x
            float r1 = r8.dx
            float r0 = r0 + r1
            float r1 = r9.y
            float r2 = r8.dy
            float r1 = r1 + r2
            r9.set(r0, r1)
            goto L77
        L6b:
            android.graphics.PointF r9 = r8.start
            android.graphics.PointF r0 = r8.end
            r1 = 1056964608(0x3f000000, float:0.5)
            android.graphics.PointF r9 = com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs.pointAlongSegment(r9, r0, r1)
            r8.middle = r9
        L77:
            r8.needUpdateMiddle = r4
            r8.needUpdateStart = r4
            r8.needUpdateEnd = r4
            r8.changedGeometry = r4
            r8.invalidate()
            goto Lae
        L83:
            com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo r9 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.helperClass
            r9.motionActionUp()
            r9 = 0
            goto Lac
        L8a:
            r8.prevX = r0
            r8.prevY = r1
            r9 = 0
            r8.dx = r9
            r8.dy = r9
            r9 = 1082130432(0x40800000, float:4.0)
            float r5 = r8.handleRad
            float r5 = r5 * r9
            android.graphics.PointF r9 = r8.middle
            android.graphics.PointF[] r2 = new android.graphics.PointF[r2]
            r6 = 0
            android.graphics.PointF r7 = r8.start
            r2[r6] = r7
            android.graphics.PointF r6 = r8.end
            r2[r4] = r6
            r2[r3] = r9
            android.graphics.PointF r9 = com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs.getSelected(r0, r1, r5, r9, r2)
        Lac:
            r8.dragged = r9
        Lae:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void prepareEdit(ShapeComponent shapeComponent) {
        this.editShapeReference = shapeComponent;
    }

    public void setArrowSize(int i) {
        this.middleSize = i;
        this.needUpdateMiddle = true;
        this.needUpdateEnd = true;
        this.needUpdateStart = true;
        invalidate();
    }

    public void setBeginArrowMultiplier(float f) {
        this.beginArrowMultiplier = f;
        this.needUpdateStart = true;
        invalidate();
    }

    public void setEndArrowHead(ArrowHead arrowHead) {
        OnArrowListener onArrowListener = this.listener;
        if (onArrowListener != null) {
            onArrowListener.endChanged(arrowHead);
        }
        this.endArrowHead = arrowHead;
        this.needUpdateEnd = true;
        invalidate();
    }

    public void setEndArrowMultiplier(float f) {
        this.endArrowMultiplier = f;
        this.needUpdateEnd = true;
        invalidate();
    }

    public void setFill(int i, int i2, GradientMaker.GradientFill gradientFill) {
        this.fillAlpha = i == unifiedColor_selector.TYPE_COLOR ? (int) (Color.alpha(i2) * 0.39215687f) : 100;
        this.fillOptions.setFill_color(i2);
        this.fillOptions.setFill_gradient(gradientFill);
        this.fillOptions.setFill_type(i);
        invalidate();
    }

    public void setFillOpacity(int i) {
        this.fillAlpha = i;
        invalidate();
    }

    public void setStartArrowHead(ArrowHead arrowHead) {
        OnArrowListener onArrowListener = this.listener;
        if (onArrowListener != null) {
            onArrowListener.startChanged(arrowHead);
        }
        this.startArrowHead = arrowHead;
        this.needUpdateStart = true;
        invalidate();
    }

    public void setStroke(int i, int i2, GradientMaker.GradientFill gradientFill) {
        this.strokeAlpha = i == unifiedColor_selector.TYPE_COLOR ? (int) (Color.alpha(i2) * 0.39215687f) : 100;
        this.fillOptions.setStroke_color(i2);
        this.fillOptions.setStroke_gradient(gradientFill);
        this.fillOptions.setStroke_type(i);
        invalidate();
    }

    public void setStrokeOpacity(int i) {
        this.strokeAlpha = i;
        invalidate();
    }

    public void setStrokeWidth(int i) {
        this.fillOptions.setStroke_width(i);
        invalidate();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        int containerWidth = MainActivity.helperClass.getContainerWidth();
        int containerHeight = MainActivity.helperClass.getContainerHeight();
        bundle.putBundle(appStateConstants.SHAPE_ARROW_STYLE, this.fillOptions.toBundle());
        bundle.putStringArrayList(appStateConstants.SHAPE_ARROW_POSITIONS, getPositions(containerWidth, containerHeight));
        bundle.putInt(appStateConstants.SHAPE_ARROW_END_MUL, (int) (this.endArrowMultiplier * 100.0f));
        bundle.putInt(appStateConstants.SHAPE_ARROW_START_MUL, (int) (this.beginArrowMultiplier * 100.0f));
        bundle.putString(appStateConstants.SHAPE_ARROW_SIZE, String.valueOf(this.middleSize / containerWidth));
        bundle.putInt(appStateConstants.SHAPE_ARROW_END_HEAD, getIdFromArrowHead(this.endArrowHead));
        bundle.putInt(appStateConstants.SHAPE_ARROW_START_HEAD, getIdFromArrowHead(this.startArrowHead));
        bundle.putInt(appStateConstants.SHAPE_ARROW_STROKE_ALPHA, this.strokeAlpha);
        bundle.putInt(appStateConstants.SHAPE_ARROW_ALPHA, this.fillAlpha);
        return bundle;
    }

    public void updatePaths() {
        if (this.needUpdateMiddle) {
            this.middlePath.reset();
            PointF pointAlongSegment = commonFuncs.pointAlongSegment(this.start, this.end, 1.0f, this.middleSize);
            PointF pointAlongSegment2 = commonFuncs.pointAlongSegment(this.end, this.start, 1.0f, this.middleSize);
            PointF rotateAroundDegrees = commonFuncs.rotateAroundDegrees(pointAlongSegment, this.end, 90.0f);
            PointF rotateAroundDegrees2 = commonFuncs.rotateAroundDegrees(pointAlongSegment, this.end, -90.0f);
            PointF rotateAroundDegrees3 = commonFuncs.rotateAroundDegrees(pointAlongSegment2, this.start, 90.0f);
            PointF rotateAroundDegrees4 = commonFuncs.rotateAroundDegrees(pointAlongSegment2, this.start, -90.0f);
            commonFuncs.translatePointAlongVector(rotateAroundDegrees, this.start, this.end, 1.0f);
            commonFuncs.translatePointAlongVector(rotateAroundDegrees2, this.start, this.end, 1.0f);
            commonFuncs.translatePointAlongVector(rotateAroundDegrees3, this.end, this.start, 1.0f);
            commonFuncs.translatePointAlongVector(rotateAroundDegrees4, this.end, this.start, 1.0f);
            this.middlePath.moveTo(rotateAroundDegrees.x, rotateAroundDegrees.y);
            this.middlePath.lineTo(rotateAroundDegrees2.x, rotateAroundDegrees2.y);
            this.middlePath.lineTo(rotateAroundDegrees3.x, rotateAroundDegrees3.y);
            this.middlePath.lineTo(rotateAroundDegrees4.x, rotateAroundDegrees4.y);
            this.middlePath.close();
        }
        if (this.needUpdateEnd) {
            ArrowHead arrowHead = this.endArrowHead;
            Path path = this.endPath;
            PointF pointF = this.end;
            arrowHead.getPath(path, pointF, commonFuncs.pointAlongSegment(this.start, pointF, 1.0f, arrowHead.isAdjustableSize() ? this.endArrowMultiplier * this.middleSize : this.middleSize));
        }
        if (this.needUpdateStart) {
            ArrowHead arrowHead2 = this.startArrowHead;
            Path path2 = this.startPath;
            PointF pointF2 = this.start;
            arrowHead2.getPath(path2, pointF2, commonFuncs.pointAlongSegment(this.end, pointF2, 1.0f, arrowHead2.isAdjustableSize() ? this.beginArrowMultiplier * this.middleSize : this.middleSize));
        }
        this.needUpdateMiddle = false;
        this.needUpdateEnd = false;
        this.needUpdateStart = false;
    }
}
