package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.TypedValue;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape;
import com.tawfiq.imaginstudio.imagetools.pixellab.shapesPickerDialog;

/* loaded from: classes.dex */
public class ShapeChoiceId extends View {
    shapeChangeEvent changeListener;
    BoundedShape currentShape;
    RectF indicatorArea;
    Path indicatorPath;
    Paint pnt2;
    Paint pnt3;
    Paint pnt4;
    RectF shapeArea;
    RectF shapeArea1;
    float shapeAreaPadding;

    /* loaded from: classes.dex */
    public interface shapeChangeEvent {
        void onShapeChanged(BoundedShape.ShapeLabel shapeLabel);
    }

    public ShapeChoiceId(final Context context, BoundedShape.ShapeLabel shapeLabel) {
        super(context);
        this.shapeAreaPadding = dpToPixels(2);
        this.shapeArea = new RectF();
        this.shapeArea1 = new RectF();
        this.indicatorArea = new RectF();
        this.pnt2 = new Paint(1);
        Paint paint = new Paint(1);
        this.pnt3 = paint;
        paint.setColor(Color.parseColor("#575757"));
        Paint paint2 = new Paint(1);
        this.pnt4 = paint2;
        paint2.setColor(Color.parseColor("#4a8eab"));
        this.pnt4.setAlpha(190);
        this.indicatorPath = new Path();
        this.currentShape = new BoundedShape(shapeLabel, true);
        setClickable(true);
        setBackgroundDrawable(getResources().getDrawable(R.drawable.shape_choice_bg));
        setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ShapeChoiceId.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new shapesPickerDialog(context, new shapesPickerDialog.shapePickEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ShapeChoiceId.1.1
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.shapesPickerDialog.shapePickEvent
                    public void onShapePicked(BoundedShape.ShapeLabel shapeLabel2) {
                        ShapeChoiceId.this.currentShape.setShape(shapeLabel2);
                        shapeChangeEvent shapechangeevent = ShapeChoiceId.this.changeListener;
                        if (shapechangeevent != null) {
                            shapechangeevent.onShapeChanged(shapeLabel2);
                        }
                        ShapeChoiceId.this.invalidate();
                    }
                }).show();
            }
        });
    }

    public float dist(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) Math.sqrt((f6 * f6) + (f5 * f5));
    }

    public float dpToPixels(int i) {
        return TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.shapeArea;
        if (rectF != null) {
            canvas.drawRect(rectF, this.pnt2);
        }
        RectF rectF2 = this.indicatorArea;
        if (rectF2 != null && rectF2.width() > 0.0f) {
            canvas.drawPath(this.indicatorPath, this.pnt3);
        }
        canvas.drawPath(this.currentShape.getPath(this.shapeArea1), this.pnt4);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.shapeArea.set(0.0f, 0.0f, getHeight(), getHeight());
        RectF rectF = this.shapeArea;
        float f = this.shapeAreaPadding;
        rectF.inset(f, f);
        this.pnt2.setShader(new RadialGradient(this.shapeArea.centerX(), this.shapeArea.centerY(), dist(this.shapeArea.centerX(), this.shapeArea.centerY(), 0.0f, 0.0f), Color.parseColor("#f0f0f0"), Color.parseColor("#d2d2d2"), Shader.TileMode.CLAMP));
        this.shapeArea1.set(this.shapeArea);
        RectF rectF2 = this.shapeArea1;
        float f2 = this.shapeAreaPadding;
        rectF2.inset(f2 * 3.0f, f2 * 2.0f);
        this.indicatorArea.set(this.shapeArea.right, 0.0f, getWidth(), getHeight());
        this.indicatorPath.reset();
        float width = (this.indicatorArea.width() / 5.0f) * 3.0f;
        float f3 = (width / 4.0f) * 3.0f;
        this.indicatorPath.moveTo(0.0f, 0.0f);
        this.indicatorPath.lineTo(width, 0.0f);
        float f4 = width / 2.0f;
        this.indicatorPath.lineTo(f4, f3);
        this.indicatorPath.close();
        this.indicatorPath.offset(this.indicatorArea.centerX() - f4, this.indicatorArea.centerY() - (f3 / 2.0f));
    }

    public void setChangeListener(shapeChangeEvent shapechangeevent) {
        this.changeListener = shapechangeevent;
    }

    public void setCurrShape(BoundedShape.ShapeLabel shapeLabel) {
        this.currentShape.setShape(shapeLabel);
        invalidate();
    }
}
