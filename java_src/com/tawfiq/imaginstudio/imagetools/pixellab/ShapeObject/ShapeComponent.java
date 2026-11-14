package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.BlendMode;
import android.graphics.BlurMaskFilter;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.EmbossMaskFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.os.Bundle;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.AbstractComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.Image.CropInfo;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ImageEraseView;
import com.tawfiq.imaginstudio.imagetools.pixellab.effects.ColorFilterGenerator;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ShapeComponent extends AbstractComponent {
    private static final int DRAGGING_HANDLE_HEIGHTOR = 3;
    private static final int DRAGGING_HANDLE_RESIZOR = 0;
    private static final int DRAGGING_HANDLE_ROTATE = 5;
    private static final int DRAGGING_HANDLE_WIDTHOR = 2;
    private static final int DRAGGING_WHOLE = 4;
    public static final int FILL_TYPE_COLOR = 1;
    public static final int FILL_TYPE_GRADIENT = 2;
    public static int SHAPE_TYPE_ARROW = 6;
    public static int SHAPE_TYPE_BEZIER = 4;
    public static int SHAPE_TYPE_DRAWING = 3;
    public static int SHAPE_TYPE_GALLERY = 2;
    public static int SHAPE_TYPE_SHAPE = 5;
    public static int SHAPE_TYPE_STICKER = 1;
    public static final int threeD_TYPE_OBLIQUE = 3;
    public static final int threeD_TYPE_PERSPECTIVE = 1;
    private int EmbossAmbient;
    private int EmbossBevel;
    private boolean EmbossEnabled;
    private int EmbossHardness;
    private int EmbossIntensity;
    private int EmbossLightAngle;
    private int RotationX;
    private int RotationY;
    OnSelectEventListener_shape SelectListener;
    Rect absoluteRegion;
    public int angle;
    public Bundle arrowDataBundle;
    public int assigned_id_shape;
    public Bundle bezierMaskBundle;
    public boolean bezierMaskEnabled;
    public boolean bezierMaskIn;
    private ArrayList<Path> bezierMaskPath;
    private RectF bezierMaskRect;
    public Bundle bezierShapeBundle;
    float bigBallRadius;
    private int bitmapInRotation;
    private RectF bitmapPortion;
    private Bitmap bitmap_3d_cache;
    private Bitmap bitmap_cache;
    private Bitmap bitmap_emboss;
    private Bitmap bitmap_inner_shadow;
    private Bitmap bitmap_shadow;
    private Bitmap bitmap_stroke;
    public int blendMode;
    private BmpPathMasks bmpMasks;
    RectF bmpRegion;
    RectF boundsToDraw;
    int brightness;
    private boolean circularCrop;
    int colorOverlayColor;
    boolean colorOverlayEnabled;
    int colorOverlayFillType;
    GradientMaker.GradientFill colorOverlayGradient;
    int contrast;
    Bitmap currBitmap;
    private ColorFilter currColorFilter;
    float dX;
    float dY;
    private int dragID;
    private boolean flipHor;
    private boolean flipVer;
    private final float floatPrecision;
    private boolean frozen;
    private int gaussianBlurRadius;
    public float height_f;
    PointF heightor;
    private boolean hidden;
    int hue;
    ImageSource imgSource;
    private boolean isSelected;
    private OnShapeNotifyLayers layersListener;
    private boolean locked;
    private Matrix mMatrix;
    public Bundle mergedDataBundle;
    private int min_height;
    private int min_width;
    private boolean need_redraw;
    int oldAngle;
    float oldHeight;
    float oldPosX;
    float oldPosY;
    float oldWidth;
    Paint paint;
    Paint paintHandleRotate;
    Paint paintHandleRotateBorder;
    Paint paintHandles;
    Paint paintHandlesBorder;
    Paint paintHandlesHighlight;
    Paint paintSelected;
    Paint paintSelectedBorder;
    private boolean perspectiveEnabled;
    public PointF perspectivePoint1;
    public PointF perspectivePoint2;
    public PointF perspectivePoint3;
    public PointF perspectivePoint4;
    float previousX;
    float previousY;
    public String reference;
    private int removeColorBlur;
    private ArrayList<ColorTolerance> removeColorColors;
    private boolean removeColorEnabled;
    boolean renderMode;
    float renderScaleF;
    PointF resizor;
    PointF rotator;
    int saturation;
    private int shadow_color;
    private int shadow_dx;
    private int shadow_dy;
    private Boolean shadow_enabled;
    private int shadow_inner_color;
    private int shadow_inner_dx;
    private int shadow_inner_dy;
    private Boolean shadow_inner_enabled;
    private int shadow_inner_radius;
    private int shadow_padding;
    private float shadow_radius;
    public Bundle shapeDataBundle;
    private int shapeOpacity;
    private boolean shapeOpacityShadowInclude;
    int shapeType;
    float smallBallRadius;
    private int strokeColor;
    private boolean strokeEnabled;
    private int strokeRadius;
    private boolean tempDisable3DRots;
    private boolean tempDisablePerspective;
    private boolean tempDisableRot;
    private Bitmap textureBmb;
    boolean textureFlipH;
    boolean textureFlipV;
    int textureInRot;
    private boolean textureMaintainAspect;
    RectF texturePortion;
    private int textureScale;
    private ImageSource textureSrc;
    int threeDDepth;
    boolean threeDDepthColorAutomatic;
    int threeDDepthColorFill;
    int threeDDepthDarken;
    int threeDDepthFillType;
    GradientMaker.GradientFill threeDDepthGradientFill;
    boolean threeDEnabled;
    boolean threeDLightingEnabled;
    int threeDLightingIntensity;
    int threeDLightingShadow;
    int threeDLightingSpecularHardness;
    int threeDObliqueAngle;
    int threeDQuality;
    boolean threeDStokeInclude;
    int threeDViewType;
    Canvas tmpCanvas;
    private boolean tmpHidden;
    float[] tmpPointPost;
    float[] tmpPointPre;
    public float width_f;
    PointF widthor;

    /* loaded from: classes.dex */
    public static class ColorTolerance {
        public int c;
        public int t;

        public ColorTolerance(int i, int i2) {
            this.c = i;
            this.t = i2;
        }

        public ColorTolerance copy() {
            return new ColorTolerance(this.c, this.t);
        }
    }

    /* loaded from: classes.dex */
    public class HandleBall {
        PointF point = new PointF();

        public HandleBall(int i) {
        }

        public float getX() {
            return this.point.x;
        }

        public float getY() {
            return this.point.y;
        }

        public void setX(float f) {
            this.point.x = f;
        }

        public void setY(float f) {
            this.point.y = f;
        }
    }

    /* loaded from: classes.dex */
    public interface OnSelectEventListener_shape {
        void onEvent_SelectShape(int i);

        void onEvent_ShapeGeometryChanged(Bundle bundle, String str);
    }

    /* loaded from: classes.dex */
    public interface OnShapeNotifyLayers {
        void imageChanged(boolean z);

        void selectionChanged(boolean z);
    }

    public static void applyBlend(Paint paint, int i) {
        BlendMode blendMode;
        if (i == 0) {
            paint.setXfermode(null);
            if (Build.VERSION.SDK_INT >= 29) {
                paint.setBlendMode(null);
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT < 29) {
            paint.setXfermode(new PorterDuffXfermode(i == 3 ? PorterDuff.Mode.MULTIPLY : i == 8 ? PorterDuff.Mode.SCREEN : i == 2 ? PorterDuff.Mode.DARKEN : i == 7 ? PorterDuff.Mode.LIGHTEN : i == 10 ? PorterDuff.Mode.ADD : PorterDuff.Mode.SRC_OVER));
            return;
        }
        if (i == 1) {
            blendMode = BlendMode.SRC_OVER;
            paint.setDither(true);
        } else {
            blendMode = i == 2 ? BlendMode.DARKEN : i == 3 ? BlendMode.MULTIPLY : i == 4 ? BlendMode.COLOR_BURN : i == 5 ? BlendMode.DARKEN : i == 6 ? BlendMode.DARKEN : i == 7 ? BlendMode.LIGHTEN : i == 8 ? BlendMode.SCREEN : i == 9 ? BlendMode.COLOR_DODGE : i == 10 ? BlendMode.PLUS : i == 11 ? BlendMode.LIGHTEN : i == 12 ? BlendMode.OVERLAY : i == 13 ? BlendMode.SOFT_LIGHT : i == 14 ? BlendMode.HARD_LIGHT : i == 15 ? BlendMode.HARD_LIGHT : i == 16 ? BlendMode.HARD_LIGHT : i == 17 ? BlendMode.OVERLAY : i == 18 ? BlendMode.HARD_LIGHT : i == 19 ? BlendMode.DIFFERENCE : i == 20 ? BlendMode.EXCLUSION : i == 21 ? BlendMode.DIFFERENCE : i == 22 ? BlendMode.COLOR_DODGE : i == 23 ? BlendMode.HUE : i == 24 ? BlendMode.SATURATION : i == 25 ? BlendMode.COLOR : BlendMode.LUMINOSITY;
        }
        paint.setBlendMode(blendMode);
    }

    private int colorDist2(int i, int i2, int i3, int i4, int i5, int i6) {
        float f = (i + i4) / 2.0f;
        int i7 = i - i4;
        int i8 = i2 - i5;
        float f2 = (((f / 256.0f) + 2.0f) * i7 * i7) + (i8 * i8 * 4);
        float f3 = i3 - i6;
        return (int) (f2 + ((((255.0f - f) / 256.0f) + 2.0f) * f3 * f3));
    }

    public Bitmap EmbossImage(Bitmap bitmap, float f, boolean z) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (f > 1.0f) {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(EmbossImage(Bitmap.createScaledBitmap(bitmap, Math.max(1, (int) (width / f)), Math.max(1, (int) (height / f)), true), 1.0f, z), width, height, true);
            Canvas canvas = new Canvas(createScaledBitmap);
            Paint paint = new Paint(7);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            Bitmap extractAlpha = bitmap.extractAlpha();
            canvas.drawBitmap(extractAlpha, 0.0f, 0.0f, paint);
            extractAlpha.recycle();
            return createScaledBitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Bitmap extractAlpha2 = bitmap.extractAlpha();
        Bitmap createBitmap2 = Bitmap.createBitmap(width, height, Bitmap.Config.ALPHA_8);
        Canvas canvas2 = new Canvas(createBitmap2);
        Paint paint2 = new Paint(7);
        paint2.setMaskFilter(new BlurMaskFilter(Math.max(1.0f, this.EmbossBevel * 0.15f * f), BlurMaskFilter.Blur.NORMAL));
        canvas2.drawBitmap(extractAlpha2, 0.0f, 0.0f, paint2);
        Paint paint3 = new Paint(7);
        paint3.setMaskFilter(z ? getCurr3DEmbossEffect() : getCurrEmbossEffect(f));
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint3.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        Canvas canvas3 = new Canvas(createBitmap);
        Paint paint4 = new Paint(7);
        canvas3.drawBitmap(bitmap, 0.0f, 0.0f, paint4);
        canvas3.drawBitmap(createBitmap2, 0.0f, 0.0f, paint3);
        paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        canvas3.drawBitmap(extractAlpha2, 0.0f, 0.0f, paint4);
        createBitmap2.recycle();
        extractAlpha2.recycle();
        return createBitmap;
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

    public int getGaussianBlurRadius() {
        return this.gaussianBlurRadius;
    }

    public void setBlendMode(int i) {
        this.blendMode = i;
        if (i == 0) {
            setLayerType(0, null);
        } else {
            Paint paint = new Paint();
            applyBlend(paint, i);
            setLayerType(2, paint);
        }
        invalidate();
        Object parent = getParent();
        if (parent != null) {
            ((View) parent).invalidate();
        }
    }

    public void setGaussianBlurRadius(int i) {
        if (i < 0) {
            i = 0;
        } else if (i > 25) {
            i = 25;
        }
        this.gaussianBlurRadius = i;
        invalidate();
    }

    public void setRenderMode(boolean z, float f) {
        this.renderMode = z;
        this.renderScaleF = f;
        unloadBitmaps();
        this.need_redraw = true;
    }

    public Bitmap getCurrBitmap() {
        return this.currBitmap;
    }

    public void relativeScale(float f) {
        setDims(this.width_f * f, this.height_f * f);
    }

    public void setBmpPathMasks(BmpPathMasks bmpPathMasks) {
        if (bmpPathMasks == null || bmpPathMasks.isEmpty()) {
            bmpPathMasks = null;
        }
        this.bmpMasks = bmpPathMasks;
        fullRedraw();
    }

    public BmpPathMasks getBmpPathMasks() {
        BmpPathMasks bmpPathMasks = this.bmpMasks;
        if (bmpPathMasks != null) {
            return bmpPathMasks.copy();
        }
        return null;
    }

    public RectF getBoundsRect() {
        return new RectF(getX(), getY(), getX() + this.width_f, getY() + this.height_f);
    }

    public void setArrowData(Bundle bundle) {
        this.arrowDataBundle = bundle;
    }

    public void setLayersListener(OnShapeNotifyLayers onShapeNotifyLayers) {
        this.layersListener = onShapeNotifyLayers;
    }

    public boolean isFlipHor() {
        return this.flipHor;
    }

    public void setFlipHor(boolean z) {
        this.flipHor = z;
        fullRedraw();
    }

    public boolean isFlipVer() {
        return this.flipVer;
    }

    public void setFlipVer(boolean z) {
        this.flipVer = z;
        fullRedraw();
    }

    public int getThreeDDepth() {
        return this.threeDDepth;
    }

    public boolean isThreeDDepthColorAutomatic() {
        return this.threeDDepthColorAutomatic;
    }

    public int getThreeDDepthColorFill() {
        return this.threeDDepthColorFill;
    }

    public int getThreeDDepthDarken() {
        return this.threeDDepthDarken;
    }

    public int getThreeDDepthFillType() {
        return this.threeDDepthFillType;
    }

    public boolean isThreeDEnabled() {
        return this.threeDEnabled;
    }

    public boolean isThreeDLightingEnabled() {
        return this.threeDLightingEnabled;
    }

    public int getThreeDLightingSpecularHardness() {
        return this.threeDLightingSpecularHardness;
    }

    public int getThreeDLightingIntensity() {
        return this.threeDLightingIntensity;
    }

    public int getThreeDLightingShadow() {
        return this.threeDLightingShadow;
    }

    public int getThreeDQuality() {
        return this.threeDQuality;
    }

    public boolean isThreeDStokeInclude() {
        return this.threeDStokeInclude;
    }

    public int getThreeDObliqueAngle() {
        return this.threeDObliqueAngle;
    }

    public void set3dObliqueAngle(int i) {
        this.threeDObliqueAngle = i;
        fullRedraw();
    }

    public int getThreeDViewType() {
        return this.threeDViewType;
    }

    public GradientMaker.GradientFill getThreeDDepthGradientFill() {
        return this.threeDDepthGradientFill;
    }

    public void freezeFullRedraw() {
        this.frozen = true;
    }

    public void UnFreezeFullRedraw() {
        this.frozen = false;
        requestLayout();
        fullRedraw();
    }

    public void set3dViewType(int i) {
        this.threeDViewType = i;
        fullRedraw();
    }

    public void set3dEnabled(boolean z) {
        this.threeDEnabled = z;
        fullRedraw();
    }

    public void set3dLighting(boolean z, int i, int i2, int i3, int i4) {
        this.threeDLightingEnabled = z;
        this.EmbossLightAngle = i;
        this.threeDLightingIntensity = i2;
        this.threeDLightingShadow = i3;
        this.threeDLightingSpecularHardness = i4;
        fullRedraw();
    }

    public void set3dDepthColor(int i, int i2, GradientMaker.GradientFill gradientFill, boolean z) {
        this.threeDDepthFillType = i;
        this.threeDDepthColorFill = i2;
        this.threeDDepthGradientFill = gradientFill;
        this.threeDDepthColorAutomatic = z;
        fullRedraw();
    }

    public void set3dDepth(int i, int i2, int i3, boolean z) {
        this.threeDDepth = i;
        this.threeDDepthDarken = i2;
        this.threeDQuality = i3;
        this.threeDStokeInclude = z;
        fullRedraw();
    }

    private void loadTexture() {
        if (this.textureSrc.getSourceType() == ImageSource.SourceType.local_file) {
            try {
                int[] dimensionsFromPath = commonFuncs.getDimensionsFromPath(this.textureSrc.getPath());
                dimensionsFromPath[0] = (int) (dimensionsFromPath[0] * (this.renderMode ? this.texturePortion.width() / 100.0f : 1.0f));
                dimensionsFromPath[1] = (int) (dimensionsFromPath[1] * (this.renderMode ? this.texturePortion.height() / 100.0f : 1.0f));
                this.textureBmb = commonFuncs.cropRotBitmap(commonFuncs.getBitmapFromPath(this.textureSrc.getPath(), commonFuncs.getInSampleSize(dimensionsFromPath[0], dimensionsFromPath[1], (int) (this.width_f * getRenderScaleF()), (int) (this.height_f * getRenderScaleF()))), this.texturePortion, this.textureInRot, this.textureFlipH, this.textureFlipV);
            } catch (Exception unused) {
                this.textureBmb = null;
            }
        }
    }

    public void setTextureScale(int i) {
        this.textureScale = i;
        fullRedraw();
    }

    public void setTextureMaintainAspect(boolean z) {
        this.textureMaintainAspect = z;
        fullRedraw();
    }

    public int getTextureScale() {
        return this.textureScale;
    }

    public boolean isTextureMaintainAspect() {
        return this.textureMaintainAspect;
    }

    public ImageSource getTextureSrc() {
        return this.textureSrc.copy();
    }

    public void setNewTextureSrc(ImageSource imageSource, int i, RectF rectF, boolean z, boolean z2) {
        this.textureSrc = imageSource;
        this.textureInRot = i;
        this.texturePortion = rectF;
        this.textureFlipH = z;
        this.textureFlipV = z2;
        this.textureScale = 10;
        this.textureMaintainAspect = false;
        this.textureBmb = null;
        fullRedraw();
    }

    public void removeTexture() {
        this.textureBmb = null;
        this.textureSrc = new ImageSource();
        fullRedraw();
    }

    public int getBrightness() {
        return this.brightness;
    }

    public int getContrast() {
        return this.contrast;
    }

    public int getSaturation() {
        return this.saturation;
    }

    public int getHue() {
        return this.hue;
    }

    public void setEffects(int i, int i2, int i3, int i4) {
        this.brightness = i3;
        this.contrast = i4;
        this.saturation = i2;
        this.hue = i;
        applyEffects();
    }

    public void applyEffects() {
        if (this.brightness != 0 || this.contrast != 0 || this.saturation != 0 || this.hue != 0) {
            this.currColorFilter = ColorFilterGenerator.adjustColor(this.brightness, this.contrast, this.saturation, this.hue);
        } else {
            this.currColorFilter = null;
        }
        fullRedraw();
    }

    public ArrayList<ColorTolerance> getRemoveColorsTolerances(boolean z) {
        if (!z) {
            return this.removeColorColors;
        }
        ArrayList<ColorTolerance> arrayList = new ArrayList<>(this.removeColorColors.size());
        Iterator<ColorTolerance> it = this.removeColorColors.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().copy());
        }
        return arrayList;
    }

    public void setRemoveColorOptions(boolean z, int i, ArrayList<ColorTolerance> arrayList) {
        this.removeColorEnabled = z;
        this.removeColorBlur = i;
        this.removeColorColors = arrayList;
        fullRedraw();
    }

    public void setRemoveColorOptionsPacked(boolean z, int i, ArrayList<String> arrayList) {
        this.removeColorEnabled = z;
        this.removeColorBlur = i;
        this.removeColorColors.clear();
        int i2 = 0;
        while (arrayList != null) {
            int i3 = i2 + 1;
            try {
                if (i3 >= arrayList.size()) {
                    break;
                }
                this.removeColorColors.add(new ColorTolerance(Integer.parseInt(arrayList.get(i2)), Integer.parseInt(arrayList.get(i3))));
                i2 += 2;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.removeColorColors.isEmpty()) {
            this.removeColorColors.add(new ColorTolerance(-1, 100));
        }
        fullRedraw();
    }

    public boolean isRemoveColorEnabled() {
        return this.removeColorEnabled;
    }

    public void setRemoveColorEnabled(boolean z) {
        this.removeColorEnabled = z;
        fullRedraw();
    }

    public int getRemoveColorBlur() {
        return this.removeColorBlur;
    }

    public void setRemoveColorBlur(int i) {
        this.removeColorBlur = i;
        if (this.removeColorEnabled) {
            fullRedraw();
        }
    }

    public void setPerspectivePoints(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        this.perspectivePoint1.set(pointF.x, pointF.y);
        this.perspectivePoint2.set(pointF2.x, pointF2.y);
        this.perspectivePoint3.set(pointF3.x, pointF3.y);
        this.perspectivePoint4.set(pointF4.x, pointF4.y);
        invalidate();
    }

    public void restorePerspectivePoints() {
        this.perspectivePoint1.set(0.0f, 0.0f);
        this.perspectivePoint2.set(1.0f, 0.0f);
        this.perspectivePoint3.set(1.0f, 1.0f);
        this.perspectivePoint4.set(0.0f, 1.0f);
        invalidate();
    }

    public int getShapeOpacity() {
        return this.shapeOpacity;
    }

    public void setShapeOpacity(int i) {
        this.shapeOpacity = i;
        invalidate();
    }

    public boolean isShapeOpacityShadowInclude() {
        return this.shapeOpacityShadowInclude;
    }

    public void setShapeOpacityShadowInclude(boolean z) {
        this.shapeOpacityShadowInclude = z;
        invalidate();
    }

    private void applyAlphaToPaint(Paint paint) {
        int i = this.shapeOpacity;
        if (i != 100) {
            paint.setAlpha((int) ((i / 100.0f) * 255.0f));
        }
    }

    public boolean isPerspectiveEnabled() {
        return this.perspectiveEnabled;
    }

    public void setPerspectiveEnabled(boolean z) {
        this.perspectiveEnabled = z;
        invalidate();
    }

    public int getColorAt(int i, int i2) {
        if (!validImage(this.bitmap_cache)) {
            return 0;
        }
        return this.bitmap_cache.getPixel(Math.min(i, r0.getWidth() - 1), Math.min(i2, this.bitmap_cache.getHeight() - 1));
    }

    public boolean getStrokeEnabled() {
        return this.strokeEnabled;
    }

    public int getStrokeColor() {
        return this.strokeColor;
    }

    public int getStrokeRadius() {
        return this.strokeRadius;
    }

    public void setStroke(boolean z, int i, int i2) {
        this.strokeEnabled = z;
        this.strokeRadius = i;
        this.strokeColor = i2;
        fullRedraw();
    }

    public ImageSource getImageSource() {
        return this.imgSource.copy();
    }

    public RectF getBitmapPortion(boolean z) {
        return z ? new RectF(this.bitmapPortion) : this.bitmapPortion;
    }

    public int getBitmapInRotation() {
        return this.bitmapInRotation;
    }

    public boolean isBitmapCircularCrop() {
        return this.circularCrop;
    }

    public void resetCropPortion() {
        this.bitmapPortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
    }

    int[] getCurrBitmapDimensions() {
        Bitmap bitmap = this.currBitmap;
        if (bitmap != null) {
            return new int[]{bitmap.getWidth(), this.currBitmap.getHeight()};
        }
        try {
            if (this.imgSource.getSourceType() == ImageSource.SourceType.assets) {
                String path = this.imgSource.getPath();
                if (this.imgSource.isAssetFolder()) {
                    path = path + "/" + getContext().getAssets().list(this.imgSource.getPath())[0];
                }
                return commonFuncs.getDimensionsFromAssets(path, getContext());
            }
            return commonFuncs.getDimensionsFromPath(this.imgSource.getPath());
        } catch (Exception unused) {
            return new int[]{1, 1};
        }
    }

    public void setCrop(RectF rectF, int i, boolean z, boolean z2, boolean z3) {
        int[] currBitmapDimensions = getCurrBitmapDimensions();
        Rect absolutePortion = absolutePortion(rectF, currBitmapDimensions[0], currBitmapDimensions[1]);
        boolean z4 = (i / 90) % 2 != 0;
        boolean z5 = (this.bitmapInRotation / 90) % 2 != 0;
        float f = !z5 ? this.width_f : this.height_f;
        float f2 = z5 ? this.width_f : this.height_f;
        float width = absolutePortion.width();
        float height = absolutePortion.height();
        float min = Math.min(f / width, f2 / height);
        this.width_f = Math.max(!z4 ? width * min : height * min, this.min_width);
        this.height_f = Math.max(z4 ? width * min : height * min, this.min_height);
        this.bitmapPortion = rectF;
        this.circularCrop = z;
        this.bitmapInRotation = i;
        this.flipHor = z2;
        this.flipVer = z3;
        fullRedraw();
        requestLayout();
    }

    public boolean compareCrop(RectF rectF, int i, boolean z, boolean z2, boolean z3) {
        return this.bitmapPortion.equals(rectF) && this.bitmapInRotation == i && isBitmapCircularCrop() == z && this.flipHor == z2 && this.flipVer == z3;
    }

    public float getZoomFactor() {
        return MainActivity.helperClass.getZoomFactor();
    }

    public void setTouchEventListener(OnSelectEventListener_shape onSelectEventListener_shape) {
        this.SelectListener = onSelectEventListener_shape;
    }

    @Override // android.view.View
    public boolean isSelected() {
        return this.isSelected;
    }

    public void toggleSelect(boolean z) {
        if (this.isSelected != z) {
            this.isSelected = z;
            OnShapeNotifyLayers onShapeNotifyLayers = this.layersListener;
            if (onShapeNotifyLayers != null) {
                onShapeNotifyLayers.selectionChanged(this.isSelected);
            }
            requestLayout();
            invalidate();
        }
    }

    public float getShapeHeight() {
        return this.height_f;
    }

    public float getShapeWidth() {
        return this.width_f;
    }

    public void hideTemp() {
        if (this.hidden) {
            return;
        }
        setHidden(true);
        this.tmpHidden = true;
    }

    public void unhideTemp() {
        if (this.tmpHidden) {
            setHidden(false);
            this.tmpHidden = false;
        }
    }

    public void setHidden(boolean z) {
        boolean z2 = this.hidden;
        this.hidden = z;
        if (z2 != this.hidden) {
            invalidate();
        }
    }

    public void setLocked(boolean z) {
        boolean z2 = this.hidden;
        this.locked = z;
        if (z2 != this.locked) {
            invalidate();
        }
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public boolean isLocked() {
        return this.locked;
    }

    private void init() {
        this.removeColorColors.add(new ColorTolerance(-1, 100));
        this.paintSelected.setColor(-1);
        this.paintSelected.setStyle(Paint.Style.STROKE);
        this.paintSelected.setStrokeWidth(commonFuncs.dpToPx(1));
        this.paintSelectedBorder.setColor(Color.argb(70, 0, 0, 0));
        this.paintSelectedBorder.setStyle(Paint.Style.STROKE);
        this.paintSelectedBorder.setStrokeWidth(commonFuncs.dpToPx(2));
        this.paintHandles.setColor(-1);
        this.paintHandlesBorder.setColor(Color.argb(60, 0, 0, 0));
        this.paintHandlesBorder.setStyle(Paint.Style.FILL_AND_STROKE);
        this.paintHandlesBorder.setStrokeWidth(commonFuncs.dpToPx(1));
        this.paintHandlesHighlight.setColor(Color.parseColor("#4db8f3"));
        this.paintHandleRotate.setColor(this.paintHandles.getColor());
        this.paintHandleRotate.setStyle(Paint.Style.STROKE);
        this.paintHandleRotate.setStrokeWidth(commonFuncs.dpToPx(3));
        this.paintHandleRotate.setStrokeJoin(Paint.Join.ROUND);
        this.paintHandleRotate.setStrokeCap(Paint.Cap.ROUND);
        this.paintHandleRotateBorder.set(this.paintHandleRotate);
        this.paintHandleRotateBorder.setStrokeWidth(commonFuncs.dpToPx(4));
        this.paintHandleRotateBorder.setColor(this.paintHandlesBorder.getColor());
    }

    public ShapeComponent(Context context, int i, ImageSource imageSource, float f, float f2, String str) {
        super(context);
        this.brightness = 0;
        this.contrast = 0;
        this.saturation = 0;
        this.hue = 0;
        this.gaussianBlurRadius = 0;
        this.flipHor = false;
        this.flipVer = false;
        this.textureBmb = null;
        this.textureSrc = new ImageSource();
        this.texturePortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.textureInRot = 0;
        this.textureFlipH = false;
        this.textureFlipV = false;
        this.textureScale = 10;
        this.textureMaintainAspect = false;
        this.bezierMaskIn = true;
        this.bezierMaskEnabled = false;
        this.bezierMaskPath = null;
        this.bezierMaskRect = new RectF();
        this.bezierMaskBundle = null;
        this.bezierShapeBundle = null;
        this.shapeDataBundle = null;
        this.arrowDataBundle = null;
        this.renderMode = false;
        this.renderScaleF = 1.0f;
        this.min_width = 1;
        this.min_height = 1;
        this.bitmapInRotation = 0;
        this.circularCrop = false;
        this.bitmapPortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.shapeType = SHAPE_TYPE_STICKER;
        this.imgSource = new ImageSource();
        this.shapeOpacity = 100;
        this.shapeOpacityShadowInclude = false;
        this.RotationX = 0;
        this.RotationY = 0;
        this.floatPrecision = 1000.0f;
        this.colorOverlayEnabled = false;
        this.colorOverlayFillType = 1;
        this.colorOverlayGradient = new GradientMaker.GradientFill();
        this.colorOverlayColor = -65536;
        this.mMatrix = new Matrix();
        this.tmpCanvas = new Canvas();
        this.width_f = 300.0f;
        this.height_f = 300.0f;
        this.smallBallRadius = commonFuncs.dpToPx(4);
        this.bigBallRadius = commonFuncs.dpToPx(10);
        this.bitmap_cache = null;
        this.bitmap_shadow = null;
        this.bitmap_inner_shadow = null;
        this.bitmap_emboss = null;
        this.bitmap_stroke = null;
        this.bitmap_3d_cache = null;
        this.EmbossEnabled = false;
        this.EmbossLightAngle = 90;
        this.EmbossIntensity = 80;
        this.EmbossAmbient = 70;
        this.EmbossHardness = 20;
        this.EmbossBevel = 40;
        this.threeDEnabled = false;
        this.threeDViewType = 1;
        this.threeDDepth = 25;
        this.threeDDepthFillType = 1;
        this.threeDDepthColorFill = -16776961;
        this.threeDDepthGradientFill = new GradientMaker.GradientFill();
        this.threeDDepthColorAutomatic = true;
        this.threeDDepthDarken = 30;
        this.threeDQuality = 1;
        this.threeDStokeInclude = true;
        this.threeDObliqueAngle = 45;
        this.threeDLightingEnabled = true;
        this.threeDLightingIntensity = 80;
        this.threeDLightingSpecularHardness = 80;
        this.threeDLightingShadow = 10;
        this.shadow_enabled = false;
        this.shadow_radius = 10.0f;
        this.shadow_dx = 0;
        this.shadow_dy = 0;
        this.shadow_color = -16777216;
        this.shadow_padding = 0;
        this.shadow_inner_enabled = false;
        this.shadow_inner_radius = 10;
        this.shadow_inner_dx = 0;
        this.shadow_inner_dy = 0;
        this.shadow_inner_color = -16777216;
        this.paint = new Paint(1);
        this.paintSelected = new Paint(1);
        this.paintSelectedBorder = new Paint(1);
        this.paintHandles = new Paint(1);
        this.paintHandlesBorder = new Paint(1);
        this.paintHandlesHighlight = new Paint(1);
        this.paintHandleRotate = new Paint(1);
        this.paintHandleRotateBorder = new Paint(1);
        this.resizor = new PointF();
        this.widthor = new PointF();
        this.heightor = new PointF();
        this.rotator = new PointF();
        this.isSelected = true;
        this.dragID = -1;
        this.need_redraw = true;
        this.perspectiveEnabled = false;
        this.perspectivePoint1 = new PointF(0.0f, 0.0f);
        this.perspectivePoint2 = new PointF(1.0f, 0.0f);
        this.perspectivePoint3 = new PointF(1.0f, 1.0f);
        this.perspectivePoint4 = new PointF(0.0f, 1.0f);
        this.removeColorEnabled = false;
        this.removeColorColors = new ArrayList<>();
        this.removeColorBlur = 0;
        this.strokeEnabled = false;
        this.strokeColor = -1;
        this.strokeRadius = 2;
        this.reference = "0";
        this.hidden = false;
        this.locked = false;
        this.tmpHidden = false;
        this.tmpPointPre = new float[2];
        this.tmpPointPost = new float[2];
        init();
        this.reference = str;
        this.shapeType = i;
        this.imgSource = imageSource;
        setWillNotDraw(false);
        setDrawingCacheEnabled(false);
        this.width_f = f;
        this.height_f = f2;
        this.currBitmap = null;
    }

    public ShapeComponent(Context context, Bundle bundle, boolean z, String str) {
        super(context);
        this.brightness = 0;
        this.contrast = 0;
        this.saturation = 0;
        this.hue = 0;
        this.gaussianBlurRadius = 0;
        this.flipHor = false;
        this.flipVer = false;
        this.textureBmb = null;
        this.textureSrc = new ImageSource();
        this.texturePortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.textureInRot = 0;
        this.textureFlipH = false;
        this.textureFlipV = false;
        this.textureScale = 10;
        this.textureMaintainAspect = false;
        this.bezierMaskIn = true;
        this.bezierMaskEnabled = false;
        this.bezierMaskPath = null;
        this.bezierMaskRect = new RectF();
        this.bezierMaskBundle = null;
        this.bezierShapeBundle = null;
        this.shapeDataBundle = null;
        this.arrowDataBundle = null;
        this.renderMode = false;
        this.renderScaleF = 1.0f;
        this.min_width = 1;
        this.min_height = 1;
        this.bitmapInRotation = 0;
        this.circularCrop = false;
        this.bitmapPortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.shapeType = SHAPE_TYPE_STICKER;
        this.imgSource = new ImageSource();
        this.shapeOpacity = 100;
        this.shapeOpacityShadowInclude = false;
        this.RotationX = 0;
        this.RotationY = 0;
        this.floatPrecision = 1000.0f;
        this.colorOverlayEnabled = false;
        this.colorOverlayFillType = 1;
        this.colorOverlayGradient = new GradientMaker.GradientFill();
        this.colorOverlayColor = -65536;
        this.mMatrix = new Matrix();
        this.tmpCanvas = new Canvas();
        this.width_f = 300.0f;
        this.height_f = 300.0f;
        this.smallBallRadius = commonFuncs.dpToPx(4);
        this.bigBallRadius = commonFuncs.dpToPx(10);
        this.bitmap_cache = null;
        this.bitmap_shadow = null;
        this.bitmap_inner_shadow = null;
        this.bitmap_emboss = null;
        this.bitmap_stroke = null;
        this.bitmap_3d_cache = null;
        this.EmbossEnabled = false;
        this.EmbossLightAngle = 90;
        this.EmbossIntensity = 80;
        this.EmbossAmbient = 70;
        this.EmbossHardness = 20;
        this.EmbossBevel = 40;
        this.threeDEnabled = false;
        this.threeDViewType = 1;
        this.threeDDepth = 25;
        this.threeDDepthFillType = 1;
        this.threeDDepthColorFill = -16776961;
        this.threeDDepthGradientFill = new GradientMaker.GradientFill();
        this.threeDDepthColorAutomatic = true;
        this.threeDDepthDarken = 30;
        this.threeDQuality = 1;
        this.threeDStokeInclude = true;
        this.threeDObliqueAngle = 45;
        this.threeDLightingEnabled = true;
        this.threeDLightingIntensity = 80;
        this.threeDLightingSpecularHardness = 80;
        this.threeDLightingShadow = 10;
        this.shadow_enabled = false;
        this.shadow_radius = 10.0f;
        this.shadow_dx = 0;
        this.shadow_dy = 0;
        this.shadow_color = -16777216;
        this.shadow_padding = 0;
        this.shadow_inner_enabled = false;
        this.shadow_inner_radius = 10;
        this.shadow_inner_dx = 0;
        this.shadow_inner_dy = 0;
        this.shadow_inner_color = -16777216;
        this.paint = new Paint(1);
        this.paintSelected = new Paint(1);
        this.paintSelectedBorder = new Paint(1);
        this.paintHandles = new Paint(1);
        this.paintHandlesBorder = new Paint(1);
        this.paintHandlesHighlight = new Paint(1);
        this.paintHandleRotate = new Paint(1);
        this.paintHandleRotateBorder = new Paint(1);
        this.resizor = new PointF();
        this.widthor = new PointF();
        this.heightor = new PointF();
        this.rotator = new PointF();
        this.isSelected = true;
        this.dragID = -1;
        this.need_redraw = true;
        this.perspectiveEnabled = false;
        this.perspectivePoint1 = new PointF(0.0f, 0.0f);
        this.perspectivePoint2 = new PointF(1.0f, 0.0f);
        this.perspectivePoint3 = new PointF(1.0f, 1.0f);
        this.perspectivePoint4 = new PointF(0.0f, 1.0f);
        this.removeColorEnabled = false;
        this.removeColorColors = new ArrayList<>();
        this.removeColorBlur = 0;
        this.strokeEnabled = false;
        this.strokeColor = -1;
        this.strokeRadius = 2;
        this.reference = "0";
        this.hidden = false;
        this.locked = false;
        this.tmpHidden = false;
        this.tmpPointPre = new float[2];
        this.tmpPointPost = new float[2];
        init();
        if (z || bundle.getString(appStateConstants.SHAPE_REFERENCE) == null) {
            this.reference = str;
        } else {
            this.reference = bundle.getString(appStateConstants.SHAPE_REFERENCE);
        }
        setWillNotDraw(false);
        setDrawingCacheEnabled(false);
        this.mMatrix = new Matrix();
        applyBundle(bundle, z);
    }

    public void editSrc(int i, ImageSource imageSource, boolean z, float f, float f2) {
        this.shapeType = i;
        this.imgSource = imageSource;
        this.bitmapPortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.circularCrop = false;
        this.currBitmap = null;
        this.bmpMasks = null;
        if (z) {
            this.width_f = Math.max(f, this.min_width);
            this.height_f = Math.max(f2, this.min_height);
            requestLayout();
        }
        fullRedraw();
    }

    public int getColorOverlayColor() {
        return this.colorOverlayColor;
    }

    public int getColorOverlayFillType() {
        return this.colorOverlayFillType;
    }

    public GradientMaker.GradientFill getColorOverlayGradient() {
        return this.colorOverlayGradient;
    }

    public void setColorOverlay(boolean z, int i, int i2, GradientMaker.GradientFill gradientFill) {
        this.colorOverlayEnabled = z;
        this.colorOverlayColor = i2;
        this.colorOverlayFillType = i;
        this.colorOverlayGradient = gradientFill;
        fullRedraw();
    }

    public void setColorOverlayEnabled(boolean z) {
        this.colorOverlayEnabled = z;
        fullRedraw();
    }

    public boolean isColorOverlayEnabled() {
        return this.colorOverlayEnabled;
    }

    public int getShadowColor() {
        return this.shadow_color;
    }

    public boolean getShadowEnabled() {
        return this.shadow_enabled.booleanValue();
    }

    public int getShadow_dy() {
        return this.shadow_dy;
    }

    public int getShadow_radius() {
        return (int) this.shadow_radius;
    }

    public int getShadow_dx() {
        return this.shadow_dx;
    }

    public void setShadow(boolean z, float f, int i, int i2, int i3) {
        this.shadow_enabled = Boolean.valueOf(z);
        if (z) {
            this.shadow_radius = f;
            this.shadow_color = i3;
            this.shadow_dx = i;
            this.shadow_dy = i2;
            this.shadow_padding = (int) Math.ceil(f);
        }
        fullRedraw();
    }

    public int getInnerShadowColor() {
        return this.shadow_inner_color;
    }

    public boolean getInnerShadowEnabled() {
        return this.shadow_inner_enabled.booleanValue();
    }

    public int getInnerShadow_dy() {
        return this.shadow_inner_dy;
    }

    public int getInnerShadow_radius() {
        return this.shadow_inner_radius;
    }

    public int getInnerShadow_dx() {
        return this.shadow_inner_dx;
    }

    public void setInnerShadow(boolean z, int i, int i2, int i3, int i4) {
        this.shadow_inner_enabled = Boolean.valueOf(z);
        if (z) {
            this.shadow_inner_radius = i;
            this.shadow_inner_color = i4;
            this.shadow_inner_dx = i2;
            this.shadow_inner_dy = i3;
        }
        fullRedraw();
    }

    public void rotateShape(int i) {
        rotateShape(i, false);
    }

    private void rotateShape(float f, boolean z) {
        this.angle = commonFuncs.normalizeAngle(f);
        this.angle = z ? snapAngle(this.angle) : this.angle;
        int i = this.angle;
        this.angle = this.tempDisableRot ? 0 : i;
        setRotation(this.angle);
        this.angle = i;
        if (!z || this.rotationListener == null) {
            return;
        }
        this.rotationListener.rotated(this.angle);
    }

    private void updateHandlePos() {
        PointF pointF = this.resizor;
        pointF.x = this.width_f;
        pointF.y = this.height_f;
        this.rotator.x = 0.0f - (getBigRadius() * 0.3f);
        this.rotator.y = this.height_f + (getBigRadius() * 0.3f);
        PointF pointF2 = this.widthor;
        float f = this.width_f;
        pointF2.x = f;
        float f2 = this.height_f;
        pointF2.y = f2 / 2.0f;
        PointF pointF3 = this.heightor;
        pointF3.x = f / 2.0f;
        pointF3.y = f2;
    }

    float getBigRadius() {
        float max = Math.max(this.width_f, this.height_f);
        float f = this.bigBallRadius;
        return max > 2.0f * f ? f : 0.3f * max;
    }

    boolean enoughRoomWidthor() {
        return this.height_f >= this.bigBallRadius * 3.0f;
    }

    boolean enoughRoomHeightor() {
        return this.width_f >= this.bigBallRadius * 3.0f;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension((int) Math.max(this.min_width, this.width_f), (int) Math.max(this.min_height, this.height_f));
    }

    public void selectMe() {
        OnSelectEventListener_shape onSelectEventListener_shape = this.SelectListener;
        if (onSelectEventListener_shape == null || this.isSelected) {
            return;
        }
        onSelectEventListener_shape.onEvent_SelectShape(this.assigned_id_shape);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
    
        if (r5 != 3) goto L114;
     */
    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.AbstractComponent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean OnCustomTouchEvent(com.tawfiq.imaginstudio.imagetools.pixellab.CustomMotionEvent r21) {
        /*
            Method dump skipped, instructions count: 671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent.OnCustomTouchEvent(com.tawfiq.imaginstudio.imagetools.pixellab.CustomMotionEvent):boolean");
    }

    public void setBezierMaskEnabled(boolean z) {
        if (this.bezierMaskEnabled != z) {
            this.bezierMaskEnabled = z;
            fullRedraw();
        }
    }

    public boolean isBezierMaskIn() {
        return this.bezierMaskIn;
    }

    public boolean isBezierMaskEnabled() {
        return this.bezierMaskEnabled;
    }

    public void setBezierMaskIn(boolean z) {
        if (this.bezierMaskIn != z) {
            this.bezierMaskIn = z;
            fullRedraw();
        }
    }

    public void setBezierMaskPath(ArrayList<Path> arrayList) {
        this.bezierMaskPath = arrayList;
        this.bezierMaskRect.set(getX(), getY(), getX() + this.width_f, getY() + this.height_f);
        fullRedraw();
    }

    public void setBezierShapeData(Bundle bundle) {
        this.bezierShapeBundle = bundle;
    }

    public void setShapeData(Bundle bundle) {
        this.shapeDataBundle = bundle;
    }

    public void setBezierMaskBundle(Bundle bundle) {
        this.bezierMaskBundle = bundle;
    }

    private void recreateBezierMaskPath() {
        Bundle bundle = this.bezierMaskBundle;
        if (bundle == null || bundle.getStringArrayList(appStateConstants.BEZIER_CURVE_RECT) == null) {
            return;
        }
        this.bezierMaskPath = new ArrayList<>();
        for (String str : this.bezierMaskBundle.keySet()) {
            ArrayList<String> stringArrayList = this.bezierMaskBundle.getStringArrayList(str);
            if (appStateConstants.BEZIER_CURVE_RECT.equals(str)) {
                this.bezierMaskRect = commonFuncs.arrToRectF(stringArrayList);
            } else {
                this.bezierMaskPath.add(customBezier.getPathFromStringArrayList(stringArrayList));
            }
        }
    }

    public void fullRedraw() {
        this.need_redraw = true;
        invalidate();
    }

    float dist(float f, float f2, PointF pointF) {
        return (float) Math.sqrt(((f - pointF.x) * (f - pointF.x)) + ((f2 - pointF.y) * (f2 - pointF.y)));
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.setDrawFilter(new PaintFlagsDrawFilter(1, 1));
        super.dispatchDraw(canvas);
    }

    private void MakeTransparent(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = (i * width) + i2;
                int i4 = iArr[i3];
                Iterator<ColorTolerance> it = this.removeColorColors.iterator();
                while (it.hasNext()) {
                    ColorTolerance next = it.next();
                    int red = Color.red(i4);
                    int green = Color.green(i4);
                    int blue = Color.blue(i4);
                    int alpha = Color.alpha(i4);
                    int red2 = Color.red(next.c);
                    int green2 = Color.green(next.c);
                    int blue2 = Color.blue(next.c);
                    int i5 = next.t * next.t;
                    Iterator<ColorTolerance> it2 = it;
                    int colorDist2 = colorDist2(red, green, blue, red2, green2, blue2);
                    if (colorDist2 <= i5) {
                        i4 = Color.argb(Math.min((int) ((colorDist2 / i5) * 255.0f), alpha), red, green, blue);
                    }
                    it = it2;
                }
                iArr[i3] = i4;
            }
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
    }

    private int colorDist(int i, int i2, int i3, int i4, int i5, int i6) {
        double d = i;
        Double.isNaN(d);
        double d2 = i2;
        Double.isNaN(d2);
        double d3 = i3;
        Double.isNaN(d3);
        int i7 = (int) ((d * 0.299d) + (d2 * 0.587d) + (d3 * 0.114d));
        Double.isNaN(d);
        Double.isNaN(d2);
        Double.isNaN(d3);
        int i8 = (int) (((128.0d - (d * 0.169d)) - (d2 * 0.331d)) + (d3 * 0.5d));
        Double.isNaN(d);
        Double.isNaN(d2);
        Double.isNaN(d3);
        int i9 = (int) ((((d * 0.5d) + 128.0d) - (d2 * 0.419d)) - (d3 * 0.081d));
        double d4 = i4;
        Double.isNaN(d4);
        double d5 = i5;
        Double.isNaN(d5);
        double d6 = i6;
        Double.isNaN(d6);
        Double.isNaN(d4);
        Double.isNaN(d5);
        Double.isNaN(d6);
        Double.isNaN(d4);
        Double.isNaN(d5);
        Double.isNaN(d6);
        float f = i7 - ((int) (((0.299d * d4) + (0.587d * d5)) + (0.114d * d6)));
        float f2 = 1.4f * f * f;
        float f3 = i8 - ((int) (((128.0d - (0.169d * d4)) - (0.331d * d5)) + (d6 * 0.5d)));
        double d7 = f2 + (0.8f * f3 * f3);
        double d8 = i9 - ((int) ((((d4 * 0.5d) + 128.0d) - (d5 * 0.419d)) - (d6 * 0.081d)));
        Double.isNaN(d8);
        Double.isNaN(d8);
        Double.isNaN(d7);
        return (int) (d7 + (0.8d * d8 * d8));
    }

    public Bitmap blurMask(Bitmap bitmap, int i) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Paint paint = new Paint(1);
        paint.setAntiAlias(true);
        paint.setDither(true);
        Canvas canvas = new Canvas();
        canvas.setBitmap(createBitmap);
        paint.setMaskFilter(new BlurMaskFilter(i, BlurMaskFilter.Blur.NORMAL));
        canvas.drawBitmap(bitmap.extractAlpha(), 0.0f, 0.0f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    Path getOvalPath(RectF rectF) {
        Path path = new Path();
        path.addRect(rectF, Path.Direction.CW);
        path.addOval(new RectF((int) Math.ceil(rectF.left), (int) Math.ceil(rectF.top), (int) Math.floor(rectF.right), (int) Math.floor(rectF.bottom)), Path.Direction.CCW);
        return path;
    }

    Rect absolutePortion(RectF rectF, int i, int i2) {
        float f = i;
        float f2 = i2;
        return new Rect((int) ((rectF.left / 100.0f) * f), (int) ((rectF.top / 100.0f) * f2), (int) ((rectF.right / 100.0f) * f), (int) ((rectF.bottom / 100.0f) * f2));
    }

    RectF rotateRect(RectF rectF, int i) {
        RectF rectF2 = new RectF(rectF);
        Matrix matrix = new Matrix();
        matrix.setRotate(i, rectF.centerX(), rectF.centerY());
        matrix.mapRect(rectF2);
        return rectF2;
    }

    void unloadBitmaps() {
        this.textureBmb = null;
        this.bitmap_cache = null;
        this.bitmap_shadow = null;
        this.bitmap_inner_shadow = null;
        this.bitmap_emboss = null;
        this.bitmap_stroke = null;
        this.bitmap_3d_cache = null;
        this.currBitmap = null;
        this.need_redraw = true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF;
        int i;
        int i2;
        float f;
        Rect rect;
        RectF rectF2;
        int i3;
        Bitmap bitmap;
        updateHandlePos();
        int max = Math.max(1, commonFuncs.dpToPxInt(this.threeDDepth));
        RectF rectF3 = new RectF(0.0f, 0.0f, this.width_f, this.height_f);
        canvas.save();
        if (this.perspectiveEnabled && !this.tempDisablePerspective) {
            Matrix matrix = new Matrix();
            float f2 = this.width_f;
            float f3 = this.height_f;
            matrix.setPolyToPoly(new float[]{0.0f, 0.0f, f2, 0.0f, f2, f3, 0.0f, f3}, 0, new float[]{this.perspectivePoint1.x * this.width_f, this.perspectivePoint1.y * this.height_f, this.perspectivePoint2.x * this.width_f, this.perspectivePoint2.y * this.height_f, this.perspectivePoint3.x * this.width_f, this.perspectivePoint3.y * this.height_f, this.perspectivePoint4.x * this.width_f, this.perspectivePoint4.y * this.height_f}, 0, 4);
            canvas.concat(matrix);
        }
        Camera camera = new Camera();
        camera.rotateY(clipAngle(this.RotationY, true));
        camera.rotateX(clipAngle(this.RotationX, true));
        Camera camera2 = new Camera();
        camera2.rotateY(clipAngle(this.RotationY, true));
        camera2.rotateX(clipAngle(this.RotationX, true));
        float f4 = max;
        camera2.translate(0.0f, 0.0f, f4);
        canvas.save();
        applyCamera(canvas, camera);
        this.paint.setAntiAlias(true);
        this.paint.setFilterBitmap(true);
        this.paint.setDither(true);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeWidth(1.0f);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setColor(Color.parseColor("#000000"));
        if (this.need_redraw && this.currBitmap == null) {
            loadResources();
        }
        if (validImage(this.currBitmap)) {
            if (this.need_redraw && this.dragID == -1) {
                this.bitmap_cache = Bitmap.createBitmap((int) (this.width_f * getRenderScaleF()), (int) (this.height_f * getRenderScaleF()), Bitmap.Config.ARGB_8888);
                this.tmpCanvas = new Canvas();
                this.tmpCanvas.setBitmap(this.bitmap_cache);
                this.tmpCanvas.save();
                this.tmpCanvas.scale(getRenderScaleF(), getRenderScaleF());
                this.paint.setFilterBitmap(true);
                this.paint.setDither(true);
                this.boundsToDraw = new RectF(0.0f, 0.0f, this.width_f, this.height_f);
                RectF rectF4 = this.bitmapPortion;
                this.bmpRegion = rotateRect(this.boundsToDraw, this.bitmapInRotation);
                this.absoluteRegion = absolutePortion(rectF4, this.currBitmap.getWidth(), this.currBitmap.getHeight());
                this.tmpCanvas.save();
                this.tmpCanvas.scale(this.flipHor ? -1.0f : 1.0f, this.flipVer ? -1.0f : 1.0f, this.boundsToDraw.centerX(), this.boundsToDraw.centerY());
                this.tmpCanvas.rotate(this.bitmapInRotation, this.boundsToDraw.centerX(), this.boundsToDraw.centerY());
                this.paint.setColorFilter(this.currColorFilter);
                this.tmpCanvas.drawBitmap(this.currBitmap, this.absoluteRegion, this.bmpRegion, this.paint);
                this.paint.setColorFilter(null);
                Paint paint = new Paint(1);
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                if (this.circularCrop) {
                    this.tmpCanvas.drawPath(getOvalPath(rotateRect(this.boundsToDraw, this.bitmapInRotation)), paint);
                }
                if (this.bmpMasks != null) {
                    this.tmpCanvas.save();
                    this.tmpCanvas.translate(this.bmpRegion.left, this.bmpRegion.top);
                    this.tmpCanvas.scale(100.0f / rectF4.width(), 100.0f / rectF4.height());
                    this.tmpCanvas.translate((rectF4.left / 100.0f) * (-1.0f) * this.bmpRegion.width(), (rectF4.top / 100.0f) * (-1.0f) * this.bmpRegion.height());
                    Paint paint2 = new Paint(1);
                    paint2.setStyle(Paint.Style.STROKE);
                    ImageEraseView.drawMasks(this.tmpCanvas, paint2, this.bmpMasks, this.bmpRegion, null);
                    this.tmpCanvas.restore();
                }
                this.tmpCanvas.restore();
                if (this.bezierMaskEnabled) {
                    if (this.bezierMaskPath == null) {
                        recreateBezierMaskPath();
                    }
                    if (this.bezierMaskPath != null && commonFuncs.isValidRect(this.bezierMaskRect)) {
                        this.tmpCanvas.save();
                        this.tmpCanvas.scale(this.width_f / this.bezierMaskRect.width(), this.height_f / this.bezierMaskRect.height());
                        this.tmpCanvas.translate(-this.bezierMaskRect.left, -this.bezierMaskRect.top);
                        if (this.bezierMaskIn) {
                            Iterator<Path> it = this.bezierMaskPath.iterator();
                            while (it.hasNext()) {
                                this.tmpCanvas.drawPath(it.next(), paint);
                            }
                        } else {
                            this.tmpCanvas.drawPath(commonFuncs.invertPath(this.bezierMaskPath, this.bezierMaskRect.left, this.bezierMaskRect.top, this.bezierMaskRect.right, this.bezierMaskRect.bottom), paint);
                        }
                        this.tmpCanvas.restore();
                    }
                }
                try {
                    this.tmpCanvas.restore();
                } catch (IllegalStateException unused) {
                }
                if (this.renderMode) {
                    this.currBitmap = null;
                }
                if (this.textureSrc.checkValid() && this.textureBmb == null) {
                    loadTexture();
                }
                if (this.textureBmb != null && this.textureSrc.checkValid()) {
                    this.tmpCanvas.setBitmap(null);
                    this.tmpCanvas = new Canvas();
                    Bitmap extractAlpha = this.bitmap_cache.extractAlpha();
                    BitmapShader bitmapShader = new BitmapShader(this.textureBmb, Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
                    Matrix matrix2 = new Matrix();
                    float width = this.width_f / this.textureBmb.getWidth();
                    float height = this.height_f / this.textureBmb.getHeight();
                    if (this.textureMaintainAspect) {
                        matrix2.preScale(width, height);
                    } else {
                        matrix2.preScale(Math.min(width, height), Math.min(width, height));
                    }
                    float f5 = this.renderScaleF;
                    int i4 = this.textureScale;
                    matrix2.postScale((i4 * f5) / 10.0f, (f5 * i4) / 10.0f);
                    bitmapShader.setLocalMatrix(matrix2);
                    Paint paint3 = new Paint(this.paint);
                    paint3.setFilterBitmap(true);
                    paint3.setShader(bitmapShader);
                    this.tmpCanvas.setBitmap(this.bitmap_cache);
                    this.tmpCanvas.drawBitmap(extractAlpha, 0.0f, 0.0f, paint3);
                }
                if (this.removeColorEnabled) {
                    MakeTransparent(this.bitmap_cache);
                    int i5 = this.removeColorBlur;
                    if (i5 != 0) {
                        this.bitmap_cache = blurMask(this.bitmap_cache, (int) (i5 * getRenderScaleF()));
                    }
                }
                if (getStrokeEnabled()) {
                    this.bitmap_stroke = updateStroke(this.bitmap_cache, getRenderScaleF());
                }
                if (this.shadow_enabled.booleanValue()) {
                    if (getStrokeEnabled() && (bitmap = this.bitmap_stroke) != null) {
                        this.bitmap_shadow = updateShadow(bitmap, getRenderScaleF());
                    } else {
                        this.bitmap_shadow = updateShadow(this.bitmap_cache, getRenderScaleF());
                    }
                }
                if (this.colorOverlayEnabled) {
                    Paint paint4 = new Paint(1);
                    Rect rect2 = new Rect(0, 0, this.bitmap_cache.getWidth(), this.bitmap_cache.getHeight());
                    int i6 = this.colorOverlayFillType;
                    if (i6 == 1) {
                        paint4.setColor(this.colorOverlayColor);
                    } else if (i6 == 2) {
                        paint4.setShader(this.colorOverlayGradient.getShader(rect2));
                    }
                    paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
                    this.tmpCanvas.drawRect(rect2, paint4);
                }
                if (this.shadow_inner_enabled.booleanValue()) {
                    this.bitmap_inner_shadow = updateInnerShadow(this.bitmap_cache, getRenderScaleF());
                }
                this.bitmap_emboss = null;
                if (this.EmbossEnabled) {
                    this.bitmap_cache = EmbossImage(this.bitmap_cache, getRenderScaleF(), false);
                }
                if (this.threeDEnabled) {
                    this.bitmap_3d_cache = EmbossImage(this.bitmap_cache, getRenderScaleF(), true);
                }
                this.need_redraw = false;
            }
            if (!this.hidden && validImage(this.bitmap_cache)) {
                this.paint.setFilterBitmap(true);
                this.paint.setDither(true);
                if (this.shadow_enabled.booleanValue() && (i3 = this.dragID) != 0 && i3 != 3 && i3 != 2) {
                    Paint paint5 = new Paint();
                    paint5.setColorFilter(new PorterDuffColorFilter(solidColor(this.shadow_color), PorterDuff.Mode.SRC_ATOP));
                    paint5.setAlpha(Color.alpha(this.shadow_color));
                    if (isShapeOpacityShadowInclude()) {
                        applyAlphaToPaint(paint5);
                    }
                    paint5.setFilterBitmap(true);
                    paint5.setDither(true);
                    paint5.setAntiAlias(true);
                    if (this.threeDEnabled) {
                        canvas.restore();
                        canvas.save();
                        int i7 = this.threeDViewType;
                        if (i7 == 1) {
                            applyCamera(canvas, camera2);
                        } else if (i7 == 3) {
                            PointF pointF = new PointF(((float) Math.cos(Math.toRadians(this.threeDObliqueAngle))) * f4, ((float) Math.sin(Math.toRadians(this.threeDObliqueAngle))) * (-1.0f) * f4);
                            canvas.translate(pointF.x, pointF.y);
                        }
                    }
                    canvas.save();
                    canvas.translate(this.shadow_dx, this.shadow_dy);
                    int i8 = this.strokeEnabled ? this.shadow_padding + this.strokeRadius : this.shadow_padding;
                    Bitmap bitmap2 = this.bitmap_shadow;
                    float f6 = -i8;
                    float f7 = i8;
                    canvas.drawBitmap(bitmap2, new Rect(0, 0, bitmap2.getWidth(), this.bitmap_shadow.getHeight()), new RectF(f6, f6, this.width_f + f7, this.height_f + f7), paint5);
                    canvas.restore();
                    if (this.threeDEnabled) {
                        canvas.restore();
                        canvas.save();
                        applyCamera(canvas, camera);
                    }
                }
                if (this.threeDEnabled) {
                    Paint paint6 = new Paint();
                    paint6.setAntiAlias(true);
                    paint6.setDither(true);
                    paint6.setFilterBitmap(true);
                    int argb = Color.argb((int) ((this.threeDDepthDarken / 100.0f) * 220.0f), 0, 0, 0);
                    applyAlphaToPaint(paint6);
                    paint6.setColorFilter(new PorterDuffColorFilter(argb, PorterDuff.Mode.SRC_ATOP));
                    float max2 = 1.0f / Math.max(this.threeDQuality, 1);
                    int ceil = (int) Math.ceil(f4 / max2);
                    Rect rect3 = new Rect(0, 0, this.bitmap_3d_cache.getWidth(), this.bitmap_3d_cache.getHeight());
                    RectF rectF5 = new RectF(0.0f, 0.0f, this.width_f, this.height_f);
                    Paint paint7 = new Paint();
                    paint7.setAlpha(Color.alpha(this.strokeColor));
                    applyAlphaToPaint(paint7);
                    paint7.setFilterBitmap(true);
                    paint7.setDither(true);
                    paint7.setAntiAlias(true);
                    if (this.strokeEnabled) {
                        rectF = rectF3;
                        Rect rect4 = new Rect(new Rect(0, 0, this.bitmap_stroke.getWidth(), this.bitmap_stroke.getHeight()));
                        int i9 = this.strokeRadius;
                        f = f4;
                        rectF2 = new RectF(-i9, -i9, this.width_f + i9, this.height_f + i9);
                        rect = rect4;
                    } else {
                        f = f4;
                        rectF = rectF3;
                        rect = null;
                        rectF2 = null;
                    }
                    int i10 = this.threeDViewType;
                    if (i10 == 1) {
                        canvas.restore();
                        for (int i11 = 0; i11 < ceil; i11++) {
                            canvas.save();
                            camera2.translate(0.0f, 0.0f, max2 * (-1.0f));
                            applyCamera(canvas, camera2);
                            if (this.strokeEnabled && this.threeDStokeInclude && rectF2 != null) {
                                canvas.drawBitmap(this.bitmap_stroke, rect, rectF2, paint7);
                            }
                            canvas.drawBitmap(this.bitmap_3d_cache, rect3, rectF5, paint6);
                            canvas.restore();
                        }
                        canvas.save();
                        applyCamera(canvas, camera);
                    } else if (i10 == 3) {
                        canvas.save();
                        PointF pointF2 = new PointF(((float) Math.cos(Math.toRadians(this.threeDObliqueAngle))) * f, ((float) Math.sin(Math.toRadians(this.threeDObliqueAngle))) * (-1.0f) * f);
                        PointF invertVector = invertVector(divideVector(pointF2, ceil));
                        canvas.translate(pointF2.x, pointF2.y);
                        for (int i12 = 0; i12 < ceil; i12++) {
                            canvas.translate(invertVector.x, invertVector.y);
                            if (this.strokeEnabled && this.threeDStokeInclude && rectF2 != null) {
                                canvas.drawBitmap(this.bitmap_stroke, rect, rectF2, paint7);
                            }
                            canvas.drawBitmap(this.bitmap_3d_cache, rect3, rectF5, paint6);
                        }
                        canvas.restore();
                    }
                } else {
                    rectF = rectF3;
                }
                if (this.strokeEnabled && (i2 = this.dragID) != 0 && i2 != 3 && i2 != 2) {
                    Paint paint8 = new Paint();
                    if (this.shapeOpacity == 100) {
                        paint8.setAlpha(Color.alpha(this.strokeColor));
                    } else {
                        applyAlphaToPaint(paint8);
                    }
                    paint8.setFilterBitmap(true);
                    paint8.setDither(true);
                    paint8.setAntiAlias(true);
                    Bitmap bitmap3 = this.bitmap_stroke;
                    int i13 = this.strokeRadius;
                    canvas.drawBitmap(bitmap3, (Rect) null, new RectF(-i13, -i13, this.width_f + i13, this.height_f + i13), paint8);
                }
                canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                Paint paint9 = new Paint(2);
                paint9.setFilterBitmap(true);
                paint9.setDither(true);
                paint9.setAntiAlias(true);
                applyAlphaToPaint(paint9);
                RectF rectF6 = rectF;
                canvas.drawBitmap(getBitmapToDraw(), (Rect) null, rectF6, paint9);
                if (this.shadow_inner_enabled.booleanValue() && (i = this.dragID) != 0 && i != 3 && i != 2) {
                    Paint paint10 = new Paint();
                    paint10.setColorFilter(new PorterDuffColorFilter(solidColor(this.shadow_inner_color), PorterDuff.Mode.SRC_ATOP));
                    paint10.setAlpha(Color.alpha(this.shadow_inner_color));
                    applyAlphaToPaint(paint10);
                    paint10.setFilterBitmap(true);
                    paint10.setDither(true);
                    paint10.setAntiAlias(true);
                    canvas.drawBitmap(this.bitmap_inner_shadow, (Rect) null, rectF6, paint10);
                }
            }
        } else if (!this.hidden) {
            Paint paint11 = new Paint(1);
            paint11.setColor(Color.parseColor("#f44336"));
            canvas.drawRect(rectF3, paint11);
            paint11.setColor(-1);
            paint11.setStrokeWidth(3.0f);
            float f8 = this.width_f;
            float f9 = this.height_f;
            canvas.drawLine(f8 * 0.3f, f9 * 0.3f, f8 * 0.7f, f9 * 0.7f, paint11);
            float f10 = this.width_f;
            float f11 = this.height_f;
            canvas.drawLine(f10 * 0.3f, f11 * 0.7f, f10 * 0.7f, f11 * 0.3f, paint11);
        }
        canvas.restore();
        canvas.restore();
        if (!this.isSelected || this.renderMode || this.hidden) {
            return;
        }
        canvas.drawRect(0.0f, 0.0f, this.width_f, this.height_f, this.paintSelectedBorder);
        canvas.drawRect(0.0f, 0.0f, this.width_f, this.height_f, this.paintSelected);
        drawHandles(canvas);
    }

    private int getBitmapBottomPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width];
        int i = height - 1;
        while (true) {
            if (i < 0) {
                return 0;
            }
            bitmap.getPixels(iArr, 0, width, 0, i, width, 1);
            for (int i2 : iArr) {
                if (Color.alpha(i2) != 0) {
                    return height - (i + 1);
                }
            }
            i--;
        }
    }

    int solidColor(int i) {
        return Color.argb(255, Color.red(i), Color.green(i), Color.blue(i));
    }

    private int getBitmapTopPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width];
        for (int i = 0; i < height; i++) {
            bitmap.getPixels(iArr, 0, width, 0, i, width, 1);
            for (int i2 : iArr) {
                if (Color.alpha(i2) != 0) {
                    return i;
                }
            }
        }
        return 0;
    }

    void applyCamera(Canvas canvas, Camera camera) {
        camera.getMatrix(this.mMatrix);
        this.mMatrix.preTranslate((-((getWidth() - getPaddingLeft()) - getPaddingRight())) / 2, (-((getHeight() - getPaddingTop()) - getPaddingBottom())) / 2);
        this.mMatrix.postTranslate(((getWidth() - getPaddingLeft()) - getPaddingRight()) / 2, ((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2);
        canvas.concat(this.mMatrix);
    }

    PointF invertVector(PointF pointF) {
        return new PointF(pointF.x * (-1.0f), pointF.y * (-1.0f));
    }

    PointF divideVector(PointF pointF, int i) {
        float f = i;
        return new PointF(pointF.x / f, pointF.y / f);
    }

    private int clipAngle(int i, boolean z) {
        if ((z && this.tempDisable3DRots) || (!z && this.tempDisableRot)) {
            return 0;
        }
        if (!this.threeDEnabled) {
            return i;
        }
        int i2 = this.threeDViewType;
        if (i2 == 3) {
            return 0;
        }
        if (i2 != 1) {
            return i;
        }
        if (i > 80) {
            return 80;
        }
        if (i < -80) {
            return -80;
        }
        return i;
    }

    boolean validImage(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    public int getTextRotationX() {
        return this.RotationX;
    }

    public int getTextRotationY() {
        return this.RotationY;
    }

    public void rotate3d(int i, int i2) {
        this.RotationX = i;
        this.RotationY = i2;
        fullRedraw();
    }

    public Bitmap updateStroke(Bitmap bitmap, float f) {
        float f2 = this.width_f;
        int i = this.strokeRadius;
        Bitmap createBitmap = Bitmap.createBitmap((int) ((f2 + (i * 2)) * f), (int) ((this.height_f + (i * 2)) * f), Bitmap.Config.ARGB_8888);
        Bitmap extractAlpha = bitmap.extractAlpha();
        Canvas canvas = new Canvas(createBitmap);
        canvas.save();
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setAntiAlias(true);
        int i2 = this.strokeRadius;
        canvas.translate(i2 * f, i2 * f);
        int i3 = 0;
        canvas.drawBitmap(extractAlpha, new Rect(0, 0, extractAlpha.getWidth(), extractAlpha.getHeight()), new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), paint);
        int width = createBitmap.getWidth();
        int height = createBitmap.getHeight();
        int[] iArr = new int[width * height];
        createBitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int max = (int) Math.max(1.0f, this.strokeRadius * Math.min(f, f));
        for (int i4 = 0; i4 < height; i4++) {
            for (int i5 = 0; i5 < width; i5++) {
                int i6 = (i4 * width) + i5;
                int alpha = Color.alpha(iArr[i6]);
                int min = Math.min(i4 + max, height - 1);
                int i7 = alpha;
                for (int max2 = Math.max(i4 - max, 0); max2 <= min; max2++) {
                    i7 = Math.max(i7, Color.alpha(iArr[(max2 * width) + i5]));
                    if (i7 == 255) {
                        break;
                    }
                }
                iArr[i6] = Color.argb(alpha, i7, 255, 255);
            }
        }
        int i8 = 0;
        while (i8 < height) {
            int i9 = 0;
            while (i9 < width) {
                int i10 = i8 * width;
                int i11 = i10 + i9;
                int red = Color.red(iArr[i11]);
                int min2 = Math.min(i9 + max, width - 1);
                int i12 = red;
                for (int max3 = Math.max(i9 - max, i3); max3 <= min2; max3++) {
                    i12 = Math.max(i12, Color.red(iArr[i10 + max3]));
                    if (i12 == 255) {
                        break;
                    }
                }
                iArr[i11] = Color.argb(255, red, i12, 255);
                i9++;
                i3 = 0;
            }
            i8++;
            i3 = 0;
        }
        int red2 = Color.red(this.strokeColor);
        int green = Color.green(this.strokeColor);
        int blue = Color.blue(this.strokeColor);
        for (int i13 = 0; i13 < height; i13++) {
            for (int i14 = 0; i14 < width; i14++) {
                int i15 = (i13 * width) + i14;
                iArr[i15] = Color.argb(Color.green(iArr[i15]), red2, green, blue);
            }
        }
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return createBitmap;
    }

    public Bitmap updateShadow(Bitmap bitmap, float f) {
        float f2 = (this.strokeEnabled ? this.shadow_padding + this.strokeRadius : this.shadow_padding) * 2;
        Bitmap createBitmap = Bitmap.createBitmap((int) ((this.width_f + f2) * f), (int) ((this.height_f + f2) * f), Bitmap.Config.ARGB_8888);
        Bitmap extractAlpha = bitmap.extractAlpha();
        Canvas canvas = new Canvas(createBitmap);
        canvas.save();
        int i = this.shadow_padding;
        canvas.translate(i * f, i * f);
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setAntiAlias(true);
        paint.setMaskFilter(new BlurMaskFilter(Math.max(0.1f, this.shadow_radius * f), BlurMaskFilter.Blur.NORMAL));
        canvas.drawBitmap(extractAlpha, new Rect(0, 0, extractAlpha.getWidth(), extractAlpha.getHeight()), new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), paint);
        return createBitmap;
    }

    public Bitmap updateInnerShadow(Bitmap bitmap, float f) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Bitmap createBitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Bitmap extractAlpha = bitmap.extractAlpha();
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        float max = Math.max(0.1f, this.shadow_inner_radius * f);
        canvas.drawColor(-16777216);
        paint.setMaskFilter(new BlurMaskFilter(max, BlurMaskFilter.Blur.NORMAL));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT));
        canvas.translate(this.shadow_inner_dx * f, this.shadow_inner_dy * f);
        canvas.drawBitmap(extractAlpha, new Rect(0, 0, extractAlpha.getWidth(), extractAlpha.getHeight()), new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), paint);
        paint.setMaskFilter(null);
        Canvas canvas2 = new Canvas(createBitmap2);
        paint.setAlpha(Color.alpha(this.shadow_inner_color));
        canvas2.drawBitmap(extractAlpha, new Rect(0, 0, extractAlpha.getWidth(), extractAlpha.getHeight()), new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        canvas2.drawBitmap(createBitmap, new Rect(0, 0, createBitmap.getWidth(), createBitmap.getHeight()), new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), paint);
        return createBitmap2;
    }

    Bitmap getBitmapToDraw() {
        int i = this.gaussianBlurRadius;
        if (i <= 0) {
            return this.bitmap_cache;
        }
        Bitmap bitmap = this.bitmap_cache;
        return bitmap == null ? bitmap : gaussianBlurBitmap(bitmap, i);
    }

    private EmbossMaskFilter getCurrEmbossEffect(float f) {
        double radians = Math.toRadians(this.EmbossLightAngle);
        if (this.EmbossEnabled) {
            return new EmbossMaskFilter(new float[]{(float) (Math.cos(radians) * (-1.0d)), (float) Math.sin(radians), this.EmbossIntensity / 100.0f}, this.EmbossAmbient / 100.0f, (this.EmbossHardness * 6.0f) / 100.0f, ((this.EmbossBevel * f) * 25.0f) / 100.0f);
        }
        return null;
    }

    private EmbossMaskFilter getCurr3DEmbossEffect() {
        double radians = Math.toRadians(this.EmbossLightAngle);
        if (this.threeDLightingEnabled) {
            return new EmbossMaskFilter(new float[]{(float) (Math.cos(radians) * (-1.0d)), (float) Math.sin(radians), this.threeDLightingIntensity / 100.0f}, (100 - this.threeDLightingShadow) / 100.0f, (this.threeDLightingSpecularHardness * 6.0f) / 100.0f, 10.0f);
        }
        return null;
    }

    Bitmap screenBlend(Bitmap bitmap, Bitmap bitmap2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        int[] iArr = new int[width * height];
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                int pixel = bitmap.getPixel(i2, i);
                int pixel2 = bitmap2.getPixel(i2, i);
                iArr[(i * width) + i2] = Color.argb(Color.alpha(pixel2), 255 - (((255 - Color.red(pixel)) * (255 - Color.red(pixel2))) / 255), 255 - (((255 - Color.green(pixel)) * (255 - Color.green(pixel2))) / 255), 255 - (((255 - Color.blue(pixel)) * (255 - Color.blue(pixel2))) / 255));
            }
        }
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return createBitmap;
    }

    public int getEmbossAmbient() {
        return this.EmbossAmbient;
    }

    public int getEmbossBevel() {
        return this.EmbossBevel;
    }

    public boolean isEmbossEnabled() {
        return this.EmbossEnabled;
    }

    public int getEmbossHardness() {
        return this.EmbossHardness;
    }

    public int getEmbossIntensity() {
        return this.EmbossIntensity;
    }

    public int getEmbossLightAngle() {
        return this.EmbossLightAngle;
    }

    public void setEmboss(boolean z, int i, int i2, int i3, int i4, int i5) {
        this.EmbossEnabled = z;
        this.EmbossLightAngle = i;
        this.EmbossIntensity = i2;
        this.EmbossAmbient = i3;
        this.EmbossHardness = i4;
        this.EmbossBevel = i5;
        fullRedraw();
    }

    public boolean isEmptySticker() {
        return this.imgSource.checkValid() && this.imgSource.getPath().equals("misc/empty") && getShapeType() == SHAPE_TYPE_STICKER;
    }

    public int getShapeType() {
        return this.shapeType;
    }

    public void setShapeType(int i) {
        this.shapeType = i;
    }

    void loadResources() {
        if (this.imgSource.checkValid()) {
            if (this.imgSource.getSourceType() == ImageSource.SourceType.assets) {
                try {
                    String[] list = getContext().getAssets().list(this.imgSource.getPath());
                    int max = (int) (Math.max(this.width_f, this.height_f) * getRenderScaleF());
                    String str = list[0];
                    int length = list.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        String str2 = list[i];
                        if (!str2.contains("thumb")) {
                            int[] dimensionsFromAssets = commonFuncs.getDimensionsFromAssets(this.imgSource.getPath() + "/" + str2, getContext());
                            dimensionsFromAssets[0] = (int) (dimensionsFromAssets[0] * (this.renderMode ? this.bitmapPortion.width() / 100.0f : 1.0f));
                            dimensionsFromAssets[1] = (int) (dimensionsFromAssets[1] * (this.renderMode ? this.bitmapPortion.height() / 100.0f : 1.0f));
                            if (Math.max(dimensionsFromAssets[0], dimensionsFromAssets[1]) >= max) {
                                str = str2;
                                break;
                            }
                        }
                        i++;
                    }
                    this.currBitmap = commonFuncs.loadBitmapFromAsset(getContext(), this.imgSource.getPath() + "/" + str, 1);
                } catch (Exception unused) {
                    this.currBitmap = null;
                }
            } else if (this.imgSource.getSourceType() == ImageSource.SourceType.local_file) {
                try {
                    int[] dimensionsFromPath = commonFuncs.getDimensionsFromPath(this.imgSource.getPath());
                    dimensionsFromPath[0] = (int) (dimensionsFromPath[0] * (this.renderMode ? this.bitmapPortion.width() / 100.0f : 1.0f));
                    dimensionsFromPath[1] = (int) (dimensionsFromPath[1] * (this.renderMode ? this.bitmapPortion.height() / 100.0f : 1.0f));
                    this.currBitmap = commonFuncs.getBitmapFromPath(this.imgSource.getPath(), commonFuncs.getInSampleSize(dimensionsFromPath[0], dimensionsFromPath[1], (int) (this.width_f * getRenderScaleF()), (int) (this.height_f * getRenderScaleF())));
                } catch (Exception unused2) {
                    this.currBitmap = null;
                }
            }
        } else {
            this.currBitmap = null;
        }
        OnShapeNotifyLayers onShapeNotifyLayers = this.layersListener;
        if (onShapeNotifyLayers != null) {
            onShapeNotifyLayers.imageChanged(this.renderMode);
        }
    }

    float getRenderScaleF() {
        if (this.renderMode) {
            return this.renderScaleF;
        }
        return 1.0f;
    }

    boolean isNotVisible() {
        if (!MainActivity.helperClass.safetyCheck()) {
            return false;
        }
        Rect rect = new Rect(0, 0, MainActivity.helperClass.getContainerWidth(), MainActivity.helperClass.getContainerHeight());
        Point point = new Point(getLeft(), getTop());
        Point point2 = new Point(getLeft(), getBottom());
        Point point3 = new Point(getRight(), getTop());
        Point point4 = new Point(getRight(), getBottom());
        return (rect.contains(point.x, point.y) || rect.contains(point2.x, point2.y) || rect.contains(point3.x, point3.y) || rect.contains(point4.x, point4.y)) ? false : true;
    }

    public void visibilityCheck() {
        if (isNotVisible()) {
            makeMeVisible();
        }
    }

    private void makeMeVisible() {
        setX(0.0f);
        setY(0.0f);
    }

    public void rearrange(int i, int i2, int i3, int i4) {
        if (i2 == 0 || i == 0 || i3 == 0 || i4 == 0) {
            return;
        }
        float x = getX() / i3;
        float y = getY() / i4;
        setX(x * i);
        setY(y * i2);
    }

    void drawHandles(Canvas canvas) {
        canvas.drawCircle(this.resizor.x, this.resizor.y, getBigRadius(), this.paintHandlesBorder);
        canvas.drawCircle(this.resizor.x, this.resizor.y, getBigRadius(), this.dragID == 0 ? this.paintHandlesHighlight : this.paintHandles);
        canvas.drawArc(new RectF(this.rotator.x - getBigRadius(), this.rotator.y - getBigRadius(), this.rotator.x + getBigRadius(), this.rotator.y + getBigRadius()), 75.0f, 120.0f, false, this.paintHandleRotateBorder);
        canvas.drawArc(new RectF(this.rotator.x - getBigRadius(), this.rotator.y - getBigRadius(), this.rotator.x + getBigRadius(), this.rotator.y + getBigRadius()), 75.0f, 120.0f, false, this.paintHandleRotate);
        if (enoughRoomWidthor()) {
            canvas.drawCircle(this.widthor.x, this.widthor.y, this.smallBallRadius, this.paintHandlesBorder);
            canvas.drawCircle(this.widthor.x, this.widthor.y, this.smallBallRadius, this.dragID == 2 ? this.paintHandlesHighlight : this.paintHandles);
        }
        if (enoughRoomHeightor()) {
            canvas.drawCircle(this.heightor.x, this.heightor.y, this.smallBallRadius, this.paintHandlesBorder);
            canvas.drawCircle(this.heightor.x, this.heightor.y, this.smallBallRadius, this.dragID == 3 ? this.paintHandlesHighlight : this.paintHandles);
        }
    }

    public void tempDisableRotations(boolean z, boolean z2, boolean z3) {
        this.tempDisablePerspective = z3;
        this.tempDisableRot = z;
        this.tempDisable3DRots = z2;
        if (this.tempDisableRot) {
            rotateShape(this.angle);
        }
        invalidate();
    }

    public void restoreRotations() {
        this.tempDisable3DRots = false;
        this.tempDisablePerspective = false;
        if (this.tempDisableRot) {
            this.tempDisableRot = false;
            rotateShape(this.angle);
        }
        invalidate();
    }

    private static Bitmap getBitmapFromAsset(Context context, String str) {
        try {
            InputStream open = context.getAssets().open(str);
            new BitmapFactory.Options();
            Bitmap decodeStream = BitmapFactory.decodeStream(open);
            open.close();
            return decodeStream;
        } catch (IOException unused) {
            return null;
        }
    }

    public void setDims(float f, float f2) {
        if (this.width_f == f && this.height_f == f2) {
            return;
        }
        this.width_f = Math.max(this.min_width, f);
        this.height_f = Math.max(this.min_height, f2);
        requestLayout();
        fullRedraw();
    }

    void setNewImgSrc(ImageSource imageSource, int i) {
        ImageSource copy = this.imgSource.copy();
        this.bmpMasks = null;
        this.imgSource = imageSource;
        this.shapeType = i;
        if (!commonFuncs.compareStrings(copy.getPath(), imageSource.getPath()) || copy.isAssetFolder() != imageSource.isAssetFolder()) {
            this.currBitmap = null;
        }
        this.need_redraw = true;
    }

    void setNewImgCropFromBundle(Bundle bundle) {
        CropInfo cropInfo = new CropInfo(bundle);
        this.bitmapPortion = cropInfo.getPortion();
        this.bitmapInRotation = cropInfo.getRot();
        this.circularCrop = cropInfo.isCircular();
        this.flipHor = cropInfo.isFlipH();
        this.flipVer = cropInfo.isFlipV();
        this.need_redraw = true;
    }

    @Deprecated
    void setNewImgSrc(int i, String str, int i2) {
        if (str == null || str.isEmpty()) {
            setNewImgSrc(new ImageSource(), this.shapeType);
        } else if (i == 1) {
            setNewImgSrc(new ImageSource(str, true), i2);
        } else if (i == 2) {
            setNewImgSrc(new ImageSource(str), i2);
        }
    }

    private Bundle geometryToBundle(float f, float f2, float f3, float f4, int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(appStateConstants.OBJECT_GEOMETRY_ONLY, true);
        bundle.putString(appStateConstants.SHAPE_REFERENCE, this.reference);
        bundle.putString(appStateConstants.SHAPE_ROTATION, String.valueOf(i));
        bundle.putInt("shapeX", (int) f);
        bundle.putInt("shapeY", (int) f2);
        bundle.putString(appStateConstants.SHAPE_WIDTH, String.valueOf(f3));
        bundle.putString(appStateConstants.SHAPE_HEIGHT, String.valueOf(f4));
        bundle.putInt("shapeOldContainerWidth", MainActivity.helperClass.getContainerWidth());
        bundle.putInt("shapeOldContainerHeight", MainActivity.helperClass.getContainerHeight());
        return bundle;
    }

    public Bundle saveToBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(appStateConstants.SHAPE_REFERENCE, this.reference);
        bundle.putString(appStateConstants.SHAPE_ROTATION, String.valueOf(this.angle));
        bundle.putInt("shapeX", (int) getX());
        bundle.putInt("shapeY", (int) getY());
        bundle.putString(appStateConstants.SHAPE_WIDTH, String.valueOf(this.width_f));
        bundle.putString(appStateConstants.SHAPE_HEIGHT, String.valueOf(this.height_f));
        bundle.putInt("shapeOldContainerWidth", MainActivity.helperClass.getContainerWidth());
        bundle.putInt("shapeOldContainerHeight", MainActivity.helperClass.getContainerHeight());
        bundle.putInt(appStateConstants.SHAPE_IMAGE_SHAPE_TYPE, this.shapeType);
        bundle.putBoolean(appStateConstants.OBJECT_HIDDEN, this.hidden && !this.tmpHidden);
        bundle.putBoolean(appStateConstants.OBJECT_LOCKED, this.locked);
        bundle.putBoolean(appStateConstants.SHAPE_IMAGE_SRC_V2, true);
        bundle.putBundle(appStateConstants.SHAPE_IMAGE_SRC, this.imgSource.toBundle());
        bundle.putBundle(appStateConstants.SHAPE_IMAGE_CROP_INFO, CropInfo.makeBundle(getBitmapPortion(false), getBitmapInRotation(), isBitmapCircularCrop(), this.flipHor, this.flipVer));
        bundle.putInt(appStateConstants.SHAPE_SHADOW_COLOR, this.shadow_color);
        bundle.putString(appStateConstants.SHAPE_SHADOW_RADIUS, String.valueOf(this.shadow_radius));
        bundle.putInt(appStateConstants.SHAPE_SHADOW_DX, this.shadow_dx);
        bundle.putInt(appStateConstants.SHAPE_SHADOW_DY, this.shadow_dy);
        bundle.putBoolean(appStateConstants.SHAPE_SHADOW_ENABLED, this.shadow_enabled.booleanValue());
        bundle.putInt(appStateConstants.SHAPE_INNER_COLOR, this.shadow_inner_color);
        bundle.putInt(appStateConstants.SHAPE_INNER_RADIUS, this.shadow_inner_radius);
        bundle.putInt(appStateConstants.SHAPE_INNER_DX, this.shadow_inner_dx);
        bundle.putInt(appStateConstants.SHAPE_INNER_DY, this.shadow_inner_dy);
        bundle.putBoolean(appStateConstants.SHAPE_INNER_ENABLED, this.shadow_inner_enabled.booleanValue());
        bundle.putBoolean(appStateConstants.SHAPE_EMBOSS_ENABLED, isEmbossEnabled());
        bundle.putInt(appStateConstants.SHAPE_EMBOSS_LIGHT_ANGLE, getEmbossLightAngle());
        bundle.putInt(appStateConstants.SHAPE_EMBOSS_INTENSITY, getEmbossIntensity());
        bundle.putInt(appStateConstants.SHAPE_EMBOSS_AMBIENT, getEmbossAmbient());
        bundle.putInt(appStateConstants.SHAPE_EMBOSS_HARDNESS, getEmbossHardness());
        bundle.putInt(appStateConstants.SHAPE_EMBOSS_BEVEL, getEmbossBevel());
        bundle.putBoolean(appStateConstants.SHAPE_STROKE_ENABLED, this.strokeEnabled);
        bundle.putInt(appStateConstants.SHAPE_STROKE_WIDTH, this.strokeRadius);
        bundle.putInt(appStateConstants.SHAPE_STROKE_COLOR, this.strokeColor);
        bundle.putBoolean(appStateConstants.SHAPE_COLOR_OVERLAY_ENABLED, this.colorOverlayEnabled);
        bundle.putInt(appStateConstants.SHAPE_COLOR_OVERLAY_COLOR, this.colorOverlayColor);
        bundle.putInt(appStateConstants.SHAPE_COLOR_OVERLAY_FILL_TYPE, this.colorOverlayFillType);
        bundle.putString(appStateConstants.SHAPE_COLOR_OVERLAY_GRADIENT, this.colorOverlayGradient.convertToStringV2());
        bundle.putInt(appStateConstants.SHAPE_ROTATION_X, this.RotationX);
        bundle.putInt(appStateConstants.SHAPE_ROTATION_Y, this.RotationY);
        bundle.putBoolean(appStateConstants.SHAPE_REMOVE_COLOR_ENABLED, isRemoveColorEnabled());
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<ColorTolerance> it = this.removeColorColors.iterator();
        while (it.hasNext()) {
            ColorTolerance next = it.next();
            arrayList.add(String.valueOf(next.c));
            arrayList.add(String.valueOf(next.t));
        }
        bundle.putStringArrayList(appStateConstants.SHAPE_REMOVE_COLOR_CT, arrayList);
        bundle.putInt(appStateConstants.SHAPE_REMOVE_COLOR_BLUR, getRemoveColorBlur());
        bundle.putInt("shapeBlendMode", this.blendMode);
        bundle.putInt("shapeGaussianBlurRadius", this.gaussianBlurRadius);
        bundle.putInt(appStateConstants.SHAPE_OPACITY, getShapeOpacity());
        bundle.putBoolean(appStateConstants.SHAPE_OPACITY_SHADOW_INCLUDE, isShapeOpacityShadowInclude());
        bundle.putBoolean(appStateConstants.SHAPE_PERSPECTIVE_ENABLED, isPerspectiveEnabled());
        bundle.putInt(appStateConstants.SHAPE_PERSPECTIVE_P1X, (int) (this.perspectivePoint1.x * 1000.0f));
        bundle.putInt(appStateConstants.SHAPE_PERSPECTIVE_P2X, (int) (this.perspectivePoint2.x * 1000.0f));
        bundle.putInt(appStateConstants.SHAPE_PERSPECTIVE_P3X, (int) (this.perspectivePoint3.x * 1000.0f));
        bundle.putInt(appStateConstants.SHAPE_PERSPECTIVE_P4X, (int) (this.perspectivePoint4.x * 1000.0f));
        bundle.putInt(appStateConstants.SHAPE_PERSPECTIVE_P1Y, (int) (this.perspectivePoint1.y * 1000.0f));
        bundle.putInt(appStateConstants.SHAPE_PERSPECTIVE_P2Y, (int) (this.perspectivePoint2.y * 1000.0f));
        bundle.putInt(appStateConstants.SHAPE_PERSPECTIVE_P3Y, (int) (this.perspectivePoint3.y * 1000.0f));
        bundle.putInt(appStateConstants.SHAPE_PERSPECTIVE_P4Y, (int) (this.perspectivePoint4.y * 1000.0f));
        bundle.putBoolean(appStateConstants.SHAPE_THREE_D_ENABLED, isThreeDEnabled());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_VIEW_TYPE, getThreeDViewType());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_DEPTH, getThreeDDepth());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_DEPTH_FILL_TYPE, getThreeDDepthFillType());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_DEPTH_COLOR_FILL, getThreeDDepthColorFill());
        bundle.putString(appStateConstants.SHAPE_THREE_D_DEPTH_GRADIENT_FILL_V2, getThreeDDepthGradientFill().convertToStringV2());
        bundle.putBoolean(appStateConstants.SHAPE_THREE_D_DEPTH_COLOR_AUTOMATIC, isThreeDDepthColorAutomatic());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_DEPTH_DARKEN, getThreeDDepthDarken());
        bundle.putBoolean(appStateConstants.SHAPE_THREE_D_STOKE_INCLUDE, isThreeDStokeInclude());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_OBLIQUE_ANGLE, getThreeDObliqueAngle());
        bundle.putBoolean(appStateConstants.SHAPE_THREE_D_LIGHTING_ENABLED, isThreeDLightingEnabled());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_LIGHTING_INTENSITY, getThreeDLightingIntensity());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_LIGHTING_SHADOW, getThreeDLightingShadow());
        bundle.putInt(appStateConstants.SHAPE_THREE_D_LIGHTING_SPECULAR_HARDNESS, getThreeDLightingSpecularHardness());
        bundle.putBoolean(appStateConstants.SHAPE_BEZIER_MASK_ENABLED, this.bezierMaskEnabled);
        if (this.bezierMaskEnabled && this.bezierMaskBundle != null) {
            bundle.putBoolean(appStateConstants.SHAPE_BEZIER_MASK_IN, this.bezierMaskIn);
            bundle.putBundle(appStateConstants.SHAPE_BEZIER_MASK_DATA, this.bezierMaskBundle);
        }
        BmpPathMasks bmpPathMasks = this.bmpMasks;
        if (bmpPathMasks != null) {
            bundle.putBundle(appStateConstants.SHAPE_BMP_ERASER_MASK, bmpPathMasks.toBundle());
        }
        Bundle bundle2 = this.bezierShapeBundle;
        if (bundle2 != null) {
            bundle.putBundle(appStateConstants.SHAPE_BEZIER_DATA, bundle2);
        }
        Bundle bundle3 = this.arrowDataBundle;
        if (bundle3 != null) {
            bundle.putBundle(appStateConstants.SHAPE_ARROW_DATA, bundle3);
        }
        Bundle bundle4 = this.shapeDataBundle;
        if (bundle4 != null) {
            bundle.putBundle(appStateConstants.SHAPE_SHAPE_DATA, bundle4);
        }
        Bundle bundle5 = this.mergedDataBundle;
        if (bundle5 != null) {
            bundle.putBundle("mergedData", bundle5);
        }
        bundle.putBundle(appStateConstants.SHAPE_TEXTURE_IMAGE_SRC, this.textureSrc.toBundle());
        RectF rectF = this.texturePortion;
        int i = this.textureInRot;
        boolean z = this.textureFlipH;
        bundle.putBundle(appStateConstants.SHAPE_TEXTURE_IMAGE_CROP_INFO, CropInfo.makeBundle(rectF, i, false, z, z));
        bundle.putBoolean(appStateConstants.SHAPE_TEXTURE_MAINTAIN_ASPECT, isTextureMaintainAspect());
        bundle.putInt(appStateConstants.SHAPE_TEXTURE_SCALE, getTextureScale());
        bundle.putInt(appStateConstants.SHAPE_EFFECTS_HUE, this.hue);
        bundle.putInt(appStateConstants.SHAPE_EFFECTS_SATURATION, this.saturation);
        bundle.putInt(appStateConstants.SHAPE_EFFECTS_BRIGHTNESS, this.brightness);
        bundle.putInt(appStateConstants.SHAPE_EFFECTS_CONTRAST, this.contrast);
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [boolean, int] */
    public void applyBundle(Bundle bundle, boolean z) {
        float f;
        float f2;
        ArrayList<String> arrayList;
        GradientMaker.GradientFill gradientFill;
        freezeFullRedraw();
        int i = bundle.getInt("shapeOldContainerWidth");
        int i2 = bundle.getInt("shapeOldContainerHeight");
        int containerWidth = MainActivity.helperClass.getContainerWidth();
        int containerHeight = MainActivity.helperClass.getContainerHeight();
        if (i <= 0 || i2 <= 0) {
            f = 1.0f;
            f2 = 1.0f;
        } else {
            f = Math.min(containerWidth / i, containerHeight / i2);
            f2 = f;
        }
        float parseFloat = Float.parseFloat(bundle.getString(appStateConstants.SHAPE_WIDTH));
        float parseFloat2 = Float.parseFloat(bundle.getString(appStateConstants.SHAPE_HEIGHT));
        this.width_f = Math.max(parseFloat * f, this.min_width);
        this.height_f = Math.max(parseFloat2 * f2, this.min_height);
        if (!z) {
            setX(bundle.getInt("shapeX") * f);
            setY(bundle.getInt("shapeY") * f2);
        }
        rotateShape((int) Float.parseFloat(bundle.getString(appStateConstants.SHAPE_ROTATION)));
        if (!bundle.getBoolean(appStateConstants.OBJECT_GEOMETRY_ONLY)) {
            this.hidden = !z && bundle.getBoolean(appStateConstants.OBJECT_HIDDEN);
            this.locked = !z && bundle.getBoolean(appStateConstants.OBJECT_LOCKED);
            setShadow(bundle.getBoolean(appStateConstants.SHAPE_SHADOW_ENABLED), Float.valueOf(bundle.getString(appStateConstants.SHAPE_SHADOW_RADIUS)).floatValue(), bundle.getInt(appStateConstants.SHAPE_SHADOW_DX), bundle.getInt(appStateConstants.SHAPE_SHADOW_DY), bundle.getInt(appStateConstants.SHAPE_SHADOW_COLOR));
            setInnerShadow(bundle.getBoolean(appStateConstants.SHAPE_INNER_ENABLED), bundle.getInt(appStateConstants.SHAPE_INNER_RADIUS), bundle.getInt(appStateConstants.SHAPE_INNER_DX), bundle.getInt(appStateConstants.SHAPE_INNER_DY), bundle.getInt(appStateConstants.SHAPE_INNER_COLOR));
            setEmboss(bundle.getBoolean(appStateConstants.SHAPE_EMBOSS_ENABLED, isEmbossEnabled()), bundle.getInt(appStateConstants.SHAPE_EMBOSS_LIGHT_ANGLE, getEmbossLightAngle()), bundle.getInt(appStateConstants.SHAPE_EMBOSS_INTENSITY, getEmbossIntensity()), bundle.getInt(appStateConstants.SHAPE_EMBOSS_AMBIENT, getEmbossAmbient()), bundle.getInt(appStateConstants.SHAPE_EMBOSS_HARDNESS, getEmbossHardness()), bundle.getInt(appStateConstants.SHAPE_EMBOSS_BEVEL, getEmbossBevel()));
            rotate3d(bundle.getInt(appStateConstants.SHAPE_ROTATION_X, 0), bundle.getInt(appStateConstants.SHAPE_ROTATION_Y, 0));
            setColorOverlay(bundle.getBoolean(appStateConstants.SHAPE_COLOR_OVERLAY_ENABLED, false), bundle.getInt(appStateConstants.SHAPE_COLOR_OVERLAY_FILL_TYPE, 1), bundle.getInt(appStateConstants.SHAPE_COLOR_OVERLAY_COLOR, -1), new GradientMaker.GradientFill(bundle.getString(appStateConstants.SHAPE_COLOR_OVERLAY_GRADIENT)));
            setStroke(bundle.getBoolean(appStateConstants.SHAPE_STROKE_ENABLED, this.strokeEnabled), bundle.getInt(appStateConstants.SHAPE_STROKE_WIDTH, this.strokeRadius), bundle.getInt(appStateConstants.SHAPE_STROKE_COLOR, this.strokeColor));
            setShapeOpacity(bundle.getInt(appStateConstants.SHAPE_OPACITY, getShapeOpacity()));
            setShapeOpacityShadowInclude(bundle.getBoolean(appStateConstants.SHAPE_OPACITY_SHADOW_INCLUDE, isShapeOpacityShadowInclude()));
            setGaussianBlurRadius(bundle.getInt("shapeGaussianBlurRadius", getGaussianBlurRadius()));
            ?? r1 = bundle.getInt("shapeBlendMode", 0);
            setBlendMode(r1);
            if (bundle.getIntegerArrayList(appStateConstants.SHAPE_REMOVE_COLOR_CT) != null) {
                arrayList = bundle.getStringArrayList(appStateConstants.SHAPE_REMOVE_COLOR_CT);
            } else if (bundle.getInt(appStateConstants.SHAPE_REMOVE_COLOR_COLOR) == 0 || bundle.getInt(appStateConstants.SHAPE_REMOVE_COLOR_TOLERANCE) == 0) {
                arrayList = null;
            } else {
                ArrayList<String> arrayList2 = new ArrayList<>();
                arrayList2.add(bundle.getString(appStateConstants.SHAPE_REMOVE_COLOR_COLOR));
                arrayList2.add(bundle.getString(appStateConstants.SHAPE_REMOVE_COLOR_TOLERANCE));
                arrayList = arrayList2;
            }
            setRemoveColorOptionsPacked(bundle.getBoolean(appStateConstants.SHAPE_REMOVE_COLOR_ENABLED, isRemoveColorEnabled()), bundle.getInt(appStateConstants.SHAPE_REMOVE_COLOR_BLUR, getRemoveColorBlur()), arrayList);
            setPerspectiveEnabled(bundle.getBoolean(appStateConstants.SHAPE_PERSPECTIVE_ENABLED, isPerspectiveEnabled()));
            if (isPerspectiveEnabled()) {
                setPerspectivePoints(new PointF(bundle.getInt(appStateConstants.SHAPE_PERSPECTIVE_P1X, (int) (this.perspectivePoint1.x * 1000.0f)) / 1000.0f, bundle.getInt(appStateConstants.SHAPE_PERSPECTIVE_P1Y, (int) (this.perspectivePoint1.y * 1000.0f)) / 1000.0f), new PointF(bundle.getInt(appStateConstants.SHAPE_PERSPECTIVE_P2X, (int) (this.perspectivePoint2.x * 1000.0f)) / 1000.0f, bundle.getInt(appStateConstants.SHAPE_PERSPECTIVE_P2Y, (int) (this.perspectivePoint2.y * 1000.0f)) / 1000.0f), new PointF(bundle.getInt(appStateConstants.SHAPE_PERSPECTIVE_P3X, (int) (this.perspectivePoint3.x * 1000.0f)) / 1000.0f, bundle.getInt(appStateConstants.SHAPE_PERSPECTIVE_P3Y, (int) (this.perspectivePoint3.y * 1000.0f)) / 1000.0f), new PointF(bundle.getInt(appStateConstants.SHAPE_PERSPECTIVE_P4X, (int) (this.perspectivePoint4.x * 1000.0f)) / 1000.0f, bundle.getInt(appStateConstants.SHAPE_PERSPECTIVE_P4Y, (int) (this.perspectivePoint4.y * 1000.0f)) / 1000.0f));
            }
            set3dEnabled(bundle.getBoolean(appStateConstants.SHAPE_THREE_D_ENABLED, isThreeDEnabled()));
            if (isThreeDEnabled()) {
                set3dViewType(bundle.getInt(appStateConstants.SHAPE_THREE_D_VIEW_TYPE, getThreeDViewType()));
                set3dDepth(bundle.getInt(appStateConstants.SHAPE_THREE_D_DEPTH), bundle.getInt(appStateConstants.SHAPE_THREE_D_DEPTH_DARKEN, getThreeDDepthDarken()), getThreeDQuality(), bundle.getBoolean(appStateConstants.SHAPE_THREE_D_STOKE_INCLUDE, isThreeDStokeInclude()));
                String string = bundle.getString(appStateConstants.SHAPE_THREE_D_DEPTH_GRADIENT_FILL_V2);
                if (string == null) {
                    gradientFill = new GradientMaker.GradientFill(bundle.getInt(appStateConstants.SHAPE_THREE_D_DEPTH_GRADIENT_FILL_TYPE, getThreeDDepthGradientFill().getType()), bundle.getInt(appStateConstants.SHAPE_THREE_D_DEPTH_GRADIENT_FILL_START, getThreeDDepthGradientFill().getStartColor()), bundle.getInt(appStateConstants.SHAPE_THREE_D_DEPTH_GRADIENT_FILL_END, getThreeDDepthGradientFill().getEndColor()));
                } else {
                    gradientFill = new GradientMaker.GradientFill(string);
                }
                set3dDepthColor(bundle.getInt(appStateConstants.SHAPE_THREE_D_DEPTH_FILL_TYPE, getThreeDDepthFillType()), bundle.getInt(appStateConstants.SHAPE_THREE_D_DEPTH_COLOR_FILL, getThreeDDepthColorFill()), gradientFill, bundle.getBoolean(appStateConstants.SHAPE_THREE_D_DEPTH_COLOR_AUTOMATIC, isThreeDDepthColorAutomatic()));
                set3dLighting(bundle.getBoolean(appStateConstants.SHAPE_THREE_D_LIGHTING_ENABLED, isThreeDLightingEnabled()), bundle.getInt(appStateConstants.SHAPE_EMBOSS_LIGHT_ANGLE, getEmbossLightAngle()), bundle.getInt(appStateConstants.SHAPE_THREE_D_LIGHTING_INTENSITY, getThreeDLightingIntensity()), bundle.getInt(appStateConstants.SHAPE_THREE_D_LIGHTING_SHADOW, getThreeDLightingShadow()), bundle.getInt(appStateConstants.SHAPE_THREE_D_LIGHTING_SPECULAR_HARDNESS, getThreeDLightingSpecularHardness()));
                int i3 = bundle.getInt(appStateConstants.SHAPE_THREE_D_OBLIQUE_ANGLE, -1);
                if (i3 == -1) {
                    i3 = (int) Math.toDegrees(Math.atan2(bundle.getInt(appStateConstants.SHAPE_THREE_D_OFFSET_X, 1), bundle.getInt(appStateConstants.SHAPE_THREE_D_OFFSET_Y, 1)));
                }
                set3dObliqueAngle(i3);
            }
            CropInfo cropInfo = new CropInfo(bundle.getBundle(appStateConstants.SHAPE_TEXTURE_IMAGE_CROP_INFO));
            setNewTextureSrc(new ImageSource(bundle.getBundle(appStateConstants.SHAPE_TEXTURE_IMAGE_SRC)), cropInfo.getRot(), cropInfo.getPortion(), cropInfo.isFlipH(), cropInfo.isFlipV());
            setTextureMaintainAspect(bundle.getBoolean(appStateConstants.SHAPE_TEXTURE_MAINTAIN_ASPECT, r1));
            setTextureScale(bundle.getInt(appStateConstants.SHAPE_TEXTURE_SCALE, 10));
            if (!bundle.getBoolean(appStateConstants.SHAPE_IMAGE_SRC_V2)) {
                setNewImgSrc(bundle.getInt(appStateConstants.SHAPE_IMAGE_FILE_TYPE), bundle.getString(appStateConstants.SHAPE_IMAGE_FILE_SRC), bundle.getInt(appStateConstants.SHAPE_IMAGE_SHAPE_TYPE));
            } else {
                setNewImgSrc(new ImageSource(bundle.getBundle(appStateConstants.SHAPE_IMAGE_SRC)), bundle.getInt(appStateConstants.SHAPE_IMAGE_SHAPE_TYPE));
                setNewImgCropFromBundle(bundle.getBundle(appStateConstants.SHAPE_IMAGE_CROP_INFO));
            }
            Bundle bundle2 = bundle.getBundle(appStateConstants.SHAPE_BMP_ERASER_MASK);
            setBmpPathMasks(bundle2 != null ? new BmpPathMasks(bundle2) : null);
            setBezierShapeData(bundle.getBundle(appStateConstants.SHAPE_BEZIER_DATA));
            setArrowData(bundle.getBundle(appStateConstants.SHAPE_ARROW_DATA));
            setShapeData(bundle.getBundle(appStateConstants.SHAPE_SHAPE_DATA));
            this.mergedDataBundle = bundle.getBundle("mergedData");
            this.bezierMaskEnabled = bundle.getBoolean(appStateConstants.SHAPE_BEZIER_MASK_ENABLED);
            setBezierMaskIn(bundle.getBoolean(appStateConstants.SHAPE_BEZIER_MASK_IN, true));
            setBezierMaskBundle(bundle.getBundle(appStateConstants.SHAPE_BEZIER_MASK_DATA));
            this.bezierMaskPath = null;
            setEffects(bundle.getInt(appStateConstants.SHAPE_EFFECTS_HUE), bundle.getInt(appStateConstants.SHAPE_EFFECTS_SATURATION), bundle.getInt(appStateConstants.SHAPE_EFFECTS_BRIGHTNESS), bundle.getInt(appStateConstants.SHAPE_EFFECTS_CONTRAST));
        }
        UnFreezeFullRedraw();
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.frozen) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.view.View
    public void postInvalidate() {
        if (this.frozen) {
            return;
        }
        super.postInvalidate();
    }

    @Override // android.view.View
    public void postInvalidate(int i, int i2, int i3, int i4) {
        if (this.frozen) {
            return;
        }
        super.postInvalidate(i, i2, i3, i4);
    }

    private void invalidateParent() {
        if (Build.VERSION.SDK_INT >= 19 || getParent() == null) {
            return;
        }
        ((textContainer) getParent()).invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.frozen) {
            return;
        }
        super.invalidate();
        invalidateParent();
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        if (this.frozen) {
            return;
        }
        super.invalidate(rect);
        invalidateParent();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        if (this.frozen) {
            return;
        }
        super.invalidate(i, i2, i3, i4);
        invalidateParent();
    }
}
