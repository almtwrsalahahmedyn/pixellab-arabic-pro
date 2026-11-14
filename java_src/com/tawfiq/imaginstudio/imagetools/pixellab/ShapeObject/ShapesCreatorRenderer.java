package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class ShapesCreatorRenderer {
    public static Bitmap getBitmapFromShape(ShapesCreator shapesCreator, int i, Rect rect) {
        Bitmap createBitmap = Bitmap.createBitmap(rect.width() * i, rect.height() * i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        float f = i;
        canvas.scale(f, f);
        canvas.translate(rect.left * (-1), rect.top * (-1));
        shapesCreator.setIsRendering(true);
        shapesCreator.draw(canvas);
        shapesCreator.setIsRendering(false);
        return createBitmap;
    }
}
