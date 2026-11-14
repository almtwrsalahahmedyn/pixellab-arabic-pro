package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;

/* loaded from: classes.dex */
public class gradientTool_Preview extends View {
    private final int DRAG_ID_HANDLE_END;
    private final int DRAG_ID_HANDLE_START;
    private final int DRAG_ID_NOTHING;
    int arrowHeadSize;
    int dragId;
    public GradientMaker.GradientFill drawingGradient;
    final int gridSquare;
    int handleRadius;
    private boolean initializedColors;
    PointF pEnd;
    PointF pStart;
    Paint pnGridBlack;
    Paint pnGridWhite;
    Paint pnHandles;

    /* loaded from: classes.dex */
    public static class defaultDirections {
        public static final int LIN_1 = 1;
        public static final int LIN_2 = 2;
        public static final int LIN_3 = 3;
        public static final int RAD_1 = 4;
        public static final int RAD_2 = 5;
        public static final int RAD_3 = 6;

        public static void modifyGradientWith(GradientMaker.GradientFill gradientFill, int i) {
            int[] iArr;
            int i2 = 3;
            switch (i) {
                case 1:
                default:
                    iArr = new int[]{0, 50, 100, 50};
                    break;
                case 2:
                    iArr = new int[]{50, 0, 50, 100};
                    break;
                case 3:
                    iArr = new int[]{0, 0, 100, 100};
                    break;
                case 4:
                    iArr = new int[]{50, 50, 100, 100};
                    i2 = 4;
                    break;
                case 5:
                    iArr = new int[]{50, 0, 50, 100};
                    i2 = 4;
                    break;
                case 6:
                    iArr = new int[]{0, 50, 100, 50};
                    i2 = 4;
                    break;
            }
            gradientFill.setV2Direction(i2, iArr);
        }
    }

    /* loaded from: classes.dex */
    public class lineEquation {
        double angle;
        float cosAlpha;
        PointF pointAlongLine = new PointF();
        float sinAlpha;
        PointF startingPoint;

        public lineEquation(double d, PointF pointF) {
            this.angle = d;
            this.startingPoint = pointF;
            this.cosAlpha = (float) Math.cos(d);
            this.sinAlpha = (float) Math.sin(d);
        }

        public PointF getPointAtDistance(float f) {
            PointF pointF = this.pointAlongLine;
            PointF pointF2 = this.startingPoint;
            pointF.set((this.cosAlpha * f) + pointF2.x, (this.sinAlpha * f) + pointF2.y);
            return this.pointAlongLine;
        }
    }

    public gradientTool_Preview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gridSquare = dpToPixels(5);
        this.handleRadius = dpToPixels(25);
        this.arrowHeadSize = dpToPixels(5);
        this.pStart = new PointF();
        this.pEnd = new PointF();
        this.drawingGradient = new GradientMaker.GradientFill();
        this.initializedColors = false;
        this.dragId = -1;
        this.DRAG_ID_NOTHING = -1;
        this.DRAG_ID_HANDLE_START = 1;
        this.DRAG_ID_HANDLE_END = 2;
        Paint paint = new Paint(1);
        this.pnGridBlack = paint;
        paint.setColor(Color.parseColor("#bdbdbd"));
        Paint paint2 = new Paint(1);
        this.pnGridWhite = paint2;
        paint2.setColor(-1);
        Paint paint3 = new Paint(1);
        this.pnHandles = paint3;
        paint3.setStrokeCap(Paint.Cap.ROUND);
    }

    public float dist(PointF pointF, PointF pointF2) {
        float f = pointF.x;
        float f2 = pointF2.x;
        float f3 = (f - f2) * (f - f2);
        float f4 = pointF.y;
        float f5 = pointF2.y;
        return (float) Math.sqrt(((f4 - f5) * (f4 - f5)) + f3);
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public GradientMaker.GradientFill getCurrentGradient() {
        return this.drawingGradient;
    }

    public void modifyDirectionsWithDefault(int i) {
        defaultDirections.modifyGradientWith(this.drawingGradient, i);
        updatePointsFromGradient();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        if (this.initializedColors) {
            Paint paint = new Paint(1);
            paint.setShader(this.drawingGradient.getShader(this.pStart, this.pEnd));
            canvas.drawRect(rect, paint);
            this.pnHandles.setColor(-12303292);
            this.pnHandles.setAlpha(100);
            this.pnHandles.setStrokeWidth(dpToPixels(4));
            this.pnHandles.setStyle(Paint.Style.STROKE);
            float dist = dist(this.pStart, this.pEnd) - (this.handleRadius * 2);
            float f = this.pEnd.y;
            PointF pointF = this.pStart;
            double atan2 = Math.atan2(f - pointF.y, r2.x - pointF.x);
            double d = atan2 + 1.5707963267948966d;
            lineEquation lineequation = new lineEquation(atan2, this.pStart);
            PointF pointF2 = new PointF();
            pointF2.set(lineequation.getPointAtDistance(this.handleRadius));
            PointF pointF3 = new PointF();
            pointF3.set(lineequation.getPointAtDistance(this.handleRadius + dist));
            int min = dist > 0.0f ? Math.min(4, (int) (dist / (this.arrowHeadSize * 2))) : 0;
            float f2 = dist / min;
            int i = 1;
            while (i <= min) {
                float f3 = (i * f2) + this.handleRadius;
                PointF pointF4 = new PointF();
                pointF4.set(lineequation.getPointAtDistance(f3 - this.arrowHeadSize));
                PointF pointF5 = new PointF();
                pointF5.set(lineequation.getPointAtDistance(f3));
                PointF pointF6 = new PointF();
                lineEquation lineequation2 = new lineEquation(d, pointF4);
                pointF6.set(lineequation2.getPointAtDistance(this.arrowHeadSize));
                canvas.drawLine(pointF5.x, pointF5.y, pointF6.x, pointF6.y, this.pnHandles);
                pointF6.set(lineequation2.getPointAtDistance(this.arrowHeadSize * (-1)));
                canvas.drawLine(pointF5.x, pointF5.y, pointF6.x, pointF6.y, this.pnHandles);
                i++;
                min = min;
                pointF3 = pointF3;
                lineequation = lineequation;
                d = d;
            }
            int i2 = min;
            PointF pointF7 = pointF3;
            double d2 = d;
            lineEquation lineequation3 = lineequation;
            canvas.drawLine(pointF2.x, pointF2.y, pointF7.x, pointF7.y, this.pnHandles);
            this.pnHandles.setStyle(Paint.Style.FILL_AND_STROKE);
            PointF pointF8 = this.pStart;
            canvas.drawCircle(pointF8.x, pointF8.y, this.handleRadius, this.pnHandles);
            PointF pointF9 = this.pEnd;
            canvas.drawCircle(pointF9.x, pointF9.y, this.handleRadius, this.pnHandles);
            this.pnHandles.setColor(-1);
            this.pnHandles.setAlpha(230);
            this.pnHandles.setStrokeWidth(dpToPixels(2));
            this.pnHandles.setStyle(Paint.Style.STROKE);
            int i3 = 1;
            while (i3 <= i2) {
                float f4 = (i3 * f2) + this.handleRadius;
                PointF pointF10 = new PointF();
                lineEquation lineequation4 = lineequation3;
                pointF10.set(lineequation4.getPointAtDistance(f4 - this.arrowHeadSize));
                PointF pointF11 = new PointF();
                pointF11.set(lineequation4.getPointAtDistance(f4));
                PointF pointF12 = new PointF();
                double d3 = d2;
                lineEquation lineequation5 = new lineEquation(d3, pointF10);
                pointF12.set(lineequation5.getPointAtDistance(this.arrowHeadSize));
                canvas.drawLine(pointF11.x, pointF11.y, pointF12.x, pointF12.y, this.pnHandles);
                pointF12.set(lineequation5.getPointAtDistance(this.arrowHeadSize * (-1)));
                canvas.drawLine(pointF11.x, pointF11.y, pointF12.x, pointF12.y, this.pnHandles);
                i3++;
                lineequation3 = lineequation4;
                d2 = d3;
            }
            canvas.drawLine(pointF2.x, pointF2.y, pointF7.x, pointF7.y, this.pnHandles);
            this.pnHandles.setStyle(Paint.Style.FILL_AND_STROKE);
            PointF pointF13 = this.pStart;
            canvas.drawCircle(pointF13.x, pointF13.y, this.handleRadius, this.pnHandles);
            PointF pointF14 = this.pEnd;
            canvas.drawCircle(pointF14.x, pointF14.y, this.handleRadius, this.pnHandles);
            this.pnHandles.setStyle(Paint.Style.STROKE);
            this.pnHandles.setColor(-12303292);
            PointF pointF15 = this.pStart;
            canvas.drawCircle(pointF15.x, pointF15.y, this.handleRadius / 4, this.pnHandles);
            PointF pointF16 = this.pEnd;
            canvas.drawCircle(pointF16.x, pointF16.y, this.handleRadius / 4, this.pnHandles);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        PointF pointF;
        PointF pointF2 = new PointF(Math.min(Math.max(0.0f, motionEvent.getX()), getWidth()), Math.min(Math.max(0.0f, motionEvent.getY()), getHeight()));
        int action = motionEvent.getAction() & 255;
        int i2 = -1;
        if (action == 0) {
            boolean z = false;
            boolean z2 = dist(pointF2, this.pStart) <= ((float) this.handleRadius);
            if (!z2 && dist(pointF2, this.pEnd) <= this.handleRadius) {
                z = true;
            }
            if (z2) {
                i2 = 1;
            } else if (z) {
                i2 = 2;
            }
        } else if (action != 1) {
            if (action == 2 && (i = this.dragId) != -1) {
                if (i == 1) {
                    pointF = this.pStart;
                } else {
                    if (i == 2) {
                        pointF = this.pEnd;
                    }
                    updateGradientDirectionFromPoints();
                    invalidate();
                }
                pointF.set(pointF2);
                updateGradientDirectionFromPoints();
                invalidate();
            }
            return true;
        }
        this.dragId = i2;
        return true;
    }

    public void setColors(int[] iArr, float[] fArr) {
        this.drawingGradient.setV2Colors(iArr, fArr);
        this.initializedColors = true;
    }

    public void setDirection(final int i, final int[] iArr) {
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_Preview.1
            @Override // java.lang.Runnable
            public void run() {
                gradientTool_Preview.this.drawingGradient.setV2Direction(i, iArr);
                gradientTool_Preview.this.updatePointsFromGradient();
                gradientTool_Preview.this.postInvalidate();
            }
        });
    }

    public void updateGradientDirectionFromPoints() {
        this.drawingGradient.getGradV2_direction()[0] = (int) ((this.pStart.x / getWidth()) * 100.0f);
        this.drawingGradient.getGradV2_direction()[1] = (int) ((this.pStart.y / getHeight()) * 100.0f);
        this.drawingGradient.getGradV2_direction()[2] = (int) ((this.pEnd.x / getWidth()) * 100.0f);
        this.drawingGradient.getGradV2_direction()[3] = (int) ((this.pEnd.y / getHeight()) * 100.0f);
    }

    public void updatePointsFromGradient() {
        this.pStart.set((this.drawingGradient.getGradV2_direction()[0] / 100.0f) * getWidth(), (this.drawingGradient.getGradV2_direction()[1] / 100.0f) * getHeight());
        this.pEnd.set((this.drawingGradient.getGradV2_direction()[2] / 100.0f) * getWidth(), (this.drawingGradient.getGradV2_direction()[3] / 100.0f) * getHeight());
    }
}
