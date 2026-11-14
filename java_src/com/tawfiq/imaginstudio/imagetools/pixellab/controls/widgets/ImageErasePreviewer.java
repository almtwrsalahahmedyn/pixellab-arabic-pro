package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView;

/* loaded from: classes.dex */
public class ImageErasePreviewer extends FrameLayout implements ImageEraseView.OnNeedUpdatePreview {
    Bitmap bmp;
    float dp;
    float eraserStroke;
    RectF imgArea;
    Paint pntPoint;
    Paint pntStroke;
    Paint pntStrokeInv;
    PointF[] previewCenters;
    float previewPadding;
    float previewRad;
    float relX;
    float relY;
    boolean topLeftCenter;

    public ImageErasePreviewer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.previewRad = commonFuncs.dpToPx(40);
        this.previewPadding = commonFuncs.dpToPx(6);
        this.pntStroke = new Paint(1);
        this.pntStrokeInv = new Paint(1);
        this.pntPoint = new Paint(1);
        this.eraserStroke = ImageEraseView.defaultStrokeWidth;
        this.previewCenters = new PointF[]{new PointF(), new PointF()};
        this.topLeftCenter = true;
        this.dp = commonFuncs.dpToPx(1);
        Paint paint = this.pntStroke;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.pntStroke.setStrokeWidth(commonFuncs.dpToPx(5));
        this.pntStroke.setColor(-1);
        this.pntStrokeInv.setStyle(style);
        this.pntStrokeInv.setColor(Color.argb(100, 0, 0, 0));
        this.pntStrokeInv.setStrokeWidth(commonFuncs.dpToPx(7));
        this.pntPoint.setColor(Color.argb(150, 255, 255, 255));
        setWillNotDraw(false);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView.OnNeedUpdatePreview
    public void disable() {
        this.bmp = null;
        this.imgArea = null;
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        RectF rectF;
        super.draw(canvas);
        if (isInEditMode() || !commonFuncs.isValidImage(this.bmp) || (rectF = this.imgArea) == null) {
            return;
        }
        float width = rectF.width() / this.bmp.getWidth();
        float f = this.previewRad / this.eraserStroke;
        Bitmap bitmap = this.bmp;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.preScale(width, width);
        matrix.preTranslate((-this.relX) / width, (-this.relY) / width);
        matrix.postScale(f, f);
        bitmapShader.setLocalMatrix(matrix);
        Paint paint = new Paint(1);
        paint.setFilterBitmap(true);
        paint.setShader(bitmapShader);
        canvas.save();
        canvas.translate(previewCenter().x, previewCenter().y);
        canvas.drawCircle(0.0f, 0.0f, this.previewRad, paint);
        canvas.drawCircle(0.0f, 0.0f, this.previewRad, this.pntStrokeInv);
        canvas.drawCircle(0.0f, 0.0f, this.previewRad, this.pntStroke);
        Bitmap bitmap2 = this.bmp;
        int contrastColor = commonFuncs.getContrastColor(bitmap2.getPixel(Math.max(0, Math.min((int) (this.relX / width), bitmap2.getWidth() - 1)), Math.min(0, Math.min((int) (this.relY / width), this.bmp.getHeight() - 1))));
        this.pntPoint.setColor(contrastColor);
        this.pntPoint.setAlpha(150);
        canvas.drawCircle(0.0f, 0.0f, this.previewRad * 0.5f, this.pntPoint);
        this.pntPoint.setColor(commonFuncs.invertColor(contrastColor));
        this.pntPoint.setAlpha(255);
        canvas.drawCircle(0.0f, 0.0f, this.dp, this.pntPoint);
        canvas.restore();
        this.bmp = null;
        this.imgArea = null;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (Math.abs(previewCenter().x - motionEvent.getX()) >= this.previewRad || Math.abs(previewCenter().y - motionEvent.getY()) >= this.previewRad) {
            return false;
        }
        this.topLeftCenter = !this.topLeftCenter;
        return false;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        PointF pointF = this.previewCenters[0];
        float f = this.previewPadding + this.previewRad;
        pointF.set(f, f);
        PointF pointF2 = this.previewCenters[1];
        float f2 = this.previewPadding + this.previewRad;
        pointF2.set(i - f2, i2 - f2);
    }

    public PointF previewCenter() {
        return this.previewCenters[!this.topLeftCenter ? 1 : 0];
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView.OnNeedUpdatePreview
    public void update(Bitmap bitmap, RectF rectF, PointF pointF, float f, float f2) {
        this.bmp = bitmap;
        this.imgArea = rectF;
        this.relX = Math.max(Math.min(pointF.x - rectF.left, rectF.width()), 0.0f);
        this.relY = Math.max(Math.min(pointF.y - rectF.top, rectF.height()), 0.0f);
        this.eraserStroke = f;
        invalidate();
    }
}
