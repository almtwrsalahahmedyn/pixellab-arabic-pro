package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape;

/* loaded from: classes.dex */
public class ShapePreviewButton extends View {
    RectF area;
    BoundedShape currentShape;
    Paint pnt;
    Paint pnt1;
    int shapeId;

    public ShapePreviewButton(Context context, BoundedShape.ShapeLabel shapeLabel) {
        super(context);
        this.shapeId = 0;
        setBackgroundDrawable(getResources().getDrawable(R.drawable.lgrey_flat_button_style));
        setClickable(true);
        this.shapeId = this.shapeId;
        Paint paint = new Paint(1);
        this.pnt = paint;
        paint.setColor(Color.parseColor("#c7c7c8"));
        Paint paint2 = new Paint(1);
        this.pnt1 = paint2;
        paint2.setColor(Color.parseColor("#37a56f"));
        this.area = new RectF();
        this.currentShape = new BoundedShape(shapeLabel, true);
    }

    public float dpToPixels(int i) {
        return TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Path path = this.currentShape.getPath(this.area);
        canvas.save();
        canvas.translate(0.0f, dpToPixels(3));
        canvas.drawPath(path, this.pnt);
        canvas.restore();
        canvas.drawPath(path, this.pnt1);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.area.set(0.0f, 0.0f, i, i2);
        this.area.inset(dpToPixels(10), dpToPixels(10));
    }
}
