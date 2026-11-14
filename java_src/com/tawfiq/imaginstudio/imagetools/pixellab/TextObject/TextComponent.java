package com.tawfiq.imaginstudio.imagetools.pixellab.TextObject;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.EmbossMaskFilter;
import android.graphics.LinearGradient;
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
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.ViewGroup;
import com.tawfiq.imaginstudio.imagetools.pixellab.AbstractComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.Image.CropInfo;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.DrawingPanelRenderer;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.customBezier;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.interval;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.spansIntervals;
import com.tawfiq.imaginstudio.imagetools.pixellab.font.customTypeface;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TextComponent extends AbstractComponent {
    public static final int FILL_TYPE_COLOR = 1;
    public static final int FILL_TYPE_GRADIENT = 2;
    public static final int threeD_TYPE_OBLIQUE = 3;
    public static final int threeD_TYPE_PERSPECTIVE = 1;
    int DRAG_ID_MAX_WIDTHER;
    int DRAG_ID_RESIZER;
    int DRAG_ID_ROTATE;
    int DRAG_ID_WHOLE;
    private int EmbossAmbient;
    private int EmbossBevel;
    private boolean EmbossEnabled;
    private int EmbossHardness;
    private boolean EmbossIncludeStroke;
    private int EmbossIntensity;
    private int EmbossLightAngle;
    OnSelectEventListener SelectListener;
    public int angle;
    public int assigned_id;
    private float background_addHorizontalL;
    private float background_addHorizontalR;
    private float background_addVerticalB;
    private float background_addVerticalT;
    private int background_border_radius;
    private int background_color;
    private int background_fill_type;
    GradientMaker.GradientFill background_usedGradient;
    public Bundle bezierMaskBundle;
    public boolean bezierMaskEnabled;
    public boolean bezierMaskIn;
    private ArrayList<Path> bezierMaskPath;
    private RectF bezierMaskRect;
    float bigBallRadius;
    private Bitmap bitmap_3d_cache;
    private Bitmap bitmap_cache;
    private Bitmap bitmap_cache_reflection;
    private Bitmap bitmap_shadow_3d;
    private Bitmap bitmap_shadow_outer;
    private Bitmap bitmap_shadow_outer_reflection;
    int bottom_padding;
    final float clickTolerance;
    float dX;
    float dY;
    final long doubleClickDuration;
    float downX;
    float downY;
    private int dragID;
    public int effectBrightness;
    public int effectContrast;
    public int effectHue;
    public int effectSaturation;
    int fill_type;
    private final float floatPrecision;
    public String fontFeatureSetting;
    private boolean frozen;
    boolean hasInnerShadow;
    private boolean hidden;
    private boolean isBackgroundEnabled;
    boolean isCurved;
    private boolean isSelected;
    long lastClick;
    private OnTextNotifyLayers layersListener;
    int left_padding;
    private boolean locked;
    private Matrix mMatrix;
    PointF maxWidther;
    private boolean need_redraw;
    private boolean neverEdited;
    int oldAngle;
    float oldMaxW;
    float oldPosX;
    float oldPosY;
    float oldTextSize;
    private boolean outer_glow_enabled;
    private int outer_shadow_color;
    private int outer_shadow_dx;
    private int outer_shadow_dy;
    private Boolean outer_shadow_enabled;
    private int outer_shadow_padding;
    private float outer_shadow_radius;
    Paint paint;
    Paint paintHandleRotate;
    Paint paintHandleRotateBorder;
    Paint paintHandles;
    Paint paintHandlesBorder;
    Paint paintHandlesHighlight;
    Paint paintSelected;
    Paint paintSelectedBg;
    Paint paintSelectedBorder;
    private boolean perspectiveEnabled;
    public PointF perspectivePoint1;
    public PointF perspectivePoint2;
    public PointF perspectivePoint3;
    public PointF perspectivePoint4;
    float previousX;
    float previousY;
    public String reference;
    public boolean reflectionEnabled;
    public int reflection_dy;
    boolean renderMode;
    float renderScaleF;
    PointF resizer;
    int right_padding;
    PointF rotator;
    private int shadow_3d_color;
    private boolean shadow_3d_enabled;
    private int shadow_3d_expand;
    private int shadow_3d_radius;
    private int shadow_3d_transparency;
    private boolean tempDisable3DRots;
    private boolean tempDisablePerspective;
    private boolean tempDisableRot;
    CustomTextView textDraw;
    public int textHeight;
    private int textOpacity;
    private boolean textOpacityShadowInclude;
    private int textRotationX;
    private int textRotationY;
    public int textWidth;
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
    int top_padding;
    GradientMaker.GradientFill usedGradient;
    PointF viewCenter;

    /* loaded from: classes.dex */
    public interface OnSelectEventListener {
        void onEvent_SelectText(int i);

        void onEvent_TextGeometryChanged(Bundle bundle, String str);

        void onEvent_doubleTapText();
    }

    /* loaded from: classes.dex */
    public interface OnTextNotifyLayers {
        void selectionChanged(boolean z);

        void textChanged();
    }

    public TextComponent(Context context, int i, String str) {
        super(context);
        this.bezierMaskIn = true;
        this.bezierMaskEnabled = true;
        this.bezierMaskPath = null;
        this.bezierMaskRect = new RectF();
        this.bezierMaskBundle = null;
        this.renderMode = false;
        this.renderScaleF = 1.0f;
        this.floatPrecision = 1000.0f;
        this.neverEdited = true;
        this.viewCenter = new PointF();
        this.fill_type = 1;
        this.top_padding = 0;
        this.bottom_padding = 0;
        this.left_padding = 0;
        this.right_padding = 0;
        this.usedGradient = new GradientMaker.GradientFill();
        this.reflectionEnabled = false;
        this.reflection_dy = 0;
        this.textRotationX = 0;
        this.textRotationY = 0;
        this.bigBallRadius = commonFuncs.dpToPx(10);
        this.tmpCanvas = new Canvas();
        this.outer_glow_enabled = false;
        this.outer_shadow_radius = 10.0f;
        this.outer_shadow_dx = 0;
        this.outer_shadow_dy = 0;
        this.outer_shadow_color = -16777216;
        this.outer_shadow_padding = 0;
        this.bitmap_shadow_outer = null;
        this.bitmap_shadow_3d = null;
        this.bitmap_cache = null;
        this.bitmap_shadow_outer_reflection = null;
        this.bitmap_cache_reflection = null;
        this.bitmap_3d_cache = null;
        this.outer_shadow_enabled = Boolean.FALSE;
        this.need_redraw = true;
        this.DRAG_ID_MAX_WIDTHER = 1;
        this.DRAG_ID_ROTATE = 3;
        this.DRAG_ID_RESIZER = 4;
        this.DRAG_ID_WHOLE = 2;
        this.textWidth = 0;
        this.textHeight = 0;
        this.paint = new Paint(1);
        this.paintSelected = new Paint(1);
        this.paintSelectedBorder = new Paint(1);
        this.paintSelectedBg = new Paint(1);
        this.paintHandles = new Paint(1);
        this.paintHandlesBorder = new Paint(1);
        this.paintHandleRotate = new Paint(1);
        this.paintHandleRotateBorder = new Paint(1);
        this.paintHandlesHighlight = new Paint(1);
        this.maxWidther = new PointF();
        this.rotator = new PointF();
        this.resizer = new PointF();
        this.perspectiveEnabled = false;
        this.perspectivePoint1 = new PointF(0.0f, 0.0f);
        this.perspectivePoint2 = new PointF(1.0f, 0.0f);
        this.perspectivePoint3 = new PointF(1.0f, 1.0f);
        this.perspectivePoint4 = new PointF(0.0f, 1.0f);
        this.isSelected = true;
        this.dragID = -1;
        this.hasInnerShadow = false;
        this.isCurved = false;
        this.angle = 0;
        this.background_color = Color.argb(180, 0, 0, 0);
        this.background_addHorizontalL = 0.0f;
        this.background_addHorizontalR = 0.0f;
        this.background_addVerticalT = 0.0f;
        this.background_addVerticalB = 0.0f;
        this.background_border_radius = 0;
        this.background_fill_type = 1;
        this.background_usedGradient = new GradientMaker.GradientFill();
        this.textOpacity = 100;
        this.textOpacityShadowInclude = false;
        this.EmbossEnabled = false;
        this.EmbossLightAngle = 90;
        this.EmbossIntensity = 60;
        this.EmbossAmbient = 50;
        this.EmbossHardness = 40;
        this.EmbossBevel = 30;
        this.EmbossIncludeStroke = false;
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
        this.threeDLightingSpecularHardness = 50;
        this.threeDLightingShadow = 40;
        this.textureBmb = null;
        this.textureSrc = new ImageSource();
        this.texturePortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.textureInRot = 0;
        this.textureFlipH = false;
        this.textureFlipV = false;
        this.textureScale = 10;
        this.textureMaintainAspect = false;
        this.shadow_3d_enabled = false;
        this.shadow_3d_color = -16777216;
        this.shadow_3d_transparency = 40;
        this.shadow_3d_radius = 25;
        this.shadow_3d_expand = 10;
        this.reference = "0";
        this.hidden = false;
        this.locked = false;
        this.tmpHidden = false;
        this.clickTolerance = commonFuncs.dpToPx(2);
        this.lastClick = 0L;
        this.doubleClickDuration = 300L;
        this.downX = 0.0f;
        this.downY = 0.0f;
        this.tmpPointPre = new float[2];
        this.tmpPointPost = new float[2];
        init(context);
        this.reference = str;
        setColorFill(i);
    }

    public TextComponent(Context context, Bundle bundle, boolean z, String str) {
        super(context);
        this.bezierMaskIn = true;
        this.bezierMaskEnabled = true;
        this.bezierMaskPath = null;
        this.bezierMaskRect = new RectF();
        this.bezierMaskBundle = null;
        this.renderMode = false;
        this.renderScaleF = 1.0f;
        this.floatPrecision = 1000.0f;
        this.neverEdited = true;
        this.viewCenter = new PointF();
        this.fill_type = 1;
        this.top_padding = 0;
        this.bottom_padding = 0;
        this.left_padding = 0;
        this.right_padding = 0;
        this.usedGradient = new GradientMaker.GradientFill();
        this.reflectionEnabled = false;
        this.reflection_dy = 0;
        this.textRotationX = 0;
        this.textRotationY = 0;
        this.bigBallRadius = commonFuncs.dpToPx(10);
        this.tmpCanvas = new Canvas();
        this.outer_glow_enabled = false;
        this.outer_shadow_radius = 10.0f;
        this.outer_shadow_dx = 0;
        this.outer_shadow_dy = 0;
        this.outer_shadow_color = -16777216;
        this.outer_shadow_padding = 0;
        this.bitmap_shadow_outer = null;
        this.bitmap_shadow_3d = null;
        this.bitmap_cache = null;
        this.bitmap_shadow_outer_reflection = null;
        this.bitmap_cache_reflection = null;
        this.bitmap_3d_cache = null;
        this.outer_shadow_enabled = Boolean.FALSE;
        this.need_redraw = true;
        this.DRAG_ID_MAX_WIDTHER = 1;
        this.DRAG_ID_ROTATE = 3;
        this.DRAG_ID_RESIZER = 4;
        this.DRAG_ID_WHOLE = 2;
        this.textWidth = 0;
        this.textHeight = 0;
        this.paint = new Paint(1);
        this.paintSelected = new Paint(1);
        this.paintSelectedBorder = new Paint(1);
        this.paintSelectedBg = new Paint(1);
        this.paintHandles = new Paint(1);
        this.paintHandlesBorder = new Paint(1);
        this.paintHandleRotate = new Paint(1);
        this.paintHandleRotateBorder = new Paint(1);
        this.paintHandlesHighlight = new Paint(1);
        this.maxWidther = new PointF();
        this.rotator = new PointF();
        this.resizer = new PointF();
        this.perspectiveEnabled = false;
        this.perspectivePoint1 = new PointF(0.0f, 0.0f);
        this.perspectivePoint2 = new PointF(1.0f, 0.0f);
        this.perspectivePoint3 = new PointF(1.0f, 1.0f);
        this.perspectivePoint4 = new PointF(0.0f, 1.0f);
        this.isSelected = true;
        this.dragID = -1;
        this.hasInnerShadow = false;
        this.isCurved = false;
        this.angle = 0;
        this.background_color = Color.argb(180, 0, 0, 0);
        this.background_addHorizontalL = 0.0f;
        this.background_addHorizontalR = 0.0f;
        this.background_addVerticalT = 0.0f;
        this.background_addVerticalB = 0.0f;
        this.background_border_radius = 0;
        this.background_fill_type = 1;
        this.background_usedGradient = new GradientMaker.GradientFill();
        this.textOpacity = 100;
        this.textOpacityShadowInclude = false;
        this.EmbossEnabled = false;
        this.EmbossLightAngle = 90;
        this.EmbossIntensity = 60;
        this.EmbossAmbient = 50;
        this.EmbossHardness = 40;
        this.EmbossBevel = 30;
        this.EmbossIncludeStroke = false;
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
        this.threeDLightingSpecularHardness = 50;
        this.threeDLightingShadow = 40;
        this.textureBmb = null;
        this.textureSrc = new ImageSource();
        this.texturePortion = new RectF(0.0f, 0.0f, 100.0f, 100.0f);
        this.textureInRot = 0;
        this.textureFlipH = false;
        this.textureFlipV = false;
        this.textureScale = 10;
        this.textureMaintainAspect = false;
        this.shadow_3d_enabled = false;
        this.shadow_3d_color = -16777216;
        this.shadow_3d_transparency = 40;
        this.shadow_3d_radius = 25;
        this.shadow_3d_expand = 10;
        this.reference = "0";
        this.hidden = false;
        this.locked = false;
        this.tmpHidden = false;
        this.clickTolerance = commonFuncs.dpToPx(2);
        this.lastClick = 0L;
        this.doubleClickDuration = 300L;
        this.downX = 0.0f;
        this.downY = 0.0f;
        this.tmpPointPre = new float[2];
        this.tmpPointPost = new float[2];
        init(context);
        this.reference = (z || bundle.getString(appStateConstants.TEXT_REFERENCE) == null) ? str : bundle.getString(appStateConstants.TEXT_REFERENCE);
        this.neverEdited = false;
        applyBundle(bundle, z);
    }

    private void applyAlphaToPaint(Paint paint) {
        paint.setAlpha((int) ((this.textOpacity / 100.0f) * 255.0f));
    }

    private int clipAngle(int i) {
        if (this.tempDisable3DRots) {
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
        if (i > 90) {
            return 90;
        }
        if (i < -90) {
            return -90;
        }
        return i;
    }

    private Bitmap createShadow3d(int i, int i2, float f) {
        int dpToPxInt = commonFuncs.dpToPxInt(this.shadow_3d_expand);
        int dpToPxInt2 = (commonFuncs.dpToPxInt(this.shadow_3d_expand) + this.shadow_3d_radius) * 2;
        Bitmap createBitmap = Bitmap.createBitmap((int) ((i + dpToPxInt2) * f), (int) ((dpToPxInt2 + i2) * f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setAntiAlias(true);
        float max = Math.max(0.1f, this.shadow_3d_radius);
        int i3 = dpToPxInt * 2;
        RectF rectF = new RectF(0.0f, 0.0f, i + i3, i2 + i3);
        paint.setMaskFilter(new BlurMaskFilter(max, BlurMaskFilter.Blur.NORMAL));
        paint.setColor(-16777216);
        canvas.scale(f, f);
        float f2 = this.shadow_3d_radius;
        canvas.translate(f2, f2);
        canvas.drawRect(rectF, paint);
        return createBitmap;
    }

    private void draw3dShadow(Canvas canvas, Camera camera, int i, float f) {
        Camera camera2 = new Camera();
        camera2.rotateY(clipAngle(this.textRotationY));
        camera2.rotateX(clipAngle(this.textRotationX) + 90);
        float f2 = this.viewCenter.y;
        camera2.translate(0.0f, i - f2, f2 - (this.bottom_padding / f));
        canvas.restore();
        canvas.save();
        applyCamera(canvas, camera2);
        Paint paint = new Paint(1);
        paint.setColorFilter(new PorterDuffColorFilter(this.shadow_3d_color, PorterDuff.Mode.SRC_ATOP));
        paint.setAlpha((int) ((this.shadow_3d_transparency / 100.0f) * 255.0f));
        if (isTextOpacityShadowInclude()) {
            applyAlphaToPaint(paint);
        }
        paint.setDither(true);
        paint.setFilterBitmap(true);
        int dpToPxInt = commonFuncs.dpToPxInt(this.shadow_3d_expand) + this.shadow_3d_radius;
        canvas.save();
        canvas.translate(this.left_padding / f, 0.0f);
        float f3 = -dpToPxInt;
        canvas.drawBitmap(this.bitmap_shadow_3d, (Rect) null, new RectF(f3, f3, (this.textWidth + dpToPxInt) - ((this.left_padding + this.right_padding) / f), i + dpToPxInt), paint);
        canvas.restore();
        canvas.restore();
        canvas.save();
        applyCamera(canvas, camera);
    }

    private void drawHandles(Canvas canvas) {
        if (!this.isSelected || this.isCurved || this.renderMode) {
            return;
        }
        PointF pointF = this.maxWidther;
        canvas.drawCircle(pointF.x, pointF.y, getBigRadius() * 0.7f, this.paintHandlesBorder);
        PointF pointF2 = this.maxWidther;
        canvas.drawCircle(pointF2.x, pointF2.y, getBigRadius() * 0.7f, this.dragID == this.DRAG_ID_MAX_WIDTHER ? this.paintHandlesHighlight : this.paintHandles);
        PointF pointF3 = this.resizer;
        canvas.drawCircle(pointF3.x, pointF3.y, getBigRadius() * 0.7f, this.paintHandlesBorder);
        PointF pointF4 = this.resizer;
        canvas.drawCircle(pointF4.x, pointF4.y, getBigRadius() * 0.7f, this.dragID == this.DRAG_ID_RESIZER ? this.paintHandlesHighlight : this.paintHandles);
        canvas.drawArc(new RectF(this.rotator.x - getBigRadius(), this.rotator.y - getBigRadius(), this.rotator.x + getBigRadius(), this.rotator.y + getBigRadius()), 30.0f, 120.0f, false, this.paintHandleRotateBorder);
        canvas.drawArc(new RectF(this.rotator.x - getBigRadius(), this.rotator.y - getBigRadius(), this.rotator.x + getBigRadius(), this.rotator.y + getBigRadius()), 30.0f, 120.0f, false, this.paintHandleRotate);
    }

    private Bitmap drawWithMask(Bitmap bitmap, Path path, int i, float f) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setFilterBitmap(true);
        paint.setDither(true);
        paint.setAntiAlias(true);
        paint.setColor(-1);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.save();
        canvas.scale(f, f);
        float f2 = i;
        canvas.translate(f2, f2);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(path, paint);
        canvas.restore();
        return createBitmap;
    }

    private Bitmap flipBitmap(Bitmap bitmap) {
        float height = (bitmap.getHeight() / this.bitmap_cache.getHeight()) * this.top_padding;
        float height2 = (bitmap.getHeight() / this.bitmap_cache.getHeight()) * this.bottom_padding;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.scale(1.0f, -1.0f, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        paint.setShader(new LinearGradient(0.0f, height, 0.0f, bitmap.getHeight() - height2, Color.argb(0, 255, 255, 255), Color.argb(140, 255, 255, 255), Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, height, bitmap.getWidth(), bitmap.getHeight() - height2, paint);
        return createBitmap;
    }

    public static Bundle fontIntervalsToBundle(spansIntervals spansintervals) {
        Bundle bundle = new Bundle();
        int i = 1;
        for (interval intervalVar : spansintervals.getIntervals()) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(appStateConstants.TEXTS_SPANS_INTERVALS_START, intervalVar.getStart());
            bundle2.putInt(appStateConstants.TEXTS_SPANS_INTERVALS_END, intervalVar.getEnd());
            bundle2.putString(appStateConstants.TEXTS_SPANS_INTERVALS_FONT, intervalVar.getFont().getPath());
            bundle.putBundle("interval" + i, bundle2);
            i++;
        }
        return bundle;
    }

    private void fullRedrawUpdateParent() {
        fullRedraw();
    }

    private Bundle geometryToBundle(float f, float f2, float f3, float f4, int i) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(appStateConstants.OBJECT_GEOMETRY_ONLY, true);
        bundle.putString(appStateConstants.TEXT_REFERENCE, this.reference);
        bundle.putInt("shapeX", (int) f);
        bundle.putInt("shapeY", (int) f2);
        bundle.putInt("shapeOldContainerWidth", MainActivity.helperClass.getContainerWidth());
        bundle.putInt("shapeOldContainerHeight", MainActivity.helperClass.getContainerHeight());
        bundle.putInt(appStateConstants.TEXT_MAX_WIDTH, (int) f3);
        bundle.putString(appStateConstants.TEXT_TEXT_SIZE, String.valueOf(f4));
        bundle.putString(appStateConstants.TEXT_ROTATION, String.valueOf(i));
        return bundle;
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
            for (int i2 = 0; i2 < width; i2++) {
                if (Color.alpha(iArr[i2]) != 0) {
                    return height - (i + 1);
                }
            }
            i--;
        }
    }

    private static int getBitmapLeftPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[height];
        for (int i = 0; i < width; i++) {
            bitmap.getPixels(iArr, 0, 1, i, 0, 1, height);
            for (int i2 = 0; i2 < height; i2++) {
                if (Color.alpha(iArr[i2]) != 0) {
                    return i;
                }
            }
        }
        return -1;
    }

    private static int getBitmapRightPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[height];
        for (int i = width - 1; i >= 0; i--) {
            bitmap.getPixels(iArr, 0, 1, i, 0, 1, height);
            for (int i2 = 0; i2 < height; i2++) {
                if (Color.alpha(iArr[i2]) != 0) {
                    return width - (i + 1);
                }
            }
        }
        return -1;
    }

    private int getBitmapTopPadding(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width];
        for (int i = 0; i < height; i++) {
            bitmap.getPixels(iArr, 0, width, 0, i, width, 1);
            for (int i2 = 0; i2 < width; i2++) {
                if (Color.alpha(iArr[i2]) != 0) {
                    return i;
                }
            }
        }
        return 0;
    }

    private EmbossMaskFilter getCurr3DEmbossEffect() {
        double radians = Math.toRadians(this.EmbossLightAngle);
        if (this.threeDLightingEnabled) {
            return new EmbossMaskFilter(new float[]{(float) (Math.cos(radians) * (-1.0d)), (float) Math.sin(radians), this.threeDLightingIntensity / 100.0f}, (100 - this.threeDLightingShadow) / 100.0f, (this.threeDLightingSpecularHardness * 6.0f) / 100.0f, 2.5f);
        }
        return null;
    }

    private EmbossMaskFilter getCurrEmbossEffect() {
        double radians = Math.toRadians(this.EmbossLightAngle);
        if (this.EmbossEnabled) {
            return new EmbossMaskFilter(new float[]{(float) (Math.cos(radians) * (-1.0d)), (float) Math.sin(radians), this.EmbossIntensity / 100.0f}, this.EmbossAmbient / 100.0f, (this.EmbossHardness * 6.0f) / 100.0f, (this.EmbossBevel * 5.0f) / 100.0f);
        }
        return null;
    }

    private void invalidateParent() {
    }

    private void loadTexture() {
        if (this.textureSrc.getSourceType() == ImageSource.SourceType.local_file) {
            try {
                int[] dimensionsFromPath = commonFuncs.getDimensionsFromPath(this.textureSrc.getPath());
                dimensionsFromPath[0] = (int) (dimensionsFromPath[0] * (this.renderMode ? this.texturePortion.width() / 100.0f : 1.0f));
                int height = (int) (dimensionsFromPath[1] * (this.renderMode ? this.texturePortion.height() / 100.0f : 1.0f));
                dimensionsFromPath[1] = height;
                this.textureBmb = commonFuncs.cropRotBitmap(commonFuncs.getBitmapFromPath(this.textureSrc.getPath(), commonFuncs.getInSampleSize(dimensionsFromPath[0], height, (int) (this.textWidth * getRenderScaleF()), (int) (this.textHeight * getRenderScaleF()))), this.texturePortion, this.textureInRot, this.textureFlipH, this.textureFlipV);
            } catch (Exception unused) {
                this.textureBmb = null;
            }
        }
    }

    private void makeMeVisible() {
        setX(0.0f);
        setY(0.0f);
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

    public static Bitmap renderPreview(Bundle bundle, Context context, int i) {
        TextComponent textComponent = new TextComponent(context, 0, "0");
        textComponent.applyBundle(bundle, false, true);
        textComponent.setTextSize(i);
        textComponent.setText("SAMPLE", false);
        textComponent.measure(0, 0);
        textComponent.setRenderMode(true, 1.0f);
        int measuredHeight = textComponent.getMeasuredHeight();
        int measuredWidth = textComponent.getMeasuredWidth();
        textComponent.layout(0, 0, measuredWidth, measuredHeight);
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth * 2, measuredHeight * 2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.translate(measuredWidth / 2.0f, measuredHeight / 2.0f);
        textComponent.draw(canvas);
        Rect autoCropBound = DrawingPanelRenderer.getAutoCropBound(createBitmap);
        if (autoCropBound.right == -1 || autoCropBound.left == -1 || autoCropBound.top == -1 || autoCropBound.bottom == -1) {
            return null;
        }
        return DrawingPanelRenderer.autoCropBitmap(createBitmap, autoCropBound);
    }

    private void resetAlphaToPaint(Paint paint) {
        paint.setAlpha(255);
    }

    private void restoreTextStyle(int i, boolean z) {
        if (this.fill_type == 1) {
            this.fill_type = 1;
            this.textDraw.getPaint().setShader(null);
            this.textDraw.setTextColor(i);
            this.textDraw.getPaint().setColor(i);
        }
        CustomTextView customTextView = this.textDraw;
        customTextView.stroke_enabled = z;
        customTextView.restoreColorSpans();
    }

    private Point rotatePoint(Point point, Point point2, double d) {
        double d2 = d * 0.017453292519943295d;
        double cos = Math.cos(d2);
        double sin = Math.sin(d2);
        Point point3 = new Point();
        int i = point.x;
        point3.x = (int) Math.floor((((i - r4) * cos) - ((point.y - point2.y) * sin)) + point2.x);
        double d3 = sin * (point.x - point2.x);
        int i2 = point.y;
        point3.y = (int) Math.floor((cos * (i2 - r11)) + d3 + point2.y);
        return point3;
    }

    private void rotateText(float f, boolean z) {
        int normalizeAngle = commonFuncs.normalizeAngle(f);
        this.angle = normalizeAngle;
        if (z) {
            normalizeAngle = snapAngle(normalizeAngle);
        }
        this.angle = normalizeAngle;
        int i = this.tempDisableRot ? 0 : normalizeAngle;
        this.angle = i;
        setRotation(i);
        this.angle = normalizeAngle;
    }

    private void updateHandlePos() {
        PointF pointF = this.maxWidther;
        int i = this.textWidth;
        pointF.x = i;
        int i2 = this.textHeight;
        pointF.y = i2 * 0.5f;
        PointF pointF2 = this.rotator;
        pointF2.x = i * 0.5f;
        pointF2.y = (getBigRadius() * 0.5f) + i2;
        this.resizer.y = this.textHeight;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
    
        if (r3 != 3) goto L108;
     */
    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.AbstractComponent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean OnCustomTouchEvent(com.tawfiq.imaginstudio.imagetools.pixellab.CustomMotionEvent r21) {
        /*
            Method dump skipped, instructions count: 747
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent.OnCustomTouchEvent(com.tawfiq.imaginstudio.imagetools.pixellab.CustomMotionEvent):boolean");
    }

    public void UnFreezeFullRedraw() {
        this.frozen = false;
        requestLayout();
        this.textDraw.invalidate();
        fullRedraw();
    }

    public Bitmap addPadding(Bitmap bitmap, int i) {
        int i2 = i * 2;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth() + i2, bitmap.getHeight() + i2, Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawBitmap(bitmap, (Rect) null, new Rect(i, i, bitmap.getWidth() + i, bitmap.getHeight() + i), (Paint) null);
        return createBitmap;
    }

    public void applyBundle(Bundle bundle, boolean z) {
        applyBundle(bundle, z, false);
    }

    public void applyBundle(Bundle bundle, boolean z, boolean z2) {
        float f;
        float f2;
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
        if (!z && !z2) {
            setX(bundle.getInt("shapeX") * f);
            setY(bundle.getInt("shapeY") * f2);
        }
        if (!z2) {
            setTextSize(Float.valueOf(bundle.getString(appStateConstants.TEXT_TEXT_SIZE)).floatValue() * f2);
            float f3 = bundle.getInt(appStateConstants.TEXT_MAX_WIDTH) * f;
            if (f3 <= 0.0f) {
                f3 = -1.0f;
            }
            setMax(f3);
        }
        rotateText((int) Float.parseFloat(bundle.getString(appStateConstants.TEXT_ROTATION)));
        if (!bundle.getBoolean(appStateConstants.OBJECT_GEOMETRY_ONLY)) {
            if (!z && !z2) {
                this.hidden = bundle.getBoolean(appStateConstants.OBJECT_HIDDEN);
                this.locked = bundle.getBoolean(appStateConstants.OBJECT_LOCKED);
            }
            set3dEnabled(bundle.getBoolean(appStateConstants.TEXT_THREE_D_ENABLED, isThreeDEnabled()));
            if (isThreeDEnabled()) {
                set3dViewType(bundle.getInt(appStateConstants.TEXT_THREE_D_VIEW_TYPE, getThreeDViewType()));
                set3dDepth(bundle.getInt(appStateConstants.TEXT_THREE_D_DEPTH), bundle.getInt(appStateConstants.TEXT_THREE_D_DEPTH_DARKEN, getThreeDDepthDarken()), getThreeDQuality(), bundle.getBoolean(appStateConstants.TEXT_THREE_D_STOKE_INCLUDE, isThreeDStokeInclude()));
                String string = bundle.getString(appStateConstants.TEXT_THREE_D_DEPTH_GRADIENT_FILL_V2);
                set3dDepthColor(bundle.getInt(appStateConstants.TEXT_THREE_D_DEPTH_FILL_TYPE, getThreeDDepthFillType()), bundle.getInt(appStateConstants.TEXT_THREE_D_DEPTH_COLOR_FILL, getThreeDDepthColorFill()), string == null ? new GradientMaker.GradientFill(bundle.getInt(appStateConstants.TEXT_THREE_D_DEPTH_GRADIENT_FILL_TYPE, getThreeDDepthGradientFill().getType()), bundle.getInt(appStateConstants.TEXT_THREE_D_DEPTH_GRADIENT_FILL_START, getThreeDDepthGradientFill().getStartColor()), bundle.getInt(appStateConstants.TEXT_THREE_D_DEPTH_GRADIENT_FILL_END, getThreeDDepthGradientFill().getEndColor())) : new GradientMaker.GradientFill(string), bundle.getBoolean(appStateConstants.TEXT_THREE_D_DEPTH_COLOR_AUTOMATIC, isThreeDDepthColorAutomatic()));
                set3dLighting(bundle.getBoolean(appStateConstants.TEXT_THREE_D_LIGHTING_ENABLED, isThreeDLightingEnabled()), bundle.getInt(appStateConstants.TEXT_EMBOSS_LIGHT_ANGLE, getEmbossLightAngle()), bundle.getInt(appStateConstants.TEXT_THREE_D_LIGHTING_INTENSITY, getThreeDLightingIntensity()), bundle.getInt(appStateConstants.TEXT_THREE_D_LIGHTING_SHADOW, getThreeDLightingShadow()), bundle.getInt(appStateConstants.TEXT_THREE_D_LIGHTING_SPECULAR_HARDNESS, getThreeDLightingSpecularHardness()));
                int i3 = bundle.getInt(appStateConstants.TEXT_THREE_D_OBLIQUE_ANGLE, -1);
                if (i3 == -1) {
                    i3 = (int) Math.toDegrees(Math.atan2(bundle.getInt(appStateConstants.TEXT_THREE_D_OFFSET_X, 1), bundle.getInt(appStateConstants.TEXT_THREE_D_OFFSET_Y, 1)));
                }
                set3dObliqueAngle(i3);
            }
            setPerspectiveEnabled(bundle.getBoolean(appStateConstants.TEXT_PERSPECTIVE_ENABLED, isPerspectiveEnabled()));
            if (isPerspectiveEnabled()) {
                setPerspectivePoints(new PointF(bundle.getInt(appStateConstants.TEXT_PERSPECTIVE_P1X, (int) (this.perspectivePoint1.x * 1000.0f)) / 1000.0f, bundle.getInt(appStateConstants.TEXT_PERSPECTIVE_P1Y, (int) (this.perspectivePoint1.y * 1000.0f)) / 1000.0f), new PointF(bundle.getInt(appStateConstants.TEXT_PERSPECTIVE_P2X, (int) (this.perspectivePoint2.x * 1000.0f)) / 1000.0f, bundle.getInt(appStateConstants.TEXT_PERSPECTIVE_P2Y, (int) (this.perspectivePoint2.y * 1000.0f)) / 1000.0f), new PointF(bundle.getInt(appStateConstants.TEXT_PERSPECTIVE_P3X, (int) (this.perspectivePoint3.x * 1000.0f)) / 1000.0f, bundle.getInt(appStateConstants.TEXT_PERSPECTIVE_P3Y, (int) (this.perspectivePoint3.y * 1000.0f)) / 1000.0f), new PointF(bundle.getInt(appStateConstants.TEXT_PERSPECTIVE_P4X, (int) (this.perspectivePoint4.x * 1000.0f)) / 1000.0f, bundle.getInt(appStateConstants.TEXT_PERSPECTIVE_P4Y, (int) (this.perspectivePoint4.y * 1000.0f)) / 1000.0f));
            }
            setEmboss(bundle.getBoolean(appStateConstants.TEXT_EMBOSS_ENABLED, isEmbossEnabled()), bundle.getInt(appStateConstants.TEXT_EMBOSS_LIGHT_ANGLE, getEmbossLightAngle()), bundle.getInt(appStateConstants.TEXT_EMBOSS_INTENSITY, getEmbossIntensity()), bundle.getInt(appStateConstants.TEXT_EMBOSS_AMBIENT, getEmbossAmbient()), bundle.getInt(appStateConstants.TEXT_EMBOSS_HARDNESS, getEmbossHardness()), bundle.getInt(appStateConstants.TEXT_EMBOSS_BEVEL, getEmbossBevel()));
            setEmbossIncludeStroke(bundle.getBoolean(appStateConstants.TEXT_EMBOSS_INCLUDE_STROKE, isEmbossIncludeStroke()));
            setTextOpacity(bundle.getInt(appStateConstants.TEXT_OPACITY, getTextOpacity()));
            setTextOpacityShadowInclude(bundle.getBoolean(appStateConstants.TEXT_OPACITY_SHADOW_INCLUDE, isTextOpacityShadowInclude()));
            if (bundle.getBoolean(appStateConstants.TEXT_TEXTURE_IMAGE_SRC_V2)) {
                CropInfo cropInfo = new CropInfo(bundle.getBundle(appStateConstants.TEXT_TEXTURE_IMAGE_CROP_INFO));
                setNewTextureSrc(new ImageSource(bundle.getBundle(appStateConstants.TEXT_TEXTURE_IMAGE_SRC)), cropInfo.getRot(), cropInfo.getPortion(), cropInfo.isFlipH(), cropInfo.isFlipV());
            } else {
                setNewTextureSrc(bundle.getString(appStateConstants.TEXT_TEXTURE_IMAGE_PATH));
            }
            setTextureMaintainAspect(bundle.getBoolean(appStateConstants.TEXT_TEXTURE_MAINTAIN_ASPECT, isTextureMaintainAspect()));
            setTextureScale(bundle.getInt(appStateConstants.TEXT_TEXTURE_SCALE, getTextureScale()));
            setColors(bundleToColorIntervals(bundle.getBundle(appStateConstants.TEXT_TEXT_COLOR)));
            setFonts(bundleToFontIntervals(bundle.getBundle(appStateConstants.TEXT_TEXT_FONT)));
            setBolds(bundleToStyleIntervals(bundle.getBundle(appStateConstants.TEXT_BOLD)));
            setItalics(bundleToStyleIntervals(bundle.getBundle(appStateConstants.TEXT_ITALIC)));
            setUnders(bundleToStyleIntervals(bundle.getBundle(appStateConstants.TEXT_UNDER)));
            setLineSpacing(bundle.getInt(appStateConstants.TEXT_LINE_SPACING));
            setSpaceWords(bundle.getBoolean(appStateConstants.TEXT_LETTER_SPACE_WORDS));
            setTextAlign(bundle.getInt(appStateConstants.TEXT_ALIGNMENT));
            setJustify(bundle.getBoolean(appStateConstants.TEXT_JUSTIFY));
            if (z2) {
                setText(returnText(), false, bundle.getString(appStateConstants.TEXT_TEXT_STRING).length());
            } else {
                setText(bundle.getString(appStateConstants.TEXT_TEXT_STRING), false);
            }
            String string2 = bundle.getString(appStateConstants.TEXT_BG_GRADIENT_V2);
            updateBackground(bundle.getBoolean(appStateConstants.TEXT_BG_ENABLED), bundle.getInt(appStateConstants.TEXT_BG_FILL_TYPE), bundle.getInt(appStateConstants.TEXT_BG_COLOR), string2 == null ? new GradientMaker.GradientFill(bundle.getInt(appStateConstants.TEXT_BG_GRADIENT_TYPE), bundle.getInt(appStateConstants.TEXT_BG_GRADIENT_START_COLOR), bundle.getInt(appStateConstants.TEXT_BG_GRADIENT_END_COLOR)) : new GradientMaker.GradientFill(string2), bundle.getInt(appStateConstants.TEXT_BG_PADDING_LEFT) * f, bundle.getInt(appStateConstants.TEXT_BG_PADDING_RIGHT) * f2, bundle.getInt(appStateConstants.TEXT_BG_PADDING_TOP) * f2, bundle.getInt(appStateConstants.TEXT_BG_PADDING_BOTTOM) * f2, bundle.getInt(appStateConstants.TEXT_BG_BORDER_RADIUS));
            String string3 = bundle.getString(appStateConstants.TEXT_STROKE_GRADIENT_V2);
            GradientMaker.GradientFill gradientFill = string3 == null ? new GradientMaker.GradientFill(bundle.getInt(appStateConstants.TEXT_STROKE_GRADIENT_TYPE, getStrokeGradient().getType()), bundle.getInt(appStateConstants.TEXT_STROKE_GRADIENT_START, getStrokeGradient().getStartColor()), bundle.getInt(appStateConstants.TEXT_STROKE_GRADIENT_END, getStrokeGradient().getEndColor())) : new GradientMaker.GradientFill(string3);
            setShadow3d(bundle.getBoolean(appStateConstants.TEXT_THREE_D_SHADOW_ENABLED, isShadow_3d_enabled()), bundle.getInt(appStateConstants.TEXT_THREE_D_SHADOW_COLOR, getShadow_3d_color()), bundle.getInt(appStateConstants.TEXT_THREE_D_SHADOW_TRANSPARENCY, getShadow_3d_transparency()), bundle.getInt(appStateConstants.TEXT_THREE_D_SHADOW_BLUR, getShadow_3d_radius()), bundle.getInt(appStateConstants.TEXT_THREE_D_SHADOW_EXPAND, getShadow_3d_expand()));
            setStroke(bundle.getBoolean(appStateConstants.TEXT_STROKE_ENABLED, false), Float.valueOf(bundle.getString(appStateConstants.TEXT_STROKE_WIDTH)).floatValue(), bundle.getInt(appStateConstants.TEXT_STROKE_FILL_TYPE, getStrokeFillType()), bundle.getInt(appStateConstants.TEXT_STROKE_COLOR, getStrokeColor()), gradientFill);
            setInnerShadow(bundle.getBoolean(appStateConstants.TEXT_INNER_ENABLED), Float.valueOf(bundle.getString(appStateConstants.TEXT_INNER_RADIUS)).floatValue(), Float.valueOf(bundle.getString(appStateConstants.TEXT_INNER_DX)).floatValue(), Float.valueOf(bundle.getString(appStateConstants.TEXT_INNER_DY)).floatValue(), bundle.getInt(appStateConstants.TEXT_INNER_COLOR));
            setOuterShadow(bundle.getBoolean(appStateConstants.TEXT_OUTER_ENABLED), bundle.getBoolean(appStateConstants.TEXT_OUTER_GLOW_ENABLED), Float.valueOf(bundle.getString(appStateConstants.TEXT_OUTER_RADIUS)).floatValue(), bundle.getInt(appStateConstants.TEXT_OUTER_DX), bundle.getInt(appStateConstants.TEXT_OUTER_DY), bundle.getInt(appStateConstants.TEXT_OUTER_COLOR));
            rotate3d(bundle.getInt(appStateConstants.TEXT_ROTATION_X), bundle.getInt(appStateConstants.TEXT_ROTATION_Y));
            String string4 = bundle.getString(appStateConstants.TEXT_TEXT_GRADIENT_V2);
            setGradientFill(string4 == null ? new GradientMaker.GradientFill(bundle.getInt(appStateConstants.TEXT_TEXT_GRADIENT_TYPE), bundle.getInt(appStateConstants.TEXT_TEXT_GRADIENT_START_COLOR), bundle.getInt(appStateConstants.TEXT_TEXT_GRADIENT_END_COLOR)) : new GradientMaker.GradientFill(string4));
            this.fill_type = bundle.getInt(appStateConstants.TEXT_TEXT_FILL_TYPE);
            setCurve(bundle.getInt(appStateConstants.TEXT_TEXT_CURVE));
            setReflection(bundle.getBoolean(appStateConstants.TEXT_REFLECTION_ENABLED), bundle.getInt(appStateConstants.TEXT_REFLECTION_OFFSET));
            this.bezierMaskEnabled = bundle.getBoolean(appStateConstants.TEXT_BEZIER_MASK_ENABLED);
            setBezierMaskIn(bundle.getBoolean(appStateConstants.TEXT_BEZIER_MASK_IN, true));
            setBezierMaskBundle(bundle.getBundle(appStateConstants.TEXT_BEZIER_MASK_DATA));
            this.bezierMaskPath = null;
            setLetterSpacing(bundle.getInt(appStateConstants.TEXT_LETTER_SPACING));
            setInPadding((int) (bundle.getInt(appStateConstants.TEXT_PADDING_LEFT, 0) * f), (int) (bundle.getInt(appStateConstants.TEXT_PADDING_RIGHT, 0) * f));
            setEffects(bundle.getInt("textEffectHue", 0), bundle.getInt("textEffectSaturation", 0), bundle.getInt("textEffectBrightness", 0), bundle.getInt("textEffectContrast", 0));
            String string5 = bundle.getString("textFontFeatureSetting");
            if (string5 != null) {
                setFontFeatureSettingsCustom(string5);
            }
        }
        UnFreezeFullRedraw();
        this.textDraw.requestLayout();
    }

    public void applyCamera(Canvas canvas, Camera camera) {
        camera.getMatrix(this.mMatrix);
        Matrix matrix = this.mMatrix;
        PointF pointF = this.viewCenter;
        matrix.preTranslate(-pointF.x, -pointF.y);
        Matrix matrix2 = this.mMatrix;
        PointF pointF2 = this.viewCenter;
        matrix2.postTranslate(pointF2.x, pointF2.y);
        canvas.concat(this.mMatrix);
    }

    public Bitmap blurMask(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Paint paint = new Paint(1);
        paint.setAntiAlias(true);
        paint.setDither(true);
        Canvas canvas = new Canvas();
        canvas.setBitmap(createBitmap);
        paint.setMaskFilter(new BlurMaskFilter(2.0f, BlurMaskFilter.Blur.INNER));
        canvas.drawBitmap(bitmap.extractAlpha(), 0.0f, 0.0f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    public spansIntervals bundleToColorIntervals(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        spansIntervals spansintervals = new spansIntervals();
        for (String str : bundle.keySet()) {
            if (bundle.get(str) instanceof Bundle) {
                Bundle bundle2 = bundle.getBundle(str);
                spansintervals.addIntervalNoCheck(new interval(bundle2.getInt(appStateConstants.TEXTS_SPANS_INTERVALS_START, 0), bundle2.getInt(appStateConstants.TEXTS_SPANS_INTERVALS_END, 0), bundle2.getInt(appStateConstants.TEXTS_SPANS_INTERVALS_COLOR, -16777216)));
            }
        }
        return spansintervals;
    }

    public spansIntervals bundleToFontIntervals(Bundle bundle) {
        Bundle bundle2;
        if (bundle == null) {
            return null;
        }
        spansIntervals spansintervals = new spansIntervals();
        for (String str : bundle.keySet()) {
            if ((bundle.get(str) instanceof Bundle) && (bundle2 = bundle.getBundle(str)) != null) {
                int i = bundle2.getInt(appStateConstants.TEXTS_SPANS_INTERVALS_START, 0);
                int i2 = bundle2.getInt(appStateConstants.TEXTS_SPANS_INTERVALS_END, 0);
                String string = bundle2.getString(appStateConstants.TEXTS_SPANS_INTERVALS_FONT);
                if (string == null) {
                    string = "";
                }
                spansintervals.addIntervalNoCheck(new interval(i, i2, new customTypeface(string, createFontFromPath(string))));
            }
        }
        return spansintervals;
    }

    public spansIntervals bundleToStyleIntervals(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        spansIntervals spansintervals = new spansIntervals();
        for (String str : bundle.keySet()) {
            if (bundle.get(str) instanceof Bundle) {
                Bundle bundle2 = bundle.getBundle(str);
                spansintervals.addIntervalNoCheck(new interval(bundle2.getInt(appStateConstants.TEXTS_SPANS_INTERVALS_START, 0), bundle2.getInt(appStateConstants.TEXTS_SPANS_INTERVALS_END, 0)));
            }
        }
        return spansintervals;
    }

    public void clearInnerShadow() {
        this.hasInnerShadow = false;
        this.textDraw.setInnerShadow(false, 0.0f, 0.0f, 0.0f, -1);
        fullRedraw();
    }

    public void clearStroke() {
        this.textDraw.clearStroke();
        requestLayout();
        fullRedraw();
    }

    public void clearStyles(int i, int i2) {
        this.textDraw.clearStyles(i, i2);
        this.textDraw.textUpdated();
        requestLayout();
        fullRedraw();
    }

    public void clicked() {
        OnSelectEventListener onSelectEventListener;
        if (System.currentTimeMillis() - this.lastClick <= 300 && (onSelectEventListener = this.SelectListener) != null) {
            onSelectEventListener.onEvent_doubleTapText();
        }
        this.lastClick = System.currentTimeMillis();
    }

    public Bundle colorIntervalsToBundle(spansIntervals spansintervals) {
        Bundle bundle = new Bundle();
        int i = 1;
        for (interval intervalVar : spansintervals.getIntervals()) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(appStateConstants.TEXTS_SPANS_INTERVALS_START, intervalVar.getStart());
            bundle2.putInt(appStateConstants.TEXTS_SPANS_INTERVALS_END, intervalVar.getEnd());
            bundle2.putInt(appStateConstants.TEXTS_SPANS_INTERVALS_COLOR, intervalVar.getColor());
            bundle.putBundle("interval" + i, bundle2);
            i++;
        }
        return bundle;
    }

    public int countLines(String str) {
        int i = 0;
        int i2 = 1;
        while (true) {
            i = str.indexOf("\n", i) + 1;
            if (i == 0) {
                return i2;
            }
            i2++;
        }
    }

    public Typeface createFontFromPath(String str) {
        Typeface typeface = Typeface.DEFAULT;
        try {
            try {
                return Typeface.createFromAsset(getContext().getAssets(), str);
            } catch (Exception unused) {
                return Typeface.createFromFile(str);
            }
        } catch (Exception unused2) {
            return typeface;
        }
    }

    public Bitmap dilate(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        for (int i2 = 0; i2 < height; i2++) {
            for (int i3 = 0; i3 < width; i3++) {
                int i4 = (i2 * width) + i3;
                int alpha = Color.alpha(iArr[i4]);
                int min = Math.min(i2 + i, height - 1);
                int i5 = alpha;
                for (int max = Math.max(i2 - i, 0); max <= min; max++) {
                    i5 = Math.max(i5, Color.alpha(iArr[(max * width) + i3]));
                    if (i5 == 255) {
                        break;
                    }
                }
                iArr[i4] = Color.argb(alpha, i5, 255, 255);
            }
        }
        for (int i6 = 0; i6 < height; i6++) {
            for (int i7 = 0; i7 < width; i7++) {
                int i8 = i6 * width;
                int i9 = i8 + i7;
                int red = Color.red(iArr[i9]);
                int min2 = Math.min(i7 + i, width - 1);
                int i10 = red;
                for (int max2 = Math.max(i7 - i, 0); max2 <= min2; max2++) {
                    i10 = Math.max(i10, Color.red(iArr[i8 + max2]));
                    if (i10 == 255) {
                        break;
                    }
                }
                iArr[i9] = Color.argb(255, red, i10, 255);
            }
        }
        for (int i11 = 0; i11 < height; i11++) {
            for (int i12 = 0; i12 < width; i12++) {
                int i13 = (i11 * width) + i12;
                iArr[i13] = Color.argb(Color.green(iArr[i13]), 255, 255, 255);
            }
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmap;
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.setDrawFilter(new PaintFlagsDrawFilter(1, 1));
        super.dispatchDraw(canvas);
    }

    public float dist(float f, float f2, PointF pointF) {
        float f3 = pointF.x;
        float f4 = (f - f3) * (f - f3);
        float f5 = pointF.y;
        return (float) Math.sqrt(((f2 - f5) * (f2 - f5)) + f4);
    }

    public PointF divideVector(PointF pointF, int i) {
        float f = i;
        return new PointF(pointF.x / f, pointF.y / f);
    }

    public void freezeFullRedraw() {
        this.frozen = true;
    }

    public void fullRedraw() {
        this.need_redraw = true;
        if (this.frozen) {
            return;
        }
        invalidate();
    }

    public float getBackground_addHorizontalL() {
        return this.background_addHorizontalL;
    }

    public float getBackground_addHorizontalR() {
        return this.background_addHorizontalR;
    }

    public float getBackground_addVerticalB() {
        return this.background_addVerticalB;
    }

    public float getBackground_addVerticalT() {
        return this.background_addVerticalT;
    }

    public int getBackground_border_radius() {
        return this.background_border_radius;
    }

    public int getBackground_color() {
        return this.background_color;
    }

    public boolean getBackground_enabled() {
        return this.isBackgroundEnabled;
    }

    public GradientMaker.GradientFill getBackground_usedGradient() {
        return this.background_usedGradient;
    }

    public int getBackground_usedType() {
        return this.background_fill_type;
    }

    public int getBigRadius() {
        return (int) Math.min(Math.min(this.textHeight, this.textWidth) * 0.45f, this.bigBallRadius);
    }

    public spansIntervals getBolds() {
        return this.textDraw.boldIds.copy();
    }

    public RectF getBoundsRect() {
        return new RectF(getX(), getY(), getX() + this.textWidth, getY() + this.textHeight);
    }

    public spansIntervals getColors() {
        return this.textDraw.colorIds.copy();
    }

    public int getCurve() {
        return this.textDraw.curveDegree;
    }

    public int getEffectBrightness() {
        return this.effectBrightness;
    }

    public int getEffectContrast() {
        return this.effectContrast;
    }

    public int getEffectHue() {
        return this.effectHue;
    }

    public int getEffectSaturation() {
        return this.effectSaturation;
    }

    public int getEmbossAmbient() {
        return this.EmbossAmbient;
    }

    public int getEmbossBevel() {
        return this.EmbossBevel;
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

    public int getFill_type() {
        return this.fill_type;
    }

    public spansIntervals getFonts() {
        return this.textDraw.fontsIds;
    }

    public GradientMaker.GradientFill getGradientFill() {
        return this.usedGradient;
    }

    public int getInPaddingLeft() {
        return this.textDraw.inPaddingLeft;
    }

    public int getInPaddingRight() {
        return this.textDraw.inPaddingRight;
    }

    public int getInnerColor() {
        return this.textDraw.inner_color;
    }

    public int getInnerDx() {
        return (int) this.textDraw.inner_dx;
    }

    public int getInnerDy() {
        return (int) this.textDraw.inner_dy;
    }

    public boolean getInnerEnabled() {
        return this.textDraw.inner_enabled;
    }

    public int getInnerRadius() {
        return (int) this.textDraw.inner_r;
    }

    public spansIntervals getItalics() {
        return this.textDraw.italicIds.copy();
    }

    public int getLetterSpacing() {
        return this.textDraw.getLetterSpace();
    }

    public int getLineSpacing() {
        return this.textDraw.spacing;
    }

    public Typeface getMainFont() {
        interval lastAttr = this.textDraw.fontsIds.getLastAttr();
        if (lastAttr != null) {
            return lastAttr.getFont().getTypeface();
        }
        return null;
    }

    public boolean getOuterGlowEnabled() {
        return this.outer_glow_enabled;
    }

    public int getOuterShadowColor() {
        return this.outer_shadow_color;
    }

    public boolean getOuterShadowEnabled() {
        return this.outer_shadow_enabled.booleanValue();
    }

    public int getOuter_shadow_color() {
        return this.outer_shadow_color;
    }

    public int getOuter_shadow_dx() {
        return this.outer_shadow_dx;
    }

    public int getOuter_shadow_dy() {
        return this.outer_shadow_dy;
    }

    public float getOuter_shadow_radius() {
        return this.outer_shadow_radius;
    }

    public float getRenderScaleF() {
        if (this.renderMode) {
            return this.renderScaleF;
        }
        return 1.0f;
    }

    public int getShadow_3d_color() {
        return this.shadow_3d_color;
    }

    public int getShadow_3d_expand() {
        return this.shadow_3d_expand;
    }

    public int getShadow_3d_radius() {
        return this.shadow_3d_radius;
    }

    public int getShadow_3d_transparency() {
        return this.shadow_3d_transparency;
    }

    public int getStrokeColor() {
        return this.textDraw.strokeColor;
    }

    public boolean getStrokeEnabled() {
        return this.textDraw.stroke_enabled;
    }

    public int getStrokeFillType() {
        return this.textDraw.strokeFillType;
    }

    public GradientMaker.GradientFill getStrokeGradient() {
        return this.textDraw.strokeGradient;
    }

    public int getStrokeRadius() {
        return (int) this.textDraw.strokeWidth;
    }

    public int getTextAlign() {
        return this.textDraw.getGravity();
    }

    public boolean getTextJustify() {
        return this.textDraw.isJustifyAlign();
    }

    public int getTextOpacity() {
        return this.textOpacity;
    }

    public int getTextRotationX() {
        return this.textRotationX;
    }

    public int getTextRotationY() {
        return this.textRotationY;
    }

    public float getTextSize() {
        return this.textDraw.userTextSize;
    }

    public int getTextureScale() {
        return this.textureScale;
    }

    public ImageSource getTextureSrc() {
        return this.textureSrc.copy();
    }

    public int getThreeDDepth() {
        return this.threeDDepth;
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

    public GradientMaker.GradientFill getThreeDDepthGradientFill() {
        return this.threeDDepthGradientFill;
    }

    public int getThreeDLightingIntensity() {
        return this.threeDLightingIntensity;
    }

    public int getThreeDLightingShadow() {
        return this.threeDLightingShadow;
    }

    public int getThreeDLightingSpecularHardness() {
        return this.threeDLightingSpecularHardness;
    }

    public int getThreeDObliqueAngle() {
        return this.threeDObliqueAngle;
    }

    public int getThreeDQuality() {
        return this.threeDQuality;
    }

    public int getThreeDViewType() {
        return this.threeDViewType;
    }

    public spansIntervals getUnders() {
        return this.textDraw.underIds.copy();
    }

    public TextPaint getUsedTextPaint() {
        return this.textDraw.getPaint();
    }

    public float getZoomFactor() {
        return MainActivity.helperClass.getZoomFactor();
    }

    public void hideTemp() {
        if (this.hidden) {
            return;
        }
        this.tmpHidden = true;
        setHidden(true);
    }

    public void init(Context context) {
        this.paintSelected.setColor(-1);
        Paint paint = this.paintSelected;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.paintSelected.setStrokeWidth(commonFuncs.dpToPx(1));
        this.paintSelectedBorder.setColor(Color.argb(70, 0, 0, 0));
        this.paintSelectedBorder.setStyle(style);
        this.paintSelectedBorder.setStrokeWidth(commonFuncs.dpToPx(2));
        this.paintSelectedBg.setColor(Color.argb(40, 255, 255, 255));
        this.paintHandles.setColor(-1);
        this.paintHandlesBorder.setColor(Color.argb(60, 0, 0, 0));
        this.paintHandlesBorder.setStyle(Paint.Style.FILL_AND_STROKE);
        this.paintHandlesBorder.setStrokeWidth(commonFuncs.dpToPx(1));
        this.paintHandlesHighlight.setColor(Color.parseColor("#4db8f3"));
        this.paintHandleRotate.setColor(this.paintHandles.getColor());
        this.paintHandleRotate.setStyle(style);
        this.paintHandleRotate.setStrokeWidth(commonFuncs.dpToPx(3));
        this.paintHandleRotate.setStrokeJoin(Paint.Join.ROUND);
        this.paintHandleRotate.setStrokeCap(Paint.Cap.ROUND);
        this.paintHandleRotateBorder.set(this.paintHandleRotate);
        this.paintHandleRotateBorder.setStrokeWidth(commonFuncs.dpToPx(4));
        this.paintHandleRotateBorder.setColor(this.paintHandlesBorder.getColor());
        CustomTextView customTextView = new CustomTextView(context, Math.max(MainActivity.helperClass.getContainerHeight(), MainActivity.helperClass.getContainerWidth()) * 2);
        this.textDraw = customTextView;
        customTextView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.textDraw.setTypeface(Typeface.DEFAULT);
        this.textDraw.getPaint().setFontFeatureSettings("'calt' 1, 'swsh' 1, 'jalt' 1, 'dlig' 1, 'rlig' 1, 'ss01' 1, 'ss02' 1, 'ss03' 1, 'ss04' 1, 'ss05' 1, 'ss06' 1, 'ss07' 1, 'ss08' 1");
        this.mMatrix = new Matrix();
        this.paint = new Paint();
        this.fontFeatureSetting = "normal";
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
    public void invalidate(int i, int i2, int i3, int i4) {
        if (this.frozen) {
            return;
        }
        super.invalidate(i, i2, i3, i4);
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

    public PointF invertVector(PointF pointF) {
        return new PointF(pointF.x * (-1.0f), pointF.y * (-1.0f));
    }

    public boolean isBezierMaskEnabled() {
        return this.bezierMaskEnabled;
    }

    public boolean isBezierMaskIn() {
        return this.bezierMaskIn;
    }

    public boolean isEmbossEnabled() {
        return this.EmbossEnabled;
    }

    public boolean isEmbossIncludeStroke() {
        return this.EmbossIncludeStroke;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public boolean isLocked() {
        return this.locked;
    }

    public boolean isNeverEdited() {
        return this.neverEdited;
    }

    public boolean isNotVisible() {
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

    public boolean isPerspectiveEnabled() {
        return this.perspectiveEnabled;
    }

    @Override // android.view.View
    public boolean isSelected() {
        return this.isSelected;
    }

    public boolean isShadow_3d_enabled() {
        return this.shadow_3d_enabled;
    }

    public boolean isSpaceWords() {
        return this.textDraw.isWordSpacing();
    }

    public boolean isTextOpacityShadowInclude() {
        return this.textOpacityShadowInclude;
    }

    public boolean isTextureMaintainAspect() {
        return this.textureMaintainAspect;
    }

    public boolean isThreeDDepthColorAutomatic() {
        return this.threeDDepthColorAutomatic;
    }

    public boolean isThreeDEnabled() {
        return this.threeDEnabled;
    }

    public boolean isThreeDLightingEnabled() {
        return this.threeDLightingEnabled;
    }

    public boolean isThreeDStokeInclude() {
        return this.threeDStokeInclude;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0177, code lost:
    
        if (android.graphics.Color.alpha(r20.background_color) == 255) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0179, code lost:
    
        applyAlphaToPaint(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x018e, code lost:
    
        if (r20.background_usedGradient.hasAlpha() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02dc, code lost:
    
        if (r12.strokeFillType == 2) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02e4, code lost:
    
        if (r20.shadow_3d_enabled != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0315, code lost:
    
        if (r12.strokeFillType == 2) goto L97;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r21) {
        /*
            Method dump skipped, instructions count: 2120
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        this.textDraw.measure(0, 0);
        this.textWidth = this.textDraw.getMeasuredWidth();
        int measuredHeight = this.textDraw.getMeasuredHeight();
        this.textHeight = measuredHeight;
        setMeasuredDimension(this.textWidth, measuredHeight);
        setPivotX(this.textWidth / 2.0f);
        setPivotY(this.textHeight / 2.0f);
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

    public void rearrange(int i, int i2, int i3, int i4) {
        if (i2 == 0 || i == 0) {
            return;
        }
        if (i3 == 0) {
            i3 = i;
        }
        if (i4 == 0) {
            i4 = i2;
        }
        float x = getX() / i3;
        float y = getY() / i4;
        setX(x * i);
        setY(y * i2);
    }

    public void relativeScale(float f) {
        setTextSize(getTextSize() * f);
    }

    public void removeTexture() {
        this.textureBmb = null;
        this.textureSrc = new ImageSource();
        fullRedraw();
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.frozen) {
            return;
        }
        super.requestLayout();
    }

    public void restorePerspectivePoints() {
        this.perspectivePoint1.set(0.0f, 0.0f);
        this.perspectivePoint2.set(1.0f, 0.0f);
        this.perspectivePoint3.set(1.0f, 1.0f);
        this.perspectivePoint4.set(0.0f, 1.0f);
        invalidate();
    }

    public void restoreRotations() {
        this.tempDisable3DRots = false;
        this.tempDisablePerspective = false;
        if (this.tempDisableRot) {
            this.tempDisableRot = false;
            rotateText(this.angle);
        }
        invalidate();
    }

    public String returnText() {
        return this.textDraw.returnActualText();
    }

    public void rotate3d(int i, int i2) {
        this.textRotationX = i;
        this.textRotationY = i2;
        fullRedraw();
    }

    public void rotateText(int i) {
        rotateText(i, false);
    }

    public Bundle saveToBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(appStateConstants.TEXT_REFERENCE, this.reference);
        bundle.putInt("shapeX", (int) getX());
        bundle.putInt("shapeY", (int) getY());
        bundle.putInt("shapeOldContainerWidth", MainActivity.helperClass.getContainerWidth());
        bundle.putInt("shapeOldContainerHeight", MainActivity.helperClass.getContainerHeight());
        bundle.putInt(appStateConstants.TEXT_MAX_WIDTH, (int) this.textDraw.userMaxWidth);
        bundle.putString(appStateConstants.TEXT_TEXT_SIZE, String.valueOf(getTextSize()));
        bundle.putString(appStateConstants.TEXT_ROTATION, String.valueOf(this.angle));
        bundle.putBoolean(appStateConstants.OBJECT_HIDDEN, this.hidden);
        bundle.putBoolean(appStateConstants.OBJECT_LOCKED, this.locked);
        bundle.putString(appStateConstants.TEXT_TEXT_STRING, returnText());
        bundle.putBundle(appStateConstants.TEXT_TEXT_FONT, fontIntervalsToBundle(this.textDraw.fontsIds));
        bundle.putBundle(appStateConstants.TEXT_BOLD, styleIntervalsToBundle(this.textDraw.boldIds));
        bundle.putBundle(appStateConstants.TEXT_ITALIC, styleIntervalsToBundle(this.textDraw.italicIds));
        bundle.putBundle(appStateConstants.TEXT_UNDER, styleIntervalsToBundle(this.textDraw.underIds));
        bundle.putInt(appStateConstants.TEXT_ALIGNMENT, getTextAlign());
        bundle.putInt(appStateConstants.TEXT_LETTER_SPACING, getLetterSpacing());
        bundle.putBoolean(appStateConstants.TEXT_LETTER_SPACE_WORDS, this.textDraw.isWordSpacing());
        bundle.putBoolean(appStateConstants.TEXT_JUSTIFY, getTextJustify());
        bundle.putInt(appStateConstants.TEXT_LINE_SPACING, getLineSpacing());
        bundle.putBoolean(appStateConstants.TEXT_BG_ENABLED, getBackground_enabled());
        bundle.putInt(appStateConstants.TEXT_BG_COLOR, this.background_color);
        bundle.putString(appStateConstants.TEXT_BG_GRADIENT_V2, this.background_usedGradient.convertToStringV2());
        bundle.putInt(appStateConstants.TEXT_BG_FILL_TYPE, this.background_fill_type);
        bundle.putInt(appStateConstants.TEXT_BG_PADDING_LEFT, (int) this.background_addHorizontalL);
        bundle.putInt(appStateConstants.TEXT_BG_PADDING_RIGHT, (int) this.background_addHorizontalR);
        bundle.putInt(appStateConstants.TEXT_BG_PADDING_TOP, (int) this.background_addVerticalT);
        bundle.putInt(appStateConstants.TEXT_BG_PADDING_BOTTOM, (int) this.background_addVerticalB);
        bundle.putInt(appStateConstants.TEXT_BG_BORDER_RADIUS, this.background_border_radius);
        bundle.putBoolean(appStateConstants.TEXT_STROKE_ENABLED, getStrokeEnabled());
        bundle.putString(appStateConstants.TEXT_STROKE_WIDTH, String.valueOf(this.textDraw.strokeWidth));
        bundle.putInt(appStateConstants.TEXT_STROKE_COLOR, getStrokeColor());
        bundle.putInt(appStateConstants.TEXT_STROKE_FILL_TYPE, getStrokeFillType());
        bundle.putString(appStateConstants.TEXT_STROKE_GRADIENT_V2, getStrokeGradient().convertToStringV2());
        bundle.putBoolean(appStateConstants.TEXT_INNER_ENABLED, getInnerEnabled());
        bundle.putString(appStateConstants.TEXT_INNER_RADIUS, String.valueOf(this.textDraw.inner_r));
        bundle.putInt(appStateConstants.TEXT_INNER_COLOR, getInnerColor());
        bundle.putString(appStateConstants.TEXT_INNER_DX, String.valueOf(this.textDraw.inner_dx));
        bundle.putString(appStateConstants.TEXT_INNER_DY, String.valueOf(this.textDraw.inner_dy));
        bundle.putBoolean(appStateConstants.TEXT_OUTER_ENABLED, getOuterShadowEnabled());
        bundle.putBoolean(appStateConstants.TEXT_OUTER_GLOW_ENABLED, getOuterGlowEnabled());
        bundle.putString(appStateConstants.TEXT_OUTER_RADIUS, String.valueOf(this.outer_shadow_radius));
        bundle.putInt(appStateConstants.TEXT_OUTER_COLOR, getOuterShadowColor());
        bundle.putInt(appStateConstants.TEXT_OUTER_DX, this.outer_shadow_dx);
        bundle.putInt(appStateConstants.TEXT_OUTER_DY, this.outer_shadow_dy);
        bundle.putInt(appStateConstants.TEXT_ROTATION_X, this.textRotationX);
        bundle.putInt(appStateConstants.TEXT_ROTATION_Y, this.textRotationY);
        bundle.putBundle(appStateConstants.TEXT_TEXT_COLOR, colorIntervalsToBundle(this.textDraw.colorIds));
        bundle.putBoolean(appStateConstants.TEXT_EMBOSS_ENABLED, isEmbossEnabled());
        bundle.putInt(appStateConstants.TEXT_EMBOSS_LIGHT_ANGLE, getEmbossLightAngle());
        bundle.putInt(appStateConstants.TEXT_EMBOSS_INTENSITY, getEmbossIntensity());
        bundle.putInt(appStateConstants.TEXT_EMBOSS_AMBIENT, getEmbossAmbient());
        bundle.putInt(appStateConstants.TEXT_EMBOSS_HARDNESS, getEmbossHardness());
        bundle.putInt(appStateConstants.TEXT_EMBOSS_BEVEL, getEmbossBevel());
        bundle.putBoolean(appStateConstants.TEXT_EMBOSS_INCLUDE_STROKE, isEmbossIncludeStroke());
        bundle.putBoolean(appStateConstants.TEXT_THREE_D_ENABLED, isThreeDEnabled());
        bundle.putInt(appStateConstants.TEXT_THREE_D_VIEW_TYPE, getThreeDViewType());
        bundle.putInt(appStateConstants.TEXT_THREE_D_DEPTH, getThreeDDepth());
        bundle.putInt(appStateConstants.TEXT_THREE_D_DEPTH_FILL_TYPE, getThreeDDepthFillType());
        bundle.putInt(appStateConstants.TEXT_THREE_D_DEPTH_COLOR_FILL, getThreeDDepthColorFill());
        bundle.putString(appStateConstants.TEXT_THREE_D_DEPTH_GRADIENT_FILL_V2, getThreeDDepthGradientFill().convertToStringV2());
        bundle.putBoolean(appStateConstants.TEXT_THREE_D_DEPTH_COLOR_AUTOMATIC, isThreeDDepthColorAutomatic());
        bundle.putInt(appStateConstants.TEXT_THREE_D_DEPTH_DARKEN, getThreeDDepthDarken());
        bundle.putBoolean(appStateConstants.TEXT_THREE_D_STOKE_INCLUDE, isThreeDStokeInclude());
        bundle.putInt(appStateConstants.TEXT_THREE_D_OBLIQUE_ANGLE, getThreeDObliqueAngle());
        bundle.putBoolean(appStateConstants.TEXT_THREE_D_LIGHTING_ENABLED, isThreeDLightingEnabled());
        bundle.putInt(appStateConstants.TEXT_THREE_D_LIGHTING_INTENSITY, getThreeDLightingIntensity());
        bundle.putInt(appStateConstants.TEXT_THREE_D_LIGHTING_SHADOW, getThreeDLightingShadow());
        bundle.putInt(appStateConstants.TEXT_THREE_D_LIGHTING_SPECULAR_HARDNESS, getThreeDLightingSpecularHardness());
        bundle.putInt(appStateConstants.TEXT_OPACITY, getTextOpacity());
        bundle.putBoolean(appStateConstants.TEXT_OPACITY_SHADOW_INCLUDE, isTextOpacityShadowInclude());
        bundle.putBoolean(appStateConstants.TEXT_THREE_D_SHADOW_ENABLED, isShadow_3d_enabled());
        bundle.putInt(appStateConstants.TEXT_THREE_D_SHADOW_COLOR, getShadow_3d_color());
        bundle.putInt(appStateConstants.TEXT_THREE_D_SHADOW_TRANSPARENCY, getShadow_3d_transparency());
        bundle.putInt(appStateConstants.TEXT_THREE_D_SHADOW_BLUR, getShadow_3d_radius());
        bundle.putInt(appStateConstants.TEXT_THREE_D_SHADOW_EXPAND, getShadow_3d_expand());
        bundle.putBoolean(appStateConstants.TEXT_PERSPECTIVE_ENABLED, isPerspectiveEnabled());
        bundle.putInt(appStateConstants.TEXT_PERSPECTIVE_P1X, (int) (this.perspectivePoint1.x * 1000.0f));
        bundle.putInt(appStateConstants.TEXT_PERSPECTIVE_P2X, (int) (this.perspectivePoint2.x * 1000.0f));
        bundle.putInt(appStateConstants.TEXT_PERSPECTIVE_P3X, (int) (this.perspectivePoint3.x * 1000.0f));
        bundle.putInt(appStateConstants.TEXT_PERSPECTIVE_P4X, (int) (this.perspectivePoint4.x * 1000.0f));
        bundle.putInt(appStateConstants.TEXT_PERSPECTIVE_P1Y, (int) (this.perspectivePoint1.y * 1000.0f));
        bundle.putInt(appStateConstants.TEXT_PERSPECTIVE_P2Y, (int) (this.perspectivePoint2.y * 1000.0f));
        bundle.putInt(appStateConstants.TEXT_PERSPECTIVE_P3Y, (int) (this.perspectivePoint3.y * 1000.0f));
        bundle.putInt(appStateConstants.TEXT_PERSPECTIVE_P4Y, (int) (this.perspectivePoint4.y * 1000.0f));
        bundle.putString(appStateConstants.TEXT_TEXT_GRADIENT_V2, this.usedGradient.convertToStringV2());
        bundle.putInt(appStateConstants.TEXT_TEXT_FILL_TYPE, this.fill_type);
        bundle.putInt(appStateConstants.TEXT_TEXT_CURVE, getCurve());
        bundle.putBoolean(appStateConstants.TEXT_REFLECTION_ENABLED, this.reflectionEnabled);
        bundle.putInt(appStateConstants.TEXT_REFLECTION_OFFSET, this.reflection_dy);
        bundle.putBoolean(appStateConstants.TEXT_TEXTURE_IMAGE_SRC_V2, true);
        bundle.putBundle(appStateConstants.TEXT_TEXTURE_IMAGE_SRC, this.textureSrc.toBundle());
        bundle.putBundle(appStateConstants.TEXT_TEXTURE_IMAGE_CROP_INFO, CropInfo.makeBundle(this.texturePortion, this.textureInRot, false, this.textureFlipH, this.textureFlipV));
        bundle.putBoolean(appStateConstants.TEXT_TEXTURE_MAINTAIN_ASPECT, isTextureMaintainAspect());
        bundle.putInt(appStateConstants.TEXT_TEXTURE_SCALE, getTextureScale());
        bundle.putBoolean(appStateConstants.TEXT_BEZIER_MASK_ENABLED, this.bezierMaskEnabled);
        if (this.bezierMaskEnabled && this.bezierMaskBundle != null) {
            bundle.putBoolean(appStateConstants.TEXT_BEZIER_MASK_IN, this.bezierMaskIn);
            bundle.putBundle(appStateConstants.TEXT_BEZIER_MASK_DATA, this.bezierMaskBundle);
        }
        bundle.putInt(appStateConstants.TEXT_PADDING_LEFT, getInPaddingLeft());
        bundle.putInt(appStateConstants.TEXT_PADDING_RIGHT, getInPaddingRight());
        bundle.putInt("textEffectHue", this.effectHue);
        bundle.putInt("textEffectSaturation", this.effectSaturation);
        bundle.putInt("textEffectBrightness", this.effectBrightness);
        bundle.putInt("textEffectContrast", this.effectContrast);
        bundle.putString("textFontFeatureSetting", this.fontFeatureSetting);
        return bundle;
    }

    public void selectMe() {
        OnSelectEventListener onSelectEventListener = this.SelectListener;
        if (onSelectEventListener == null || this.isSelected) {
            return;
        }
        onSelectEventListener.onEvent_SelectText(this.assigned_id);
    }

    public void set3dDepth(int i, int i2, int i3, boolean z) {
        this.threeDDepth = i;
        this.threeDDepthDarken = i2;
        this.threeDQuality = i3;
        this.threeDStokeInclude = z;
        fullRedraw();
    }

    public void set3dDepthColor(int i, int i2, GradientMaker.GradientFill gradientFill, boolean z) {
        this.threeDDepthFillType = i;
        this.threeDDepthColorFill = i2;
        this.threeDDepthGradientFill = gradientFill;
        this.threeDDepthColorAutomatic = z;
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

    public void set3dObliqueAngle(int i) {
        this.threeDObliqueAngle = i;
        fullRedraw();
    }

    public void set3dViewType(int i) {
        this.threeDViewType = i;
        fullRedraw();
    }

    public void setBezierMaskBundle(Bundle bundle) {
        this.bezierMaskBundle = bundle;
    }

    public void setBezierMaskEnabled(boolean z) {
        if (this.bezierMaskEnabled != z) {
            this.bezierMaskEnabled = z;
            fullRedraw();
        }
    }

    public void setBezierMaskIn(boolean z) {
        if (this.bezierMaskIn != z) {
            this.bezierMaskIn = z;
            fullRedraw();
        }
    }

    public void setBezierMaskPath(ArrayList<Path> arrayList) {
        this.bezierMaskPath = arrayList;
        this.bezierMaskRect.set(getX(), getY(), getX() + this.textWidth, getY() + this.textHeight);
        fullRedraw();
    }

    public void setBold(int i, int i2) {
        this.textDraw.setBoldToSelection(i, i2);
        this.textDraw.textUpdated();
        requestLayout();
        fullRedraw();
    }

    public void setBolds(spansIntervals spansintervals) {
        if (spansintervals != null) {
            this.textDraw.boldIds = spansintervals;
        }
    }

    public void setColorFill(int i) {
        setColorFill(i, 0, this.textDraw.getTextLength());
    }

    public void setColorFill(int i, int i2, int i3) {
        this.fill_type = 1;
        this.textDraw.getPaint().setShader(null);
        this.textDraw.setColorToSelection(i, i2, i3);
        this.textDraw.invalidate();
        fullRedraw();
    }

    public void setColors(spansIntervals spansintervals) {
        if (spansintervals != null) {
            this.fill_type = 1;
            this.textDraw.getPaint().setShader(null);
            this.textDraw.colorIds = spansintervals;
        }
    }

    public void setCurve(int i) {
        this.isCurved = i != 0;
        this.textDraw.setCurve(i);
        fullRedraw();
        requestLayout();
    }

    public void setEffects(int i, int i2, int i3, int i4) {
        this.effectHue = i;
        this.effectSaturation = i2;
        this.effectBrightness = i3;
        this.effectContrast = i4;
        ColorMatrix colorMatrix = new ColorMatrix();
        ColorMatrix colorMatrix2 = new ColorMatrix();
        if (i != 0) {
            float f = i;
            colorMatrix2.setRotate(0, f);
            colorMatrix.postConcat(colorMatrix2);
            colorMatrix2.setRotate(1, f);
            colorMatrix.postConcat(colorMatrix2);
            colorMatrix2.setRotate(2, f);
            colorMatrix.postConcat(colorMatrix2);
        }
        colorMatrix2.setSaturation((i2 / 100.0f) + 1.0f);
        colorMatrix.postConcat(colorMatrix2);
        if (i3 != 0) {
            float f2 = i3 * 2.55f;
            float[] array = colorMatrix.getArray();
            array[4] = array[4] + f2;
            array[9] = array[9] + f2;
            array[14] = array[14] + f2;
        }
        if (i4 != 0) {
            float f3 = (i4 / 100.0f) + 1.0f;
            float f4 = (((-0.5f) * f3) + 0.5f) * 255.0f;
            colorMatrix2.set(new float[]{f3, 0.0f, 0.0f, 0.0f, f4, 0.0f, f3, 0.0f, 0.0f, f4, 0.0f, 0.0f, f3, 0.0f, f4, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
            colorMatrix.postConcat(colorMatrix2);
        }
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
        Paint paint = this.paint;
        if (paint != null) {
            paint.setColorFilter(colorMatrixColorFilter);
        }
        invalidate();
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

    public void setEmbossIncludeStroke(boolean z) {
        this.EmbossIncludeStroke = z;
        fullRedraw();
    }

    public void setFill_type(int i) {
        this.fill_type = i;
    }

    public void setFontFeatureSettingsCustom(String str) {
        this.fontFeatureSetting = str;
        CustomTextView customTextView = this.textDraw;
        if (customTextView != null) {
            if (str == null || str.isEmpty()) {
                customTextView.setFontFeatureSettingValue("normal");
            } else {
                customTextView.setFontFeatureSettingValue(str);
            }
        }
        fullRedraw();
    }

    public void setFonts(spansIntervals spansintervals) {
        if (spansintervals != null) {
            this.textDraw.fontsIds = spansintervals;
        }
    }

    public void setGradientFill(GradientMaker.GradientFill gradientFill) {
        this.fill_type = 2;
        this.usedGradient = gradientFill != null ? gradientFill.copy() : null;
        fullRedraw();
    }

    public void setHidden(boolean z) {
        boolean z2 = this.hidden;
        this.hidden = z;
        if (z2 != z) {
            invalidate();
        }
    }

    public void setInPadding(int i, int i2) {
        CustomTextView customTextView = this.textDraw;
        customTextView.inPaddingLeft = i;
        customTextView.inPaddingRight = i2;
        customTextView.updatePaddings();
        fullRedraw();
        requestLayout();
    }

    public void setInnerShadow(boolean z, float f, float f2, float f3, int i) {
        this.hasInnerShadow = z;
        this.textDraw.setInnerShadow(z, f, f2, f3, i);
        fullRedraw();
    }

    public void setItalic(int i, int i2) {
        this.textDraw.setItalicToSelection(i, i2);
        this.textDraw.textUpdated();
        requestLayout();
        fullRedraw();
    }

    public void setItalics(spansIntervals spansintervals) {
        if (spansintervals != null) {
            this.textDraw.italicIds = spansintervals;
        }
    }

    public void setJustify(boolean z) {
        this.textDraw.setJustifyAlign(z);
        requestLayout();
        fullRedraw();
    }

    public void setLayersListener(OnTextNotifyLayers onTextNotifyLayers) {
        this.layersListener = onTextNotifyLayers;
    }

    public void setLetterSpacing(int i) {
        this.textDraw.setLetterSpace(i);
        fullRedraw();
        requestLayout();
    }

    public void setLineSpacing(int i) {
        this.textDraw.setLineSpacing(i, 1.0f);
        this.textDraw.spacing = i;
        requestLayout();
        fullRedraw();
    }

    public void setLocked(boolean z) {
        boolean z2 = this.hidden;
        this.locked = z;
        if (z2 != z) {
            invalidate();
        }
    }

    public void setMax(float f) {
        float max;
        CustomTextView customTextView = this.textDraw;
        customTextView.userMaxWidth = f;
        if (f <= 0.0f) {
            customTextView.userMaxWidth = -1.0d;
            max = 2.14748365E9f;
        } else {
            max = Math.max(f, this.textDraw.getPaddingLeft() + customTextView.getPaddingRight());
        }
        this.textDraw.setMaxWidth((int) max);
        fullRedraw();
        requestLayout();
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

    public void setNewTextureSrc(String str) {
        if (str == null || str.isEmpty()) {
            this.textureSrc = new ImageSource();
        } else {
            this.textureSrc = new ImageSource(str);
        }
        this.textureBmb = null;
        fullRedraw();
    }

    public void setOuterShadow(boolean z, boolean z2, float f, int i, int i2, int i3) {
        this.outer_shadow_enabled = Boolean.valueOf(z);
        if (z) {
            this.outer_glow_enabled = z2;
            this.outer_shadow_radius = f;
            this.outer_shadow_color = i3;
            this.outer_shadow_dx = i;
            this.outer_shadow_dy = i2;
            this.outer_shadow_padding = (int) (Math.ceil(f) * 2.0d);
            if (f < 1.0f) {
                this.outer_shadow_padding = 0;
            }
        }
        fullRedraw();
    }

    public void setOuterShadowColor(int i) {
        this.outer_shadow_color = i;
        invalidate();
    }

    public void setPerspectiveEnabled(boolean z) {
        this.perspectiveEnabled = z;
        invalidate();
    }

    public void setPerspectivePoints(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        this.perspectivePoint1.set(pointF.x, pointF.y);
        this.perspectivePoint2.set(pointF2.x, pointF2.y);
        this.perspectivePoint3.set(pointF3.x, pointF3.y);
        this.perspectivePoint4.set(pointF4.x, pointF4.y);
        invalidate();
    }

    public void setReflection(boolean z, int i) {
        this.reflectionEnabled = z;
        this.reflection_dy = i;
        fullRedraw();
    }

    public void setRenderMode(boolean z, float f) {
        this.renderMode = z;
        this.renderScaleF = f;
        unloadBitmaps();
        this.need_redraw = true;
    }

    public void setShadow3d(boolean z, int i, int i2, int i3, int i4) {
        this.shadow_3d_enabled = z;
        this.shadow_3d_color = i;
        this.shadow_3d_transparency = i2;
        this.shadow_3d_radius = i3;
        this.shadow_3d_expand = i4;
        fullRedraw();
    }

    public void setShadow_3d_color(int i) {
        this.shadow_3d_color = i;
        invalidate();
    }

    public void setShadow_3d_enabled(boolean z) {
        this.shadow_3d_enabled = z;
        fullRedrawUpdateParent();
    }

    public void setShadow_3d_expand(int i) {
        this.shadow_3d_expand = i;
        fullRedrawUpdateParent();
    }

    public void setShadow_3d_radius(int i) {
        this.shadow_3d_radius = i;
        fullRedrawUpdateParent();
    }

    public void setShadow_3d_transparency(int i) {
        this.shadow_3d_transparency = i;
        invalidate();
    }

    public void setSpaceWords(boolean z) {
        this.textDraw.setWordSpacing(z);
        fullRedraw();
        requestLayout();
    }

    public void setStroke(boolean z, float f, int i, int i2, GradientMaker.GradientFill gradientFill) {
        this.textDraw.setStrokeFill(z, f, i, i2, gradientFill);
        requestLayout();
        fullRedraw();
    }

    public void setText(String str, boolean z) {
        setText(str, z, -1);
    }

    public void setText(String str, boolean z, int i) {
        int countLines = countLines(this.textDraw.returnActualText());
        int lineCount = this.textDraw.getLineCount();
        this.textDraw.updateText(str, i);
        this.neverEdited = false;
        if (lineCount == countLines) {
            CustomTextView customTextView = this.textDraw;
            customTextView.userMaxWidth = -1.0d;
            customTextView.setMaxWidth(Integer.MAX_VALUE);
        }
        this.textDraw.measure(0, 0);
        this.textWidth = this.textDraw.getMeasuredWidth();
        this.textHeight = this.textDraw.getMeasuredHeight();
        if (z) {
            float containerWidth = MainActivity.helperClass.getContainerWidth() - getX();
            if (this.textWidth > containerWidth) {
                CustomTextView customTextView2 = this.textDraw;
                customTextView2.userMaxWidth = containerWidth;
                customTextView2.setMaxWidth((int) containerWidth);
            }
        }
        OnTextNotifyLayers onTextNotifyLayers = this.layersListener;
        if (onTextNotifyLayers != null) {
            onTextNotifyLayers.textChanged();
        }
        requestLayout();
        fullRedraw();
    }

    public void setTextAlign(int i) {
        this.textDraw.setGravity(i);
        requestLayout();
        fullRedraw();
    }

    public void setTextFont(Bundle bundle) {
        if (bundle != null) {
            setTextFont(bundleToFontIntervals(bundle));
        }
    }

    public void setTextFont(spansIntervals spansintervals) {
        this.textDraw.setFonts(spansintervals);
        requestLayout();
        fullRedraw();
    }

    public void setTextOpacity(int i) {
        this.textOpacity = i;
        invalidate();
    }

    public void setTextOpacityShadowInclude(boolean z) {
        this.textOpacityShadowInclude = z;
        invalidate();
    }

    public void setTextSize(float f) {
        if (f <= 0.0f) {
            f = 1.0f;
        }
        this.textDraw.updateTextSize(f);
        requestLayout();
        fullRedraw();
    }

    public void setTextureMaintainAspect(boolean z) {
        this.textureMaintainAspect = z;
        fullRedraw();
    }

    public void setTextureScale(int i) {
        this.textureScale = i;
        fullRedraw();
    }

    public void setTouchEventListener(OnSelectEventListener onSelectEventListener) {
        this.SelectListener = onSelectEventListener;
    }

    public void setUnderline(int i, int i2) {
        this.textDraw.setUnderToSelection(i, i2);
        this.textDraw.textUpdated();
        requestLayout();
        fullRedraw();
    }

    public void setUnders(spansIntervals spansintervals) {
        if (spansintervals != null) {
            this.textDraw.underIds = spansintervals;
        }
    }

    public int solidColor(int i) {
        return Color.argb(255, Color.red(i), Color.green(i), Color.blue(i));
    }

    public Bundle styleIntervalsToBundle(spansIntervals spansintervals) {
        Bundle bundle = new Bundle();
        int i = 1;
        for (interval intervalVar : spansintervals.getIntervals()) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(appStateConstants.TEXTS_SPANS_INTERVALS_START, intervalVar.getStart());
            bundle2.putInt(appStateConstants.TEXTS_SPANS_INTERVALS_END, intervalVar.getEnd());
            bundle.putBundle("interval" + i, bundle2);
            i++;
        }
        return bundle;
    }

    public void tempDisableRotations(boolean z, boolean z2, boolean z3) {
        this.tempDisablePerspective = z3;
        this.tempDisableRot = z;
        this.tempDisable3DRots = z2;
        if (z) {
            rotateText(this.angle);
        }
        invalidate();
    }

    public void toggleSelect(boolean z) {
        if (z != this.isSelected) {
            this.isSelected = z;
            OnTextNotifyLayers onTextNotifyLayers = this.layersListener;
            if (onTextNotifyLayers != null) {
                onTextNotifyLayers.selectionChanged(z);
            }
            invalidate();
        }
    }

    public void unhideTemp() {
        if (this.tmpHidden) {
            setHidden(false);
            this.tmpHidden = false;
        }
    }

    public void unloadBitmaps() {
        this.textureBmb = null;
        this.bitmap_cache = null;
        this.bitmap_shadow_outer = null;
        this.bitmap_shadow_3d = null;
        this.bitmap_shadow_outer_reflection = null;
        this.bitmap_cache_reflection = null;
        this.bitmap_3d_cache = null;
        this.need_redraw = true;
    }

    public void updateBackground(boolean z, int i, int i2, GradientMaker.GradientFill gradientFill, float f, float f2, float f3, float f4, int i3) {
        this.isBackgroundEnabled = z;
        if (z) {
            this.background_fill_type = i;
            this.background_usedGradient = gradientFill != null ? gradientFill.copy() : null;
            this.background_color = i2;
            this.background_addHorizontalL = f;
            this.background_addHorizontalR = f2;
            this.background_addVerticalT = f3;
            this.background_addVerticalB = f4;
            this.background_border_radius = i3;
        }
        invalidate();
    }

    public Bitmap updateOuter_Shadow(Bitmap bitmap, float f) {
        if (this.outer_shadow_radius < 1.0f) {
            return bitmap;
        }
        int i = this.textWidth;
        int i2 = this.outer_shadow_padding * 2;
        Bitmap createBitmap = Bitmap.createBitmap((int) ((i + i2) * f), (int) ((this.textHeight + i2) * f), Bitmap.Config.ARGB_8888);
        float f2 = this.outer_shadow_radius;
        float f3 = (f2 / 2.0f) * f;
        if (this.outer_glow_enabled) {
            int i3 = (int) f3;
            bitmap = addPadding(bitmap, i3);
            dilate(bitmap, i3);
        } else {
            f3 = f2 * f;
        }
        Bitmap extractAlpha = bitmap.extractAlpha();
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setAntiAlias(true);
        paint.setMaskFilter(new BlurMaskFilter(f3, BlurMaskFilter.Blur.NORMAL));
        Rect rect = new Rect(0, 0, extractAlpha.getWidth(), extractAlpha.getHeight());
        rect.offset((int) ((createBitmap.getWidth() / 2.0f) - rect.exactCenterX()), (int) ((createBitmap.getHeight() / 2.0f) - rect.exactCenterY()));
        canvas.drawBitmap(extractAlpha, (Rect) null, rect, paint);
        return createBitmap;
    }

    public void updateSpans(boolean z) {
        this.textDraw.applySpans();
        if (z) {
            this.textDraw.textUpdated();
            requestLayout();
        } else {
            this.textDraw.invalidate();
        }
        fullRedraw();
    }

    public void visibilityCheck() {
        if (isNotVisible()) {
            makeMeVisible();
        }
    }
}
