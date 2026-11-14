package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.graphics.RectF;
import android.os.Bundle;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class EraserMask {
    public int blur;
    public boolean moved;
    CustomPath path;
    public RectF relativeArea;
    public boolean strokeFill;
    public float strokeWidth;

    public EraserMask(float f, boolean z, int i, RectF rectF) {
        this.strokeWidth = 1.0f;
        this.strokeFill = false;
        this.relativeArea = new RectF();
        this.moved = false;
        this.blur = 0;
        this.path = new CustomPath();
        this.strokeWidth = f;
        this.strokeFill = z;
        this.blur = i;
        this.relativeArea.set(rectF);
    }

    public EraserMask(Bundle bundle) {
        this(new CustomPath(bundle != null ? bundle.getBundle(appStateConstants.CUSTOM_PATH_DATA) : null), commonFuncs.arrToRectF(bundle.getStringArrayList(appStateConstants.ERASER_MASK_REL_AREA)));
        setStrokeWidth(Float.valueOf(bundle.getString(appStateConstants.ERASER_MASK_WIDTH)).floatValue());
        setBlur(bundle.getInt(appStateConstants.ERASER_MASK_BLUR));
        setStrokeFill(bundle.getBoolean(appStateConstants.ERASER_MASK_FILL));
    }

    public EraserMask(CustomPath customPath, RectF rectF) {
        this.strokeWidth = 1.0f;
        this.strokeFill = false;
        this.relativeArea = new RectF();
        this.moved = false;
        this.blur = 0;
        CustomPath customPath2 = new CustomPath();
        this.path = customPath2;
        this.strokeFill = true;
        customPath2.set(customPath);
        this.relativeArea.set(rectF);
    }

    public int getBlur() {
        return this.blur;
    }

    public CustomPath getPath() {
        return this.path;
    }

    public float getStrokeWidth() {
        return this.strokeWidth;
    }

    public boolean isStrokeFill() {
        return this.strokeFill;
    }

    public void moved() {
        this.moved = true;
    }

    public void pointIfNotMoved(float f, float f2) {
        if (this.moved) {
            return;
        }
        this.path.addCircle(f, f2, this.strokeWidth * 0.5f);
        this.strokeFill = true;
    }

    public void setBlur(int i) {
        this.blur = i;
    }

    public void setPath(CustomPath customPath) {
        this.path = customPath;
    }

    public void setStrokeFill(boolean z) {
        this.strokeFill = z;
    }

    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBundle(appStateConstants.CUSTOM_PATH_DATA, this.path.toBundle());
        bundle.putStringArrayList(appStateConstants.ERASER_MASK_REL_AREA, commonFuncs.rectFToArr(this.relativeArea));
        bundle.putString(appStateConstants.ERASER_MASK_WIDTH, String.valueOf(getStrokeWidth()));
        bundle.putInt(appStateConstants.ERASER_MASK_BLUR, this.blur);
        bundle.putBoolean(appStateConstants.ERASER_MASK_FILL, isStrokeFill());
        return bundle;
    }
}
