package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class ColorPickerTool extends View {
    int currPickedColor;
    Paint drawingPaint;
    int handleRad;
    int margin;
    Point pickedColorCoordinates;
    int previewRad;
    RectF shapeArea;
    ShapeComponent shapeReference;

    public ColorPickerTool(Context context) {
        super(context);
        this.pickedColorCoordinates = new Point(0, 0);
        this.handleRad = dpToPixels(10);
        this.previewRad = dpToPixels(25);
        this.margin = dpToPixels(10);
        this.currPickedColor = -1;
        this.drawingPaint = new Paint(1);
        setLayerType(1, null);
    }

    public Point clipPointToShapeArea(float f, float f2) {
        RectF rectF = this.shapeArea;
        if (rectF == null) {
            return new Point(0, 0);
        }
        float f3 = rectF.left;
        int max = (int) Math.max(f3, Math.min(rectF.width() + f3, f));
        RectF rectF2 = this.shapeArea;
        float f4 = rectF2.top;
        return new Point(max, (int) Math.max(f4, Math.min(rectF2.height() + f4, f2)));
    }

    public void disable() {
        this.shapeArea = null;
        setVisibility(8);
        ShapeComponent shapeComponent = this.shapeReference;
        if (shapeComponent != null) {
            shapeComponent.restoreRotations();
        }
        this.shapeReference = null;
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public boolean drawToBottom() {
        return ((this.pickedColorCoordinates.y - this.handleRad) - this.margin) - (this.previewRad * 2) < 0;
    }

    public void enable(RectF rectF, ShapeComponent shapeComponent) {
        RectF rectF2 = new RectF();
        this.shapeArea = rectF2;
        rectF2.set(rectF);
        this.shapeReference = shapeComponent;
        this.pickedColorCoordinates.set((int) rectF.centerX(), (int) rectF.centerY());
        Point point = this.pickedColorCoordinates;
        this.currPickedColor = getPixelColor(point.x, point.y);
        setVisibility(0);
        ShapeComponent shapeComponent2 = this.shapeReference;
        if (shapeComponent2 != null) {
            shapeComponent2.tempDisableRotations(true, true, true);
        }
    }

    public int getPickedColor() {
        return this.currPickedColor;
    }

    public int getPixelColor(int i, int i2) {
        RectF rectF;
        ShapeComponent shapeComponent = this.shapeReference;
        if (shapeComponent == null || (rectF = this.shapeArea) == null) {
            return 0;
        }
        return shapeComponent.getColorAt(i - ((int) rectF.left), i2 - ((int) rectF.top));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f;
        int i;
        int i2;
        super.onDraw(canvas);
        canvas.save();
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setAlpha(100);
        canvas.clipRect(this.shapeArea, Region.Op.DIFFERENCE);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint);
        canvas.restore();
        this.drawingPaint.setDither(true);
        if (this.shapeReference != null) {
            this.drawingPaint.setColor(Color.argb(150, 0, 0, 0));
            Point point = this.pickedColorCoordinates;
            canvas.drawPoint(point.x, point.y, this.drawingPaint);
            Paint paint2 = this.drawingPaint;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            this.drawingPaint.setStrokeWidth(dpToPixels(3));
            Point point2 = this.pickedColorCoordinates;
            canvas.drawCircle(point2.x, point2.y, this.handleRad, this.drawingPaint);
            this.drawingPaint.setColor(Color.argb(150, 255, 255, 255));
            this.drawingPaint.setStrokeWidth(dpToPixels(2));
            Point point3 = this.pickedColorCoordinates;
            canvas.drawCircle(point3.x, point3.y, this.handleRad, this.drawingPaint);
            Paint paint3 = this.drawingPaint;
            Paint.Style style2 = Paint.Style.FILL;
            paint3.setStyle(style2);
            this.drawingPaint.setColor(Color.argb(100, 255, 255, 255));
            Point point4 = this.pickedColorCoordinates;
            canvas.drawCircle(point4.x, point4.y, this.handleRad, this.drawingPaint);
            if (drawToBottom()) {
                this.drawingPaint.setStyle(style);
                this.drawingPaint.setColor(Color.argb(100, 0, 0, 0));
                this.drawingPaint.setStrokeWidth(dpToPixels(5));
                Point point5 = this.pickedColorCoordinates;
                float f2 = point5.x;
                int i3 = point5.y + this.handleRad + this.margin;
                canvas.drawCircle(f2, i3 + r3, this.previewRad, this.drawingPaint);
                this.drawingPaint.setColor(Color.argb(150, 255, 255, 255));
                this.drawingPaint.setStrokeWidth(dpToPixels(2));
                Point point6 = this.pickedColorCoordinates;
                float f3 = point6.x;
                int i4 = point6.y + this.handleRad + this.margin;
                canvas.drawCircle(f3, i4 + r2, this.previewRad, this.drawingPaint);
                this.drawingPaint.setStyle(style2);
                this.drawingPaint.setColor(this.currPickedColor);
                Point point7 = this.pickedColorCoordinates;
                f = point7.x;
                int i5 = point7.y + this.handleRad + this.margin;
                i = this.previewRad;
                i2 = i5 + i;
            } else {
                this.drawingPaint.setColor(Color.argb(100, 0, 0, 0));
                this.drawingPaint.setStyle(style);
                this.drawingPaint.setStrokeWidth(dpToPixels(5));
                Point point8 = this.pickedColorCoordinates;
                float f4 = point8.x;
                int i6 = (point8.y - this.handleRad) - this.margin;
                canvas.drawCircle(f4, i6 - r3, this.previewRad, this.drawingPaint);
                this.drawingPaint.setColor(Color.argb(150, 255, 255, 255));
                this.drawingPaint.setStrokeWidth(dpToPixels(2));
                Point point9 = this.pickedColorCoordinates;
                float f5 = point9.x;
                int i7 = (point9.y - this.handleRad) - this.margin;
                canvas.drawCircle(f5, i7 - r2, this.previewRad, this.drawingPaint);
                this.drawingPaint.setStyle(style2);
                this.drawingPaint.setColor(this.currPickedColor);
                Point point10 = this.pickedColorCoordinates;
                f = point10.x;
                int i8 = (point10.y - this.handleRad) - this.margin;
                i = this.previewRad;
                i2 = i8 - i;
            }
            canvas.drawCircle(f, i2, i, this.drawingPaint);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Point clipPointToShapeArea = clipPointToShapeArea(motionEvent.getX(), motionEvent.getY());
        int action = motionEvent.getAction();
        if (action != 0 && action != 2) {
            return true;
        }
        this.pickedColorCoordinates.set(clipPointToShapeArea.x, clipPointToShapeArea.y);
        this.currPickedColor = getPixelColor(clipPointToShapeArea.x, clipPointToShapeArea.y);
        invalidate();
        return true;
    }
}
