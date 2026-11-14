package com.tawfiq.imaginstudio.imagetools.pixellab.Image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.AttributeSet;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.CurrImage;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.effects.ColorFilterGenerator;

/* loaded from: classes.dex */
public class BackgroundImageHolder extends View {
    public int blurRadius;
    Rect bounds;
    int brightness;
    int contrast;
    private Bitmap currBitmap;
    int hue;
    Paint pntColor;
    Paint pntGradient;
    Paint pntImage;
    Paint pntImageCircle;
    boolean renderMode;
    float renderScaleF;
    int saturation;
    private CurrImage usedImage;

    public BackgroundImageHolder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.renderMode = false;
        this.renderScaleF = 1.0f;
        this.currBitmap = null;
        this.brightness = 0;
        this.contrast = 0;
        this.saturation = 0;
        this.hue = 0;
        this.blurRadius = 0;
        this.bounds = new Rect(0, 0, 100, 100);
        setLayerType(1, null);
        this.pntColor = new Paint();
        Paint paint = new Paint(1);
        this.pntGradient = paint;
        paint.setDither(true);
        Paint paint2 = new Paint(1);
        this.pntImage = paint2;
        paint2.setFilterBitmap(true);
        Paint paint3 = new Paint(1);
        this.pntImageCircle = paint3;
        paint3.setFilterBitmap(true);
    }

    private boolean calculateContrastColor(int i) {
        if (Color.alpha(i) == 0) {
            i = Color.rgb(0, 0, 0);
        }
        int red = Color.red(i);
        return (((float) Color.blue(i)) * 0.114f) + ((((float) Color.green(i)) * 0.587f) + (((float) red) * 0.299f)) > 186.0f;
    }

    private void unloadImage() {
        this.currBitmap = null;
    }

    public Rect absolutePortion(RectF rectF, int i, int i2) {
        float f = i;
        float f2 = i2;
        return new Rect((int) ((rectF.left / 100.0f) * f), (int) ((rectF.top / 100.0f) * f2), (int) ((rectF.right / 100.0f) * f), (int) ((rectF.bottom / 100.0f) * f2));
    }

    public void applyEffects() {
        int i = this.brightness;
        ColorFilter adjustColor = (i == 0 && this.contrast == 0 && this.saturation == 0 && this.hue == 0) ? null : ColorFilterGenerator.adjustColor(i, this.contrast, this.saturation, this.hue);
        this.pntColor.setColorFilter(adjustColor);
        this.pntGradient.setColorFilter(adjustColor);
        this.pntImage.setColorFilter(adjustColor);
        invalidate();
    }

    public boolean contrastColorIsDark() {
        int i;
        if (this.usedImage.getType() == 2) {
            try {
                i = this.usedImage.getCurrGradient().getColorAtTopLeft();
            } catch (Exception e) {
                e.printStackTrace();
                i = -16777216;
            }
            return calculateContrastColor(i);
        }
        if (this.usedImage.getType() != 4) {
            return calculateContrastColor(this.usedImage.getCurrColor());
        }
        if (this.currBitmap == null) {
            loadBitmap();
        }
        Bitmap bitmap = this.currBitmap;
        if (bitmap != null) {
            try {
                return calculateContrastColor(bitmap.getPixel(0, 0));
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public RectF flipPortion(RectF rectF, boolean z, boolean z2) {
        return new RectF(z ? 100.0f - rectF.right : rectF.left, z2 ? 100.0f - rectF.bottom : rectF.top, z ? 100.0f - rectF.left : rectF.right, z2 ? 100.0f - rectF.top : rectF.bottom);
    }

    public Bitmap gaussianBlurBitmap(Bitmap bitmap, int i) {
        if (bitmap != null && i > 0) {
            if (i > 25) {
                i = 25;
            }
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                float renderScaleF = getRenderScaleF();
                Bitmap createScaledBitmap = renderScaleF > 1.0f ? Bitmap.createScaledBitmap(bitmap, Math.max(1, (int) (width / renderScaleF)), Math.max(1, (int) (height / renderScaleF)), true) : bitmap.copy(Bitmap.Config.ARGB_8888, true);
                Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
                RenderScript create = RenderScript.create(getContext());
                Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
                Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
                ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
                create2.setRadius(i);
                create2.setInput(createFromBitmap);
                create2.forEach(createFromBitmap2);
                createFromBitmap2.copyTo(createBitmap);
                create.destroy();
                return createBitmap.getWidth() != width ? Bitmap.createScaledBitmap(createBitmap, width, height, true) : createBitmap;
            } catch (Throwable unused) {
            }
        }
        return bitmap;
    }

    public int getBlurRadius() {
        return this.blurRadius;
    }

    public int getBrightness() {
        return this.brightness;
    }

    public int getContrast() {
        return this.contrast;
    }

    public int getContrastColor() {
        return contrastColorIsDark() ? -12303292 : -1;
    }

    public Bitmap getCurrentBitmap() {
        if (this.usedImage.getType() != 4 || this.currBitmap.getWidth() <= 0 || this.currBitmap.getHeight() <= 0) {
            return null;
        }
        return this.currBitmap;
    }

    public int getHue() {
        return this.hue;
    }

    public Path getOvalPath(RectF rectF) {
        Path path = new Path();
        path.addRect(rectF, Path.Direction.CW);
        path.addOval(new RectF((int) Math.ceil(rectF.left), (int) Math.ceil(rectF.top), (int) Math.floor(rectF.right), (int) Math.floor(rectF.bottom)), Path.Direction.CCW);
        return path;
    }

    public float getRenderScaleF() {
        if (this.renderMode) {
            return this.renderScaleF;
        }
        return 1.0f;
    }

    public int getSaturation() {
        return this.saturation;
    }

    public CurrImage getUsedImage() {
        return this.usedImage;
    }

    public boolean hasTransparency() {
        Bitmap bitmap;
        if (this.usedImage.getType() == 1) {
            return Color.alpha(this.usedImage.getCurrColor()) != 255;
        }
        if (this.usedImage.getType() == 2) {
            return this.usedImage.getCurrGradient().hasAlpha();
        }
        if (this.usedImage.getType() == 4) {
            return this.usedImage.isCircular() || ((bitmap = this.currBitmap) != null && bitmap.hasAlpha());
        }
        return false;
    }

    public void loadBitmap() {
        Bitmap loadBitmapFromAsset;
        try {
            if (this.usedImage.getImageSource().checkValid()) {
                boolean z = this.renderMode;
                int width = (int) (getWidth() * getRenderScaleF());
                int height = (int) (getHeight() * getRenderScaleF());
                if (this.usedImage.getImageSource().getSourceType() == ImageSource.SourceType.local_file) {
                    int[] dimensionsFromPath = commonFuncs.getDimensionsFromPath(this.usedImage.getImageSource().getPath());
                    loadBitmapFromAsset = commonFuncs.getBitmapFromPath(this.usedImage.getImageSource().getPath(), commonFuncs.getInSampleSize((int) (dimensionsFromPath[0] * (z ? this.usedImage.getBitmapPortion().width() / 100.0f : 1.0f)), (int) (dimensionsFromPath[1] * (z ? this.usedImage.getBitmapPortion().height() / 100.0f : 1.0f)), width, height));
                } else {
                    if (this.usedImage.getImageSource().getSourceType() != ImageSource.SourceType.assets) {
                        return;
                    }
                    int[] dimensionsFromAssets = commonFuncs.getDimensionsFromAssets(this.usedImage.getImageSource().getPath(), getContext());
                    loadBitmapFromAsset = commonFuncs.loadBitmapFromAsset(getContext(), this.usedImage.getImageSource().getPath(), commonFuncs.getInSampleSize((int) (dimensionsFromAssets[0] * (z ? this.usedImage.getBitmapPortion().width() / 100.0f : 1.0f)), (int) (dimensionsFromAssets[1] * (z ? this.usedImage.getBitmapPortion().height() / 100.0f : 1.0f)), width, height));
                }
                this.currBitmap = loadBitmapFromAsset;
            }
        } catch (Exception e) {
            this.currBitmap = null;
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.Image.BackgroundImageHolder.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.bounds.set(0, 0, i, i2);
    }

    public RectF rotateRect(Rect rect, int i) {
        RectF rectF = new RectF(rect);
        Matrix matrix = new Matrix();
        matrix.setRotate(i, rect.exactCenterX(), rect.exactCenterY());
        matrix.mapRect(rectF);
        return rectF;
    }

    public void setBlurRadius(int i) {
        if (i < 0) {
            i = 0;
        } else if (i > 25) {
            i = 25;
        }
        this.blurRadius = i;
        invalidate();
    }

    public void setBrightness(int i) {
        this.brightness = i;
        applyEffects();
    }

    public void setContrast(int i) {
        this.contrast = i;
        applyEffects();
    }

    public void setEffectsNoUpdate(int i, int i2, int i3, int i4) {
        this.brightness = i;
        this.contrast = i2;
        this.saturation = i3;
        this.hue = i4;
        applyEffects();
    }

    public void setHue(int i) {
        this.hue = i;
        applyEffects();
    }

    public void setRenderMode(boolean z, float f) {
        this.renderMode = z;
        this.renderScaleF = f;
        this.currBitmap = null;
    }

    public void setSaturation(int i) {
        this.saturation = i;
        applyEffects();
    }

    public void setUsedImage(CurrImage currImage) {
        this.usedImage = currImage;
    }
}
