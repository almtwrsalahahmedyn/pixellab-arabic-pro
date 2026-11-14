package com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class CurrImage {
    public static final int TYPE_COLOR = 1;
    public static final int TYPE_GRADIENT = 2;
    public static final int TYPE_PHOTO = 4;
    private int actualHeight;
    private int actualWidth;
    private RectF bitmapPortion;
    OnChangeListener changeListener;
    private boolean circular;
    private int currColor;
    private GradientMaker.GradientFill currGradient;
    private boolean flipH;
    private boolean flipV;
    public boolean forcedDims;
    private int height;
    private ImageSource imgSource;
    private int rotation;
    public boolean shouldUnloadBitmap;
    private int type;
    private int width;

    /* loaded from: classes.dex */
    public interface OnChangeListener {
        void typeChanged(int i);
    }

    private CurrImage() {
        this.type = 1;
        this.forcedDims = false;
        this.width = 1;
        this.height = 1;
        this.actualWidth = 1;
        this.actualHeight = 1;
        this.imgSource = new ImageSource();
        this.rotation = 0;
        this.circular = false;
        this.bitmapPortion = new RectF(5.0f, 5.0f, 95.0f, 95.0f);
        this.currGradient = new GradientMaker.GradientFill();
        this.shouldUnloadBitmap = false;
    }

    public CurrImage(int i, int i2, int i3) {
        this.type = 1;
        this.forcedDims = false;
        this.width = 1;
        this.height = 1;
        this.actualWidth = 1;
        this.actualHeight = 1;
        this.imgSource = new ImageSource();
        this.rotation = 0;
        this.circular = false;
        this.bitmapPortion = new RectF(5.0f, 5.0f, 95.0f, 95.0f);
        this.currGradient = new GradientMaker.GradientFill();
        this.shouldUnloadBitmap = false;
        this.width = i;
        this.height = i2;
        setType(1);
        this.currColor = i3;
    }

    private void requestUnloadBitmap() {
        this.shouldUnloadBitmap = true;
    }

    private void setImageSrc(ImageSource imageSource) {
        if (imageSource.compare(this.imgSource)) {
            return;
        }
        this.imgSource = imageSource;
        requestUnloadBitmap();
    }

    public CurrImage copy() {
        CurrImage currImage = new CurrImage();
        currImage.imgSource = this.imgSource.copy();
        currImage.currColor = this.currColor;
        currImage.currGradient = this.currGradient.copy();
        currImage.setType(this.type);
        currImage.rotation = this.rotation;
        currImage.bitmapPortion.set(this.bitmapPortion);
        currImage.circular = this.circular;
        currImage.width = this.width;
        currImage.height = this.height;
        currImage.actualWidth = this.actualWidth;
        currImage.actualHeight = this.actualHeight;
        currImage.forcedDims = this.forcedDims;
        currImage.flipH = this.flipH;
        currImage.flipV = this.flipV;
        return currImage;
    }

    public int getActualHeight() {
        return this.actualHeight;
    }

    public int getActualWidth() {
        return this.actualWidth;
    }

    public RectF getBitmapPortion() {
        return getBitmapPortion(false);
    }

    public RectF getBitmapPortion(boolean z) {
        return z ? new RectF(this.bitmapPortion) : this.bitmapPortion;
    }

    public int[] getCurrBitmapDimensions(Context context) {
        try {
            return this.imgSource.getSourceType() == ImageSource.SourceType.assets ? commonFuncs.getDimensionsFromAssets(this.imgSource.getPath(), context) : commonFuncs.getDimensionsFromPath(this.imgSource.getPath());
        } catch (Exception unused) {
            return new int[]{this.width, this.height};
        }
    }

    public int getCurrColor() {
        return this.currColor;
    }

    public GradientMaker.GradientFill getCurrGradient() {
        return this.currGradient.copy();
    }

    public int getHeight() {
        return this.height;
    }

    public ImageSource getImageSource() {
        return this.imgSource.copy();
    }

    public int getRotation() {
        return this.rotation;
    }

    public int getType() {
        return this.type;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isCircular() {
        return this.circular;
    }

    public boolean isFlipH() {
        return this.flipH;
    }

    public boolean isFlipV() {
        return this.flipV;
    }

    public void rotate90() {
        int i = this.rotation + 90;
        this.rotation = i;
        this.rotation = i % 360;
        int i2 = this.width;
        this.width = this.height;
        this.height = i2;
    }

    public void setAsBitmap(Context context, String str, RectF rectF, int i) {
        this.imgSource.setLocalFilePath(str);
        requestUnloadBitmap();
        setType(4);
        updateBitmapPortion(rectF, i, context);
    }

    public void setAsBitmapAssets(Context context, String str) {
        this.imgSource.setAssetsPath(str, false);
        requestUnloadBitmap();
        setType(4);
        this.rotation = 0;
        if (this.forcedDims) {
            updatePortionFromAspect(context);
        } else {
            updateBitmapPortion(new RectF(0.0f, 0.0f, 100.0f, 100.0f), 0, context);
        }
    }

    public void setAsColor(int i) {
        setType(1);
        this.currColor = i;
    }

    public void setAsGradient(GradientMaker.GradientFill gradientFill) {
        setType(2);
        this.currGradient = gradientFill != null ? gradientFill.copy() : null;
    }

    public void setAspect(int i, int i2, boolean z, boolean z2, Context context) {
        boolean z3 = ((float) this.width) / ((float) this.height) != ((float) i) / ((float) i2);
        this.width = i;
        this.height = i2;
        if (this.forcedDims && z2) {
            int max = Math.max(this.actualWidth, this.actualHeight);
            this.actualWidth = (int) Math.ceil((max * i) / Math.max(i, i2));
            this.actualHeight = (int) Math.ceil((max * i2) / Math.max(i, i2));
        }
        if (z && z3) {
            updatePortionFromAspect(context);
        }
    }

    public void setChangeListener(OnChangeListener onChangeListener) {
        this.changeListener = onChangeListener;
    }

    public void setCircular(boolean z) {
        this.circular = z;
    }

    public void setFillOptionsNoUpdate(int i, int i2, GradientMaker.GradientFill gradientFill) {
        setType(i);
        this.currColor = i2;
        this.currGradient = gradientFill;
        requestUnloadBitmap();
    }

    public void setFlipH(boolean z) {
        this.flipH = z;
    }

    public void setFlipV(boolean z) {
        this.flipV = z;
    }

    public void setForcedDims(int i, int i2, boolean z, Context context) {
        this.actualWidth = i;
        this.actualHeight = i2;
        setAspect(i, i2, !z, false, context);
        this.forcedDims = true;
    }

    public void setOptions(ImageSource imageSource, int i, GradientMaker.GradientFill gradientFill, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, RectF rectF, boolean z2, boolean z3, boolean z4) {
        this.currColor = i;
        this.currGradient = gradientFill;
        setType(i2);
        this.rotation = i7;
        this.bitmapPortion = rectF;
        this.circular = z2;
        this.width = i3;
        this.height = i4;
        this.actualWidth = i5;
        this.actualHeight = i6;
        this.forcedDims = z;
        this.flipH = z3;
        this.flipV = z4;
        setImageSrc(imageSource);
    }

    public void setOptions(String str, int i, GradientMaker.GradientFill gradientFill, int i2, int i3, int i4, int i5) {
        int i6 = i2 == 3 ? 4 : i2;
        this.width = i3;
        this.height = i4;
        this.rotation = i5;
        this.currColor = i;
        this.currGradient = gradientFill;
        setType(i6);
        this.bitmapPortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.circular = false;
        this.actualWidth = 1;
        this.actualHeight = 1;
        this.forcedDims = false;
        if (str == null || str.isEmpty()) {
            setImageSrc(new ImageSource());
        } else if (i2 == 4) {
            setImageSrc(new ImageSource(str));
        } else if (i2 == 3) {
            setImageSrc(new ImageSource(str, false));
        }
    }

    public void setRotation(int i) {
        this.rotation = i;
    }

    public void setType(int i) {
        this.type = i;
        OnChangeListener onChangeListener = this.changeListener;
        if (onChangeListener != null) {
            onChangeListener.typeChanged(i);
        }
    }

    public void updateBitmapPortion(RectF rectF, int i, Context context) {
        if (this.imgSource.checkValid()) {
            this.bitmapPortion = rectF;
            int[] currBitmapDimensions = getCurrBitmapDimensions(context);
            int i2 = currBitmapDimensions[0];
            int i3 = currBitmapDimensions[1];
            boolean z = (i / 90) % 2 != 0;
            int width = (int) ((rectF.width() / 100.0f) * i2);
            int height = (int) ((rectF.height() / 100.0f) * i3);
            setAspect(z ? height : width, z ? width : height, false, true, context);
            this.rotation = i;
        }
    }

    public void updatePortionFromAspect(Context context) {
        if (this.imgSource.checkValid() && this.type == 4 && this.bitmapPortion != null) {
            int[] currBitmapDimensions = getCurrBitmapDimensions(context);
            PointF pointF = new PointF(this.bitmapPortion.centerX(), this.bitmapPortion.centerY());
            float f = pointF.x;
            float min = (Math.min(f, 100.0f - f) / 100.0f) * currBitmapDimensions[0] * 2.0f;
            float f2 = pointF.y;
            float min2 = Math.min(min / this.width, (((Math.min(f2, 100.0f - f2) / 100.0f) * currBitmapDimensions[1]) * 2.0f) / this.height);
            this.bitmapPortion.set(0.0f, 0.0f, ((this.width * min2) * 100.0f) / currBitmapDimensions[0], ((this.height * min2) * 100.0f) / currBitmapDimensions[1]);
            RectF rectF = this.bitmapPortion;
            rectF.offset(pointF.x - rectF.centerX(), pointF.y - this.bitmapPortion.centerY());
            RectF rectF2 = this.bitmapPortion;
            rectF2.left = Math.max(0.0f, rectF2.left);
            RectF rectF3 = this.bitmapPortion;
            rectF3.top = Math.max(0.0f, rectF3.top);
            RectF rectF4 = this.bitmapPortion;
            rectF4.right = Math.min(100.0f, rectF4.right);
            RectF rectF5 = this.bitmapPortion;
            rectF5.bottom = Math.min(100.0f, rectF5.bottom);
        }
    }
}
