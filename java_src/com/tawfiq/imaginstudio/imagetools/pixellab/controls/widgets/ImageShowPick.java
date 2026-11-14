package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImportedImageList;

/* loaded from: classes.dex */
public class ImageShowPick extends View implements ImportedImageList.OnImageListAction {
    float ballRadius;
    RectF bounds;
    public int currColor;
    ImportedImageList.ResImage currResImage;
    float dX;
    float dY;
    OnColorChange listener;
    PointF pickColorPoint;
    Paint pntBall;
    Paint pntBorder;
    Paint pntImage;
    Paint pntPoint;
    float previousX;
    float previousY;

    /* loaded from: classes.dex */
    public interface OnColorChange {
        void colorChanged(int i);
    }

    public ImageShowPick(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bounds = null;
        this.pickColorPoint = new PointF(0.0f, 0.0f);
        this.currColor = -16777216;
        this.ballRadius = commonFuncs.dpToPx(15);
        this.currResImage = null;
        this.listener = null;
        this.dX = 0.0f;
        this.dY = 0.0f;
        this.previousX = 0.0f;
        this.previousY = 0.0f;
        Paint paint = new Paint(1);
        this.pntImage = paint;
        paint.setFilterBitmap(true);
        Paint paint2 = new Paint(1);
        this.pntBall = paint2;
        paint2.setColor(Color.argb(50, 0, 0, 0));
        Paint paint3 = new Paint(1);
        this.pntBorder = paint3;
        paint3.setColor(Color.argb(200, 255, 255, 255));
        this.pntBorder.setStrokeWidth(commonFuncs.dpToPx(3));
        this.pntBorder.setStyle(Paint.Style.STROKE);
        Paint paint4 = new Paint(1);
        this.pntPoint = paint4;
        paint4.setColor(-16777216);
    }

    private void updateCurrColor() {
        ImportedImageList.ResImage resImage = this.currResImage;
        if (resImage != null) {
            PointF pointF = this.pickColorPoint;
            int colorAt = resImage.getColorAt(pointF.x, pointF.y);
            this.currColor = colorAt;
            OnColorChange onColorChange = this.listener;
            if (onColorChange != null) {
                onColorChange.colorChanged(colorAt);
            }
        }
    }

    public /* synthetic */ void lambda$selected$0$ImageShowPick(ImportedImageList.ResImage resImage) {
        RectF rectF = this.bounds;
        if (rectF == null) {
            return;
        }
        this.currResImage = resImage.copyForDisplay(rectF);
        this.pickColorPoint.set(this.bounds.centerX(), this.bounds.centerY());
        updateCurrColor();
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode()) {
            canvas.drawColor(Color.parseColor("#f44336"));
            return;
        }
        if (this.bounds != null) {
            ImportedImageList.ResImage resImage = this.currResImage;
            if (resImage != null) {
                resImage.draw(canvas);
            }
            PointF pointF = this.pickColorPoint;
            canvas.drawCircle(pointF.x, pointF.y, this.ballRadius, this.pntBall);
            PointF pointF2 = this.pickColorPoint;
            canvas.drawCircle(pointF2.x, pointF2.y, this.ballRadius, this.pntBorder);
            PointF pointF3 = this.pickColorPoint;
            canvas.drawPoint(pointF3.x, pointF3.y, this.pntPoint);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = new RectF(0.0f, 0.0f, i, i2);
        this.bounds = rectF;
        rectF.inset(commonFuncs.dpToPxInt(5), commonFuncs.dpToPxInt(5));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ImportedImageList.ResImage resImage = this.currResImage;
        if (resImage == null || resImage.getImgArea() == null) {
            return false;
        }
        float max = Math.max(Math.min(motionEvent.getX(), this.currResImage.getImgArea().right), this.currResImage.getImgArea().left);
        float max2 = Math.max(Math.min(motionEvent.getY(), this.currResImage.getImgArea().bottom), this.currResImage.getImgArea().top);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            PointF pointF = this.pickColorPoint;
            pointF.x = max;
            pointF.y = max2;
            updateCurrColor();
            invalidate();
            this.dX = 0.0f;
            this.dY = 0.0f;
            this.previousX = max;
            this.previousY = max2;
            return true;
        }
        if (actionMasked != 2) {
            return true;
        }
        float f = max - this.previousX;
        this.dX = f;
        float f2 = max2 - this.previousY;
        this.dY = f2;
        this.previousX = max;
        this.previousY = max2;
        this.pickColorPoint.offset(f, f2);
        updateCurrColor();
        invalidate();
        return true;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImportedImageList.OnImageListAction
    public void selected(final ImportedImageList.ResImage resImage) {
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.-$$Lambda$ImageShowPick$VjYpEhGmzxq5XmoBLqmvX9GtJMc
            @Override // java.lang.Runnable
            public final void run() {
                ImageShowPick.this.lambda$selected$0$ImageShowPick(resImage);
            }
        });
    }

    public void setListener(OnColorChange onColorChange) {
        this.listener = onColorChange;
    }
}
