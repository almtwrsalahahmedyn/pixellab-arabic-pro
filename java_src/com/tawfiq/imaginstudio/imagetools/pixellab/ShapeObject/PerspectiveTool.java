package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.AbstractComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class PerspectiveTool extends View {
    static int DRAG_HANDLE_1 = 1;
    static int DRAG_HANDLE_2 = 2;
    static int DRAG_HANDLE_3 = 3;
    static int DRAG_HANDLE_4 = 4;
    AbstractComponent componentRef;
    int dragId;
    int handleDrawColor1;
    int handleDrawColor2;
    Paint handleDrawPaint;
    int handleSize;
    int handleTouchSize;
    PerspectiveToolInterface mInterface;
    PointF point1;
    PointF point1tmp;
    PointF point2;
    PointF point2tmp;
    PointF point3;
    PointF point3tmp;
    PointF point4;
    PointF point4tmp;
    private RectF relativeArea;

    /* loaded from: classes.dex */
    public interface PerspectiveToolInterface {
        void handlesDragged(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4);
    }

    public PerspectiveTool(Context context) {
        super(context);
        this.handleSize = dpToPixels(10);
        this.handleTouchSize = dpToPixels(20);
        this.handleDrawColor1 = Color.argb(150, 255, 255, 255);
        this.handleDrawColor2 = Color.argb(100, 0, 0, 0);
        this.point1 = new PointF(10.0f, 10.0f);
        this.point2 = new PointF(100.0f, 0.0f);
        this.point3 = new PointF(130.0f, 100.0f);
        this.point4 = new PointF(10.0f, 120.0f);
        this.point1tmp = new PointF(10.0f, 10.0f);
        this.point2tmp = new PointF(100.0f, 0.0f);
        this.point3tmp = new PointF(130.0f, 100.0f);
        this.point4tmp = new PointF(10.0f, 120.0f);
        this.dragId = -1;
        this.mInterface = null;
        this.handleDrawPaint = new Paint(1);
    }

    private void drawGrid(Canvas canvas, Paint paint, int i) {
        PointF pointF = this.point4;
        float f = pointF.x;
        PointF pointF2 = this.point1;
        float f2 = i;
        PointF pointF3 = new PointF((f - pointF2.x) / f2, (pointF.y - pointF2.y) / f2);
        PointF pointF4 = this.point3;
        float f3 = pointF4.x;
        PointF pointF5 = this.point2;
        PointF pointF6 = new PointF((f3 - pointF5.x) / f2, (pointF4.y - pointF5.y) / f2);
        PointF pointF7 = this.point2;
        float f4 = pointF7.x;
        PointF pointF8 = this.point1;
        PointF pointF9 = new PointF((f4 - pointF8.x) / f2, (pointF7.y - pointF8.y) / f2);
        PointF pointF10 = this.point3;
        float f5 = pointF10.x;
        PointF pointF11 = this.point4;
        PointF pointF12 = new PointF((f5 - pointF11.x) / f2, (pointF10.y - pointF11.y) / f2);
        for (int i2 = 1; i2 < i; i2++) {
            PointF pointF13 = this.point1;
            float f6 = i2;
            PointF pointF14 = new PointF((pointF3.x * f6) + pointF13.x, (pointF3.y * f6) + pointF13.y);
            PointF pointF15 = this.point2;
            PointF pointF16 = new PointF((pointF6.x * f6) + pointF15.x, (pointF6.y * f6) + pointF15.y);
            PointF pointF17 = this.point1;
            PointF pointF18 = new PointF((pointF9.x * f6) + pointF17.x, (pointF9.y * f6) + pointF17.y);
            PointF pointF19 = this.point4;
            PointF pointF20 = new PointF((pointF12.x * f6) + pointF19.x, (f6 * pointF12.y) + pointF19.y);
            canvas.drawLine(pointF14.x, pointF14.y, pointF16.x, pointF16.y, paint);
            canvas.drawLine(pointF18.x, pointF18.y, pointF20.x, pointF20.y, paint);
        }
    }

    private boolean validPoly() {
        return commonFuncs.intersect(this.point1, this.point3, this.point2, this.point4);
    }

    public RectF circleToRect(PointF pointF, float f, int i) {
        float f2 = pointF.x;
        float f3 = pointF.y;
        RectF rectF = new RectF(f2 - f, f3 - f, f2 + f, f3 + f);
        float f4 = i * (-1);
        rectF.inset(f4, f4);
        return rectF;
    }

    public void disable() {
        setVisibility(8);
        AbstractComponent abstractComponent = this.componentRef;
        if (abstractComponent != null) {
            if (abstractComponent instanceof ShapeComponent) {
                ((ShapeComponent) abstractComponent).restoreRotations();
            } else if (abstractComponent instanceof TextComponent) {
                ((TextComponent) abstractComponent).restoreRotations();
            }
        }
        this.componentRef = null;
        this.mInterface = null;
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void drawHandle(Canvas canvas, PointF pointF) {
        this.handleDrawPaint.setColor(this.handleDrawColor2);
        this.handleDrawPaint.setStyle(Paint.Style.STROKE);
        this.handleDrawPaint.setStrokeWidth(dpToPixels(2));
        canvas.drawCircle(pointF.x, pointF.y, this.handleSize, this.handleDrawPaint);
        this.handleDrawPaint.setStyle(Paint.Style.FILL);
        this.handleDrawPaint.setColor(this.handleDrawColor1);
        canvas.drawCircle(pointF.x, pointF.y, this.handleSize, this.handleDrawPaint);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Path path = new Path();
        PointF pointF = this.point1;
        path.moveTo(pointF.x, pointF.y);
        PointF pointF2 = this.point2;
        path.lineTo(pointF2.x, pointF2.y);
        PointF pointF3 = this.point3;
        path.lineTo(pointF3.x, pointF3.y);
        PointF pointF4 = this.point4;
        path.lineTo(pointF4.x, pointF4.y);
        path.close();
        Paint paint = new Paint(1);
        paint.setARGB(60, 255, 255, 255);
        canvas.drawPath(path, paint);
        paint.setStrokeWidth(dpToPixels(1));
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(this.handleDrawColor2);
        canvas.drawPath(path, paint);
        drawGrid(canvas, paint, 6);
        drawHandle(canvas, this.point1);
        drawHandle(canvas, this.point2);
        drawHandle(canvas, this.point3);
        drawHandle(canvas, this.point4);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.PerspectiveTool.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setComponentReference(AbstractComponent abstractComponent) {
        this.componentRef = abstractComponent;
        if (abstractComponent instanceof ShapeComponent) {
            ((ShapeComponent) abstractComponent).tempDisableRotations(true, true, false);
        } else if (abstractComponent instanceof TextComponent) {
            ((TextComponent) abstractComponent).tempDisableRotations(true, true, false);
        }
    }

    public void setHandles(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        PointF pointF5 = this.point1;
        RectF rectF = this.relativeArea;
        float width = (rectF.width() * pointF.x) + rectF.left;
        RectF rectF2 = this.relativeArea;
        pointF5.set(width, (rectF2.height() * pointF.y) + rectF2.top);
        PointF pointF6 = this.point2;
        RectF rectF3 = this.relativeArea;
        float width2 = (rectF3.width() * pointF2.x) + rectF3.left;
        RectF rectF4 = this.relativeArea;
        pointF6.set(width2, (rectF4.height() * pointF2.y) + rectF4.top);
        PointF pointF7 = this.point3;
        RectF rectF5 = this.relativeArea;
        float width3 = (rectF5.width() * pointF3.x) + rectF5.left;
        RectF rectF6 = this.relativeArea;
        pointF7.set(width3, (rectF6.height() * pointF3.y) + rectF6.top);
        PointF pointF8 = this.point4;
        RectF rectF7 = this.relativeArea;
        float width4 = (rectF7.width() * pointF4.x) + rectF7.left;
        RectF rectF8 = this.relativeArea;
        pointF8.set(width4, (rectF8.height() * pointF4.y) + rectF8.top);
        invalidate();
    }

    public void setHandles(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4, RectF rectF) {
        this.relativeArea = new RectF(rectF);
        this.point1.set((rectF.width() * pointF.x) + rectF.left, (rectF.height() * pointF.y) + rectF.top);
        this.point2.set((rectF.width() * pointF2.x) + rectF.left, (rectF.height() * pointF2.y) + rectF.top);
        this.point3.set((rectF.width() * pointF3.x) + rectF.left, (rectF.height() * pointF3.y) + rectF.top);
        this.point4.set((rectF.width() * pointF4.x) + rectF.left, (rectF.height() * pointF4.y) + rectF.top);
        invalidate();
    }

    public void setPerspectiveToolInterface(PerspectiveToolInterface perspectiveToolInterface) {
        this.mInterface = perspectiveToolInterface;
    }
}
