package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class cropView extends View {
    private float _lastX;
    private float _lastY;
    private RectF bmpArea;
    RectF cropArea;
    Path cropOverlayPath;
    draggingSides currentlyDragged;
    float draggingDist;
    float handleRad;
    Bitmap lowResBMP;
    String path;
    Paint pntBG;
    private final Paint pntBMP;
    private final Paint pntBounds;
    Paint pntCropOverLay;
    float stroke;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.cropView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$imaginstudio$imagetools$pixellab$controls$widgets$cropView$draggingSides;

        static {
            int[] iArr = new int[draggingSides.values().length];
            $SwitchMap$com$imaginstudio$imagetools$pixellab$controls$widgets$cropView$draggingSides = iArr;
            try {
                iArr[draggingSides.left.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$controls$widgets$cropView$draggingSides[draggingSides.top.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$controls$widgets$cropView$draggingSides[draggingSides.right.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$controls$widgets$cropView$draggingSides[draggingSides.bottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$controls$widgets$cropView$draggingSides[draggingSides.none.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum draggingSides {
        none,
        top,
        bottom,
        left,
        right
    }

    public cropView(Context context, String str) {
        super(context);
        this.currentlyDragged = draggingSides.none;
        this.lowResBMP = null;
        this.bmpArea = new RectF();
        this.cropArea = null;
        this.draggingDist = dpToPixels(5);
        this.handleRad = dpToPixels(5);
        this.stroke = dpToPixels(2);
        this.path = str;
        Paint paint = new Paint();
        this.pntBG = paint;
        paint.setColor(-7829368);
        Paint paint2 = new Paint(1);
        this.pntBMP = paint2;
        paint2.setFilterBitmap(true);
        paint2.setDither(true);
        Paint paint3 = new Paint(1);
        this.pntBounds = paint3;
        paint3.setStrokeWidth(this.stroke);
        paint3.setColor(-65536);
        Paint paint4 = new Paint(1);
        this.pntCropOverLay = paint4;
        paint4.setAlpha(170);
        this.cropOverlayPath = new Path();
    }

    public float dpToPixels(int i) {
        return TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public int getAspectX() {
        return (int) this.cropArea.width();
    }

    public int getAspectY() {
        return (int) this.cropArea.height();
    }

    public float getCropBoundsBottom() {
        return Math.max(0.0f, this.cropArea.bottom - this.bmpArea.top) / this.bmpArea.height();
    }

    public float getCropBoundsLeft() {
        return Math.max(0.0f, this.cropArea.left - this.bmpArea.left) / this.bmpArea.width();
    }

    public float getCropBoundsRight() {
        return Math.max(0.0f, this.cropArea.right - this.bmpArea.left) / this.bmpArea.width();
    }

    public float getCropBoundsTop() {
        return Math.max(0.0f, this.cropArea.top - this.bmpArea.top) / this.bmpArea.height();
    }

    public void initOrFixCropArea() {
        RectF rectF = this.cropArea;
        if (rectF == null) {
            RectF rectF2 = this.bmpArea;
            RectF rectF3 = new RectF(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom);
            this.cropArea = rectF3;
            rectF3.inset(rectF3.width() / 6.0f, this.cropArea.height() / 6.0f);
            return;
        }
        rectF.left = Math.max(this.bmpArea.left, rectF.left);
        RectF rectF4 = this.cropArea;
        rectF4.top = Math.max(this.bmpArea.top, rectF4.top);
        RectF rectF5 = this.cropArea;
        rectF5.right = Math.max(this.bmpArea.right, rectF5.right);
        RectF rectF6 = this.cropArea;
        rectF6.bottom = Math.max(this.bmpArea.bottom, rectF6.bottom);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.pntBG);
        Bitmap bitmap = this.lowResBMP;
        if (bitmap == null || bitmap.getWidth() == 0 || this.lowResBMP.getHeight() == 0) {
            return;
        }
        canvas.drawBitmap(this.lowResBMP, new Rect(0, 0, this.lowResBMP.getWidth(), this.lowResBMP.getHeight()), this.bmpArea, this.pntBMP);
        canvas.drawPath(this.cropOverlayPath, this.pntCropOverLay);
        this.pntBounds.setStyle(Paint.Style.STROKE);
        canvas.drawRect(this.cropArea, this.pntBounds);
        this.pntBounds.setStyle(Paint.Style.FILL);
        canvas.drawCircle(this.cropArea.centerX(), this.cropArea.top, this.handleRad, this.pntBounds);
        RectF rectF = this.cropArea;
        canvas.drawCircle(rectF.left, rectF.centerY(), this.handleRad, this.pntBounds);
        canvas.drawCircle(this.cropArea.centerX(), this.cropArea.bottom, this.handleRad, this.pntBounds);
        RectF rectF2 = this.cropArea;
        canvas.drawCircle(rectF2.right, rectF2.centerY(), this.handleRad, this.pntBounds);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == 0 || i2 == 0) {
            this.lowResBMP = null;
            return;
        }
        try {
            String str = this.path;
            Bitmap loadBitmap = commonFuncs.loadBitmap(str, commonFuncs.getInSampleFromFile(str, i, i2));
            this.lowResBMP = loadBitmap;
            loadBitmap.getWidth();
        } catch (Exception unused) {
            this.lowResBMP = null;
        }
        Bitmap bitmap = this.lowResBMP;
        if (bitmap == null || bitmap.getWidth() == 0 || this.lowResBMP.getHeight() == 0) {
            return;
        }
        float min = Math.min(i / this.lowResBMP.getWidth(), i2 / this.lowResBMP.getHeight());
        this.bmpArea.set(0.0f, 0.0f, this.lowResBMP.getWidth() * min, min * this.lowResBMP.getHeight());
        Rect rect = new Rect(0, 0, i, i2);
        this.bmpArea.offset(rect.centerX() - this.bmpArea.centerX(), rect.centerY() - this.bmpArea.centerY());
        initOrFixCropArea();
        this.cropOverlayPath.reset();
        this.cropOverlayPath.addRect(this.bmpArea, Path.Direction.CW);
        this.cropOverlayPath.addOval(this.cropArea, Path.Direction.CCW);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        draggingSides draggingsides;
        float rawY = motionEvent.getRawY() - this._lastY;
        float rawX = motionEvent.getRawX() - this._lastX;
        this._lastY = motionEvent.getRawY();
        this._lastX = motionEvent.getRawX();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            if (Math.abs(motionEvent.getX() - this.cropArea.left) < this.draggingDist) {
                draggingsides = draggingSides.left;
            } else if (Math.abs(motionEvent.getX() - this.cropArea.right) < this.draggingDist) {
                draggingsides = draggingSides.right;
            } else if (Math.abs(motionEvent.getY() - this.cropArea.top) < this.draggingDist) {
                draggingsides = draggingSides.top;
            } else if (Math.abs(motionEvent.getY() - this.cropArea.bottom) < this.draggingDist) {
                draggingsides = draggingSides.bottom;
            }
            this.currentlyDragged = draggingsides;
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                int i = AnonymousClass1.$SwitchMap$com$imaginstudio$imagetools$pixellab$controls$widgets$cropView$draggingSides[this.currentlyDragged.ordinal()];
                if (i == 1) {
                    this.cropArea.left = Math.min(Math.max(this.bmpArea.left, motionEvent.getX()), this.cropArea.right - this.draggingDist);
                } else if (i == 2) {
                    this.cropArea.top = Math.min(Math.max(this.bmpArea.top, motionEvent.getY()), this.cropArea.bottom - this.draggingDist);
                } else if (i == 3) {
                    this.cropArea.right = Math.max(Math.min(this.bmpArea.right, motionEvent.getX()), this.cropArea.left + this.draggingDist);
                } else if (i == 4) {
                    this.cropArea.bottom = Math.max(Math.min(this.bmpArea.bottom, motionEvent.getY()), this.cropArea.top + this.draggingDist);
                } else if (i == 5) {
                    this.cropArea.offset(rawX, rawY);
                    if (!this.bmpArea.contains(this.cropArea)) {
                        this.cropArea.offset(-rawX, -rawY);
                    }
                }
                this.cropOverlayPath.reset();
                this.cropOverlayPath.addRect(this.bmpArea, Path.Direction.CW);
                this.cropOverlayPath.addOval(this.cropArea, Path.Direction.CCW);
                invalidate();
            }
            return true;
        }
        draggingsides = draggingSides.none;
        this.currentlyDragged = draggingsides;
        return true;
    }
}
