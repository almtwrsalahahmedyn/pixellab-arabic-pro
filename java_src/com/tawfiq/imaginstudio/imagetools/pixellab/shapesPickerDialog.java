package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.gridlayout.widget.GridLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ShapePreviewButton;

/* loaded from: classes.dex */
public class shapesPickerDialog extends AlertDialog {
    View dialogLayout;
    shapePickEvent shapeEvent;

    /* loaded from: classes.dex */
    public interface shapePickEvent {
        void onShapePicked(BoundedShape.ShapeLabel shapeLabel);
    }

    public shapesPickerDialog(Context context, final shapePickEvent shapepickevent) {
        super(context);
        this.shapeEvent = shapepickevent;
        View inflate = getLayoutInflater().inflate(R.layout.shapes_picker_dialog, (ViewGroup) null);
        this.dialogLayout = inflate;
        setView(inflate);
        this.dialogLayout.setBackgroundDrawable(new Drawable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.shapesPickerDialog.1
            Paint pnt = new Paint(1);

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                this.pnt.setShader(new RadialGradient(0.5f * canvas.getWidth(), 0.0f, canvas.getHeight(), Color.parseColor("#fefefe"), Color.parseColor("#dfdfdf"), Shader.TileMode.CLAMP));
                canvas.drawPaint(this.pnt);
            }

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -1;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }
        });
        GridLayout gridLayout = (GridLayout) this.dialogLayout.findViewById(R.id.insertShapes);
        this.dialogLayout.findViewById(R.id.shape_picker_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.shapesPickerDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                shapesPickerDialog.this.dismiss();
            }
        });
        for (final BoundedShape.ShapeLabel shapeLabel : BoundedShape.ShapeLabel.values()) {
            View shapePreviewButton = new ShapePreviewButton(getContext(), shapeLabel);
            GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
            int dpToPixels = dpToPixels(70);
            ((ViewGroup.MarginLayoutParams) layoutParams).width = dpToPixels;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = dpToPixels;
            int dpToPixels2 = dpToPixels(5);
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = dpToPixels2;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = dpToPixels2;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = dpToPixels2;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = dpToPixels2;
            shapePreviewButton.setLayoutParams(layoutParams);
            shapePreviewButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.shapesPickerDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    shapePickEvent shapepickevent2 = shapepickevent;
                    if (shapepickevent2 != null) {
                        shapepickevent2.onShapePicked(shapeLabel);
                        shapesPickerDialog.this.dismiss();
                    }
                }
            });
            gridLayout.addView(shapePreviewButton);
        }
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, this.dialogLayout.getResources().getDisplayMetrics());
    }
}
