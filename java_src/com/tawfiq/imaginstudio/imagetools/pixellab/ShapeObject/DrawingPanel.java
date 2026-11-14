package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class DrawingPanel extends View implements View.OnTouchListener {
    private static final float MAXP = 0.75f;
    private static final float MINP = 0.25f;
    private static final String TAG = "DrawView";
    private static final float minTolerance = 0.1f;
    private float TOUCH_TOLERANCE;
    private int currBlur;
    private int currColor;
    private boolean currDashed;
    private boolean currFill;
    private boolean currNeon;
    private PenType currPenType;
    private int currStrokeWidth;
    float currX;
    float currY;
    private LinkedList<drawing> drawings;
    boolean isDrawing;
    private Paint mPaint;
    private float mX;
    private float mY;
    Paint pntEraser;
    Paint pntEraserBorder;
    private static final float DEFAULT_TOUCH_TOLERANCE = commonFuncs.dpToPx(3);
    private static final float maxTolerance = commonFuncs.dpToPx(12);

    /* loaded from: classes.dex */
    public enum PenType {
        default_pen,
        eraser
    }

    /* loaded from: classes.dex */
    public class drawing {
        int blur;
        int color;
        boolean dashed;
        boolean fill;
        private float initX;
        private float initY;
        boolean neon;
        Path path;
        public boolean stillDrawing = true;
        int strokeWidth;
        PenType type;

        public drawing(int i, int i2, boolean z, boolean z2, boolean z3, Path path, int i3, PenType penType, float f, float f2) {
            this.initY = 0.0f;
            this.initX = 0.0f;
            PenType penType2 = PenType.default_pen;
            this.blur = i;
            this.color = i2;
            this.dashed = z;
            this.fill = z2;
            this.neon = z3;
            this.path = path;
            this.strokeWidth = i3;
            this.type = penType;
            this.initX = f;
            this.initY = f2;
        }

        public void doneDrawing() {
            this.stillDrawing = false;
        }

        public int getBlur() {
            return this.blur;
        }

        public int getColor() {
            return this.color;
        }

        public Path getPath() {
            return this.path;
        }

        public int getStrokeWidth() {
            return this.strokeWidth;
        }

        public boolean isDashed() {
            return this.dashed;
        }

        public boolean isFill() {
            return this.fill;
        }

        public boolean isNeon() {
            return this.neon;
        }
    }

    public DrawingPanel(Context context, int i, int i2) {
        super(context);
        this.drawings = new LinkedList<>();
        this.TOUCH_TOLERANCE = DEFAULT_TOUCH_TOLERANCE;
        this.currPenType = PenType.default_pen;
        this.isDrawing = false;
        setLayerType(1, null);
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.currColor = i;
        this.currStrokeWidth = i2;
        setOnTouchListener(this);
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setDither(true);
        this.mPaint.setColor(i);
        this.mPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setStrokeWidth(i2);
        Paint paint2 = new Paint(1);
        this.pntEraser = paint2;
        paint2.setColor(Color.argb(180, 255, 255, 255));
        Paint paint3 = new Paint(1);
        this.pntEraserBorder = paint3;
        paint3.setColor(Color.argb(64, 0, 0, 0));
        this.pntEraserBorder.setStyle(Paint.Style.STROKE);
    }

    private drawing getCurrDrawing() {
        LinkedList<drawing> linkedList = this.drawings;
        if (linkedList == null || linkedList.isEmpty()) {
            return null;
        }
        return this.drawings.getLast();
    }

    private Path getCurrPath() {
        LinkedList<drawing> linkedList = this.drawings;
        if (linkedList == null || linkedList.isEmpty()) {
            return null;
        }
        return this.drawings.getLast().getPath();
    }

    private void touch_move(float f, float f2) {
        if (getCurrPath() != null) {
            float abs = Math.abs(f - this.mX);
            float abs2 = Math.abs(f2 - this.mY);
            float f3 = this.TOUCH_TOLERANCE;
            if (abs >= f3 || abs2 >= f3) {
                Path currPath = getCurrPath();
                float f4 = this.mX;
                float f5 = this.mY;
                currPath.quadTo(f4, f5, (f + f4) / 2.0f, (f2 + f5) / 2.0f);
                this.mX = f;
                this.mY = f2;
            }
        }
    }

    private void touch_start(float f, float f2) {
        this.drawings.add(new drawing(this.currBlur, this.currColor, this.currDashed, this.currFill, this.currNeon, new Path(), this.currStrokeWidth, this.currPenType, f, f2));
        if (getCurrPath() != null) {
            getCurrPath().reset();
            getCurrPath().moveTo(f, f2);
            this.mX = f;
            this.mY = f2;
        }
    }

    private void touch_up() {
        if (getCurrPath() != null) {
            getCurrPath().lineTo(this.mX, this.mY);
        }
        if (getCurrDrawing() != null) {
            getCurrDrawing().doneDrawing();
        }
    }

    public void clearMe() {
        if (this.drawings.isEmpty()) {
            return;
        }
        this.drawings.clear();
        invalidate();
    }

    public boolean drawingsEmpty() {
        return this.drawings.isEmpty();
    }

    public int getCurrStrokeWidth() {
        return this.currStrokeWidth;
    }

    public int getSmoothness() {
        return (int) (((this.TOUCH_TOLERANCE - minTolerance) / (maxTolerance - minTolerance)) * 100.0f);
    }

    public boolean isDrawing() {
        return !drawingsEmpty() && getVisibility() == 0;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Iterator<drawing> it = this.drawings.iterator();
        while (it.hasNext()) {
            drawing next = it.next();
            this.mPaint.setXfermode(next.type == PenType.eraser ? new PorterDuffXfermode(PorterDuff.Mode.CLEAR) : null);
            this.mPaint.setStyle(Paint.Style.STROKE);
            if (next.isFill() && !next.stillDrawing) {
                this.mPaint.setStyle(Paint.Style.FILL);
            }
            if (next.isDashed()) {
                this.mPaint.setPathEffect(new DashPathEffect(new float[]{next.getStrokeWidth() + 10, next.getStrokeWidth() + 20}, 0.0f));
            }
            this.mPaint.setStrokeWidth(!next.isFill() ? next.getStrokeWidth() : 4.0f);
            this.mPaint.setColor(next.getColor());
            if (next.isNeon()) {
                this.mPaint.setMaskFilter(new BlurMaskFilter(11.0f, BlurMaskFilter.Blur.NORMAL));
                canvas.drawPath(next.getPath(), this.mPaint);
            }
            this.mPaint.setMaskFilter(next.getBlur() != 0 ? new BlurMaskFilter(next.getBlur(), BlurMaskFilter.Blur.NORMAL) : null);
            canvas.drawPath(next.getPath(), this.mPaint);
            this.mPaint.setMaskFilter(null);
            this.mPaint.setPathEffect(null);
        }
        if (this.isDrawing && this.currPenType == PenType.eraser) {
            canvas.drawCircle(this.currX, this.currY, this.currStrokeWidth * 0.5f, this.pntEraserBorder);
            canvas.drawCircle(this.currX, this.currY, this.currStrokeWidth * 0.5f, this.pntEraser);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
    
        if (r6 != 3) goto L15;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r5, android.view.MotionEvent r6) {
        /*
            r4 = this;
            float r5 = r6.getX()
            r4.currX = r5
            float r0 = r6.getY()
            r4.currY = r0
            int r6 = r6.getAction()
            r1 = 1
            if (r6 == 0) goto L38
            r2 = 0
            if (r6 == r1) goto L2d
            r3 = 2
            if (r6 == r3) goto L1d
            r5 = 3
            if (r6 == r5) goto L2d
            goto L40
        L1d:
            com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo r6 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.helperClass
            float r5 = r6.snapPosX(r5, r2)
            com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo r6 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.helperClass
            float r6 = r6.snapPosY(r0, r2)
            r4.touch_move(r5, r6)
            goto L3d
        L2d:
            r4.touch_up()
            r4.isDrawing = r2
            com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo r5 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.helperClass
            r5.motionActionUp()
            goto L3d
        L38:
            r4.touch_start(r5, r0)
            r4.isDrawing = r1
        L3d:
            r4.invalidate()
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.DrawingPanel.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void restoreOptions() {
        this.TOUCH_TOLERANCE = DEFAULT_TOUCH_TOLERANCE;
        this.currPenType = PenType.default_pen;
    }

    public void setCurrBlur(int i) {
        this.currBlur = i;
    }

    public void setCurrColor(int i) {
        this.currColor = i;
    }

    public void setCurrDashed(boolean z) {
        this.currDashed = z;
    }

    public void setCurrFill(boolean z) {
        this.currFill = z;
    }

    public void setCurrNeon(boolean z) {
        this.currNeon = z;
    }

    public void setCurrPenType(PenType penType) {
        this.currPenType = penType;
    }

    public void setCurrStrokeWidth(int i) {
        this.currStrokeWidth = i;
    }

    public void setSmoothness(int i) {
        this.TOUCH_TOLERANCE = (((maxTolerance - minTolerance) * i) / 100.0f) + minTolerance;
    }

    public void undo() {
        if (!this.drawings.isEmpty()) {
            this.drawings.removeLast();
        }
        invalidate();
    }
}
