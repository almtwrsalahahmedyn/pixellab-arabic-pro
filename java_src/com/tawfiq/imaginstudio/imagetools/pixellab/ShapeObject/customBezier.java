package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.unifiedColor_selector;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public class customBezier {
    public static final int defaultStrokeWidth = commonFuncs.dpToPxInt(2);
    private Paint controlPnt;
    private Paint controlPntInverted;
    private Paint controlPntLast;
    private Paint controlPntRest;
    private FillInfo fillOptions;
    private Paint handlePnt;
    private Paint handlePntInverted;
    private OnBezierListener listener;
    private Paint pntIndicator;
    private float pointRad = commonFuncs.dpToPx(6);
    private float controlRad = commonFuncs.dpToPx(3);
    public cubicToElement selected = null;
    public cubicToList actions = new cubicToList();
    Path path = new Path();
    public boolean closedContour = false;
    public int fillAlpha = 0;
    public int strokeAlpha = 255;
    public boolean updatedGeometry = true;
    int currScale = 100;
    int currRot = 0;
    PointF center = null;
    public DragTarget currDrag = DragTarget.none;
    public Paint pathFillPnt = new Paint(1);
    public Paint pathStrokePnt = new Paint(1);
    RectF PathBounds = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
    private Path directionPath = new Path();
    boolean needRecreate = false;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget;

        static {
            int[] iArr = new int[DragTarget.values().length];
            $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget = iArr;
            try {
                iArr[DragTarget.currP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget[DragTarget.prevP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget[DragTarget.nextP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface CubicAction {
        void doOn(cubicToElement cubictoelement);
    }

    /* loaded from: classes.dex */
    public enum DragTarget {
        prevP,
        currP,
        nextP,
        whole,
        none
    }

    /* loaded from: classes.dex */
    public interface OnBezierListener {
        void pathChanged(customBezier custombezier);
    }

    /* loaded from: classes.dex */
    public class cubicToElement {
        public cubicToElement next;
        public cubicToElement prev;
        public float x1;
        public float x2;
        public float x3;
        public float y1;
        public float y2;
        public float y3;

        public cubicToElement(float f, float f2, float f3, float f4, float f5, float f6) {
            this.next = null;
            this.prev = null;
            set(f, f2, f3, f4, f5, f6);
        }

        public cubicToElement(customBezier custombezier, PointF pointF, PointF pointF2, PointF pointF3) {
            this(pointF.x, pointF.y, pointF2.x, pointF2.y, pointF3.x, pointF3.y);
        }

        public cubicToElement(customBezier custombezier, cubicToElement cubictoelement, float f) {
            this(cubictoelement.x1 + f, cubictoelement.y1 + f, cubictoelement.x2 + f, cubictoelement.y2 + f, cubictoelement.x3 + f, cubictoelement.y3 + f);
        }

        public boolean compare(cubicToElement cubictoelement) {
            if (cubictoelement != null && this.x1 == cubictoelement.x1 && this.x2 == cubictoelement.x2) {
                float f = this.y3;
                float f2 = cubictoelement.y3;
                if (f == f2 && this.y1 == cubictoelement.y1 && this.y2 == cubictoelement.y2 && f == f2) {
                    return true;
                }
            }
            return false;
        }

        public PointF getControlP1() {
            return new PointF(this.x1, this.y1);
        }

        public PointF getControlP2() {
            return new PointF(this.x2, this.y2);
        }

        public PointF getPoint() {
            return new PointF(this.x3, this.y3);
        }

        public void set(float f, float f2, float f3, float f4, float f5, float f6) {
            this.x1 = f;
            this.y1 = f2;
            this.x2 = f3;
            this.y2 = f4;
            this.x3 = f5;
            this.y3 = f6;
        }

        public void setControlPoint1(float f, float f2) {
            this.x1 = f;
            this.y1 = f2;
        }

        public void setControlPoint1(PointF pointF) {
            setControlPoint1(pointF.x, pointF.y);
        }

        public void setControlPoint2(float f, float f2) {
            this.x2 = f;
            this.y2 = f2;
        }

        public void setControlPoint2(PointF pointF) {
            setControlPoint2(pointF.x, pointF.y);
        }

        public void setPoint(float f, float f2) {
            this.x3 = f;
            this.y3 = f2;
        }

        public void setPoint(PointF pointF) {
            setPoint(pointF.x, pointF.y);
        }
    }

    /* loaded from: classes.dex */
    public class cubicToList {
        cubicToElement root = null;
        cubicToElement tail = null;

        public cubicToList() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void add(float f, float f2) {
            add(new cubicToElement(0.0f, 0.0f, 0.0f, 0.0f, f, f2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void add(cubicToElement cubictoelement) {
            if (isEmpty()) {
                this.root = cubictoelement;
            } else {
                cubicToElement cubictoelement2 = this.tail;
                cubictoelement2.next = cubictoelement;
                cubictoelement.prev = cubictoelement2;
                cubictoelement.next = null;
            }
            this.tail = cubictoelement;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public cubicToElement getFirst() {
            return this.root;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public cubicToElement getLast() {
            return this.tail;
        }

        private int recCount(cubicToElement cubictoelement) {
            if (cubictoelement == null) {
                return 0;
            }
            return recCount(cubictoelement.next) + 1;
        }

        public void clear() {
            this.tail = null;
            this.root = null;
        }

        public boolean contains(cubicToElement cubictoelement) {
            for (cubicToElement cubictoelement2 = this.root; cubictoelement2 != null; cubictoelement2 = cubictoelement2.next) {
                if (cubictoelement.compare(cubictoelement2)) {
                    return true;
                }
            }
            return false;
        }

        public void copyFrom(cubicToList cubictolist, float f) {
            if (cubictolist.isEmpty()) {
                return;
            }
            for (cubicToElement cubictoelement = cubictolist.root; cubictoelement != null; cubictoelement = cubictoelement.next) {
                add(new cubicToElement(customBezier.this, cubictoelement, f));
            }
        }

        public int count() {
            return recCount(this.root);
        }

        public void fixLastPoint(boolean z) {
            cubicToElement cubictoelement;
            if (isEmpty() || (cubictoelement = this.root) == this.tail) {
                return;
            }
            if (z || commonFuncs.checkEquality(0.0f, cubictoelement.x1, cubictoelement.x2, cubictoelement.y1, cubictoelement.y2)) {
                cubicToElement cubictoelement2 = this.tail;
                PointF pointF = new PointF(cubictoelement2.x2, cubictoelement2.y2);
                cubicToElement cubictoelement3 = this.tail;
                PointF pointAlongSegment = commonFuncs.pointAlongSegment(pointF, new PointF(cubictoelement3.x3, cubictoelement3.y3), 2.0f);
                cubicToElement cubictoelement4 = this.root.next;
                PointF pointF2 = new PointF(cubictoelement4.x1, cubictoelement4.y1);
                cubicToElement cubictoelement5 = this.root;
                PointF pointAlongSegment2 = commonFuncs.pointAlongSegment(pointF2, new PointF(cubictoelement5.x3, cubictoelement5.y3), 2.0f);
                this.root.setControlPoint1(pointAlongSegment.x, pointAlongSegment.y);
                this.root.setControlPoint2(pointAlongSegment2.x, pointAlongSegment2.y);
            }
        }

        public void getBounds(RectF rectF, float f) {
            cubicToElement cubictoelement = this.root;
            if (cubictoelement == null) {
                rectF.set(0.0f, 0.0f, 1.0f, 1.0f);
                return;
            }
            float f2 = cubictoelement.x3;
            float f3 = cubictoelement.y3;
            rectF.set(f2 - 1.0f, f3 - 1.0f, f2 + 1.0f, f3 + 1.0f);
            for (cubicToElement cubictoelement2 = this.root; cubictoelement2 != null; cubictoelement2 = cubictoelement2.next) {
                rectF.set(Math.min(cubictoelement2.x3, rectF.left), Math.min(cubictoelement2.y3, rectF.top), Math.max(cubictoelement2.x3, rectF.right), Math.max(cubictoelement2.y3, rectF.bottom));
            }
            cubicToElement cubictoelement3 = this.root;
            while (true) {
                cubictoelement3 = cubictoelement3.next;
                if (cubictoelement3 == null) {
                    break;
                }
                cubicToElement cubictoelement4 = cubictoelement3.prev;
                Iterator<PointF> it = commonFuncs.findExtremaCubicCurve(new PointF(cubictoelement4.x3, cubictoelement4.y3), new PointF(cubictoelement3.x1, cubictoelement3.y1), new PointF(cubictoelement3.x2, cubictoelement3.y2), new PointF(cubictoelement3.x3, cubictoelement3.y3)).iterator();
                while (it.hasNext()) {
                    PointF next = it.next();
                    rectF.set(Math.min(next.x, rectF.left), Math.min(next.y, rectF.top), Math.max(next.x, rectF.right), Math.max(next.y, rectF.bottom));
                }
            }
            if (customBezier.this.closedContour && count() > 1) {
                cubicToElement cubictoelement5 = this.tail;
                PointF pointF = new PointF(cubictoelement5.x3, cubictoelement5.y3);
                cubicToElement cubictoelement6 = this.root;
                PointF pointF2 = new PointF(cubictoelement6.x1, cubictoelement6.y1);
                cubicToElement cubictoelement7 = this.root;
                PointF pointF3 = new PointF(cubictoelement7.x2, cubictoelement7.y2);
                cubicToElement cubictoelement8 = this.root;
                Iterator<PointF> it2 = commonFuncs.findExtremaCubicCurve(pointF, pointF2, pointF3, new PointF(cubictoelement8.x3, cubictoelement8.y3)).iterator();
                while (it2.hasNext()) {
                    PointF next2 = it2.next();
                    rectF.set(Math.min(next2.x, rectF.left), Math.min(next2.y, rectF.top), Math.max(next2.x, rectF.right), Math.max(next2.y, rectF.bottom));
                }
            }
            float f4 = -f;
            rectF.inset(f4, f4);
        }

        public PointF getCenteroid() {
            PointF pointF = new PointF();
            cubicToElement cubictoelement = this.root;
            if (cubictoelement == null) {
                return pointF;
            }
            float f = 0.0f;
            while (cubictoelement != null) {
                pointF.set(pointF.x + cubictoelement.x3, pointF.y + cubictoelement.y3);
                cubictoelement = cubictoelement.next;
                f += 1.0f;
            }
            pointF.set(pointF.x / f, pointF.y / f);
            return pointF;
        }

        public boolean isEmpty() {
            return this.tail == null || this.root == null;
        }

        public void iterateAndDo(CubicAction cubicAction) {
            iterateAndDo(null, cubicAction);
        }

        /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
        /* JADX WARN: Removed duplicated region for block: B:5:0x000d A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:4:0x0009 -> B:2:0x0002). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void iterateAndDo(com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.cubicToElement r1, com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.CubicAction r2) {
            /*
                r0 = this;
                if (r1 == 0) goto L5
            L2:
                com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier$cubicToElement r1 = r1.next
                goto L7
            L5:
                com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier$cubicToElement r1 = r0.root
            L7:
                if (r1 == 0) goto Ld
                r2.doOn(r1)
                goto L2
            Ld:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.cubicToList.iterateAndDo(com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier$cubicToElement, com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier$CubicAction):void");
        }

        public cubicToElement remove(cubicToElement cubictoelement) {
            if (cubictoelement == null || isEmpty()) {
                return null;
            }
            cubicToElement cubictoelement2 = cubictoelement.next;
            cubicToElement cubictoelement3 = cubictoelement2 != null ? cubictoelement2 : cubictoelement.prev;
            if (cubictoelement2 != null) {
                cubictoelement2.setControlPoint1(cubictoelement.x1, cubictoelement.y1);
                cubictoelement.next.prev = cubictoelement.prev;
            } else {
                this.tail = cubictoelement.prev;
            }
            cubicToElement cubictoelement4 = cubictoelement.prev;
            if (cubictoelement4 != null) {
                cubictoelement4.next = cubictoelement.next;
            } else {
                this.root = cubictoelement.next;
            }
            cubictoelement.prev = null;
            cubictoelement.next = null;
            return cubictoelement3;
        }
    }

    public customBezier(OnBezierListener onBezierListener) {
        this.listener = null;
        this.listener = onBezierListener;
        Paint paint = new Paint(1);
        this.controlPnt = paint;
        paint.setColor(Color.argb(100, 0, 0, 0));
        this.controlPnt.setStrokeWidth(commonFuncs.dpToPx(2));
        Paint paint2 = this.controlPnt;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        this.controlPntInverted = new Paint(this.controlPnt);
        Paint paint3 = new Paint(1);
        this.pntIndicator = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        this.pntIndicator.setStrokeWidth(commonFuncs.dpToPx(4));
        this.pntIndicator.setColor(Color.argb(120, 0, 0, 0));
        this.controlPntInverted.setStyle(style);
        this.controlPntInverted.setColor(-1);
        this.controlPnt.setStrokeWidth(commonFuncs.dpToPx(2));
        this.controlPntInverted.setStrokeWidth(commonFuncs.dpToPx(2));
        Paint paint4 = new Paint(1);
        this.controlPntLast = paint4;
        paint4.setColor(Color.argb(200, 0, 0, 0));
        Paint paint5 = new Paint(1);
        this.controlPntRest = paint5;
        paint5.setColor(Color.parseColor("#00bcd4"));
        Paint paint6 = new Paint(1);
        this.handlePnt = paint6;
        paint6.setColor(-1);
        this.handlePnt.setStrokeWidth(commonFuncs.dpToPx(1) * 1.5f);
        Paint paint7 = new Paint(1);
        this.handlePntInverted = paint7;
        paint7.setColor(Color.argb(80, 0, 0, 0));
        this.handlePntInverted.setStrokeWidth(commonFuncs.dpToPx(3));
        int i = unifiedColor_selector.TYPE_COLOR;
        int argb = Color.argb(0, 255, 255, 255);
        GradientMaker.GradientFill gradientFill = new GradientMaker.GradientFill();
        int i2 = unifiedColor_selector.TYPE_COLOR;
        int parseColor = Color.parseColor("#212121");
        GradientMaker.GradientFill gradientFill2 = new GradientMaker.GradientFill();
        int i3 = defaultStrokeWidth;
        Paint.Cap cap = Paint.Cap.ROUND;
        this.fillOptions = new FillInfo(i, argb, gradientFill, i2, parseColor, gradientFill2, i3, cap);
        this.pathStrokePnt.setStyle(style2);
        this.pathStrokePnt.setStrokeCap(cap);
        Paint paint8 = this.pathStrokePnt;
        Paint.Join join = Paint.Join.ROUND;
        paint8.setStrokeJoin(join);
        this.pathFillPnt.setStrokeCap(cap);
        this.pathFillPnt.setStrokeJoin(join);
    }

    private cubicToElement[] getDefaultElements(PointF pointF, float f) {
        float f2 = 0.3f * f;
        PointF pointF2 = new PointF(pointF.x - f2, pointF.y);
        PointF pointF3 = new PointF(pointF.x + f2, pointF.y);
        float f3 = 0.2f * f;
        float f4 = pointF2.x + f3;
        float f5 = pointF2.y + f3;
        float f6 = pointF3.x;
        float f7 = pointF3.y;
        return new cubicToElement[]{new cubicToElement(0.0f, 0.0f, 0.0f, 0.0f, pointF2.x, pointF3.y), new cubicToElement(f4, f5, f6 - f3, f7 - f3, f6, f7)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Path getDirectionPointer(PointF pointF, PointF pointF2, PointF pointF3, Path path) {
        if (path == null) {
            path = new Path();
        }
        path.reset();
        path.moveTo(pointF.x, pointF.y);
        path.lineTo(pointF2.x, pointF2.y);
        path.lineTo(pointF3.x, pointF3.y);
        path.close();
        return path;
    }

    public static Path getPathFromStringArrayList(ArrayList<String> arrayList) {
        customBezier custombezier = new customBezier(null);
        custombezier.closedContour = true;
        custombezier.dataFromStringArrayList(arrayList);
        return custombezier.getPath();
    }

    private float snapX(float f) {
        return MainActivity.helperClass.snapPosX(f, true);
    }

    private float snapY(float f) {
        return MainActivity.helperClass.snapPosY(f, true);
    }

    private void updatePaint() {
        if (this.updatedGeometry && (this.fillOptions.getFill_type() == unifiedColor_selector.TYPE_GRADIENT || this.fillOptions.getStroke_type() == unifiedColor_selector.TYPE_GRADIENT)) {
            this.actions.getBounds(this.PathBounds, getFillOptions().getStroke_width() * 0.5f);
            this.updatedGeometry = false;
        }
        if (this.fillOptions.getFill_type() == unifiedColor_selector.TYPE_GRADIENT) {
            this.pathFillPnt.setShader(this.fillOptions.getFill_gradient().getShader(this.PathBounds));
        } else {
            this.pathFillPnt.setShader(null);
            this.pathFillPnt.setColor(this.fillOptions.getFill_color());
        }
        this.pathFillPnt.setAlpha(this.fillAlpha);
        if (this.fillOptions.getStroke_type() == unifiedColor_selector.TYPE_GRADIENT) {
            this.pathStrokePnt.setShader(this.fillOptions.getStroke_gradient().getShader(this.PathBounds));
        } else {
            this.pathStrokePnt.setShader(null);
            this.pathStrokePnt.setColor(this.fillOptions.getStroke_color());
        }
        this.pathStrokePnt.setAlpha(this.strokeAlpha);
        this.pathStrokePnt.setStrokeWidth(this.fillOptions.getStroke_width());
        this.fillOptions.applyCapOnPaint(this.pathStrokePnt);
        this.fillOptions.applyCapOnPaint(this.pathFillPnt);
    }

    private void updatePathRecreate() {
        this.path.reset();
        if (this.actions.isEmpty()) {
            return;
        }
        this.path.moveTo(this.actions.getFirst().x3, this.actions.getFirst().y3);
        cubicToList cubictolist = this.actions;
        cubictolist.iterateAndDo(cubictolist.getFirst(), new CubicAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.6
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.CubicAction
            public void doOn(cubicToElement cubictoelement) {
                customBezier.this.path.cubicTo(cubictoelement.x1, cubictoelement.y1, cubictoelement.x2, cubictoelement.y2, cubictoelement.x3, cubictoelement.y3);
            }
        });
        if (this.closedContour) {
            this.actions.fixLastPoint(false);
            Path path = this.path;
            cubicToElement cubictoelement = this.actions.root;
            path.cubicTo(cubictoelement.x1, cubictoelement.y1, cubictoelement.x2, cubictoelement.y2, cubictoelement.x3, cubictoelement.y3);
            this.path.close();
        }
    }

    public void addPointAfterSelected() {
        if (this.actions.count() < 2) {
            return;
        }
        cubicToElement cubictoelement = this.selected.next;
        if (cubictoelement == null) {
            cubictoelement = this.closedContour ? this.actions.root : null;
        }
        if (cubictoelement != null) {
            cubicToElement cubictoelement2 = this.selected;
            PointF[] pointOnCurve = commonFuncs.getPointOnCurve(new PointF(cubictoelement2.x3, cubictoelement2.y3), new PointF(cubictoelement.x1, cubictoelement.y1), new PointF(cubictoelement.x2, cubictoelement.y2), new PointF(cubictoelement.x3, cubictoelement.y3), 0.5f);
            PointF pointF = pointOnCurve[3];
            cubictoelement.setControlPoint1(pointF.x, pointF.y);
            PointF pointF2 = pointOnCurve[1];
            cubictoelement.setControlPoint2(pointF2.x, pointF2.y);
            PointF pointF3 = pointOnCurve[0];
            PointF pointF4 = new PointF(pointF3.x, pointF3.y);
            PointF pointF5 = pointOnCurve[2];
            PointF pointF6 = new PointF(pointF5.x, pointF5.y);
            PointF pointF7 = pointOnCurve[4];
            cubicToElement cubictoelement3 = new cubicToElement(this, pointF4, pointF6, new PointF(pointF7.x, pointF7.y));
            cubicToElement cubictoelement4 = this.selected;
            cubicToElement cubictoelement5 = cubictoelement4.next;
            if (cubictoelement5 != null) {
                cubictoelement3.next = cubictoelement5;
                cubictoelement4.next.prev = cubictoelement3;
            }
            cubictoelement3.prev = cubictoelement4;
            cubictoelement4.next = cubictoelement3;
            this.selected = cubictoelement3;
            if (cubictoelement3.next == null) {
                this.actions.tail = cubictoelement3;
            }
            this.needRecreate = true;
            updatePath();
        }
    }

    public boolean addPointLast(PointF pointF) {
        PointF pointAlongSegment;
        float f;
        if (this.closedContour) {
            return false;
        }
        cubicToList cubictolist = this.actions;
        if (cubictolist.tail == null) {
            cubictolist.add(pointF.x, pointF.y);
        } else {
            cubicToElement cubictoelement = this.actions.tail;
            PointF pointF2 = new PointF(cubictoelement.x3, cubictoelement.y3);
            if (this.actions.tail.prev == null) {
                pointAlongSegment = commonFuncs.pointAlongSegment(pointF2, pointF, 0.15f);
                f = 0.85f;
            } else {
                cubicToElement cubictoelement2 = this.actions.tail;
                pointAlongSegment = commonFuncs.pointAlongSegment(new PointF(cubictoelement2.x2, cubictoelement2.y2), pointF2, 2.0f);
                f = 0.6f;
            }
            this.actions.add(new cubicToElement(this, pointAlongSegment, commonFuncs.pointAlongSegment(pointF2, pointF, f), pointF));
        }
        this.selected = this.actions.tail;
        updatePath();
        return true;
    }

    public void addToArrayList(final ArrayList<String> arrayList, boolean z) {
        this.actions.iterateAndDo(new CubicAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.3
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.CubicAction
            public void doOn(cubicToElement cubictoelement) {
                arrayList.addAll(Arrays.asList(String.valueOf(cubictoelement.x1), String.valueOf(cubictoelement.y1), String.valueOf(cubictoelement.x2), String.valueOf(cubictoelement.y2), String.valueOf(cubictoelement.x3), String.valueOf(cubictoelement.y3)));
            }
        });
    }

    public void close(boolean z) {
        this.closedContour = z;
        if (z) {
            this.actions.fixLastPoint(true);
        } else {
            this.fillAlpha = 0;
        }
        this.needRecreate = true;
        updatePath();
    }

    public void commitTransforms(boolean z) {
        if (z) {
            this.currScale = 100;
            this.currRot = 0;
        } else {
            scale(100);
            rotate(0);
        }
        this.updatedGeometry = true;
        OnBezierListener onBezierListener = this.listener;
        if (onBezierListener != null) {
            onBezierListener.pathChanged(this);
        }
    }

    public customBezier copy(OnBezierListener onBezierListener, float f) {
        customBezier custombezier = new customBezier(onBezierListener);
        cubicToList cubictolist = new cubicToList();
        custombezier.actions = cubictolist;
        cubictolist.copyFrom(this.actions, f);
        custombezier.needRecreate = true;
        custombezier.closedContour = this.closedContour;
        custombezier.fillOptions = this.fillOptions.copy();
        custombezier.fillAlpha = this.fillAlpha;
        custombezier.strokeAlpha = this.strokeAlpha;
        return custombezier;
    }

    public void dataFromStringArrayList(ArrayList<String> arrayList) {
        dataFromStringArrayList(arrayList, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f);
    }

    public void dataFromStringArrayList(ArrayList<String> arrayList, float f, float f2, float f3, float f4, float f5, float f6) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.actions.clear();
        for (int i = 0; i < arrayList.size(); i += 6) {
            this.actions.add(new cubicToElement(((Float.parseFloat(arrayList.get(i)) + f) * f5) + f3, ((Float.parseFloat(arrayList.get(i + 1)) + f2) * f6) + f4, ((Float.parseFloat(arrayList.get(i + 2)) + f) * f5) + f3, ((Float.parseFloat(arrayList.get(i + 3)) + f2) * f6) + f4, ((Float.parseFloat(arrayList.get(i + 4)) + f) * f5) + f3, ((Float.parseFloat(arrayList.get(i + 5)) + f2) * f6) + f4));
        }
        this.needRecreate = true;
        updatePath();
    }

    public void doDefaultPreset(PointF pointF, float f) {
        cubicToElement[] defaultElements = getDefaultElements(pointF, f);
        this.actions.clear();
        this.actions.add(defaultElements[0]);
        this.actions.add(defaultElements[1]);
        this.selected = this.actions.tail;
        this.closedContour = false;
        this.needRecreate = true;
        updatePath();
    }

    public void doDefaultPresetMask(RectF rectF, float f) {
        this.actions.clear();
        float f2 = rectF.left;
        float f3 = rectF.top - f;
        float f4 = rectF.right;
        float f5 = rectF.bottom - f;
        float f6 = f4 - f2;
        float f7 = f5 - f3;
        this.actions.add(f2, f5);
        float f8 = (0.7f * f7) + f3;
        float f9 = (f7 * 0.5f) + f3;
        float f10 = (f4 + f2) * 0.5f;
        this.actions.add(new cubicToElement(f2, f8, (0.2f * f6) + f2, f9, f10, (f3 + f5) * 0.5f));
        float f11 = f2 + (f6 * 0.8f);
        this.actions.add(new cubicToElement(f11, f9, f4, f8, f4, f5));
        float f12 = ((f5 * 11.0f) - f3) * 0.1f;
        this.actions.add(new cubicToElement(f4, (f7 * 1.3f) + f3, f11, f12, f10, f12));
        this.selected = this.actions.root;
        this.needRecreate = true;
        updatePath();
    }

    public void dragCurrent(final float f, final float f2) {
        cubicToElement cubictoelement;
        DragTarget dragTarget = this.currDrag;
        if (dragTarget == DragTarget.whole) {
            if (MainActivity.helperClass.snapEnabled()) {
                PointF centeroid = this.actions.getCenteroid();
                f = MainActivity.helperClass.snapPosX(centeroid.x + f, true) - centeroid.x;
                f2 = MainActivity.helperClass.snapPosY(centeroid.y + f2, true) - centeroid.y;
            }
            this.actions.iterateAndDo(new CubicAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.4
                @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.CubicAction
                public void doOn(cubicToElement cubictoelement2) {
                    float f3 = cubictoelement2.x1;
                    float f4 = f;
                    cubictoelement2.x1 = f3 + f4;
                    cubictoelement2.x2 += f4;
                    cubictoelement2.x3 += f4;
                    float f5 = cubictoelement2.y1;
                    float f6 = f2;
                    cubictoelement2.y1 = f5 + f6;
                    cubictoelement2.y2 += f6;
                    cubictoelement2.y3 += f6;
                }
            });
        } else {
            if (this.selected == null) {
                return;
            }
            int i = AnonymousClass7.$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget[dragTarget.ordinal()];
            if (i == 1) {
                float snapX = snapX(this.selected.x3 + f);
                cubicToElement cubictoelement2 = this.selected;
                float f3 = snapX - cubictoelement2.x3;
                float snapY = snapY(cubictoelement2.y3 + f2);
                cubicToElement cubictoelement3 = this.selected;
                float f4 = cubictoelement3.y3;
                float f5 = snapY - f4;
                cubictoelement3.x3 += f3;
                cubictoelement3.y3 = f4 + f5;
                if (cubictoelement3.prev != null || this.closedContour) {
                    cubictoelement3.x2 += f3;
                    cubictoelement3.y2 += f5;
                }
                cubicToElement cubictoelement4 = cubictoelement3.next;
                if (cubictoelement4 == null) {
                    if (this.closedContour) {
                        cubictoelement4 = this.actions.root;
                    }
                }
                cubictoelement4.x1 += f3;
                cubictoelement4.y1 += f5;
            } else if (i == 2) {
                cubicToElement cubictoelement5 = this.selected;
                if (cubictoelement5.prev != null || this.closedContour) {
                    cubictoelement5.x2 = snapX(cubictoelement5.x2 + f);
                    cubicToElement cubictoelement6 = this.selected;
                    cubictoelement6.y2 = snapY(cubictoelement6.y2 + f2);
                }
            } else if (i == 3) {
                cubicToElement cubictoelement7 = this.selected.next;
                if (cubictoelement7 != null) {
                    cubictoelement7.x1 = snapX(cubictoelement7.x1 + f);
                    cubictoelement = this.selected.next;
                } else if (this.closedContour) {
                    cubicToElement cubictoelement8 = this.actions.root;
                    cubictoelement8.x1 = snapX(cubictoelement8.x1 + f);
                    cubictoelement = this.actions.root;
                }
                cubictoelement.y1 = snapY(cubictoelement.y1 + f2);
            }
        }
        this.needRecreate = true;
        updatePath();
    }

    public void drawPath(Canvas canvas) {
        updatePaint();
        if (this.pathStrokePnt.getStrokeWidth() != 0.0f) {
            canvas.drawPath(this.path, this.pathStrokePnt);
        }
        canvas.drawPath(this.path, this.pathFillPnt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ad, code lost:
    
        if (r13 != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
    
        r5 = r10.controlPntInverted;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b2, code lost:
    
        r5 = r10.controlPnt;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00de, code lost:
    
        if (r13 != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawPathPoints(final android.graphics.Canvas r11, boolean r12, final boolean r13, float r14) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.drawPathPoints(android.graphics.Canvas, boolean, boolean, float):void");
    }

    public int getCount() {
        return this.actions.count();
    }

    public int getCurrRot() {
        return this.currRot;
    }

    public int getCurrScale() {
        return this.currScale;
    }

    public FillInfo getFillOptions() {
        return this.fillOptions;
    }

    public Path getPath() {
        return this.path;
    }

    public int getSelectedIndex() {
        for (cubicToElement cubictoelement = this.actions.root; cubictoelement != null; cubictoelement = cubictoelement.next) {
        }
        return -1;
    }

    public boolean isStillDefault(PointF pointF, float f) {
        cubicToElement[] defaultElements = getDefaultElements(pointF, f);
        return this.actions.contains(defaultElements[0]) && this.actions.contains(defaultElements[1]);
    }

    public boolean removeSelected() {
        this.selected = this.actions.remove(this.selected);
        this.needRecreate = true;
        updatePath();
        return true ^ this.actions.isEmpty();
    }

    public void resetDragTarget() {
        this.currDrag = DragTarget.none;
    }

    public void rotate(int i) {
        final int i2 = i - this.currRot;
        this.currRot = i;
        PointF pointF = this.center;
        if (pointF == null) {
            pointF = this.actions.getCenteroid();
        }
        this.center = pointF;
        this.actions.iterateAndDo(new CubicAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.2
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.CubicAction
            public void doOn(cubicToElement cubictoelement) {
                cubictoelement.setControlPoint1(commonFuncs.rotateAroundDegrees(cubictoelement.getControlP1(), customBezier.this.center, i2));
                cubictoelement.setControlPoint2(commonFuncs.rotateAroundDegrees(cubictoelement.getControlP2(), customBezier.this.center, i2));
                cubictoelement.setPoint(commonFuncs.rotateAroundDegrees(cubictoelement.getPoint(), customBezier.this.center, i2));
            }
        });
        updatePathRecreate();
        OnBezierListener onBezierListener = this.listener;
        if (onBezierListener != null) {
            onBezierListener.pathChanged(this);
        }
    }

    public void scale(int i) {
        final float f = i / this.currScale;
        this.currScale = i;
        PointF pointF = this.center;
        if (pointF == null) {
            pointF = this.actions.getCenteroid();
        }
        this.center = pointF;
        this.actions.iterateAndDo(new CubicAction() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.1
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier.CubicAction
            public void doOn(cubicToElement cubictoelement) {
                cubictoelement.setControlPoint1(commonFuncs.pointAlongSegment(customBezier.this.center, cubictoelement.getControlP1(), f));
                cubictoelement.setControlPoint2(commonFuncs.pointAlongSegment(customBezier.this.center, cubictoelement.getControlP2(), f));
                cubictoelement.setPoint(commonFuncs.pointAlongSegment(customBezier.this.center, cubictoelement.getPoint(), f));
            }
        });
        updatePathRecreate();
        OnBezierListener onBezierListener = this.listener;
        if (onBezierListener != null) {
            onBezierListener.pathChanged(this);
        }
    }

    public void selectMe() {
        this.selected = this.actions.tail;
    }

    public boolean selectPoint(float f, float f2, float f3) {
        float min = Math.min(f3, 3.0f);
        for (cubicToElement first = this.actions.getFirst(); first != null; first = first.next) {
            if (Math.abs(first.x3 - f) <= (this.pointRad / min) * 2.0f && Math.abs(first.y3 - f2) <= (this.pointRad / min) * 2.0f) {
                this.selected = first;
                OnBezierListener onBezierListener = this.listener;
                if (onBezierListener == null) {
                    return true;
                }
                onBezierListener.pathChanged(this);
                return true;
            }
        }
        return false;
    }

    public void setDragTarget(float f, float f2, float f3) {
        PointF pointF;
        DragTarget dragTarget;
        if (this.selected == null) {
            return;
        }
        cubicToElement cubictoelement = this.selected;
        PointF pointF2 = new PointF(cubictoelement.x3, cubictoelement.y3);
        float min = Math.min(f3, 3.0f);
        if (Math.abs(pointF2.x - f) >= (this.pointRad / min) * 2.0f || Math.abs(pointF2.y - f2) >= (this.pointRad / min) * 2.0f) {
            PointF pointF3 = null;
            if (this.selected.prev != null || this.closedContour) {
                cubicToElement cubictoelement2 = this.selected;
                pointF = new PointF(cubictoelement2.x2, cubictoelement2.y2);
            } else {
                pointF = null;
            }
            if (this.selected.next != null) {
                cubicToElement cubictoelement3 = this.selected.next;
                pointF3 = new PointF(cubictoelement3.x1, cubictoelement3.y1);
            } else if (this.closedContour) {
                cubicToElement cubictoelement4 = this.actions.root;
                pointF3 = new PointF(cubictoelement4.x1, cubictoelement4.y1);
            }
            if (pointF != null || pointF3 != null) {
                dragTarget = (pointF != null && (pointF3 == null || commonFuncs.dist(pointF.x, pointF.y, f, f2) < commonFuncs.dist(pointF3.x, pointF3.y, f, f2))) ? DragTarget.prevP : DragTarget.nextP;
                this.currDrag = dragTarget;
            }
        }
        dragTarget = DragTarget.currP;
        this.currDrag = dragTarget;
    }

    public void setDragTarget(DragTarget dragTarget) {
        this.currDrag = dragTarget;
    }

    public void setDragWhole() {
        setDragTarget(DragTarget.whole);
    }

    public customBezier setStyleForMask() {
        this.fillOptions.setStroke_width((int) Math.ceil(commonFuncs.dpToPx(1)));
        this.fillOptions.setStroke_color(-12303292);
        this.fillOptions.setFill_color(-1);
        this.fillAlpha = 0;
        this.strokeAlpha = 255;
        this.closedContour = true;
        return this;
    }

    public customBezier setStyleFromBundle(Bundle bundle) {
        this.fillOptions.fromBundle(bundle);
        this.fillAlpha = bundle.getInt(appStateConstants.FILL_INFO_FILL_ALPHA);
        this.strokeAlpha = bundle.getInt(appStateConstants.FILL_INFO_STROKE_ALPHA);
        this.closedContour = commonFuncs.stringToBool(bundle.getString(appStateConstants.FILL_INFO_CLOSED_CONTOUR));
        return this;
    }

    public Bundle styleToBundle() {
        Bundle bundle = this.fillOptions.toBundle();
        bundle.putString(appStateConstants.FILL_INFO_CLOSED_CONTOUR, commonFuncs.boolToString(this.closedContour));
        bundle.putInt(appStateConstants.FILL_INFO_FILL_ALPHA, this.fillAlpha);
        bundle.putInt(appStateConstants.FILL_INFO_STROKE_ALPHA, this.strokeAlpha);
        return bundle;
    }

    public void updatePath() {
        if (this.actions.count() < 2) {
            this.closedContour = false;
        }
        if (this.needRecreate) {
            updatePathRecreate();
        } else if (!this.actions.isEmpty()) {
            cubicToElement last = this.actions.getLast();
            if (this.path.isEmpty()) {
                this.path.moveTo(last.x3, last.y3);
            } else {
                this.path.cubicTo(last.x1, last.y1, last.x2, last.y2, last.x3, last.y3);
            }
        }
        this.needRecreate = false;
        this.center = null;
        this.updatedGeometry = true;
        OnBezierListener onBezierListener = this.listener;
        if (onBezierListener != null) {
            onBezierListener.pathChanged(this);
        }
    }
}
