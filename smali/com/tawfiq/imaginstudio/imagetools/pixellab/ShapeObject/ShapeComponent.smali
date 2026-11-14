.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
.super Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$HandleBall;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;
    }
.end annotation


# static fields
.field private static final DRAGGING_HANDLE_HEIGHTOR:I = 0x3

.field private static final DRAGGING_HANDLE_RESIZOR:I = 0x0

.field private static final DRAGGING_HANDLE_ROTATE:I = 0x5

.field private static final DRAGGING_HANDLE_WIDTHOR:I = 0x2

.field private static final DRAGGING_WHOLE:I = 0x4

.field public static final FILL_TYPE_COLOR:I = 0x1

.field public static final FILL_TYPE_GRADIENT:I = 0x2

.field public static SHAPE_TYPE_ARROW:I = 0x6

.field public static SHAPE_TYPE_BEZIER:I = 0x4

.field public static SHAPE_TYPE_DRAWING:I = 0x3

.field public static SHAPE_TYPE_GALLERY:I = 0x2

.field public static SHAPE_TYPE_SHAPE:I = 0x5

.field public static SHAPE_TYPE_STICKER:I = 0x1

.field public static final threeD_TYPE_OBLIQUE:I = 0x3

.field public static final threeD_TYPE_PERSPECTIVE:I = 0x1


# instance fields
.field private EmbossAmbient:I

.field private EmbossBevel:I

.field private EmbossEnabled:Z

.field private EmbossHardness:I

.field private EmbossIntensity:I

.field private EmbossLightAngle:I

.field private RotationX:I

.field private RotationY:I

.field SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;

.field absoluteRegion:Landroid/graphics/Rect;

.field public angle:I

.field public arrowDataBundle:Landroid/os/Bundle;

.field public assigned_id_shape:I

.field public bezierMaskBundle:Landroid/os/Bundle;

.field public bezierMaskEnabled:Z

.field public bezierMaskIn:Z

.field private bezierMaskPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private bezierMaskRect:Landroid/graphics/RectF;

.field public bezierShapeBundle:Landroid/os/Bundle;

.field bigBallRadius:F

.field private bitmapInRotation:I

.field private bitmapPortion:Landroid/graphics/RectF;

.field private bitmap_3d_cache:Landroid/graphics/Bitmap;

.field private bitmap_cache:Landroid/graphics/Bitmap;

.field private bitmap_emboss:Landroid/graphics/Bitmap;

.field private bitmap_inner_shadow:Landroid/graphics/Bitmap;

.field private bitmap_shadow:Landroid/graphics/Bitmap;

.field private bitmap_stroke:Landroid/graphics/Bitmap;

.field public blendMode:I

.field private bmpMasks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

.field bmpRegion:Landroid/graphics/RectF;

.field boundsToDraw:Landroid/graphics/RectF;

.field brightness:I

.field private circularCrop:Z

.field colorOverlayColor:I

.field colorOverlayEnabled:Z

.field colorOverlayFillType:I

.field colorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field contrast:I

.field currBitmap:Landroid/graphics/Bitmap;

.field private currColorFilter:Landroid/graphics/ColorFilter;

.field dX:F

.field dY:F

.field private dragID:I

.field private flipHor:Z

.field private flipVer:Z

.field private final floatPrecision:F

.field private frozen:Z

.field private gaussianBlurRadius:I

.field public height_f:F

.field heightor:Landroid/graphics/PointF;

.field private hidden:Z

.field hue:I

.field imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

.field private isSelected:Z

.field private layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;

.field private locked:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field public mergedDataBundle:Landroid/os/Bundle;

.field private min_height:I

.field private min_width:I

.field private need_redraw:Z

.field oldAngle:I

.field oldHeight:F

.field oldPosX:F

.field oldPosY:F

.field oldWidth:F

.field paint:Landroid/graphics/Paint;

.field paintHandleRotate:Landroid/graphics/Paint;

.field paintHandleRotateBorder:Landroid/graphics/Paint;

.field paintHandles:Landroid/graphics/Paint;

.field paintHandlesBorder:Landroid/graphics/Paint;

.field paintHandlesHighlight:Landroid/graphics/Paint;

.field paintSelected:Landroid/graphics/Paint;

.field paintSelectedBorder:Landroid/graphics/Paint;

.field private perspectiveEnabled:Z

.field public perspectivePoint1:Landroid/graphics/PointF;

.field public perspectivePoint2:Landroid/graphics/PointF;

.field public perspectivePoint3:Landroid/graphics/PointF;

.field public perspectivePoint4:Landroid/graphics/PointF;

.field previousX:F

.field previousY:F

.field public reference:Ljava/lang/String;

.field private removeColorBlur:I

.field private removeColorColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;"
        }
    .end annotation
.end field

.field private removeColorEnabled:Z

.field renderMode:Z

.field renderScaleF:F

.field resizor:Landroid/graphics/PointF;

.field rotator:Landroid/graphics/PointF;

.field saturation:I

.field private shadow_color:I

.field private shadow_dx:I

.field private shadow_dy:I

.field private shadow_enabled:Ljava/lang/Boolean;

.field private shadow_inner_color:I

.field private shadow_inner_dx:I

.field private shadow_inner_dy:I

.field private shadow_inner_enabled:Ljava/lang/Boolean;

.field private shadow_inner_radius:I

.field private shadow_padding:I

.field private shadow_radius:F

.field public shapeDataBundle:Landroid/os/Bundle;

.field private shapeOpacity:I

.field private shapeOpacityShadowInclude:Z

.field shapeType:I

.field smallBallRadius:F

.field private strokeColor:I

.field private strokeEnabled:Z

.field private strokeRadius:I

.field private tempDisable3DRots:Z

.field private tempDisablePerspective:Z

.field private tempDisableRot:Z

.field private textureBmb:Landroid/graphics/Bitmap;

.field textureFlipH:Z

.field textureFlipV:Z

.field textureInRot:I

.field private textureMaintainAspect:Z

.field texturePortion:Landroid/graphics/RectF;

.field private textureScale:I

.field private textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

.field threeDDepth:I

.field threeDDepthColorAutomatic:Z

.field threeDDepthColorFill:I

.field threeDDepthDarken:I

.field threeDDepthFillType:I

.field threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field threeDEnabled:Z

.field threeDLightingEnabled:Z

.field threeDLightingIntensity:I

.field threeDLightingShadow:I

.field threeDLightingSpecularHardness:I

.field threeDObliqueAngle:I

.field threeDQuality:I

.field threeDStokeInclude:Z

.field threeDViewType:I

.field tmpCanvas:Landroid/graphics/Canvas;

.field private tmpHidden:Z

.field tmpPointPost:[F

.field tmpPointPre:[F

.field public width_f:F

.field widthor:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;FFLjava/lang/String;)V
    .locals 8

    .line 774
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->brightness:I

    .line 61
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->contrast:I

    .line 62
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saturation:I

    .line 63
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hue:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->gaussianBlurRadius:I

    .line 64
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    .line 65
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 68
    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 69
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->texturePortion:Landroid/graphics/RectF;

    .line 70
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureInRot:I

    .line 71
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipH:Z

    .line 72
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipV:Z

    const/16 v2, 0xa

    .line 73
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureScale:I

    .line 74
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureMaintainAspect:Z

    const/4 v5, 0x1

    .line 76
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskIn:Z

    .line 77
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    .line 78
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    .line 79
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    .line 80
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    .line 81
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierShapeBundle:Landroid/os/Bundle;

    .line 82
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    .line 83
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->arrowDataBundle:Landroid/os/Bundle;

    .line 85
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    const/high16 v6, 0x3f800000    # 1.0f

    .line 86
    iput v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderScaleF:F

    .line 87
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    .line 88
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    .line 99
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    .line 100
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->circularCrop:Z

    .line 101
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    .line 110
    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    .line 112
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const/16 v3, 0x64

    .line 117
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacity:I

    .line 118
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacityShadowInclude:Z

    .line 119
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationX:I

    .line 120
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationY:I

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 121
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->floatPrecision:F

    .line 123
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayEnabled:Z

    .line 124
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayFillType:I

    .line 125
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/high16 v3, -0x10000

    .line 126
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayColor:I

    .line 128
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x43960000    # 300.0f

    .line 132
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 133
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    const/4 v3, 0x4

    .line 135
    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->smallBallRadius:F

    .line 136
    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bigBallRadius:F

    .line 138
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 139
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_shadow:Landroid/graphics/Bitmap;

    .line 140
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_inner_shadow:Landroid/graphics/Bitmap;

    .line 141
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_emboss:Landroid/graphics/Bitmap;

    .line 142
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    .line 143
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 145
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossEnabled:Z

    const/16 v3, 0x5a

    .line 146
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossLightAngle:I

    const/16 v3, 0x50

    .line 147
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossIntensity:I

    const/16 v7, 0x46

    .line 148
    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossAmbient:I

    const/16 v7, 0x14

    .line 149
    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossHardness:I

    const/16 v7, 0x28

    .line 150
    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossBevel:I

    .line 154
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    .line 155
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDViewType:I

    const/16 v7, 0x19

    .line 156
    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepth:I

    .line 157
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthFillType:I

    const v7, -0xffff01

    .line 158
    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthColorFill:I

    .line 159
    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 160
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthColorAutomatic:Z

    const/16 v7, 0x1e

    .line 161
    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthDarken:I

    .line 162
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDQuality:I

    .line 163
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDStokeInclude:Z

    const/16 v7, 0x2d

    .line 164
    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDObliqueAngle:I

    .line 165
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingEnabled:Z

    .line 166
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingIntensity:I

    .line 167
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingSpecularHardness:I

    .line 168
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingShadow:I

    .line 170
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_enabled:Ljava/lang/Boolean;

    const/high16 v3, 0x41200000    # 10.0f

    .line 171
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_radius:F

    .line 172
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dx:I

    .line 173
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dy:I

    const/high16 v3, -0x1000000

    .line 174
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_color:I

    .line 175
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_padding:I

    .line 177
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_enabled:Ljava/lang/Boolean;

    .line 178
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_radius:I

    .line 179
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dx:I

    .line 180
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dy:I

    .line 181
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_color:I

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelected:Landroid/graphics/Paint;

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandles:Landroid/graphics/Paint;

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    .line 198
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resizor:Landroid/graphics/PointF;

    .line 199
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->widthor:Landroid/graphics/PointF;

    .line 200
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->heightor:Landroid/graphics/PointF;

    .line 201
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    .line 204
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    .line 211
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    .line 213
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectiveEnabled:Z

    .line 214
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    .line 215
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    .line 216
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    .line 217
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    .line 218
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorEnabled:Z

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    .line 220
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorBlur:I

    .line 221
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    .line 222
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    const/4 v0, 0x2

    .line 223
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    const-string v2, "0"

    .line 707
    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    .line 710
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    .line 711
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->locked:Z

    .line 712
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpHidden:Z

    .line 968
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPre:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPost:[F

    .line 775
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->init()V

    .line 777
    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    .line 778
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    .line 779
    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 780
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setWillNotDraw(Z)V

    .line 781
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setDrawingCacheEnabled(Z)V

    .line 783
    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 784
    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    .line 786
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 8

    .line 791
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->brightness:I

    .line 61
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->contrast:I

    .line 62
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saturation:I

    .line 63
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hue:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->gaussianBlurRadius:I

    .line 64
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    .line 65
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 68
    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 69
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->texturePortion:Landroid/graphics/RectF;

    .line 70
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureInRot:I

    .line 71
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipH:Z

    .line 72
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipV:Z

    const/16 v2, 0xa

    .line 73
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureScale:I

    .line 74
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureMaintainAspect:Z

    const/4 v5, 0x1

    .line 76
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskIn:Z

    .line 77
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    .line 78
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    .line 79
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    .line 80
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    .line 81
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierShapeBundle:Landroid/os/Bundle;

    .line 82
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    .line 83
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->arrowDataBundle:Landroid/os/Bundle;

    .line 85
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    const/high16 v6, 0x3f800000    # 1.0f

    .line 86
    iput v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderScaleF:F

    .line 87
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    .line 88
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    .line 99
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    .line 100
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->circularCrop:Z

    .line 101
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    .line 110
    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    .line 112
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const/16 v3, 0x64

    .line 117
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacity:I

    .line 118
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacityShadowInclude:Z

    .line 119
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationX:I

    .line 120
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationY:I

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 121
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->floatPrecision:F

    .line 123
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayEnabled:Z

    .line 124
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayFillType:I

    .line 125
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/high16 v3, -0x10000

    .line 126
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayColor:I

    .line 128
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x43960000    # 300.0f

    .line 132
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 133
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    const/4 v3, 0x4

    .line 135
    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->smallBallRadius:F

    .line 136
    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bigBallRadius:F

    .line 138
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 139
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_shadow:Landroid/graphics/Bitmap;

    .line 140
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_inner_shadow:Landroid/graphics/Bitmap;

    .line 141
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_emboss:Landroid/graphics/Bitmap;

    .line 142
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    .line 143
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 145
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossEnabled:Z

    const/16 v1, 0x5a

    .line 146
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossLightAngle:I

    const/16 v1, 0x50

    .line 147
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossIntensity:I

    const/16 v3, 0x46

    .line 148
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossAmbient:I

    const/16 v3, 0x14

    .line 149
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossHardness:I

    const/16 v3, 0x28

    .line 150
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossBevel:I

    .line 154
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    .line 155
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDViewType:I

    const/16 v3, 0x19

    .line 156
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepth:I

    .line 157
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthFillType:I

    const v3, -0xffff01

    .line 158
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthColorFill:I

    .line 159
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 160
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthColorAutomatic:Z

    const/16 v3, 0x1e

    .line 161
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthDarken:I

    .line 162
    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDQuality:I

    .line 163
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDStokeInclude:Z

    const/16 v3, 0x2d

    .line 164
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDObliqueAngle:I

    .line 165
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingEnabled:Z

    .line 166
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingIntensity:I

    .line 167
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingSpecularHardness:I

    .line 168
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingShadow:I

    .line 170
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_enabled:Ljava/lang/Boolean;

    const/high16 v1, 0x41200000    # 10.0f

    .line 171
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_radius:F

    .line 172
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dx:I

    .line 173
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dy:I

    const/high16 v1, -0x1000000

    .line 174
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_color:I

    .line 175
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_padding:I

    .line 177
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_enabled:Ljava/lang/Boolean;

    .line 178
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_radius:I

    .line 179
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dx:I

    .line 180
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dy:I

    .line 181
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_color:I

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelected:Landroid/graphics/Paint;

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandles:Landroid/graphics/Paint;

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    .line 198
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resizor:Landroid/graphics/PointF;

    .line 199
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->widthor:Landroid/graphics/PointF;

    .line 200
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->heightor:Landroid/graphics/PointF;

    .line 201
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    .line 204
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    .line 211
    iput-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    .line 213
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectiveEnabled:Z

    .line 214
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    .line 215
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    .line 216
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    .line 217
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    .line 218
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorEnabled:Z

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    .line 220
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorBlur:I

    .line 221
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    .line 222
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    const/4 v0, 0x2

    .line 223
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    const-string v1, "0"

    .line 707
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    .line 710
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    .line 711
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->locked:Z

    .line 712
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpHidden:Z

    .line 968
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPre:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPost:[F

    .line 792
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->init()V

    if-nez p3, :cond_1

    const-string v0, "shapeReference"

    .line 793
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    goto :goto_1

    .line 794
    :cond_1
    :goto_0
    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    .line 798
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setWillNotDraw(Z)V

    .line 799
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setDrawingCacheEnabled(Z)V

    .line 801
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mMatrix:Landroid/graphics/Matrix;

    .line 803
    invoke-virtual {p0, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyBundle(Landroid/os/Bundle;Z)V

    return-void
.end method

.method private MakeTransparent(Landroid/graphics/Bitmap;)V
    .locals 21

    .line 1151
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1152
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 1153
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 1154
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_2

    mul-int v3, v1, v8

    add-int/2addr v3, v2

    .line 1161
    aget v4, v10, v3

    move-object/from16 v7, p0

    .line 1166
    iget-object v5, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    .line 1167
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v15

    .line 1168
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 1169
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 1170
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 1172
    iget v11, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v16

    .line 1173
    iget v11, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v17

    .line 1174
    iget v11, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    .line 1175
    iget v11, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    iget v6, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    mul-int v6, v6, v11

    move-object/from16 v11, p0

    move v0, v12

    move v12, v15

    move/from16 v19, v13

    move v13, v14

    move-object/from16 v20, v5

    move v5, v14

    move/from16 v14, v19

    move v7, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    .line 1177
    invoke-direct/range {v11 .. v17}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorDist2(IIIIII)I

    move-result v11

    if-gt v11, v6, :cond_0

    int-to-float v4, v11

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 1179
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v4, v19

    .line 1180
    invoke-static {v0, v7, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    move v4, v0

    :cond_0
    move-object/from16 v7, p0

    move-object/from16 v5, v20

    goto :goto_2

    .line 1184
    :cond_1
    aput v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 1187
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private applyAlphaToPaint(Landroid/graphics/Paint;)V
    .locals 2

    .line 563
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacity:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 564
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public static applyBlend(Landroid/graphics/Paint;I)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    sget-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    sget-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    sget-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    sget-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xb

    if-ne p1, v0, :cond_c

    sget-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xc

    if-ne p1, v0, :cond_d

    sget-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0xd

    if-ne p1, v0, :cond_e

    sget-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0xe

    if-ne p1, v0, :cond_f

    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0xf

    if-ne p1, v0, :cond_10

    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x10

    if-ne p1, v0, :cond_11

    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x11

    if-ne p1, v0, :cond_12

    sget-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x12

    if-ne p1, v0, :cond_13

    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x13

    if-ne p1, v0, :cond_14

    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_14
    const/16 v0, 0x14

    if-ne p1, v0, :cond_15

    sget-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_15
    const/16 v0, 0x15

    if-ne p1, v0, :cond_16

    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_16
    const/16 v0, 0x16

    if-ne p1, v0, :cond_17

    sget-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_17
    const/16 v0, 0x17

    if-ne p1, v0, :cond_18

    sget-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_18
    const/16 v0, 0x18

    if-ne p1, v0, :cond_19

    sget-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_19
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1a

    sget-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_1a
    sget-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void

    :cond_1b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1c

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_1c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1d

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_1d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_1e
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1f

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_1f
    const/16 v0, 0xa

    if-ne p1, v0, :cond_20

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_20
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private clipAngle(IZ)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1693
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisable3DRots:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRot:Z

    if-eqz p2, :cond_2

    :cond_1
    return v0

    .line 1696
    :cond_2
    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    if-eqz p2, :cond_5

    const/16 p2, 0x50

    const/16 v1, -0x50

    .line 1699
    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDViewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x1

    if-ne v2, v0, :cond_5

    if-le p1, p2, :cond_4

    const/16 p1, 0x50

    goto :goto_0

    :cond_4
    if-ge p1, v1, :cond_5

    const/16 p1, -0x50

    :cond_5
    :goto_0
    return p1
.end method

.method private colorDist(IIIIII)I
    .locals 26

    move/from16 v0, p1

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    .line 1192
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v0, v2

    move/from16 v6, p2

    int-to-double v6, v6

    const-wide v8, 0x3fe2c8b439581062L    # 0.587

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v6, v8

    add-double/2addr v4, v10

    move/from16 v10, p3

    int-to-double v10, v10

    const-wide v12, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v10, v12

    add-double/2addr v4, v14

    double-to-int v4, v4

    const-wide v14, 0x3fc5a1cac083126fL    # 0.169

    .line 1193
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v0, v14

    const-wide/high16 v18, 0x4060000000000000L    # 128.0

    sub-double v16, v18, v16

    const-wide v20, 0x3fd52f1a9fbe76c9L    # 0.331

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v22, v6, v20

    sub-double v16, v16, v22

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v24, v10, v22

    add-double v14, v16, v24

    double-to-int v5, v14

    .line 1194
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v22

    add-double v0, v0, v18

    const-wide v14, 0x3fdad0e560418937L    # 0.419

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v14

    sub-double/2addr v0, v6

    const-wide v6, 0x3fb4bc6a7ef9db23L    # 0.081

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v6

    sub-double/2addr v0, v10

    double-to-int v0, v0

    move/from16 v1, p4

    int-to-double v10, v1

    .line 1195
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v10

    move/from16 v1, p5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    add-double/2addr v2, v8

    move/from16 v1, p6

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v8

    add-double/2addr v2, v12

    double-to-int v1, v2

    .line 1196
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v2, 0x3fc5a1cac083126fL    # 0.169

    mul-double v2, v2, v10

    sub-double v2, v18, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v20, v20, v6

    sub-double v2, v2, v20

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v8, v22

    add-double/2addr v2, v12

    double-to-int v2, v2

    .line 1197
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v22

    add-double v10, v10, v18

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v14

    sub-double/2addr v10, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x3fb4bc6a7ef9db23L    # 0.081

    mul-double v8, v8, v6

    sub-double/2addr v10, v8

    double-to-int v3, v10

    sub-int/2addr v4, v1

    int-to-float v1, v4

    const v4, 0x3fb33333    # 1.4f

    mul-float v4, v4, v1

    mul-float v4, v4, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v1

    mul-float v2, v2, v1

    add-float/2addr v4, v2

    float-to-double v1, v4

    sub-int/2addr v0, v3

    int-to-double v3, v0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 1198
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v5

    double-to-int v0, v1

    return v0
.end method

.method private colorDist2(IIIIII)I
    .locals 2

    add-int v0, p1, p4

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-int/2addr p1, p4

    sub-int/2addr p2, p5

    sub-int/2addr p3, p6

    const/high16 p4, 0x43800000    # 256.0f

    div-float p5, v0, p4

    add-float/2addr p5, v1

    mul-int p1, p1, p1

    int-to-float p1, p1

    mul-float p5, p5, p1

    mul-int p2, p2, p2

    mul-int/lit8 p2, p2, 0x4

    int-to-float p1, p2

    add-float/2addr p5, p1

    const/high16 p1, 0x437f0000    # 255.0f

    sub-float/2addr p1, v0

    div-float/2addr p1, p4

    add-float/2addr p1, v1

    int-to-float p2, p3

    mul-float p1, p1, p2

    mul-float p1, p1, p2

    add-float/2addr p5, p1

    float-to-int p1, p5

    return p1
.end method

.method private geometryToBundle(FFFFI)Landroid/os/Bundle;
    .locals 3

    .line 2188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "8PDnq"

    const/4 v2, 0x1

    .line 2189
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2190
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    const-string v2, "shapeReference"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "shapeRotation"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int p1, p1

    const-string p5, "shapeX"

    .line 2192
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    float-to-int p1, p2

    const-string p2, "shapeY"

    .line 2193
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2194
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "shapeWidth"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "shapeHeight"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result p1

    const-string p2, "shapeOldContainerWidth"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2197
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result p1

    const-string p2, "shapeOldContainerHeight"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getBitmapBottomPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    .line 1649
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1650
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1651
    new-array v10, v8, [I

    add-int/lit8 v0, v9, -0x1

    move v11, v0

    :goto_0
    const/4 v12, 0x0

    if-ltz v11, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v5, v11

    move v6, v8

    .line 1653
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1654
    array-length v0, v10

    :goto_1
    if-ge v12, v0, :cond_1

    aget v1, v10, v12

    .line 1655
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v9, v11

    return v9

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_2
    return v12
.end method

.method private static getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2103
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 2108
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2109
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2111
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2112
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBitmapTopPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    .line 1666
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1667
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1668
    new-array v10, v8, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v5, v12

    move v6, v8

    .line 1670
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1671
    array-length v0, v10

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, v10, v1

    .line 1672
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    return v12

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return v11
.end method

.method private getCurr3DEmbossEffect()Landroid/graphics/EmbossMaskFilter;
    .locals 9

    .line 1862
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossLightAngle:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1863
    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingEnabled:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/EmbossMaskFilter;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 1864
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-float v5, v7

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, v3, v4

    const/4 v0, 0x2

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingIntensity:I

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    aput v1, v3, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingShadow:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingSpecularHardness:I

    int-to-float v1, v1

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v1, v1, v5

    div-float/2addr v1, v4

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private getCurrEmbossEffect(F)Landroid/graphics/EmbossMaskFilter;
    .locals 9

    .line 1854
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossLightAngle:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1855
    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossEnabled:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/EmbossMaskFilter;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 1856
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-float v5, v7

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, v3, v4

    const/4 v0, 0x2

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossIntensity:I

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    aput v1, v3, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossAmbient:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossHardness:I

    int-to-float v1, v1

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v1, v1, v5

    div-float/2addr v1, v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossBevel:I

    int-to-float v5, v5

    mul-float v5, v5, p1

    const/high16 p1, 0x41c80000    # 25.0f

    mul-float v5, v5, p1

    div-float/2addr v5, v4

    invoke-direct {v2, v3, v0, v1, v5}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private init()V
    .locals 5

    .line 752
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    const/4 v2, -0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 754
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelected:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 755
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelected:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 756
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/16 v4, 0x46

    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 757
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 758
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 759
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandles:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 760
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 762
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 763
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    const-string v1, "#4db8f3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 764
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandles:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 765
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 766
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 767
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 768
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 769
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 770
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 771
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private invalidateParent()V
    .locals 2

    .line 2487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 2488
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2489
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->invalidate()V

    :cond_0
    return-void
.end method

.method private loadTexture()V
    .locals 7

    .line 383
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v0, v1, :cond_2

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 386
    aget v2, v0, v1

    int-to-float v2, v2

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->texturePortion:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 387
    aget v3, v0, v2

    int-to-float v3, v3

    iget-boolean v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->texturePortion:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    :cond_1
    mul-float v3, v3, v5

    float-to-int v3, v3

    aput v3, v0, v2

    .line 388
    aget v1, v0, v1

    aget v0, v0, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v1, v0, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->texturePortion:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureInRot:I

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipH:Z

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipV:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->cropRotBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    :cond_2
    :goto_1
    return-void
.end method

.method private makeMeVisible()V
    .locals 1

    const/4 v0, 0x0

    .line 2047
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V

    .line 2048
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V

    return-void
.end method

.method private recreateBezierMaskPath()V
    .locals 4

    .line 1125
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "BcR2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    .line 1127
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1128
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1129
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1130
    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 1132
    :cond_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getPathFromStringArrayList(Ljava/util/ArrayList;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private rotateShape(FZ)V
    .locals 1

    .line 921
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->normalizeAngle(F)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    if-eqz p2, :cond_0

    .line 922
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->snapAngle(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    :goto_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    .line 923
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    .line 924
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRot:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    .line 925
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setRotation(F)V

    .line 926
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    if-eqz p2, :cond_2

    .line 927
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotationListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotationListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    invoke-interface {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;->rotated(I)V

    :cond_2
    return-void
.end method

.method private updateHandlePos()V
    .locals 5

    .line 931
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resizor:Landroid/graphics/PointF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 932
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 933
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    mul-float v1, v1, v2

    const/4 v3, 0x0

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 934
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 935
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->widthor:Landroid/graphics/PointF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 936
    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 937
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->heightor:Landroid/graphics/PointF;

    div-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 938
    iput v2, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method


# virtual methods
.method public EmbossImage(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    cmpl-float v4, p2, v2

    if-lez v4, :cond_1

    int-to-float v4, v0

    div-float/2addr v4, p2

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v5, v1

    div-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4, v2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossImage(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x7

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iget v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossBevel:I

    int-to-float v7, v7

    const v8, 0x3e19999a    # 0.15f

    mul-float v7, v7, v8

    mul-float v7, v7, p2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    new-instance v8, Landroid/graphics/BlurMaskFilter;

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v7, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurr3DEmbossEffect()Landroid/graphics/EmbossMaskFilter;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrEmbossEffect(F)Landroid/graphics/EmbossMaskFilter;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, p3, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, p1, v7, v7, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p2, v4, v7, v7, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3
.end method

.method public OnCustomTouchEvent(Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z
    .locals 20

    move-object/from16 v6, p0

    .line 972
    iget-boolean v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->locked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 975
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRawX()F

    move-result v0

    .line 976
    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRawY()F

    move-result v2

    .line 977
    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRelX()F

    move-result v3

    .line 978
    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRelY()F

    move-result v4

    .line 980
    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getActionMasked()I

    move-result v5

    const/4 v7, 0x4

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-eqz v5, :cond_e

    if-eq v5, v12, :cond_a

    if-eq v5, v10, :cond_1

    if-eq v5, v9, :cond_a

    goto/16 :goto_5

    .line 1026
    :cond_1
    iget v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    if-eq v5, v11, :cond_2

    iget v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    if-nez v5, :cond_2

    sget-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v13

    add-float/2addr v3, v13

    invoke-virtual {v5, v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    .line 1028
    :cond_2
    iget v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    if-eq v5, v11, :cond_3

    iget v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    if-nez v5, :cond_3

    sget-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v13

    add-float/2addr v4, v13

    invoke-virtual {v5, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    .line 1030
    :cond_3
    iget v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    const/high16 v13, 0x3f000000    # 0.5f

    if-ne v5, v7, :cond_4

    .line 1031
    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->previousX:F

    sub-float v1, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getZoomFactor()F

    move-result v3

    div-float/2addr v1, v3

    iput v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dX:F

    .line 1032
    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->previousY:F

    sub-float v1, v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getZoomFactor()F

    move-result v3

    div-float/2addr v1, v3

    iput v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dY:F

    .line 1033
    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->previousX:F

    .line 1034
    iput v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->previousY:F

    .line 1035
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v1

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dX:F

    add-float/2addr v1, v2

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v2, v2, v13

    invoke-virtual {v0, v1, v2, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FFZ)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V

    .line 1036
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v1

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dY:F

    add-float/2addr v1, v2

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v2, v2, v13

    invoke-virtual {v0, v1, v2, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FFZ)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V

    goto/16 :goto_5

    :cond_4
    if-ne v5, v11, :cond_5

    .line 1038
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v13, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v14, v0, Landroid/graphics/PointF;->y:F

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    div-float v15, v0, v8

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    div-float v16, v0, v8

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-static/range {v13 .. v18}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getAngleThreePoints(FFFFFF)F

    move-result v0

    .line 1039
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_19

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-direct {v6, v1, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(FZ)V

    goto/16 :goto_5

    :cond_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1041
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v16, v0, v13

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v17, v0, v13

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPre:[F

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    .line 1042
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    if-nez v0, :cond_7

    .line 1043
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    int-to-float v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1044
    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    int-to-float v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v3, v0, v2

    .line 1046
    iget v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    div-float v7, v4, v5

    cmpl-float v3, v3, v7

    if-lez v3, :cond_6

    div-float/2addr v2, v5

    goto :goto_0

    :cond_6
    div-float v2, v0, v4

    .line 1050
    :goto_0
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v0, v0, v2

    iget v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 1051
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v0, v0, v2

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    goto :goto_1

    :cond_7
    if-ne v0, v10, :cond_8

    .line 1053
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    int-to-float v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    goto :goto_1

    :cond_8
    if-ne v0, v9, :cond_9

    .line 1055
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    int-to-float v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    .line 1058
    :cond_9
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->requestLayout()V

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1061
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v16, v0, v13

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v17, v0, v13

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPost:[F

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v0

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPre:[F

    aget v2, v2, v1

    iget-object v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPost:[F

    aget v1, v3, v1

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v0

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPre:[F

    aget v1, v1, v12

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpPointPost:[F

    aget v2, v2, v12

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V

    goto/16 :goto_5

    .line 1069
    :cond_a
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldPosX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldPosY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldWidth:F

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldHeight:F

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldAngle:I

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    if-eq v0, v1, :cond_d

    .line 1072
    :cond_b
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    if-ne v0, v11, :cond_c

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotationListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    if-eqz v0, :cond_c

    .line 1073
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotationListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;->rotated(I)V

    goto :goto_2

    .line 1074
    :cond_c
    iget-object v7, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;

    if-eqz v7, :cond_d

    .line 1075
    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldPosX:F

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldPosY:F

    iget v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldWidth:F

    iget v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldHeight:F

    iget v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldAngle:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->geometryToBundle(FFFFI)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;->onEvent_ShapeGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_d
    :goto_2
    const/4 v0, -0x1

    .line 1079
    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    goto/16 :goto_5

    :cond_e
    const/4 v5, 0x0

    .line 982
    iput v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dX:F

    .line 983
    iput v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dY:F

    .line 984
    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->previousX:F

    .line 985
    iput v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->previousY:F

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v0

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v2

    iput v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldPosX:F

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v2

    iput v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldPosY:F

    .line 992
    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iput v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldWidth:F

    .line 993
    iget v13, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    iput v13, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldHeight:F

    .line 994
    iget v14, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    iput v14, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->oldAngle:I

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_f

    cmpg-float v2, v4, v13

    if-gtz v2, :cond_f

    cmpl-float v2, v4, v5

    if-ltz v2, :cond_f

    cmpl-float v2, v3, v5

    if-ltz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_3

    :cond_f
    const/4 v2, 0x0

    .line 997
    :goto_3
    iget-boolean v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    if-nez v5, :cond_10

    if-nez v2, :cond_10

    return v1

    .line 999
    :cond_10
    iget-object v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resizor:Landroid/graphics/PointF;

    invoke-virtual {v6, v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dist(FFLandroid/graphics/PointF;)F

    move-result v5

    cmpg-float v13, v5, v0

    if-gtz v13, :cond_11

    .line 1000
    iput v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    goto :goto_4

    .line 1001
    :cond_11
    iget-object v13, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->widthor:Landroid/graphics/PointF;

    invoke-virtual {v6, v3, v4, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dist(FFLandroid/graphics/PointF;)F

    move-result v13

    cmpg-float v14, v13, v0

    if-gtz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->enoughRoomWidthor()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1002
    iput v10, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    goto :goto_4

    .line 1003
    :cond_12
    iget-object v14, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->heightor:Landroid/graphics/PointF;

    invoke-virtual {v6, v3, v4, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dist(FFLandroid/graphics/PointF;)F

    move-result v14

    cmpg-float v15, v14, v0

    if-gtz v15, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->enoughRoomHeightor()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1004
    iput v9, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    goto :goto_4

    :cond_13
    if-eqz v2, :cond_14

    .line 1006
    iput v7, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    goto :goto_4

    :cond_14
    mul-float v0, v0, v8

    cmpg-float v2, v5, v0

    if-gtz v2, :cond_15

    .line 1008
    iput v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    goto :goto_4

    .line 1009
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->enoughRoomWidthor()Z

    move-result v2

    if-eqz v2, :cond_16

    cmpg-float v2, v13, v0

    if-gtz v2, :cond_16

    .line 1010
    iput v10, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    goto :goto_4

    .line 1011
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->enoughRoomHeightor()Z

    move-result v2

    if-eqz v2, :cond_17

    cmpg-float v2, v14, v0

    if-gtz v2, :cond_17

    .line 1012
    iput v9, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    goto :goto_4

    .line 1013
    :cond_17
    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    invoke-virtual {v6, v3, v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dist(FFLandroid/graphics/PointF;)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1a

    .line 1014
    iput v11, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    .line 1019
    :goto_4
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;

    if-eqz v0, :cond_18

    iget-boolean v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    if-nez v1, :cond_18

    .line 1020
    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;->onEvent_SelectShape(I)V

    .line 1023
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    :cond_19
    :goto_5
    return v12

    :cond_1a
    :goto_6
    return v1
.end method

.method public UnFreezeFullRedraw()V
    .locals 1

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->frozen:Z

    .line 343
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->requestLayout()V

    .line 344
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;
    .locals 5

    .line 1228
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float p2, p2

    mul-float v1, v1, p2

    float-to-int v1, v1

    iget v3, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v2

    int-to-float p3, p3

    mul-float v3, v3, p3

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v2

    mul-float v4, v4, p2

    float-to-int p2, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v2

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-direct {v0, v1, v3, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public applyBundle(Landroid/os/Bundle;Z)V
    .locals 12

    .line 2320
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->freezeFullRedraw()V

    const-string v0, "shapeOldContainerWidth"

    .line 2322
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "shapeOldContainerHeight"

    .line 2323
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2325
    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v3

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const-string v1, "shapeWidth"

    .line 2330
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v3, "shapeHeight"

    .line 2331
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float v1, v1, v2

    .line 2333
    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v3, v3, v0

    .line 2334
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    int-to-float v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    if-nez p2, :cond_1

    const-string v1, "shapeX"

    .line 2337
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V

    const-string v1, "shapeY"

    .line 2338
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V

    :cond_1
    const-string v0, "shapeRotation"

    .line 2341
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(I)V

    const-string v0, "8PDnq"

    .line 2343
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const-string v2, "objectHidden"

    .line 2345
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    if-nez p2, :cond_3

    const-string p2, "objectLocked"

    .line 2346
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->locked:Z

    const-string p2, "shapeShadowEnabled"

    .line 2348
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string p2, "shapeShadowRadius"

    .line 2349
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string p2, "shapeShadowDx"

    .line 2350
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string p2, "shapeShadowDy"

    .line 2351
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string p2, "shapeShadowColor"

    .line 2352
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object v2, p0

    .line 2348
    invoke-virtual/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShadow(ZFIII)V

    const-string p2, "shapeInnerEnabled"

    .line 2354
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string p2, "shapeInnerRadius"

    .line 2355
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string p2, "shapeInnerDx"

    .line 2356
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string p2, "shapeInnerDy"

    .line 2357
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string p2, "shapeInnerColor"

    .line 2358
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2354
    invoke-virtual/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setInnerShadow(ZIIII)V

    .line 2360
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isEmbossEnabled()Z

    move-result p2

    const-string v2, "shapeEmbossEnabled"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2361
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossLightAngle()I

    move-result p2

    const-string v2, "shapeEmbossLightAngle"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2362
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossIntensity()I

    move-result p2

    const-string v3, "shapeEmbossIntensity"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2363
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossAmbient()I

    move-result p2

    const-string v3, "shapeEmbossAmbient"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2364
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossHardness()I

    move-result p2

    const-string v3, "shapeEmbossHardness"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2365
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossBevel()I

    move-result p2

    const-string v3, "shapeEmbossBevel"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object v3, p0

    .line 2360
    invoke-virtual/range {v3 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEmboss(ZIIIII)V

    const-string p2, "shapeRotationX"

    .line 2367
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v3, "shapeRotationY"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, p2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotate3d(II)V

    const-string p2, "shapeColorOverlayEnabled"

    .line 2368
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v3, "sCOfT"

    .line 2369
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "shapeColorOverlayColor"

    .line 2370
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v7, "sCOG"

    .line 2371
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {p0, p2, v3, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setColorOverlay(ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 2372
    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    const-string v3, "shapeStrokeEnabled"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    const-string v5, "shapeStrokeWidth"

    .line 2373
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    const-string v6, "shapeStrokeColor"

    .line 2374
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2372
    invoke-virtual {p0, p2, v3, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setStroke(ZII)V

    .line 2375
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeOpacity()I

    move-result p2

    const-string v3, "shapeOpacity"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShapeOpacity(I)V

    .line 2376
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isShapeOpacityShadowInclude()Z

    move-result p2

    const-string v3, "shapeOpacityShadowInclude"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShapeOpacityShadowInclude(Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getGaussianBlurRadius()I

    move-result p2

    const-string v3, "shapeGaussianBlurRadius"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setGaussianBlurRadius(I)V

    const-string v3, "shapeBlendMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBlendMode(I)V

    const-string p2, "shapeRemoveColorCT"

    .line 2379
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 2380
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_3

    :cond_4
    const-string p2, "shapeRemoveColorColor"

    .line 2381
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "shapeRemoveColorTolerance"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    .line 2382
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2383
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2384
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v6

    goto :goto_3

    :cond_5
    move-object p2, v5

    .line 2387
    :goto_3
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isRemoveColorEnabled()Z

    move-result v3

    const-string v6, "shapeRemoveColorEnabled"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2388
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRemoveColorBlur()I

    move-result v6

    const-string v7, "shapeRemoveColorBlur"

    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2387
    invoke-virtual {p0, v3, v6, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setRemoveColorOptionsPacked(ZILjava/util/ArrayList;)V

    .line 2391
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isPerspectiveEnabled()Z

    move-result p2

    const-string v3, "shapePerspectiveEnabled"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setPerspectiveEnabled(Z)V

    .line 2393
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isPerspectiveEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2394
    new-instance p2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v3, v3, v6

    float-to-int v3, v3

    const-string v7, "shapePerspectiveP1X"

    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float v7, v7, v6

    float-to-int v7, v7

    const-string v8, "shapePerspectiveP1Y"

    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-direct {p2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float v7, v7, v6

    float-to-int v7, v7

    const-string v8, "shapePerspectiveP2X"

    .line 2395
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v8, v8, v6

    float-to-int v8, v8

    const-string v9, "shapePerspectiveP2Y"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    invoke-direct {v3, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v6

    float-to-int v8, v8

    const-string v9, "shapePerspectiveP3X"

    .line 2396
    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget-object v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float v9, v9, v6

    float-to-int v9, v9

    const-string v10, "shapePerspectiveP3Y"

    invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    mul-float v9, v9, v6

    float-to-int v9, v9

    const-string v10, "shapePerspectiveP4X"

    .line 2397
    invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    iget-object v10, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float v10, v10, v6

    float-to-int v10, v10

    const-string v11, "shapePerspectiveP4Y"

    invoke-virtual {p1, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2394
    invoke-virtual {p0, p2, v3, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2401
    :cond_6
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDEnabled()Z

    move-result p2

    const-string v3, "shapeThreeDEnabled"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->set3dEnabled(Z)V

    .line 2403
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDEnabled()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 2404
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDViewType()I

    move-result p2

    const-string v3, "shapeThreeDViewType"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->set3dViewType(I)V

    const-string p2, "shapeThreeDDepth"

    .line 2405
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 2406
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthDarken()I

    move-result v3

    const-string v6, "shapeThreeDDepthDarken"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2407
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDQuality()I

    move-result v6

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDStokeInclude()Z

    move-result v7

    const-string v8, "shapeThreeDStokeInclude"

    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2405
    invoke-virtual {p0, p2, v3, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->set3dDepth(IIIZ)V

    const-string p2, "shapeThreeDDepthGradientFillV2"

    .line 2409
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    .line 2412
    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getType()I

    move-result v3

    const-string v6, "shapeThreeDDepthGradientFillType"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2413
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getStartColor()I

    move-result v6

    const-string v7, "shapeThreeDDepthGradientFillStart"

    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2414
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getEndColor()I

    move-result v7

    const-string v8, "shapeThreeDDepthGradientFillEnd"

    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p2, v3, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    goto :goto_4

    .line 2416
    :cond_7
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v3, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object p2, v3

    .line 2418
    :goto_4
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthFillType()I

    move-result v3

    const-string v6, "shapeThreeDDepthFillType"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2419
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthColorFill()I

    move-result v6

    const-string v7, "shapeThreeDDepthColorFill"

    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2421
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDDepthColorAutomatic()Z

    move-result v7

    const-string v8, "shapeThreeDDepthColorAutomatic"

    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2418
    invoke-virtual {p0, v3, v6, p2, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->set3dDepthColor(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    .line 2423
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDLightingEnabled()Z

    move-result p2

    const-string v3, "shapeThreeDLightingEnabled"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2424
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossLightAngle()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2425
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingIntensity()I

    move-result p2

    const-string v2, "shapeThreeDLightingIntensity"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2426
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingShadow()I

    move-result p2

    const-string v2, "shapeThreeDLightingShadow"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2427
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingSpecularHardness()I

    move-result p2

    const-string v2, "shapeThreeDLightingSpecularHardness"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    move-object v6, p0

    .line 2423
    invoke-virtual/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->set3dLighting(ZIIII)V

    const-string p2, "ShpThObAng"

    .line 2429
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_8

    const-string p2, "shapeThreeDOffsetX"

    .line 2431
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    int-to-double v2, p2

    const-string p2, "shapeThreeDOffsetY"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    int-to-double v6, p2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-int p2, v2

    .line 2433
    :cond_8
    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->set3dObliqueAngle(I)V

    .line 2436
    :cond_9
    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;

    const-string v2, "J4lv1"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p2, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;-><init>(Landroid/os/Bundle;)V

    .line 2437
    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const-string v2, "sDFkd3"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->getRot()I

    move-result v8

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->getPortion()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipH()Z

    move-result v10

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipV()Z

    move-result v11

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewTextureSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V

    const-string p2, "5cAUm"

    .line 2438
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTextureMaintainAspect(Z)V

    const/16 p2, 0xa

    const-string v1, "M3XGT"

    .line 2439
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTextureScale(I)V

    const-string p2, "shapeImageSrcV2"

    .line 2441
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "shapeImageShapeType"

    if-nez p2, :cond_a

    const-string p2, "shapeImageFileType"

    .line 2443
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "shapeImageFileSrc"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewImgSrc(ILjava/lang/String;I)V

    goto :goto_5

    .line 2445
    :cond_a
    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const-string v2, "shapeImageSrc"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p2, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewImgSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;I)V

    const-string p2, "shapeImageCropInfo"

    .line 2446
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewImgCropFromBundle(Landroid/os/Bundle;)V

    :goto_5
    const-string p2, "shapeBmpErMa"

    .line 2449
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 2450
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-direct {v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;-><init>(Landroid/os/Bundle;)V

    goto :goto_6

    :cond_b
    move-object v1, v5

    :goto_6
    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBmpPathMasks(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;)V

    const-string p2, "DtF6Vu"

    .line 2452
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBezierShapeData(Landroid/os/Bundle;)V

    const-string p2, "cowrL"

    .line 2453
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setArrowData(Landroid/os/Bundle;)V

    const-string p2, "qUDmYrz"

    .line 2454
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShapeData(Landroid/os/Bundle;)V

    const-string p2, "mergedData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mergedDataBundle:Landroid/os/Bundle;

    const-string p2, "sBmE43"

    .line 2456
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    const-string p2, "sBmI9O"

    .line 2457
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBezierMaskIn(Z)V

    const-string p2, "sBmD21"

    .line 2458
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBezierMaskBundle(Landroid/os/Bundle;)V

    .line 2459
    iput-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    const-string p2, "DL4VOEC"

    .line 2460
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "Erasi"

    .line 2461
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "wYdWdLnz"

    .line 2462
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "gnnMUtYI"

    .line 2463
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2460
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    .line 2465
    :cond_c
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->UnFreezeFullRedraw()V

    return-void
.end method

.method applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V
    .locals 3

    .line 1681
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1683
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1684
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1686
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public applyEffects()V
    .locals 4

    .line 459
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->brightness:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->contrast:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saturation:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hue:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 460
    :cond_1
    :goto_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->brightness:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->contrast:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saturation:I

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hue:I

    invoke-static {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/ColorFilterGenerator;->adjustColor(IIII)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currColorFilter:Landroid/graphics/ColorFilter;

    .line 464
    :goto_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public blurMask(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1208
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1209
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1210
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1211
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1212
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1213
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1214
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float p2, p2

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, p2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1215
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1216
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1217
    invoke-virtual {v2, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public compareCrop(Landroid/graphics/RectF;IZZZ)Z
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isBitmapCircularCrop()Z

    move-result p1

    if-ne p1, p3, :cond_0

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    if-ne p1, p4, :cond_0

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    if-ne p1, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1146
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1147
    invoke-super {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method dist(FFLandroid/graphics/PointF;)F
    .locals 2

    .line 1142
    iget v0, p3, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    iget v1, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    mul-float v0, v0, p1

    iget p1, p3, Landroid/graphics/PointF;->y:F

    sub-float p1, p2, p1

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method divideVector(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 2

    .line 1690
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    div-float/2addr v1, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method drawHandles(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2063
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resizor:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resizor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2064
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resizor:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resizor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandles:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2067
    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2068
    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotator:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBigRadius()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandleRotate:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2071
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->enoughRoomWidthor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2072
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->widthor:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->widthor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->smallBallRadius:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2073
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->widthor:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->widthor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->smallBallRadius:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandles:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2076
    :cond_2
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->enoughRoomHeightor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2077
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->heightor:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->heightor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->smallBallRadius:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2078
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->heightor:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->heightor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->smallBallRadius:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintHandles:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public editSrc(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V
    .locals 1

    .line 808
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    .line 809
    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 810
    new-instance p1, Landroid/graphics/RectF;

    const/high16 p2, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 811
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->circularCrop:Z

    const/4 p1, 0x0

    .line 813
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    .line 815
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpMasks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    if-eqz p3, :cond_0

    .line 818
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    int-to-float p1, p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 819
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    int-to-float p1, p1

    invoke-static {p5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    .line 820
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->requestLayout()V

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method enoughRoomHeightor()Z
    .locals 3

    .line 950
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bigBallRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method enoughRoomWidthor()Z
    .locals 3

    .line 947
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bigBallRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public freezeFullRedraw()V
    .locals 1

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->frozen:Z

    return-void
.end method

.method public fullRedraw()V
    .locals 1

    const/4 v0, 0x1

    .line 1138
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    .line 1139
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public gaussianBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    const/16 v0, 0x19

    if-le p2, v0, :cond_0

    const/16 p2, 0x19

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    int-to-float v1, v6

    div-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v7

    div-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p1, v1, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    int-to-float p2, p2

    invoke-virtual {v5, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v5, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-eq p2, v6, :cond_2

    invoke-static {v1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    :cond_3
    return-object p1
.end method

.method getBigRadius()F
    .locals 3

    .line 942
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 943
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bigBallRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    mul-float v1, v1, v0

    :goto_0
    return v1
.end method

.method public getBitmapInRotation()I
    .locals 1

    .line 612
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    return v0
.end method

.method public getBitmapPortion(Z)Landroid/graphics/RectF;
    .locals 1

    if-eqz p1, :cond_0

    .line 608
    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    :goto_0
    return-object p1
.end method

.method getBitmapToDraw()Landroid/graphics/Bitmap;
    .locals 2

    .line 1849
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->gaussianBlurRadius:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->gaussianBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBmpPathMasks()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpMasks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBoundsRect()Landroid/graphics/RectF;
    .locals 6

    .line 242
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getBrightness()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->brightness:I

    return v0
.end method

.method public getColorAt(II)I
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->validImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getColorOverlayColor()I
    .locals 1

    .line 827
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayColor:I

    return v0
.end method

.method public getColorOverlayFillType()I
    .locals 1

    .line 831
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayFillType:I

    return v0
.end method

.method public getColorOverlayGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getContrast()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->contrast:I

    return v0
.end method

.method public getCurrBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getCurrBitmapDimensions()[I
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 624
    new-array v2, v2, [I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    aput v0, v2, v1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    aput v1, v2, v0

    return-object v2

    .line 627
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v0

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v0, v3, :cond_2

    .line 628
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 629
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->isAssetFolder()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromAssets(Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v0

    return-object v0

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 638
    :catch_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public getEmbossAmbient()I
    .locals 1

    .line 1932
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossAmbient:I

    return v0
.end method

.method public getEmbossBevel()I
    .locals 1

    .line 1936
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossBevel:I

    return v0
.end method

.method public getEmbossHardness()I
    .locals 1

    .line 1944
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossHardness:I

    return v0
.end method

.method public getEmbossIntensity()I
    .locals 1

    .line 1948
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossIntensity:I

    return v0
.end method

.method public getEmbossLightAngle()I
    .locals 1

    .line 1952
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossLightAngle:I

    return v0
.end method

.method public getGaussianBlurRadius()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->gaussianBlurRadius:I

    return v0
.end method

.method public getHue()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hue:I

    return v0
.end method

.method public getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public getInnerShadowColor()I
    .locals 1

    .line 886
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_color:I

    return v0
.end method

.method public getInnerShadowEnabled()Z
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getInnerShadow_dx()I
    .locals 1

    .line 901
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dx:I

    return v0
.end method

.method public getInnerShadow_dy()I
    .locals 1

    .line 893
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dy:I

    return v0
.end method

.method public getInnerShadow_radius()I
    .locals 1

    .line 897
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_radius:I

    return v0
.end method

.method getOvalPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 7

    .line 1221
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1222
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1223
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int p1, v5

    int-to-float p1, p1

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1224
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method public getRemoveColorBlur()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorBlur:I

    return v0
.end method

.method public getRemoveColorsTolerances(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 472
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    return-object p1

    .line 474
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    .line 476
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method getRenderScaleF()F
    .locals 1

    .line 2021
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderScaleF:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getSaturation()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saturation:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 855
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_color:I

    return v0
.end method

.method public getShadowEnabled()Z
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getShadow_dx()I
    .locals 1

    .line 870
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dx:I

    return v0
.end method

.method public getShadow_dy()I
    .locals 1

    .line 862
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dy:I

    return v0
.end method

.method public getShadow_radius()I
    .locals 1

    .line 866
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_radius:F

    float-to-int v0, v0

    return v0
.end method

.method public getShapeHeight()F
    .locals 1

    .line 700
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    return v0
.end method

.method public getShapeOpacity()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacity:I

    return v0
.end method

.method public getShapeType()I
    .locals 1

    .line 1969
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    return v0
.end method

.method public getShapeWidth()F
    .locals 1

    .line 704
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    return v0
.end method

.method public getStrokeEnabled()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    return v0
.end method

.method public getStrokeRadius()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    return v0
.end method

.method public getTextRotationX()I
    .locals 1

    .line 1717
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationX:I

    return v0
.end method

.method public getTextRotationY()I
    .locals 1

    .line 1721
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationY:I

    return v0
.end method

.method public getTextureScale()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureScale:I

    return v0
.end method

.method public getTextureSrc()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public getThreeDDepth()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepth:I

    return v0
.end method

.method public getThreeDDepthColorFill()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthColorFill:I

    return v0
.end method

.method public getThreeDDepthDarken()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthDarken:I

    return v0
.end method

.method public getThreeDDepthFillType()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthFillType:I

    return v0
.end method

.method public getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getThreeDLightingIntensity()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingIntensity:I

    return v0
.end method

.method public getThreeDLightingShadow()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingShadow:I

    return v0
.end method

.method public getThreeDLightingSpecularHardness()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingSpecularHardness:I

    return v0
.end method

.method public getThreeDObliqueAngle()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDObliqueAngle:I

    return v0
.end method

.method public getThreeDQuality()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDQuality:I

    return v0
.end method

.method public getThreeDViewType()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDViewType:I

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    .line 673
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getZoomFactor()F

    move-result v0

    return v0
.end method

.method public hideTemp()V
    .locals 1

    .line 715
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 716
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setHidden(Z)V

    .line 717
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpHidden:Z

    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 2495
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->frozen:Z

    if-nez v0, :cond_0

    .line 2496
    invoke-super {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->invalidate()V

    .line 2497
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidateParent()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 2510
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->frozen:Z

    if-nez v0, :cond_0

    .line 2511
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->invalidate(IIII)V

    .line 2512
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidateParent()V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .line 2502
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->frozen:Z

    if-nez v0, :cond_0

    .line 2503
    invoke-super {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->invalidate(Landroid/graphics/Rect;)V

    .line 2504
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidateParent()V

    :cond_0
    return-void
.end method

.method invertVector(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 1688
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v1, v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float p1, p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public isBezierMaskEnabled()Z
    .locals 1

    .line 1098
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    return v0
.end method

.method public isBezierMaskIn()Z
    .locals 1

    .line 1094
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskIn:Z

    return v0
.end method

.method public isBitmapCircularCrop()Z
    .locals 1

    .line 616
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->circularCrop:Z

    return v0
.end method

.method public isColorOverlayEnabled()Z
    .locals 1

    .line 851
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayEnabled:Z

    return v0
.end method

.method public isEmbossEnabled()Z
    .locals 1

    .line 1940
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossEnabled:Z

    return v0
.end method

.method public isEmptySticker()Z
    .locals 2

    .line 1966
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "misc/empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v0

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlipHor()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    return v0
.end method

.method public isFlipVer()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 744
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 748
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->locked:Z

    return v0
.end method

.method isNotVisible()Z
    .locals 8

    .line 2024
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->safetyCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2028
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2029
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTop()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2030
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBottom()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 2031
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTop()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 2032
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBottom()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 2035
    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 2036
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 2037
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v3, v5, Landroid/graphics/Point;->y:I

    .line 2038
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPerspectiveEnabled()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectiveEnabled:Z

    return v0
.end method

.method public isRemoveColorEnabled()Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    return v0
.end method

.method public isShapeOpacityShadowInclude()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacityShadowInclude:Z

    return v0
.end method

.method public isTextureMaintainAspect()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureMaintainAspect:Z

    return v0
.end method

.method public isThreeDDepthColorAutomatic()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthColorAutomatic:Z

    return v0
.end method

.method public isThreeDEnabled()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    return v0
.end method

.method public isThreeDLightingEnabled()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingEnabled:Z

    return v0
.end method

.method public isThreeDStokeInclude()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDStokeInclude:Z

    return v0
.end method

.method loadResources()V
    .locals 15

    .line 1977
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1979
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v0

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v2, :cond_4

    .line 1981
    :try_start_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1983
    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v7

    mul-float v2, v2, v7

    float-to-int v2, v2

    .line 1986
    aget-object v7, v0, v6

    .line 1987
    array-length v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :goto_0
    const-string v10, "/"

    if-ge v9, v8, :cond_3

    :try_start_1
    aget-object v11, v0, v9

    const-string v12, "thumb"

    .line 1988
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1989
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromAssets(Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v12

    .line 1990
    aget v13, v12, v6

    int-to-float v13, v13

    iget-boolean v14, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    if-eqz v14, :cond_0

    iget-object v14, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    div-float/2addr v14, v3

    goto :goto_1

    :cond_0
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_1
    mul-float v13, v13, v14

    float-to-int v13, v13

    aput v13, v12, v6

    .line 1991
    aget v13, v12, v5

    int-to-float v13, v13

    iget-boolean v14, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    if-eqz v14, :cond_1

    iget-object v14, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    div-float/2addr v14, v3

    goto :goto_2

    :cond_1
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_2
    mul-float v13, v13, v14

    float-to-int v13, v13

    aput v13, v12, v5

    .line 1992
    aget v13, v12, v6

    aget v12, v12, v5

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-lt v12, v2, :cond_2

    move-object v7, v11

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1998
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->loadBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 2000
    :catch_0
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 2002
    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v0

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v0, v2, :cond_8

    .line 2004
    :try_start_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0

    .line 2005
    aget v2, v0, v6

    int-to-float v2, v2

    iget-boolean v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v3

    goto :goto_4

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_4
    mul-float v2, v2, v7

    float-to-int v2, v2

    aput v2, v0, v6

    .line 2006
    aget v2, v0, v5

    int-to-float v2, v2

    iget-boolean v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    if-eqz v7, :cond_6

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    :cond_6
    mul-float v2, v2, v4

    float-to-int v2, v2

    aput v2, v0, v5

    .line 2007
    aget v2, v0, v6

    aget v0, v0, v5

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v2, v0, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result v0

    .line 2008
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 2010
    :catch_1
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 2014
    :cond_7
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    .line 2016
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;

    if-eqz v0, :cond_9

    .line 2017
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;->imageChanged(Z)V

    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->updateHandlePos()V

    .line 1264
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepth:I

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1265
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1267
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1268
    iget-boolean v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectiveEnabled:Z

    const/4 v5, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisablePerspective:Z

    if-nez v4, :cond_0

    .line 1269
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/16 v10, 0x8

    .line 1271
    new-array v11, v10, [F

    aput v6, v11, v9

    aput v6, v11, v2

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    aput v12, v11, v5

    aput v6, v11, v8

    const/4 v13, 0x4

    aput v12, v11, v13

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    const/4 v14, 0x5

    aput v12, v11, v14

    const/4 v15, 0x6

    aput v6, v11, v15

    const/16 v16, 0x7

    aput v12, v11, v16

    new-array v10, v10, [F

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v6, v6, v12

    aput v6, v10, v9

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v6, v6, v12

    aput v6, v10, v2

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v6, v6, v12

    aput v6, v10, v5

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v6, v6, v12

    aput v6, v10, v8

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v6, v6, v12

    aput v6, v10, v13

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v6, v6, v12

    aput v6, v10, v14

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v6, v6, v12

    aput v6, v10, v15

    const/4 v6, 0x7

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v12, v12, v13

    aput v12, v10, v6

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object v6, v10

    move-object v10, v4

    const/4 v12, 0x0

    move-object v13, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 1284
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1287
    :cond_0
    new-instance v4, Landroid/graphics/Camera;

    invoke-direct {v4}, Landroid/graphics/Camera;-><init>()V

    .line 1288
    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationY:I

    invoke-direct {v0, v6, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->clipAngle(IZ)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1289
    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationX:I

    invoke-direct {v0, v6, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->clipAngle(IZ)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Camera;->rotateX(F)V

    .line 1291
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .line 1292
    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationY:I

    invoke-direct {v0, v10, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->clipAngle(IZ)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1293
    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationX:I

    invoke-direct {v0, v10, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->clipAngle(IZ)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Camera;->rotateX(F)V

    int-to-float v1, v1

    const/4 v10, 0x0

    .line 1294
    invoke-virtual {v6, v10, v10, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1296
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1297
    invoke-virtual {v0, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1299
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1300
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1301
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1302
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1303
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1304
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1305
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    const-string v12, "#000000"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1307
    iget-boolean v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_1

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->loadResources()V

    .line 1311
    :cond_1
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->validImage(Landroid/graphics/Bitmap;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 1312
    iget-boolean v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    if-eqz v10, :cond_18

    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_18

    .line 1313
    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v15

    mul-float v10, v10, v15

    float-to-int v10, v10

    iget v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v17

    mul-float v15, v15, v17

    float-to-int v15, v15

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v15, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1314
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    .line 1315
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1316
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 1317
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v15

    invoke-virtual {v10, v11, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1319
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1320
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1325
    new-instance v10, Landroid/graphics/RectF;

    iget v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    const/4 v8, 0x0

    invoke-direct {v10, v8, v8, v11, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->boundsToDraw:Landroid/graphics/RectF;

    .line 1328
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    .line 1330
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->boundsToDraw:Landroid/graphics/RectF;

    iget v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    invoke-virtual {v0, v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v10

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpRegion:Landroid/graphics/RectF;

    .line 1331
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v0, v8, v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->absoluteRegion:Landroid/graphics/Rect;

    .line 1333
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 1334
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-boolean v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    if-eqz v11, :cond_2

    const/high16 v11, -0x40800000    # -1.0f

    goto :goto_0

    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_0
    iget-boolean v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    if-eqz v15, :cond_3

    const/high16 v15, -0x40800000    # -1.0f

    goto :goto_1

    :cond_3
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_1
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->boundsToDraw:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->boundsToDraw:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v10, v11, v15, v5, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1335
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    int-to-float v9, v9

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->boundsToDraw:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->boundsToDraw:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1336
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->absoluteRegion:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpRegion:Landroid/graphics/RectF;

    iget-object v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v5, v10, v11, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1339
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1341
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1342
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1343
    iget-boolean v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->circularCrop:Z

    if-eqz v9, :cond_4

    .line 1344
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->boundsToDraw:Landroid/graphics/RectF;

    iget v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    invoke-virtual {v0, v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getOvalPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1347
    :cond_4
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpMasks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    if-eqz v9, :cond_5

    .line 1348
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 1350
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpRegion:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpRegion:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1352
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float v10, v12, v10

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float v11, v12, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1353
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, v12

    mul-float v10, v10, v13

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpRegion:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float v10, v10, v11

    iget v8, v8, Landroid/graphics/RectF;->top:F

    div-float/2addr v8, v12

    mul-float v8, v8, v13

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpRegion:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float v8, v8, v11

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1355
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1356
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1357
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpMasks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpRegion:Landroid/graphics/RectF;

    invoke-static {v9, v8, v10, v11, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->drawMasks(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/RectF;Landroid/graphics/BitmapShader;)V

    .line 1358
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 1361
    :cond_5
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 1363
    iget-boolean v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    if-eqz v8, :cond_9

    .line 1364
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    if-nez v8, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->recreateBezierMaskPath()V

    .line 1365
    :cond_6
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1366
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 1367
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v9, v10

    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1368
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    neg-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1369
    iget-boolean v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskIn:Z

    if-eqz v8, :cond_7

    .line 1370
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    .line 1371
    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 1374
    :cond_7
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9, v10, v11, v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->invertPath(Ljava/util/ArrayList;FFFF)Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1376
    :cond_8
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 1386
    :cond_9
    :try_start_0
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :catch_0
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    if-eqz v5, :cond_a

    .line 1393
    iput-object v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    .line 1397
    :cond_a
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    if-nez v5, :cond_b

    .line 1398
    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->loadTexture()V

    .line 1400
    :cond_b
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1401
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1402
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    .line 1404
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1405
    new-instance v8, Landroid/graphics/BitmapShader;

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v11, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v9, v10, v11}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1406
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 1407
    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1408
    iget v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 1409
    iget-boolean v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureMaintainAspect:Z

    if-eqz v12, :cond_c

    .line 1410
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_3

    .line 1412
    :cond_c
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1414
    :goto_3
    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderScaleF:F

    iget v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureScale:I

    int-to-float v12, v11

    mul-float v12, v12, v10

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v12, v15

    int-to-float v11, v11

    mul-float v10, v10, v11

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1415
    invoke-virtual {v8, v9}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1416
    new-instance v9, Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1417
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1418
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1419
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1420
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    invoke-virtual {v8, v5, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1424
    :cond_d
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorEnabled:Z

    if-eqz v5, :cond_e

    .line 1425
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->MakeTransparent(Landroid/graphics/Bitmap;)V

    .line 1426
    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorBlur:I

    if-eqz v5, :cond_e

    .line 1427
    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v9

    mul-float v5, v5, v9

    float-to-int v5, v5

    invoke-virtual {v0, v8, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->blurMask(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1431
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1432
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v8

    invoke-virtual {v0, v5, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->updateStroke(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    .line 1434
    :cond_f
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_10

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v8

    invoke-virtual {v0, v5, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->updateShadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_shadow:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 1438
    :cond_10
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v8

    invoke-virtual {v0, v5, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->updateShadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_shadow:Landroid/graphics/Bitmap;

    .line 1442
    :cond_11
    :goto_4
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayEnabled:Z

    if-eqz v5, :cond_14

    .line 1443
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1444
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1445
    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayFillType:I

    if-ne v9, v2, :cond_12

    .line 1446
    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayColor:I

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    :cond_12
    const/4 v10, 0x2

    if-ne v9, v10, :cond_13

    .line 1448
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1450
    :cond_13
    :goto_5
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1451
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v8, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1454
    :cond_14
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_enabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1455
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v8

    invoke-virtual {v0, v5, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->updateInnerShadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_inner_shadow:Landroid/graphics/Bitmap;

    .line 1458
    :cond_15
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_emboss:Landroid/graphics/Bitmap;

    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossEnabled:Z

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v8, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossImage(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1461
    :cond_16
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    if-eqz v5, :cond_17

    .line 1462
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRenderScaleF()F

    move-result v8

    invoke-virtual {v0, v5, v8, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossImage(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    :cond_17
    const/4 v5, 0x0

    .line 1464
    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    .line 1471
    :cond_18
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    if-nez v5, :cond_29

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->validImage(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1473
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1474
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1476
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    if-eqz v5, :cond_1d

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1d

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1d

    .line 1477
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1478
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_color:I

    invoke-virtual {v0, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->solidColor(I)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1479
    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_color:I

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1480
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isShapeOpacityShadowInclude()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1481
    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1483
    :cond_19
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1484
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1485
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1487
    iget-boolean v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    if-eqz v8, :cond_1b

    .line 1488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1489
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1490
    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDViewType:I

    if-ne v8, v2, :cond_1a

    .line 1491
    invoke-virtual {v0, v7, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    goto :goto_6

    :cond_1a
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1b

    .line 1493
    new-instance v8, Landroid/graphics/PointF;

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDObliqueAngle:I

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, v1

    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDObliqueAngle:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v10, v10, v13

    mul-float v10, v10, v1

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1494
    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1498
    :cond_1b
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1499
    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dx:I

    int-to-float v8, v8

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dy:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1500
    iget-boolean v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    if-eqz v8, :cond_1c

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_padding:I

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    add-int/2addr v8, v9

    goto :goto_7

    :cond_1c
    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_padding:I

    .line 1501
    :goto_7
    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_shadow:Landroid/graphics/Bitmap;

    new-instance v10, Landroid/graphics/Rect;

    .line 1502
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_shadow:Landroid/graphics/Bitmap;

    .line 1503
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v15, 0x0

    invoke-direct {v10, v15, v15, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/RectF;

    neg-int v12, v8

    int-to-float v12, v12

    iget v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    int-to-float v8, v8

    add-float/2addr v15, v8

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    add-float/2addr v14, v8

    invoke-direct {v11, v12, v12, v15, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1501
    invoke-virtual {v7, v9, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1504
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1506
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    if-eqz v5, :cond_1d

    .line 1507
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1508
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1509
    invoke-virtual {v0, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1514
    :cond_1d
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    if-eqz v5, :cond_24

    .line 1515
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1516
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1517
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1518
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1519
    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthDarken:I

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x435c0000    # 220.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 1520
    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1521
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v8, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1524
    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDQuality:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v11, v9, v8

    div-float v8, v1, v11

    float-to-double v8, v8

    .line 1525
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 1526
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    invoke-direct {v9, v14, v14, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1527
    new-instance v10, Landroid/graphics/RectF;

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    const/4 v15, 0x0

    invoke-direct {v10, v15, v15, v12, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1529
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1531
    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1533
    invoke-direct {v0, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1535
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1536
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1537
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1542
    iget-boolean v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    if-eqz v14, :cond_1e

    .line 1543
    new-instance v14, Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    .line 1544
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    .line 1545
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-direct {v15, v3, v3, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v14, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1546
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    neg-int v13, v3

    int-to-float v13, v13

    neg-int v15, v3

    int-to-float v15, v15

    move-object/from16 v19, v14

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    move/from16 v20, v1

    int-to-float v1, v3

    add-float/2addr v14, v1

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-direct {v2, v13, v15, v14, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v1, v19

    goto :goto_8

    :cond_1e
    move/from16 v20, v1

    move-object/from16 v18, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1549
    :goto_8
    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDViewType:I

    const/4 v13, 0x1

    if-ne v3, v13, :cond_21

    .line 1550
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v8, :cond_20

    .line 1552
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v13, -0x40800000    # -1.0f

    mul-float v14, v11, v13

    const/4 v13, 0x0

    .line 1553
    invoke-virtual {v6, v13, v13, v14}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1554
    invoke-virtual {v0, v7, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    .line 1556
    iget-boolean v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    if-eqz v14, :cond_1f

    iget-boolean v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDStokeInclude:Z

    if-eqz v14, :cond_1f

    if-eqz v2, :cond_1f

    .line 1557
    iget-object v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v14, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1560
    :cond_1f
    iget-object v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v14, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1562
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1564
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1565
    invoke-virtual {v0, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    goto :goto_b

    :cond_21
    const/4 v4, 0x3

    if-ne v3, v4, :cond_25

    .line 1567
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1568
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDObliqueAngle:I

    int-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v4, v13

    mul-float v4, v4, v20

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDObliqueAngle:I

    int-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v6, v13

    const/high16 v11, -0x40800000    # -1.0f

    mul-float v6, v6, v11

    mul-float v6, v6, v20

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1569
    invoke-virtual {v0, v3, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->divideVector(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invertVector(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 1570
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v8, :cond_23

    .line 1572
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v11, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1573
    iget-boolean v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    if-eqz v6, :cond_22

    iget-boolean v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDStokeInclude:Z

    if-eqz v6, :cond_22

    if-eqz v2, :cond_22

    .line 1574
    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1576
    :cond_22
    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1578
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_24
    move-object/from16 v18, v3

    .line 1583
    :cond_25
    :goto_b
    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    if-eqz v1, :cond_27

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    if-eqz v1, :cond_27

    const/4 v2, 0x3

    if-eq v1, v2, :cond_27

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    .line 1584
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1585
    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacity:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_26

    .line 1586
    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_c

    .line 1588
    :cond_26
    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    :goto_c
    const/4 v2, 0x1

    .line 1590
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1591
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1592
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1594
    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    neg-int v5, v4

    int-to-float v5, v5

    neg-int v6, v4

    int-to-float v6, v6

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    int-to-float v4, v4

    add-float/2addr v9, v4

    invoke-direct {v3, v5, v6, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1597
    :cond_27
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1599
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x1

    .line 1600
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1601
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1602
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1603
    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBitmapToDraw()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v3, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1609
    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->dragID:I

    if-eqz v1, :cond_29

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_29

    .line 1610
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1611
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_color:I

    invoke-virtual {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->solidColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1612
    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_color:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1613
    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    const/4 v2, 0x1

    .line 1614
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1615
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1616
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1617
    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_inner_shadow:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_d

    .line 1622
    :cond_28
    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    if-nez v1, :cond_29

    .line 1623
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    const-string v1, "#f44336"

    .line 1624
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1625
    invoke-virtual {v7, v3, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v1, -0x1

    .line 1626
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 1627
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1628
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    const v9, 0x3e99999a    # 0.3f

    mul-float v2, v1, v9

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v4, v3, v9

    const v10, 0x3f333333    # 0.7f

    mul-float v5, v1, v10

    mul-float v6, v3, v10

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1629
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v2, v1, v9

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v4, v3, v10

    mul-float v5, v1, v10

    mul-float v6, v3, v9

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1633
    :cond_29
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1636
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1639
    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    if-nez v1, :cond_2a

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    if-nez v1, :cond_2a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1640
    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1641
    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1642
    invoke-virtual/range {p0 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->drawHandles(Landroid/graphics/Canvas;)V

    :cond_2a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 956
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    int-to-float p1, p1

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    int-to-float p2, p2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setMeasuredDimension(II)V

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .line 2475
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->frozen:Z

    if-nez v0, :cond_0

    .line 2476
    invoke-super {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1

    .line 2482
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->frozen:Z

    if-nez v0, :cond_0

    .line 2483
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->postInvalidate(IIII)V

    :cond_0
    return-void
.end method

.method public rearrange(IIII)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 2054
    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v0

    .line 2055
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v1

    int-to-float p3, p3

    div-float/2addr v0, p3

    int-to-float p3, p4

    div-float/2addr v1, p3

    int-to-float p1, p1

    mul-float v0, v0, p1

    .line 2058
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V

    int-to-float p1, p2

    mul-float v1, v1, p1

    .line 2059
    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public relativeScale(F)V
    .locals 2

    .line 229
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v0, v0, p1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setDims(FF)V

    return-void
.end method

.method public removeTexture()V
    .locals 1

    const/4 v0, 0x0

    .line 429
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 430
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 431
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2470
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->requestLayout()V

    :cond_0
    return-void
.end method

.method public resetCropPortion()V
    .locals 3

    .line 620
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    return-void
.end method

.method public restorePerspectivePoints()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 538
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 539
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 540
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 541
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public restoreRotations()V
    .locals 2

    const/4 v0, 0x0

    .line 2092
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisable3DRots:Z

    .line 2093
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisablePerspective:Z

    .line 2094
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRot:Z

    if-eqz v1, :cond_0

    .line 2095
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRot:Z

    .line 2096
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(I)V

    .line 2098
    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public rotate3d(II)V
    .locals 0

    .line 1725
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationX:I

    .line 1726
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationY:I

    .line 1727
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method rotateRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 3

    .line 1240
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1241
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 1242
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v1, p2, v2, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1243
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public rotateShape(I)V
    .locals 1

    int-to-float p1, p1

    const/4 v0, 0x0

    .line 917
    invoke-direct {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(FZ)V

    return-void
.end method

.method public saveToBundle()Landroid/os/Bundle;
    .locals 7

    .line 2203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2204
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    const-string v2, "shapeReference"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shapeRotation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "shapeX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2207
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "shapeY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2208
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shapeWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shapeHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    const-string v2, "shapeOldContainerWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2211
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    const-string v2, "shapeOldContainerHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2213
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    const-string v2, "shapeImageShapeType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2215
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpHidden:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "objectHidden"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2216
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->locked:Z

    const-string v4, "objectLocked"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "shapeImageSrcV2"

    .line 2218
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2219
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "shapeImageSrc"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2220
    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBitmapPortion(Z)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBitmapInRotation()I

    move-result v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isBitmapCircularCrop()Z

    move-result v4

    iget-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    iget-boolean v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    invoke-static {v1, v2, v4, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->makeBundle(Landroid/graphics/RectF;IZZZ)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "shapeImageCropInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2222
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_color:I

    const-string v2, "shapeShadowColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2223
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_radius:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shapeShadowRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dx:I

    const-string v2, "shapeShadowDx"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2225
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dy:I

    const-string v2, "shapeShadowDy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2226
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "shapeShadowEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2228
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_color:I

    const-string v2, "shapeInnerColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2229
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_radius:I

    const-string v2, "shapeInnerRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2230
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dx:I

    const-string v2, "shapeInnerDx"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2231
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dy:I

    const-string v2, "shapeInnerDy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2232
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "shapeInnerEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2234
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isEmbossEnabled()Z

    move-result v1

    const-string v2, "shapeEmbossEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2235
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossLightAngle()I

    move-result v1

    const-string v2, "shapeEmbossLightAngle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2236
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossIntensity()I

    move-result v1

    const-string v2, "shapeEmbossIntensity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2237
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossAmbient()I

    move-result v1

    const-string v2, "shapeEmbossAmbient"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2238
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossHardness()I

    move-result v1

    const-string v2, "shapeEmbossHardness"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2239
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossBevel()I

    move-result v1

    const-string v2, "shapeEmbossBevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2241
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    const-string v2, "shapeStrokeEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2242
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    const-string v2, "shapeStrokeWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2243
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    const-string v2, "shapeStrokeColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2244
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayEnabled:Z

    const-string v2, "shapeColorOverlayEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2245
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayColor:I

    const-string v2, "shapeColorOverlayColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2246
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayFillType:I

    const-string v2, "sCOfT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2247
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sCOG"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationX:I

    const-string v2, "shapeRotationX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2250
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->RotationY:I

    const-string v2, "shapeRotationY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2251
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isRemoveColorEnabled()Z

    move-result v1

    const-string v2, "shapeRemoveColorEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2254
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    .line 2255
    iget v5, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    iget v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "shapeRemoveColorCT"

    .line 2258
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2260
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRemoveColorBlur()I

    move-result v1

    const-string v2, "shapeRemoveColorBlur"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->blendMode:I

    const-string v2, "shapeBlendMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->gaussianBlurRadius:I

    const-string v2, "shapeGaussianBlurRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2261
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeOpacity()I

    move-result v1

    const-string v2, "shapeOpacity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2262
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isShapeOpacityShadowInclude()Z

    move-result v1

    const-string v2, "shapeOpacityShadowInclude"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2263
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isPerspectiveEnabled()Z

    move-result v1

    const-string v2, "shapePerspectiveEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2264
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v4, "shapePerspectiveP1X"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2265
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v4, "shapePerspectiveP2X"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2266
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v4, "shapePerspectiveP3X"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2267
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v4, "shapePerspectiveP4X"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2268
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v4, "shapePerspectiveP1Y"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2269
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v4, "shapePerspectiveP2Y"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2270
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v4, "shapePerspectiveP3Y"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2271
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v2, "shapePerspectiveP4Y"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2273
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDEnabled()Z

    move-result v1

    const-string v2, "shapeThreeDEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2274
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDViewType()I

    move-result v1

    const-string v2, "shapeThreeDViewType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2275
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepth()I

    move-result v1

    const-string v2, "shapeThreeDDepth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2276
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthFillType()I

    move-result v1

    const-string v2, "shapeThreeDDepthFillType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2277
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthColorFill()I

    move-result v1

    const-string v2, "shapeThreeDDepthColorFill"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2278
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shapeThreeDDepthGradientFillV2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDDepthColorAutomatic()Z

    move-result v1

    const-string v2, "shapeThreeDDepthColorAutomatic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2281
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthDarken()I

    move-result v1

    const-string v2, "shapeThreeDDepthDarken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2282
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDStokeInclude()Z

    move-result v1

    const-string v2, "shapeThreeDStokeInclude"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2283
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDObliqueAngle()I

    move-result v1

    const-string v2, "ShpThObAng"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2284
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDLightingEnabled()Z

    move-result v1

    const-string v2, "shapeThreeDLightingEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2285
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingIntensity()I

    move-result v1

    const-string v2, "shapeThreeDLightingIntensity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2286
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingShadow()I

    move-result v1

    const-string v2, "shapeThreeDLightingShadow"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2287
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingSpecularHardness()I

    move-result v1

    const-string v2, "shapeThreeDLightingSpecularHardness"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2289
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    const-string v2, "sBmE43"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2291
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 2292
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskIn:Z

    const-string v2, "sBmI9O"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2293
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    const-string v2, "sBmD21"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2296
    :cond_2
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpMasks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    if-eqz v1, :cond_3

    .line 2297
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "shapeBmpErMa"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2300
    :cond_3
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierShapeBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string v2, "DtF6Vu"

    .line 2301
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2303
    :cond_4
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->arrowDataBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    const-string v2, "cowrL"

    .line 2304
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2306
    :cond_5
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    const-string v2, "qUDmYrz"

    .line 2307
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2309
    :cond_6
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mergedDataBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    const-string v2, "mergedData"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sDFkd3"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2310
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->texturePortion:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureInRot:I

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipH:Z

    invoke-static {v1, v2, v3, v4, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->makeBundle(Landroid/graphics/RectF;IZZZ)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "J4lv1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2311
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isTextureMaintainAspect()Z

    move-result v1

    const-string v2, "5cAUm"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2312
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextureScale()I

    move-result v1

    const-string v2, "M3XGT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2313
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hue:I

    const-string v2, "DL4VOEC"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2314
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saturation:I

    const-string v2, "Erasi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2315
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->brightness:I

    const-string v2, "wYdWdLnz"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2316
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->contrast:I

    const-string v2, "gnnMUtYI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method screenBlend(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16

    .line 1906
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1907
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1909
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    mul-int v0, v6, v7

    .line 1911
    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_0

    mul-int v4, v2, v6

    add-int/2addr v4, v3

    move-object/from16 v5, p1

    .line 1916
    invoke-virtual {v5, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    move-object/from16 v10, p2

    .line 1917
    invoke-virtual {v10, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 1922
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    .line 1923
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v13

    rsub-int v13, v13, 0xff

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v14

    rsub-int v14, v14, 0xff

    mul-int v13, v13, v14

    div-int/lit16 v13, v13, 0xff

    rsub-int v13, v13, 0xff

    .line 1924
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v14

    rsub-int v14, v14, 0xff

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    rsub-int v15, v15, 0xff

    mul-int v14, v14, v15

    div-int/lit16 v14, v14, 0xff

    rsub-int v14, v14, 0xff

    .line 1925
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    rsub-int v9, v9, 0xff

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    rsub-int v11, v11, 0xff

    mul-int v9, v9, v11

    div-int/lit16 v9, v9, 0xff

    rsub-int v9, v9, 0xff

    .line 1922
    invoke-static {v12, v13, v14, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v5, p1

    move-object/from16 v10, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v3, v6

    .line 1928
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8
.end method

.method public selectMe()V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    if-nez v1, :cond_0

    .line 961
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;->onEvent_SelectShape(I)V

    :cond_0
    return-void
.end method

.method public set3dDepth(IIIZ)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepth:I

    .line 376
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthDarken:I

    .line 377
    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDQuality:I

    .line 378
    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDStokeInclude:Z

    .line 379
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public set3dDepthColor(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V
    .locals 0

    .line 367
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthFillType:I

    .line 368
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthColorFill:I

    .line 369
    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 370
    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDDepthColorAutomatic:Z

    .line 371
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public set3dEnabled(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDEnabled:Z

    .line 354
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public set3dLighting(ZIIII)V
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingEnabled:Z

    .line 360
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossLightAngle:I

    .line 361
    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingIntensity:I

    .line 362
    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingShadow:I

    .line 363
    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDLightingSpecularHardness:I

    .line 364
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public set3dObliqueAngle(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDObliqueAngle:I

    .line 329
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public set3dViewType(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->threeDViewType:I

    .line 349
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setArrowData(Landroid/os/Bundle;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->arrowDataBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setBezierMaskBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setBezierMaskEnabled(Z)V
    .locals 1

    .line 1087
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1088
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskEnabled:Z

    .line 1089
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    :cond_0
    return-void
.end method

.method public setBezierMaskIn(Z)V
    .locals 1

    .line 1102
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskIn:Z

    if-eq v0, p1, :cond_0

    .line 1103
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskIn:Z

    .line 1104
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    :cond_0
    return-void
.end method

.method public setBezierMaskPath(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 1108
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskPath:Ljava/util/ArrayList;

    .line 1109
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1110
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setBezierShapeData(Landroid/os/Bundle;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierShapeBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setBlendMode(I)V
    .locals 3

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->blendMode:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyBlend(Landroid/graphics/Paint;I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setBmpPathMasks(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpMasks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    .line 234
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setColorOverlay(ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    .line 839
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayEnabled:Z

    .line 840
    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayColor:I

    .line 841
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayFillType:I

    .line 842
    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 843
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setColorOverlayEnabled(Z)V
    .locals 0

    .line 846
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->colorOverlayEnabled:Z

    .line 847
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setCrop(Landroid/graphics/RectF;IZZZ)V
    .locals 6

    .line 643
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmapDimensions()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 644
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0, p1, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 646
    div-int/lit8 v2, p2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 647
    :goto_0
    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 648
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    :goto_1
    if-eqz v1, :cond_3

    .line 649
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    .line 650
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 651
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 653
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    if-nez v2, :cond_4

    mul-float v3, v4, v1

    goto :goto_3

    :cond_4
    mul-float v3, v0, v1

    .line 655
    :goto_3
    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    int-to-float v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    if-eqz v2, :cond_5

    mul-float v4, v4, v1

    goto :goto_4

    :cond_5
    mul-float v4, v0, v1

    .line 656
    :goto_4
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    int-to-float v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    .line 658
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    .line 659
    iput-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->circularCrop:Z

    .line 660
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    .line 661
    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    .line 662
    iput-boolean p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    .line 664
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    .line 665
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->requestLayout()V

    return-void
.end method

.method public setDims(FF)V
    .locals 1

    .line 2120
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2121
    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_width:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 2122
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->min_height:I

    int-to-float p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    .line 2123
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->requestLayout()V

    .line 2124
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    :cond_1
    return-void
.end method

.method public setEffects(IIII)V
    .locals 0

    .line 452
    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->brightness:I

    .line 453
    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->contrast:I

    .line 454
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saturation:I

    .line 455
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hue:I

    .line 456
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->applyEffects()V

    return-void
.end method

.method public setEmboss(ZIIIII)V
    .locals 0

    .line 1956
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossEnabled:Z

    .line 1957
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossLightAngle:I

    .line 1958
    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossIntensity:I

    .line 1959
    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossAmbient:I

    .line 1960
    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossHardness:I

    .line 1961
    iput p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->EmbossBevel:I

    .line 1962
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setFlipHor(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    .line 265
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setFlipVer(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    .line 274
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setGaussianBlurRadius(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-le p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->gaussianBlurRadius:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    .line 729
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    .line 730
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    .line 731
    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    if-eq v0, p1, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInnerShadow(ZIIII)V
    .locals 1

    .line 905
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_enabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 907
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_radius:I

    .line 908
    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_color:I

    .line 909
    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dx:I

    .line 910
    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dy:I

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setLayersListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;

    return-void
.end method

.method public setLocked(Z)V
    .locals 1

    .line 736
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hidden:Z

    .line 737
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->locked:Z

    .line 738
    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->locked:Z

    if-eq v0, p1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    :cond_0
    return-void
.end method

.method setNewImgCropFromBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 2164
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;

    invoke-direct {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;-><init>(Landroid/os/Bundle;)V

    .line 2165
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->getPortion()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapPortion:Landroid/graphics/RectF;

    .line 2166
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->getRot()I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmapInRotation:I

    .line 2167
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isCircular()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->circularCrop:Z

    .line 2168
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipH()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipHor:Z

    .line 2169
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipV()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->flipVer:Z

    const/4 p1, 0x1

    .line 2170
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    return-void
.end method

.method setNewImgSrc(ILjava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_1

    .line 2176
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2178
    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p1, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewImgSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2180
    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewImgSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;I)V

    goto :goto_0

    .line 2183
    :cond_1
    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewImgSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method setNewImgSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;I)V
    .locals 3

    .line 2153
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    const/4 v1, 0x0

    .line 2154
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bmpMasks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    .line 2155
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 2156
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    .line 2157
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->compareStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->isAssetFolder()Z

    move-result p2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->isAssetFolder()Z

    move-result p1

    if-eq p2, p1, :cond_1

    .line 2158
    :cond_0
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    :cond_1
    const/4 p1, 0x1

    .line 2160
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    return-void
.end method

.method public setNewTextureSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    .line 418
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureInRot:I

    .line 419
    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->texturePortion:Landroid/graphics/RectF;

    .line 420
    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipH:Z

    .line 421
    iput-boolean p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureFlipV:Z

    const/16 p1, 0xa

    .line 422
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureScale:I

    const/4 p1, 0x0

    .line 423
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureMaintainAspect:Z

    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 426
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setPerspectiveEnabled(Z)V
    .locals 0

    .line 573
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectiveEnabled:Z

    .line 574
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 531
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 532
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 533
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget p2, p4, Landroid/graphics/PointF;->x:F

    iget p3, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 534
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public setRemoveColorBlur(I)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorBlur:I

    .line 524
    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorEnabled:Z

    if-eqz p1, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    :cond_0
    return-void
.end method

.method public setRemoveColorEnabled(Z)V
    .locals 0

    .line 514
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorEnabled:Z

    .line 515
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setRemoveColorOptions(ZILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;",
            ">;)V"
        }
    .end annotation

    .line 482
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorEnabled:Z

    .line 483
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorBlur:I

    .line 484
    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    .line 485
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setRemoveColorOptionsPacked(ZILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 488
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorEnabled:Z

    .line 489
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorBlur:I

    .line 490
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_0

    add-int/lit8 p2, p1, 0x1

    .line 493
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v1, v2, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 497
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 501
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeColorColors:Ljava/util/ArrayList;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    const/4 p3, -0x1

    const/16 v0, 0x64

    invoke-direct {p2, p3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setRenderMode(ZF)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderMode:Z

    .line 94
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->renderScaleF:F

    .line 95
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->unloadBitmaps()V

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    return-void
.end method

.method public setShadow(ZFIII)V
    .locals 1

    .line 874
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_enabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 876
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_radius:F

    .line 877
    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_color:I

    .line 878
    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dx:I

    .line 879
    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_dy:I

    float-to-double p1, p2

    .line 880
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_padding:I

    .line 882
    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setShapeData(Landroid/os/Bundle;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setShapeOpacity(I)V
    .locals 0

    .line 549
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacity:I

    .line 550
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public setShapeOpacityShadowInclude(Z)V
    .locals 0

    .line 558
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeOpacityShadowInclude:Z

    .line 559
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public setShapeType(I)V
    .locals 0

    .line 1973
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeType:I

    return-void
.end method

.method public setStroke(ZII)V
    .locals 0

    .line 597
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    .line 598
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    .line 599
    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    .line 600
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setTextureMaintainAspect(Z)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureMaintainAspect:Z

    .line 401
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setTextureScale(I)V
    .locals 0

    .line 396
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureScale:I

    .line 397
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void
.end method

.method public setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;

    return-void
.end method

.method solidColor(I)I
    .locals 3

    .line 1663
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public tempDisableRotations(ZZZ)V
    .locals 0

    .line 2084
    iput-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisablePerspective:Z

    .line 2085
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRot:Z

    .line 2086
    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisable3DRots:Z

    .line 2087
    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRot:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(I)V

    .line 2088
    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    return-void
.end method

.method public toggleSelect(Z)V
    .locals 1

    .line 689
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    if-eq v0, p1, :cond_1

    .line 690
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    .line 691
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;

    if-eqz p1, :cond_0

    .line 692
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected:Z

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;->selectionChanged(Z)V

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->requestLayout()V

    .line 695
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->invalidate()V

    :cond_1
    return-void
.end method

.method public unhideTemp()V
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setHidden(Z)V

    .line 724
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tmpHidden:Z

    :cond_0
    return-void
.end method

.method unloadBitmaps()V
    .locals 1

    const/4 v0, 0x0

    .line 1247
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->textureBmb:Landroid/graphics/Bitmap;

    .line 1248
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    .line 1249
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_shadow:Landroid/graphics/Bitmap;

    .line 1250
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_inner_shadow:Landroid/graphics/Bitmap;

    .line 1251
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_emboss:Landroid/graphics/Bitmap;

    .line 1252
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_stroke:Landroid/graphics/Bitmap;

    .line 1253
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    .line 1254
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->currBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 1255
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->need_redraw:Z

    return-void
.end method

.method public updateInnerShadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9

    .line 1819
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1820
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1821
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1822
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1823
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 1824
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1825
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1826
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1827
    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_radius:I

    int-to-float v5, v5

    mul-float v5, v5, p2

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, -0x1000000

    .line 1828
    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1830
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v5, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1832
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1833
    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dx:I

    int-to-float v5, v5

    mul-float v5, v5, p2

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_dy:I

    int-to-float v6, v6

    mul-float v6, v6, p2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1835
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p2, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v2, p2, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 p2, 0x0

    .line 1837
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1839
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1840
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_inner_color:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1841
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1842
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1843
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v7, v7, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {v3, v7, v7, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public updateShadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 1804
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_padding:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_padding:I

    .line 1805
    :goto_0
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v1, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    add-float/2addr v2, v0

    mul-float v2, v2, p2

    float-to-int v0, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1806
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1807
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1808
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1809
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_padding:I

    int-to-float v4, v3

    mul-float v4, v4, p2

    int-to-float v3, v3

    mul-float v3, v3, p2

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1810
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 1811
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1812
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v4, 0x3dcccccd    # 0.1f

    .line 1813
    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shadow_radius:F

    mul-float v5, v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1814
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, p2, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1815
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {v4, v6, v6, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, p2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public updateStroke(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1731
    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    mul-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    mul-float v2, v2, v1

    float-to-int v2, v2

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v4, v3

    mul-float v4, v4, v1

    float-to-int v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1732
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1733
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1734
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 1736
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 1737
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1738
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1739
    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    int-to-float v7, v6

    mul-float v7, v7, v1

    int-to-float v6, v6

    mul-float v6, v6, v1

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1740
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v13, 0x0

    invoke-direct {v6, v13, v13, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v13, v13, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v3, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1742
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1743
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v5, v3, v4

    .line 1744
    new-array v14, v5, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v14

    move v8, v3

    move v11, v3

    move v12, v4

    .line 1745
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1748
    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeRadius:I

    int-to-float v5, v5

    invoke-static {v1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v5, v5, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0xff

    if-ge v5, v4, :cond_3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_2

    mul-int v8, v5, v3

    add-int/2addr v8, v7

    .line 1753
    aget v9, v14, v8

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    sub-int v10, v5, v1

    .line 1756
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v11, v5, v1

    add-int/lit8 v12, v4, -0x1

    .line 1757
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v12, v9

    :goto_2
    if-gt v10, v11, :cond_1

    mul-int v15, v10, v3

    add-int/2addr v15, v7

    .line 1760
    aget v15, v14, v15

    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-ne v12, v6, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1765
    :cond_1
    :goto_3
    invoke-static {v9, v12, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v14, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_6

    mul-int v8, v5, v3

    add-int v9, v8, v7

    .line 1772
    aget v10, v14, v9

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    sub-int v11, v7, v1

    .line 1775
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int v12, v7, v1

    add-int/lit8 v15, v3, -0x1

    .line 1776
    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v15, v10

    :goto_6
    if-gt v11, v12, :cond_5

    add-int v16, v8, v11

    .line 1779
    aget v16, v14, v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-ne v15, v6, :cond_4

    goto :goto_7

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x0

    goto :goto_6

    .line 1784
    :cond_5
    :goto_7
    invoke-static {v6, v10, v15, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    aput v8, v14, v9

    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x0

    goto :goto_4

    .line 1787
    :cond_7
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 1788
    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 1789
    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->strokeColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_9

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v3, :cond_8

    mul-int v9, v7, v3

    add-int/2addr v9, v8

    .line 1794
    aget v10, v14, v9

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 1795
    invoke-static {v10, v1, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    aput v10, v14, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v14

    move v8, v3

    move v11, v3

    move v12, v4

    .line 1799
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v2
.end method

.method validImage(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1714
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public visibilityCheck()V
    .locals 1

    .line 2042
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isNotVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->makeMeVisible()V

    :cond_0
    return-void
.end method
