.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
.super Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;
    }
.end annotation


# static fields
.field public static final FILL_TYPE_COLOR:I = 0x1

.field public static final FILL_TYPE_GRADIENT:I = 0x2

.field public static final threeD_TYPE_OBLIQUE:I = 0x3

.field public static final threeD_TYPE_PERSPECTIVE:I = 0x1


# instance fields
.field DRAG_ID_MAX_WIDTHER:I

.field DRAG_ID_RESIZER:I

.field DRAG_ID_ROTATE:I

.field DRAG_ID_WHOLE:I

.field private EmbossAmbient:I

.field private EmbossBevel:I

.field private EmbossEnabled:Z

.field private EmbossHardness:I

.field private EmbossIncludeStroke:Z

.field private EmbossIntensity:I

.field private EmbossLightAngle:I

.field SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

.field public angle:I

.field public assigned_id:I

.field private background_addHorizontalL:F

.field private background_addHorizontalR:F

.field private background_addVerticalB:F

.field private background_addVerticalT:F

.field private background_border_radius:I

.field private background_color:I

.field private background_fill_type:I

.field background_usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

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

.field bigBallRadius:F

.field private bitmap_3d_cache:Landroid/graphics/Bitmap;

.field private bitmap_cache:Landroid/graphics/Bitmap;

.field private bitmap_cache_reflection:Landroid/graphics/Bitmap;

.field private bitmap_shadow_3d:Landroid/graphics/Bitmap;

.field private bitmap_shadow_outer:Landroid/graphics/Bitmap;

.field private bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

.field bottom_padding:I

.field final clickTolerance:F

.field dX:F

.field dY:F

.field final doubleClickDuration:J

.field downX:F

.field downY:F

.field private dragID:I

.field public effectBrightness:I

.field public effectContrast:I

.field public effectHue:I

.field public effectSaturation:I

.field fill_type:I

.field private final floatPrecision:F

.field public fontFeatureSetting:Ljava/lang/String;

.field private frozen:Z

.field hasInnerShadow:Z

.field private hidden:Z

.field private isBackgroundEnabled:Z

.field isCurved:Z

.field private isSelected:Z

.field lastClick:J

.field private layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

.field left_padding:I

.field private locked:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field maxWidther:Landroid/graphics/PointF;

.field private need_redraw:Z

.field private neverEdited:Z

.field oldAngle:I

.field oldMaxW:F

.field oldPosX:F

.field oldPosY:F

.field oldTextSize:F

.field private outer_glow_enabled:Z

.field private outer_shadow_color:I

.field private outer_shadow_dx:I

.field private outer_shadow_dy:I

.field private outer_shadow_enabled:Ljava/lang/Boolean;

.field private outer_shadow_padding:I

.field private outer_shadow_radius:F

.field paint:Landroid/graphics/Paint;

.field paintHandleRotate:Landroid/graphics/Paint;

.field paintHandleRotateBorder:Landroid/graphics/Paint;

.field paintHandles:Landroid/graphics/Paint;

.field paintHandlesBorder:Landroid/graphics/Paint;

.field paintHandlesHighlight:Landroid/graphics/Paint;

.field paintSelected:Landroid/graphics/Paint;

.field paintSelectedBg:Landroid/graphics/Paint;

.field paintSelectedBorder:Landroid/graphics/Paint;

.field private perspectiveEnabled:Z

.field public perspectivePoint1:Landroid/graphics/PointF;

.field public perspectivePoint2:Landroid/graphics/PointF;

.field public perspectivePoint3:Landroid/graphics/PointF;

.field public perspectivePoint4:Landroid/graphics/PointF;

.field previousX:F

.field previousY:F

.field public reference:Ljava/lang/String;

.field public reflectionEnabled:Z

.field public reflection_dy:I

.field renderMode:Z

.field renderScaleF:F

.field resizer:Landroid/graphics/PointF;

.field right_padding:I

.field rotator:Landroid/graphics/PointF;

.field private shadow_3d_color:I

.field private shadow_3d_enabled:Z

.field private shadow_3d_expand:I

.field private shadow_3d_radius:I

.field private shadow_3d_transparency:I

.field private tempDisable3DRots:Z

.field private tempDisablePerspective:Z

.field private tempDisableRot:Z

.field textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

.field public textHeight:I

.field private textOpacity:I

.field private textOpacityShadowInclude:Z

.field private textRotationX:I

.field private textRotationY:I

.field public textWidth:I

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

.field top_padding:I

.field usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field viewCenter:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderScaleF:F

    const/high16 v4, 0x447a0000    # 1000.0f

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->floatPrecision:F

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v5

    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bigBallRadius:F

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    iput-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    const/high16 v5, 0x41200000    # 10.0f

    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    const/high16 v5, -0x1000000

    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    const/4 v6, 0x3

    iput v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    const/4 v6, 0x4

    iput v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    const/4 v6, 0x2

    iput v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBg:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    new-instance v7, Landroid/graphics/PointF;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hasInnerShadow:Z

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    const/16 v3, 0xb4

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    iput v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    iput v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    iput v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    iput v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/16 v3, 0x64

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacityShadowInclude:Z

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    const/16 v3, 0x5a

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    const/16 v3, 0x3c

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    const/16 v3, 0x32

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    const/16 v7, 0x28

    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    const/16 v9, 0x1e

    iput v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIncludeStroke:Z

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    const/16 v10, 0x19

    iput v10, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    const v11, -0xffff01

    iput v11, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v11, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    iput v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    const/16 v9, 0x2d

    iput v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    const/16 v0, 0x50

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v0, v8, v8, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    iput v10, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clickTolerance:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->lastClick:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->doubleClickDuration:J

    iput v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downX:F

    iput v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downY:F

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->init(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setColorFill(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderScaleF:F

    const/high16 v7, 0x447a0000    # 1000.0f

    iput v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->floatPrecision:F

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v8

    iput v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bigBallRadius:F

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    iput-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    const/high16 v8, 0x41200000    # 10.0f

    iput v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    const/high16 v8, -0x1000000

    iput v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    const/4 v9, 0x3

    iput v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    const/4 v9, 0x4

    iput v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    const/4 v9, 0x2

    iput v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBg:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    new-instance v10, Landroid/graphics/PointF;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v6, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v11, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    const/4 v6, -0x1

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hasInnerShadow:Z

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    const/16 v6, 0xb4

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    iput v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    iput v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    iput v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    iput v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/16 v6, 0x64

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacityShadowInclude:Z

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    const/16 v6, 0x5a

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    const/16 v6, 0x3c

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    const/16 v6, 0x32

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    const/16 v10, 0x28

    iput v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    const/16 v12, 0x1e

    iput v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIncludeStroke:Z

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    const/16 v13, 0x19

    iput v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    const v14, -0xffff01

    iput v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    iput v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    const/16 v12, 0x2d

    iput v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    const/16 v3, 0x50

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    iput v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {v3, v11, v11, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    iput v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    iput v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    iput v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    iput v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    iput v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    const-string v3, "0"

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clickTolerance:F

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->lastClick:J

    const-wide/16 v3, 0x12c

    iput-wide v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->doubleClickDuration:J

    iput v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downX:F

    iput v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downY:F

    new-array v3, v9, [F

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    new-array v3, v9, [F

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    invoke-virtual/range {p0 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->init(Landroid/content/Context;)V

    if-nez v2, :cond_1

    const-string v3, "textReference"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v3, p4

    :goto_1
    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    invoke-virtual {p0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    return-object p0
.end method

.method private applyAlphaToPaint(Landroid/graphics/Paint;)V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private clipAngle(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisable3DRots:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x5a

    if-le p1, v0, :cond_2

    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, -0x5a

    if-ge p1, v0, :cond_3

    const/16 p1, -0x5a

    :cond_3
    :goto_0
    return p1
.end method

.method private createShadow3d(IIF)Landroid/graphics/Bitmap;
    .locals 6

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int v1, p1, v2

    int-to-float v1, v1

    mul-float v1, v1, p3

    float-to-int v1, v1

    add-int/2addr v2, p2

    int-to-float v2, v2

    mul-float v2, v2, p3

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    int-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-instance v5, Landroid/graphics/RectF;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    add-int/2addr p2, v0

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Landroid/graphics/BlurMaskFilter;

    sget-object p2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v4, p2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/high16 p1, -0x1000000

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    int-to-float p1, p1

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method private draw3dShadow(Landroid/graphics/Canvas;Landroid/graphics/Camera;IF)V
    .locals 8

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    int-to-float v1, p3

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    int-to-float v3, v3

    div-float/2addr v3, p4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    int-to-float v1, v1

    div-float/2addr v1, p4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/RectF;

    neg-int v4, v2

    int-to-float v4, v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    iget v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, p4

    sub-float/2addr v5, v6

    add-int/2addr p3, v2

    int-to-float p3, p3

    invoke-direct {v3, v4, v4, v5, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p3, 0x0

    invoke-virtual {p1, v1, p3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    return-void
.end method

.method private drawHandles(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Path;IF)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    int-to-float p1, p3

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method private flipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v12, v5, v6, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v13, p1

    invoke-virtual {v12, v13, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v15, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v7, v3, v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v3, 0x8c

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, v15

    move v5, v1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v7, v3, v2

    move-object v3, v12

    move/from16 v4, v16

    move-object v8, v14

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v11
.end method

.method public static fontIntervalsToBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v5

    const-string v6, "textsIntervalsStart"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v5

    const-string v6, "textsIntervalsEnd"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "textsIntervalsFont"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "interval"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private fullRedrawUpdateParent()V
    .locals 0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method private geometryToBundle(FFFFI)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "8PDnq"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    const-string v2, "textReference"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int p1, p1

    const-string v1, "shapeX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    float-to-int p1, p2

    const-string p2, "shapeY"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result p1

    const-string p2, "shapeOldContainerWidth"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result p1

    const-string p2, "shapeOldContainerHeight"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    float-to-int p1, p3

    const-string p2, "textMaxWidth"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "textTextSize"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "textRotation"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getBitmapBottomPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

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

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_1
    if-ge v12, v8, :cond_1

    aget v0, v10, v12

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

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

.method private static getBitmapLeftPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-array v10, v9, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v10

    move v5, v12

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_1

    aget v2, v10, v1

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
    const/4 p0, -0x1

    return p0
.end method

.method private static getBitmapRightPadding(Landroid/graphics/Bitmap;)I
    .locals 12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-array v10, v9, [I

    add-int/lit8 v1, v0, -0x1

    move v11, v1

    :goto_0
    if-ltz v11, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v10

    move v5, v11

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_1

    aget v2, v10, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v0, v11

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getBitmapTopPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

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

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    aget v1, v10, v0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    return v12

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return v11
.end method

.method private getCurr3DEmbossEffect()Landroid/graphics/EmbossMaskFilter;
    .locals 8

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/EmbossMaskFilter;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    double-to-float v4, v6

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x1

    aput v0, v3, v1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/4 v4, 0x2

    aput v0, v3, v4

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private getCurrEmbossEffect()Landroid/graphics/EmbossMaskFilter;
    .locals 8

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/EmbossMaskFilter;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    double-to-float v4, v6

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x1

    aput v0, v3, v1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/4 v4, 0x2

    aput v0, v3, v4

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    int-to-float v5, v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v1

    invoke-direct {v2, v3, v0, v4, v5}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private invalidateParent()V
    .locals 0

    return-void
.end method

.method private loadTexture()V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v5

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    iget-boolean v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v5

    :cond_1
    mul-float v3, v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    aget v0, v0, v1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v0, v3, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->cropRotBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    :cond_2
    :goto_1
    return-void
.end method

.method private makeMeVisible()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private recreateBezierMaskPath()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "BcR2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

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

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getPathFromStringArrayList(Ljava/util/ArrayList;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static renderPreview(Landroid/os/Bundle;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p0, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;ZZ)V

    int-to-float p0, p2

    invoke-virtual {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextSize(F)V

    const-string p0, "SAMPLE"

    invoke-virtual {v0, p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setRenderMode(ZF)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0, v2, v2, p1, p0}, Landroid/view/View;->layout(IIII)V

    mul-int/lit8 p2, p1, 0x2

    mul-int/lit8 v1, p0, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-virtual {v1, p1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget p1, p0, Landroid/graphics/Rect;->left:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private resetAlphaToPaint(Landroid/graphics/Paint;)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private restoreTextStyle(IZ)V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-boolean p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->restoreColorSpans()V

    return-void
.end method

.method private rotatePoint(Landroid/graphics/Point;Landroid/graphics/Point;D)Landroid/graphics/Point;
    .locals 9

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p3, p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-double v5, v3

    mul-double v5, v5, v0

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v7

    int-to-double v7, v3

    mul-double v7, v7, p3

    sub-double/2addr v5, v7

    int-to-double v3, v4

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    mul-double p3, p3, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    int-to-double v3, p1

    mul-double v0, v0, v3

    add-double/2addr v0, p3

    int-to-double p1, p2

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2
.end method

.method private rotateText(FZ)V
    .locals 0

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->normalizeAngle(F)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->snapAngle(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setRotation(F)V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    return-void
.end method

.method private updateHandlePos()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v2, v1

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    iput v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    int-to-float v1, v1

    mul-float v1, v1, v4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float v1, v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method


# virtual methods
.method public OnCustomTouchEvent(Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z
    .locals 20

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRawX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRawY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRelX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getRelY()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v13, 0x1

    const/4 v4, 0x2

    if-eqz v3, :cond_e

    if-eq v3, v13, :cond_7

    if-eq v3, v4, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_7

    goto/16 :goto_6

    :cond_1
    iget v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_2

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousX:F

    sub-float v1, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getZoomFactor()F

    move-result v3

    div-float/2addr v1, v3

    iput v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dX:F

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousY:F

    sub-float v1, v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getZoomFactor()F

    move-result v3

    div-float/2addr v1, v3

    iput v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dY:F

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v3

    iget v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dX:F

    add-float/2addr v3, v4

    iget v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-virtual {v1, v3, v4, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FFZ)F

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setX(F)V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v3

    iget v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dY:F

    add-float/2addr v3, v4

    iget v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-virtual {v1, v3, v4, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FFZ)F

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setY(F)V

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousX:F

    iput v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousY:F

    goto/16 :goto_6

    :cond_2
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    if-ne v3, v0, :cond_3

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v0, v0

    mul-float v9, v0, v5

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v0, v0

    mul-float v10, v0, v5

    invoke-static/range {v7 .. v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getAngleThreePoints(FFFFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_14

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-direct {v6, v1, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(FZ)V

    goto/16 :goto_6

    :cond_3
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    if-ne v3, v0, :cond_5

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v0, v0

    mul-float v16, v0, v5

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v0, v0

    mul-float v17, v0, v5

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    if-nez v0, :cond_4

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, v11

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v2

    sub-float v11, v0, v2

    :cond_4
    invoke-virtual {v6, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setMax(F)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    if-eqz v0, :cond_14

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v9, v0, v5

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v0, v5

    iget v11, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-object v12, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    invoke-static/range {v7 .. v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    aget v2, v2, v1

    iget-object v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    aget v1, v3, v1

    sub-float/2addr v2, v1

    add-float/2addr v2, v0

    invoke-virtual {v6, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    aget v1, v1, v13

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    aget v2, v2, v13

    goto/16 :goto_0

    :cond_5
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    if-ne v3, v0, :cond_14

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v14, v0

    const/4 v15, 0x0

    mul-float v16, v14, v5

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v0, v0

    mul-float v17, v0, v5

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    move/from16 v18, v0

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v2, v2

    div-float/2addr v12, v2

    neg-float v2, v11

    iget v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {v6, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextSize(F)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->resizeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;->resized()V

    :cond_6
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v9, v0, v5

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v0, v5

    iget v11, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget-object v12, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    invoke-static/range {v7 .. v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundFloat(FFFFI[F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    aget v2, v2, v1

    iget-object v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    aget v1, v3, v1

    sub-float/2addr v2, v1

    add-float/2addr v2, v0

    invoke-virtual {v6, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPre:[F

    aget v1, v1, v13

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpPointPost:[F

    aget v2, v2, v13

    :goto_0
    sub-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {v6, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_6

    :cond_7
    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downX:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clickTolerance:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clickTolerance:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clicked()V

    :cond_8
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-wide v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    double-to-float v0, v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldMaxW:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldAngle:I

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldTextSize:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    :cond_9
    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    if-ne v0, v1, :cond_a

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->rotationListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    if-eqz v1, :cond_a

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-interface {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;->rotated(I)V

    goto :goto_1

    :cond_a
    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    if-ne v0, v1, :cond_b

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->resizeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;->resized()V

    goto :goto_1

    :cond_b
    iget-object v7, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    if-eqz v7, :cond_c

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosX:F

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosY:F

    iget v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldMaxW:F

    iget v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldTextSize:F

    iget v5, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldAngle:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->geometryToBundle(FFFFI)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;->onEvent_TextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_c
    :goto_1
    const/4 v0, -0x1

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    :cond_d
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    goto/16 :goto_6

    :cond_e
    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downX:F

    iput v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->downY:F

    const/4 v3, 0x0

    iput v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dX:F

    iput v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dY:F

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousX:F

    iput v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->previousY:F

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-wide v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    double-to-float v0, v7

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldMaxW:F

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldTextSize:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosX:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldPosY:F

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->oldAngle:I

    cmpl-float v0, v11, v3

    if-ltz v0, :cond_f

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v0, v0

    cmpg-float v0, v11, v0

    if-gtz v0, :cond_f

    cmpl-float v0, v12, v3

    if-ltz v0, :cond_f

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v0, v0

    cmpg-float v0, v12, v0

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_3

    :cond_f
    const/4 v0, 0x0

    :goto_3
    iget-boolean v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-nez v2, :cond_10

    if-nez v0, :cond_10

    return v1

    :cond_10
    iget-boolean v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    if-nez v2, :cond_11

    cmpl-float v2, v12, v3

    if-ltz v2, :cond_11

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_11

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->maxWidther:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_11

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_MAX_WIDTHER:I

    goto :goto_4

    :cond_11
    iget-boolean v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    if-nez v2, :cond_12

    iget-object v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resizer:Landroid/graphics/PointF;

    invoke-virtual {v6, v11, v12, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dist(FFLandroid/graphics/PointF;)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v3, v3, v5

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_12

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_RESIZER:I

    goto :goto_4

    :cond_12
    if-eqz v0, :cond_13

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    :goto_4
    iput v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    goto :goto_5

    :cond_13
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotator:Landroid/graphics/PointF;

    invoke-virtual {v6, v11, v12, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dist(FFLandroid/graphics/PointF;)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBigRadius()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_15

    iget v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_ROTATE:I

    goto :goto_4

    :goto_5
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    if-eqz v0, :cond_d

    iget-boolean v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-nez v1, :cond_d

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;->onEvent_SelectText(I)V

    goto/16 :goto_2

    :cond_14
    :goto_6
    return v13

    :cond_15
    :goto_7
    return v1
.end method

.method public UnFreezeFullRedraw()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public addPadding(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, p2

    invoke-direct {v2, p2, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public applyBundle(Landroid/os/Bundle;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method public applyBundle(Landroid/os/Bundle;ZZ)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->freezeFullRedraw()V

    const-string v0, "shapeOldContainerWidth"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "shapeOldContainerHeight"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

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

    move-result v12

    move v7, v12

    goto :goto_0

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const-string v0, "shapeX"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v12

    invoke-virtual {v10, v0}, Landroid/view/View;->setX(F)V

    const-string v0, "shapeY"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v7

    invoke-virtual {v10, v0}, Landroid/view/View;->setY(F)V

    :cond_1
    if-nez p3, :cond_3

    const-string v0, "textTextSize"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, v7

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextSize(F)V

    const-string v0, "textMaxWidth"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v12

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    :cond_2
    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setMax(F)V

    :cond_3
    const-string v0, "textRotation"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    const-string v0, "8PDnq"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    const-string v0, "objectHidden"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    const-string v0, "objectLocked"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDEnabled()Z

    move-result v0

    const-string v1, "textThreeDEnabled"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDEnabled()Z

    move-result v0

    const-string v6, "textEmbossLightAngle"

    const/4 v13, 0x1

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDViewType()I

    move-result v0

    const-string v1, "textThreeDViewType"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dViewType(I)V

    const-string v0, "textThreeDDepth"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthDarken()I

    move-result v1

    const-string v2, "textThreeDDepthDarken"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDQuality()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDStokeInclude()Z

    move-result v3

    const-string v4, "textThreeDStokeInclude"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepth(IIIZ)V

    const-string v0, "textThreeDDepthGradientFillV2"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getType()I

    move-result v1

    const-string v2, "textThreeDDepthGradientFillType"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getStartColor()I

    move-result v2

    const-string v3, "textThreeDDepthGradientFillStart"

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getEndColor()I

    move-result v3

    const-string v4, "textThreeDDepthGradientFillEnd"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthFillType()I

    move-result v1

    const-string v2, "textThreeDDepthFillType"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthColorFill()I

    move-result v2

    const-string v3, "textThreeDDepthColorFill"

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDDepthColorAutomatic()Z

    move-result v3

    const-string v4, "textThreeDDepthColorAutomatic"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v10, v1, v2, v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepthColor(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDLightingEnabled()Z

    move-result v0

    const-string v1, "textThreeDLightingEnabled"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v0

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingIntensity()I

    move-result v0

    const-string v3, "textThreeDLightingIntensity"

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingShadow()I

    move-result v0

    const-string v4, "textThreeDLightingShadow"

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingSpecularHardness()I

    move-result v0

    const-string v5, "textThreeDLightingSpecularHardness"

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dLighting(ZIIII)V

    const-string v0, "textThreeDObAn"

    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    const-string v0, "textThreeDOffsetX"

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    const-string v2, "textThreeDOffsetY"

    invoke-virtual {v11, v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_6
    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dObliqueAngle(I)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isPerspectiveEnabled()Z

    move-result v0

    const-string v1, "textPerEn"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setPerspectiveEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isPerspectiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "textPerP1X"

    invoke-virtual {v11, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, v2

    float-to-int v3, v3

    const-string v4, "textPerP1Y"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v2

    float-to-int v3, v3

    const-string v4, "textPerP2X"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v2

    float-to-int v4, v4

    const-string v5, "textPerP2Y"

    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, v2

    float-to-int v4, v4

    const-string v5, "textPerP3X"

    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v2

    float-to-int v5, v5

    const-string v8, "textPerP3Y"

    invoke-virtual {v11, v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float v5, v5, v2

    float-to-int v5, v5

    const-string v8, "textPerP4X"

    invoke-virtual {v11, v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget-object v8, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v8, v8, v2

    float-to-int v8, v8

    const-string v9, "textPerP4Y"

    invoke-virtual {v11, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-direct {v4, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v10, v0, v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossEnabled()Z

    move-result v0

    const-string v1, "textEmbossEnabled"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v0

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossIntensity()I

    move-result v0

    const-string v3, "textEmbossIntensity"

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossAmbient()I

    move-result v0

    const-string v4, "textEmbossAmbient"

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossHardness()I

    move-result v0

    const-string v5, "textEmbossHardness"

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossBevel()I

    move-result v0

    const-string v6, "textEmbossBevel"

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossIncludeStroke()Z

    move-result v0

    const-string v1, "textEmbossIncludeStroke"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmbossIncludeStroke(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextOpacity()I

    move-result v0

    const-string v1, "textOpacity"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextOpacity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v0

    const-string v1, "textOpacityShadowInclude"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextOpacityShadowInclude(Z)V

    const-string v0, "textTextureImageSrcV2"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "textTextureImagePath"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setNewTextureSrc(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;

    const-string v1, "textTextureImageCropInfo"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;-><init>(Landroid/os/Bundle;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const-string v2, "textTextureImageSrc"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->getRot()I

    move-result v2

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->getPortion()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipH()Z

    move-result v4

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->isFlipV()Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setNewTextureSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextureMaintainAspect()Z

    move-result v0

    const-string v1, "textTextureMaintainAspect"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextureMaintainAspect(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextureScale()I

    move-result v0

    const-string v1, "textTextureScale"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextureScale(I)V

    const-string v0, "textTextColor"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToColorIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setColors(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textTextFont"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToFontIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setFonts(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textBold"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToStyleIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBolds(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textItalic"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToStyleIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setItalics(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textUnder"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToStyleIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setUnders(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    const-string v0, "textLineSpacing"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLineSpacing(I)V

    const-string v0, "tLSWrds"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setSpaceWords(Z)V

    const-string v0, "textAlignment"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextAlign(I)V

    const-string v0, "textJustify"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setJustify(Z)V

    const-string v0, "textTextString"

    const/4 v14, 0x0

    if-nez p3, :cond_a

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v1, v14, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;ZI)V

    :goto_3
    const-string v0, "textBgGradientV2"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "textBgGradientType"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "textBgGradientStartColor"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "textBgGradientEndColor"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    move-object v4, v0

    goto :goto_4

    :cond_b
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    :goto_4
    const-string v0, "textBgEnabled"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "textBgFillType"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "textBgColor"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "textBgPaddingLeft"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v5, v0, v12

    const-string v0, "textBgPaddingRight"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v0, v7

    const-string v0, "textBgPaddingTop"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v8, v0, v7

    const-string v0, "textBgPaddingBottom"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v9, v0, v7

    const-string v0, "textBgBorderRadius"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    move v7, v8

    move v8, v9

    move v9, v15

    invoke-virtual/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateBackground(ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V

    const-string v0, "textStrokeGradientV2"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getType()I

    move-result v1

    const-string v2, "textStrokeGradientType"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getStartColor()I

    move-result v2

    const-string v3, "textStrokeGradientStart"

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getEndColor()I

    move-result v3

    const-string v4, "textStrokeGradientEnd"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    move-object v6, v0

    goto :goto_5

    :cond_c
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isShadow_3d_enabled()Z

    move-result v0

    const-string v1, "textThreeDShadowEnabled"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_color()I

    move-result v0

    const-string v2, "textThreeDShadowColor"

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_transparency()I

    move-result v0

    const-string v3, "textThreeDShadowTransparency"

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_radius()I

    move-result v0

    const-string v4, "textThreeDShadowBlur"

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_expand()I

    move-result v0

    const-string v5, "textThreeDShadowExpand"

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setShadow3d(ZIIII)V

    const-string v0, "textStrokeEnabled"

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "textStrokeWidth"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeFillType()I

    move-result v0

    const-string v3, "textStrokeFillType"

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeColor()I

    move-result v0

    const-string v4, "textStrokeColor"

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setStroke(ZFIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    const-string v0, "textInnerEnabled"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "textInnerRadius"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v0, "textInnerDx"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v0, "textInnerDy"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v0, "textInnerColor"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setInnerShadow(ZFFFI)V

    const-string v0, "textOuterEnabled"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "textOuterGlowEnabled"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v0, "textOuterRadius"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v0, "textOuterDx"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "textOuterDy"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "textOuterColor"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadow(ZZFIII)V

    const-string v0, "textRotationX"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "textRotationY"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotate3d(II)V

    const-string v0, "textTextGradientV2"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "textTextGradientType"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "textTextGradientStartColor"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "textTextGradientEndColor"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    goto :goto_6

    :cond_d
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setGradientFill(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    const-string v0, "textTextFillType"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    const-string v0, "textTextCurve"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setCurve(I)V

    const-string v0, "textReflectionEnabled"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "textReflectionOffset"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setReflection(ZI)V

    const-string v0, "B8aw"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    const-string v0, "r3g9"

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBezierMaskIn(Z)V

    const-string v0, "3EBs"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBezierMaskBundle(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    const-string v0, "textLetterSpacing"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLetterSpacing(I)V

    const-string v0, "ZpG28v"

    invoke-virtual {v11, v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v12

    float-to-int v0, v0

    const-string v1, "deNYb4"

    invoke-virtual {v11, v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    invoke-virtual {v10, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setInPadding(II)V

    const-string v0, "textEffectHue"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "textEffectSaturation"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "textEffectBrightness"

    invoke-virtual {v11, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "textEffectContrast"

    invoke-virtual {v11, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v10, v0, v2, v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEffects(IIII)V

    const-string v0, "textFontFeatureSetting"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setFontFeatureSettingsCustom(Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->UnFreezeFullRedraw()V

    iget-object v0, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->requestLayout()V

    return-void
.end method

.method public applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public blurMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v3, v5, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public bundleToColorIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "textsIntervalsStart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "textsIntervalsEnd"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/high16 v5, -0x1000000

    const-string v6, "textsIntervalsColor"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-direct {v5, v3, v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addIntervalNoCheck(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bundleToFontIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "textsIntervalsStart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "textsIntervalsEnd"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "textsIntervalsFont"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-direct {v5, v3, v4, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(IILcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;)V

    invoke-virtual {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addIntervalNoCheck(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public bundleToStyleIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "textsIntervalsStart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "textsIntervalsEnd"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-direct {v4, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addIntervalNoCheck(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public clearInnerShadow()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hasInnerShadow:Z

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setInnerShadow(ZFFFI)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public clearStroke()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->clearStroke()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public clearStyles(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->clearStyles(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public clicked()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->lastClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;->onEvent_doubleTapText()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->lastClick:J

    return-void
.end method

.method public colorIntervalsToBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v5

    const-string v6, "textsIntervalsStart"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v5

    const-string v6, "textsIntervalsEnd"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v3

    const-string v5, "textsIntervalsColor"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "interval"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public countLines(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "\n"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-object v0
.end method

.method public dilate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v9, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_2

    mul-int v4, v1, v8

    add-int/2addr v4, v3

    aget v5, v10, v4

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    sub-int v6, v1, p2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v7, v1, p2

    add-int/lit8 v11, v9, -0x1

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v11, v5

    :goto_2
    if-gt v6, v7, :cond_1

    mul-int v12, v6, v8

    add-int/2addr v12, v3

    aget v12, v10, v12

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-ne v11, v2, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    invoke-static {v5, v11, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_7

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v8, :cond_6

    mul-int v4, v1, v8

    add-int v5, v4, v3

    aget v6, v10, v5

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int v7, v3, p2

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v11, v3, p2

    add-int/lit8 v12, v8, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v12, v6

    :goto_6
    if-gt v7, v11, :cond_5

    add-int v13, v4, v7

    aget v13, v10, v13

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-ne v12, v2, :cond_4

    goto :goto_7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    :goto_7
    invoke-static {v2, v6, v12, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v10, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v9, :cond_9

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v8, :cond_8

    mul-int v4, v1, v8

    add-int/2addr v4, v3

    aget v5, v10, v4

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v5, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dist(FFLandroid/graphics/PointF;)F
    .locals 2

    iget v0, p3, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v0

    sub-float/2addr p1, v0

    mul-float p1, p1, v1

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float v0, p2, p3

    sub-float/2addr p2, p3

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public divideVector(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    div-float/2addr v1, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public freezeFullRedraw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    return-void
.end method

.method public fullRedraw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    :cond_0
    return-void
.end method

.method public getBackground_addHorizontalL()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    return v0
.end method

.method public getBackground_addHorizontalR()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    return v0
.end method

.method public getBackground_addVerticalB()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    return v0
.end method

.method public getBackground_addVerticalT()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    return v0
.end method

.method public getBackground_border_radius()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    return v0
.end method

.method public getBackground_color()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    return v0
.end method

.method public getBackground_enabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBackgroundEnabled:Z

    return v0
.end method

.method public getBackground_usedGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getBackground_usedType()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    return v0
.end method

.method public getBigRadius()I
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bigBallRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBolds()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsRect()Landroid/graphics/RectF;
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getColors()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0
.end method

.method public getCurve()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    return v0
.end method

.method public getEffectBrightness()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectBrightness:I

    return v0
.end method

.method public getEffectContrast()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectContrast:I

    return v0
.end method

.method public getEffectHue()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectHue:I

    return v0
.end method

.method public getEffectSaturation()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectSaturation:I

    return v0
.end method

.method public getEmbossAmbient()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    return v0
.end method

.method public getEmbossBevel()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    return v0
.end method

.method public getEmbossHardness()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    return v0
.end method

.method public getEmbossIntensity()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    return v0
.end method

.method public getEmbossLightAngle()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    return v0
.end method

.method public getFill_type()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    return v0
.end method

.method public getFonts()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    return-object v0
.end method

.method public getGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getInPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I

    return v0
.end method

.method public getInPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I

    return v0
.end method

.method public getInnerColor()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I

    return v0
.end method

.method public getInnerDx()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F

    float-to-int v0, v0

    return v0
.end method

.method public getInnerDy()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F

    float-to-int v0, v0

    return v0
.end method

.method public getInnerEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_enabled:Z

    return v0
.end method

.method public getInnerRadius()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F

    float-to-int v0, v0

    return v0
.end method

.method public getItalics()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0
.end method

.method public getLetterSpacing()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getLetterSpace()I

    move-result v0

    return v0
.end method

.method public getLineSpacing()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->spacing:I

    return v0
.end method

.method public getMainFont()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOuterGlowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    return v0
.end method

.method public getOuterShadowColor()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    return v0
.end method

.method public getOuterShadowEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOuter_shadow_color()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    return v0
.end method

.method public getOuter_shadow_dx()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    return v0
.end method

.method public getOuter_shadow_dy()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    return v0
.end method

.method public getOuter_shadow_radius()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    return v0
.end method

.method public getRenderScaleF()F
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderScaleF:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getShadow_3d_color()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    return v0
.end method

.method public getShadow_3d_expand()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    return v0
.end method

.method public getShadow_3d_radius()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    return v0
.end method

.method public getShadow_3d_transparency()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeColor:I

    return v0
.end method

.method public getStrokeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    return v0
.end method

.method public getStrokeFillType()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    return v0
.end method

.method public getStrokeGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getStrokeRadius()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextAlign()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    return v0
.end method

.method public getTextJustify()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isJustifyAlign()Z

    move-result v0

    return v0
.end method

.method public getTextOpacity()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    return v0
.end method

.method public getTextRotationX()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    return v0
.end method

.method public getTextRotationY()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F

    return v0
.end method

.method public getTextureScale()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    return v0
.end method

.method public getTextureSrc()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public getThreeDDepth()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    return v0
.end method

.method public getThreeDDepthColorFill()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    return v0
.end method

.method public getThreeDDepthDarken()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    return v0
.end method

.method public getThreeDDepthFillType()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    return v0
.end method

.method public getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getThreeDLightingIntensity()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    return v0
.end method

.method public getThreeDLightingShadow()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    return v0
.end method

.method public getThreeDLightingSpecularHardness()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    return v0
.end method

.method public getThreeDObliqueAngle()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    return v0
.end method

.method public getThreeDQuality()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    return v0
.end method

.method public getThreeDViewType()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    return v0
.end method

.method public getUnders()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0
.end method

.method public getUsedTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public getZoomFactor()F
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getZoomFactor()F

    move-result v0

    return v0
.end method

.method public hideTemp()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setHidden(Z)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBg:Landroid/graphics/Paint;

    const/16 v6, 0x28

    const/16 v7, 0xff

    invoke-static {v6, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-static {v1, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesHighlight:Landroid/graphics/Paint;

    const-string v1, "#4db8f3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandles:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotate:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandleRotateBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintHandlesBorder:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "\'calt\' 1, \'swsh\' 1, \'jalt\' 1, \'dlig\' 1, \'rlig\' 1, \'ss01\' 1, \'ss02\' 1, \'ss03\' 1, \'ss04\' 1, \'ss05\' 1, \'ss06\' 1, \'ss07\' 1, \'ss08\' 1"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->mMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const-string p1, "normal"

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fontFeatureSetting:Ljava/lang/String;

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidateParent()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidateParent()V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidateParent()V

    :cond_0
    return-void
.end method

.method public invertVector(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

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

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    return v0
.end method

.method public isBezierMaskIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    return v0
.end method

.method public isEmbossEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    return v0
.end method

.method public isEmbossIncludeStroke()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIncludeStroke:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    return v0
.end method

.method public isNeverEdited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    return v0
.end method

.method public isNotVisible()Z
    .locals 8

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->safetyCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v3, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPerspectiveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    return v0
.end method

.method public isShadow_3d_enabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    return v0
.end method

.method public isSpaceWords()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isWordSpacing()Z

    move-result v0

    return v0
.end method

.method public isTextOpacityShadowInclude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacityShadowInclude:Z

    return v0
.end method

.method public isTextureMaintainAspect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    return v0
.end method

.method public isThreeDDepthColorAutomatic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    return v0
.end method

.method public isThreeDEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    return v0
.end method

.method public isThreeDLightingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    return v0
.end method

.method public isThreeDStokeInclude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->viewCenter:Landroid/graphics/PointF;

    int-to-float v1, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v1, v1, v5

    int-to-float v3, v3

    mul-float v3, v3, v5

    invoke-virtual {v4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateHandlePos()V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const-string v6, "#40FFFFFF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const-string v6, "#007de3"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v6

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v8, v6}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisablePerspective:Z

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/16 v11, 0x8

    new-array v12, v11, [F

    aput v10, v12, v9

    aput v10, v12, v2

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v14, v13

    aput v14, v12, v8

    aput v10, v12, v6

    const/4 v15, 0x4

    aput v14, v12, v15

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v4, v14

    const/16 v16, 0x5

    aput v4, v12, v16

    const/16 v17, 0x6

    aput v10, v12, v17

    const/16 v18, 0x7

    aput v4, v12, v18

    new-array v11, v11, [F

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v4, v10, Landroid/graphics/PointF;->x:F

    int-to-float v15, v13

    mul-float v4, v4, v15

    aput v4, v11, v9

    iget v4, v10, Landroid/graphics/PointF;->y:F

    int-to-float v10, v14

    mul-float v4, v4, v10

    aput v4, v11, v2

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v10, v4, Landroid/graphics/PointF;->x:F

    int-to-float v15, v13

    mul-float v10, v10, v15

    aput v10, v11, v8

    iget v4, v4, Landroid/graphics/PointF;->y:F

    int-to-float v10, v14

    mul-float v4, v4, v10

    aput v4, v11, v6

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v10, v4, Landroid/graphics/PointF;->x:F

    int-to-float v15, v13

    mul-float v10, v10, v15

    const/4 v15, 0x4

    aput v10, v11, v15

    iget v4, v4, Landroid/graphics/PointF;->y:F

    int-to-float v10, v14

    mul-float v4, v4, v10

    aput v4, v11, v16

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v10, v4, Landroid/graphics/PointF;->x:F

    int-to-float v13, v13

    mul-float v10, v10, v13

    aput v10, v11, v17

    iget v4, v4, Landroid/graphics/PointF;->y:F

    int-to-float v10, v14

    mul-float v4, v4, v10

    aput v4, v11, v18

    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object v4, v11

    move-object v11, v3

    const/4 v10, 0x0

    move v13, v10

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_2
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    invoke-direct {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    invoke-direct {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateX(F)V

    new-instance v4, Landroid/graphics/Camera;

    invoke-direct {v4}, Landroid/graphics/Camera;-><init>()V

    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    invoke-direct {v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4, v10}, Landroid/graphics/Camera;->rotateY(F)V

    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    invoke-direct {v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->clipAngle(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4, v10}, Landroid/graphics/Camera;->rotateX(F)V

    int-to-float v10, v1

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v11, v10}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v7, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    iget-boolean v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBackgroundEnabled:Z

    if-eqz v11, :cond_6

    iget-boolean v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    if-nez v11, :cond_6

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v5, Landroid/graphics/RectF;

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    neg-float v12, v12

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    neg-float v13, v13

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v14, v14

    iget v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    add-float/2addr v14, v15

    iget v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v15, v15

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    add-float/2addr v15, v6

    invoke-direct {v5, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    if-ne v6, v2, :cond_3

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v12, 0xff

    if-ne v6, v12, :cond_4

    :goto_2
    invoke-direct {v0, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    if-ne v6, v8, :cond_4

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v6, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->hasAlpha()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    iget-boolean v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    :cond_5
    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    int-to-float v6, v6

    invoke-virtual {v7, v5, v6, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v7, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    :cond_6
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    if-nez v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->loadTexture()V

    :cond_7
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Landroid/graphics/BitmapShader;

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v11, v12, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v12, v12

    iget-object v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    iget-boolean v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    if-eqz v14, :cond_8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_4

    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-virtual {v11, v14, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_4
    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    int-to-float v12, v12

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    invoke-virtual {v11, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v5, v11}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v11, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextureShader(Landroid/graphics/BitmapShader;)V

    goto :goto_5

    :cond_9
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextureShader(Landroid/graphics/BitmapShader;)V

    :goto_5
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    if-eqz v5, :cond_a

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dragID:I

    iget v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->DRAG_ID_WHOLE:I

    if-ne v5, v11, :cond_b

    :cond_a
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-eqz v5, :cond_20

    :cond_b
    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v11

    mul-float v11, v11, v5

    float-to-int v5, v11

    iget v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v12

    mul-float v12, v12, v11

    float-to-int v11, v12

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v13

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurrEmbossEffect()Landroid/graphics/EmbossMaskFilter;

    move-result-object v5

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v12, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossIncludeStroke()Z

    move-result v12

    invoke-virtual {v5, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setIncludeEmbossInStroke(Z)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-ne v12, v8, :cond_c

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeColorSpans()V

    :cond_c
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    if-nez v5, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->recreateBezierMaskPath()V

    :cond_d
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v12, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;

    invoke-direct {v13, v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Landroid/graphics/Paint;)V

    iput-object v13, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

    :cond_e
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_12

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-eq v12, v8, :cond_11

    iget-boolean v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v12, :cond_f

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    if-eq v12, v8, :cond_11

    :cond_f
    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-boolean v13, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    if-eqz v13, :cond_10

    iget v12, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-eq v12, v8, :cond_11

    :cond_10
    iget-boolean v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    if-nez v12, :cond_11

    iget-boolean v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    if-eqz v12, :cond_12

    :cond_11
    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBitmapTopPadding(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBitmapBottomPadding(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    :cond_12
    new-instance v5, Landroid/graphics/Rect;

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    invoke-direct {v5, v9, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_18

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-eq v12, v8, :cond_14

    iget-boolean v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v12, :cond_13

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    if-eq v12, v8, :cond_14

    :cond_13
    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-boolean v13, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    if-eqz v13, :cond_18

    iget v12, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-ne v12, v8, :cond_18

    :cond_14
    new-instance v5, Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v12

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->top_padding:I

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v14

    div-float/2addr v13, v14

    float-to-int v13, v13

    iget-object v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v15

    div-float/2addr v14, v15

    float-to-int v14, v14

    iget-object v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget-object v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    sub-int/2addr v15, v6

    int-to-float v6, v15

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v15

    div-float/2addr v6, v15

    float-to-int v6, v6

    invoke-direct {v5, v12, v13, v14, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-eq v6, v8, :cond_15

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v12, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-ne v12, v8, :cond_18

    :cond_15
    if-ne v6, v8, :cond_16

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setBlack()V

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v12, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_16
    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v12, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-ne v12, v8, :cond_17

    new-instance v12, Landroid/graphics/Rect;

    iget v13, v5, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    iget v15, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v12, v13, v14, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;

    :cond_17
    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v9, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->draw(Landroid/graphics/Canvas;)V

    :cond_18
    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v6, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setIncludeEmbossInStroke(Z)V

    :try_start_0
    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    nop

    :goto_6
    iget-boolean v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v6, :cond_1c

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v8

    mul-float v8, v8, v6

    float-to-int v6, v8

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v11

    mul-float v11, v11, v8

    float-to-int v8, v11

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v11

    invoke-virtual {v6, v8, v11}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v11

    iget-boolean v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    if-nez v12, :cond_19

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-boolean v9, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurr3DEmbossEffect()Landroid/graphics/EmbossMaskFilter;

    move-result-object v12

    iget-object v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v13, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V

    iget-boolean v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    if-nez v12, :cond_1b

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeColorSpans()V

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextureShader(Landroid/graphics/BitmapShader;)V

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    if-ne v12, v2, :cond_1a

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-boolean v2, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmp_drawing3DDepth:Z

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_7

    :cond_1a
    const/4 v13, 0x2

    if-ne v12, v13, :cond_1b

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    iget-object v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v13, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1b
    :goto_7
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-boolean v9, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmp_drawing3DDepth:Z

    invoke-direct {v0, v8, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->restoreTextStyle(IZ)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->blurMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    :cond_1c
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateOuter_Shadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    :cond_1d
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    if-eqz v5, :cond_1e

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBitmapLeftPadding(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBitmapRightPadding(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->right_padding:I

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v6, v6

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->left_padding:I

    add-int/2addr v8, v5

    int-to-float v5, v8

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v8

    div-float/2addr v5, v8

    sub-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v6

    invoke-direct {v0, v5, v1, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->createShadow3d(IIF)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    :cond_1e
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->flipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->flipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    :cond_1f
    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V

    iput-boolean v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    :cond_20
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    if-nez v5, :cond_30

    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    if-eqz v5, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v5

    invoke-direct {v0, v7, v3, v1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->draw3dShadow(Landroid/graphics/Canvas;Landroid/graphics/Camera;IF)V

    :cond_21
    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-eqz v1, :cond_29

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x435c0000    # 220.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {v5, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    div-float v6, v10, v5

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v6, v11

    new-instance v11, Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v11, v9, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    invoke-direct {v12, v9, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    if-ne v13, v2, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    iget v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {v0, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->solidColor(I)I

    move-result v15

    invoke-direct {v13, v15, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-direct {v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    int-to-float v8, v8

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    int-to-float v13, v13

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    new-instance v13, Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v13, v9, v9, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v15, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v9, v15

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    add-int/2addr v14, v15

    move-object/from16 v19, v3

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    add-int/2addr v3, v15

    invoke-direct {v2, v9, v9, v14, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8, v13, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_23
    move-object/from16 v19, v3

    :goto_8
    const/4 v2, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-ge v2, v6, :cond_24

    const/high16 v3, -0x40800000    # -1.0f

    mul-float v14, v5, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v3, v14}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v0, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v3, v11, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_24
    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyCamera(Landroid/graphics/Canvas;Landroid/graphics/Camera;)V

    goto/16 :goto_b

    :cond_25
    const/4 v2, 0x3

    if-ne v13, v2, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v10

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v4, v4, v5

    mul-float v4, v4, v10

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->divideVector(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invertVector(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->solidColor(I)I

    move-result v5

    invoke-direct {v4, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-direct {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    :cond_26
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    int-to-float v4, v4

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    int-to-float v5, v5

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v10, v9

    iget v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    add-int/2addr v11, v9

    iget v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    add-int/2addr v13, v9

    invoke-direct {v8, v10, v10, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v4, v5, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_27
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v6, :cond_28

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_29
    :goto_b
    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-nez v1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->solidColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    int-to-float v2, v2

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v6, v5

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    add-int/2addr v9, v5

    invoke-direct {v4, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2c
    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    nop

    nop

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    if-nez v1, :cond_2e

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->solidColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    int-to-float v2, v2

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    neg-int v6, v5

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    add-int/2addr v8, v5

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    add-int/2addr v9, v5

    invoke-direct {v4, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2e
    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    if-eqz v1, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bottom_padding:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getRenderScaleF()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    invoke-direct {v3, v5, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resetAlphaToPaint(Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2f
    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyAlphaToPaint(Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->resetAlphaToPaint(Landroid/graphics/Paint;)V

    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-eqz v1, :cond_31

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    if-nez v1, :cond_31

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v1

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBg:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v1

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelectedBorder:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v4, v1

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paintSelected:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_31
    invoke-direct/range {p0 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->drawHandles(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    :cond_0
    return-void
.end method

.method public rearrange(IIII)V
    .locals 2

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    move p3, p1

    :cond_1
    if-nez p4, :cond_2

    move p4, p2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    int-to-float p3, p3

    div-float/2addr v0, p3

    int-to-float p3, p4

    div-float/2addr v1, p3

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    int-to-float p1, p2

    mul-float v1, v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public relativeScale(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextSize(F)V

    return-void
.end method

.method public removeTexture()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public restorePerspectivePoints()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public restoreRotations()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisable3DRots:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisablePerspective:Z

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public returnText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->returnActualText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rotate3d(II)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public rotateText(I)V
    .locals 1

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(FZ)V

    return-void
.end method

.method public saveToBundle()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    const-string v2, "textReference"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "shapeX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "shapeY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    const-string v2, "shapeOldContainerWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    const-string v2, "shapeOldContainerHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-wide v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    double-to-int v1, v1

    const-string v2, "textMaxWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textTextSize"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textRotation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    const-string v2, "objectHidden"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    const-string v2, "objectLocked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "textTextString"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fontIntervalsToBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "textTextFont"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->styleIntervalsToBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "textBold"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->styleIntervalsToBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "textItalic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->styleIntervalsToBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "textUnder"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextAlign()I

    move-result v1

    const-string v2, "textAlignment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLetterSpacing()I

    move-result v1

    const-string v2, "textLetterSpacing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isWordSpacing()Z

    move-result v1

    const-string v2, "tLSWrds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextJustify()Z

    move-result v1

    const-string v2, "textJustify"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLineSpacing()I

    move-result v1

    const-string v2, "textLineSpacing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_enabled()Z

    move-result v1

    const-string v2, "textBgEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    const-string v2, "textBgColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "textBgGradientV2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    const-string v2, "textBgFillType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    float-to-int v1, v1

    const-string v2, "textBgPaddingLeft"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    float-to-int v1, v1

    const-string v2, "textBgPaddingRight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    float-to-int v1, v1

    const-string v2, "textBgPaddingTop"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    float-to-int v1, v1

    const-string v2, "textBgPaddingBottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    const-string v2, "textBgBorderRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v1

    const-string v2, "textStrokeEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textStrokeWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeColor()I

    move-result v1

    const-string v2, "textStrokeColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeFillType()I

    move-result v1

    const-string v2, "textStrokeFillType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "textStrokeGradientV2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerEnabled()Z

    move-result v1

    const-string v2, "textInnerEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textInnerRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerColor()I

    move-result v1

    const-string v2, "textInnerColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textInnerDx"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textInnerDy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowEnabled()Z

    move-result v1

    const-string v2, "textOuterEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterGlowEnabled()Z

    move-result v1

    const-string v2, "textOuterGlowEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "textOuterRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowColor()I

    move-result v1

    const-string v2, "textOuterColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    const-string v2, "textOuterDx"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    const-string v2, "textOuterDy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationX:I

    const-string v2, "textRotationX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textRotationY:I

    const-string v2, "textRotationY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->colorIntervalsToBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "textTextColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossEnabled()Z

    move-result v1

    const-string v2, "textEmbossEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v1

    const-string v2, "textEmbossLightAngle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossIntensity()I

    move-result v1

    const-string v2, "textEmbossIntensity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossAmbient()I

    move-result v1

    const-string v2, "textEmbossAmbient"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossHardness()I

    move-result v1

    const-string v2, "textEmbossHardness"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossBevel()I

    move-result v1

    const-string v2, "textEmbossBevel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossIncludeStroke()Z

    move-result v1

    const-string v2, "textEmbossIncludeStroke"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDEnabled()Z

    move-result v1

    const-string v2, "textThreeDEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDViewType()I

    move-result v1

    const-string v2, "textThreeDViewType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepth()I

    move-result v1

    const-string v2, "textThreeDDepth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthFillType()I

    move-result v1

    const-string v2, "textThreeDDepthFillType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthColorFill()I

    move-result v1

    const-string v2, "textThreeDDepthColorFill"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "textThreeDDepthGradientFillV2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDDepthColorAutomatic()Z

    move-result v1

    const-string v2, "textThreeDDepthColorAutomatic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthDarken()I

    move-result v1

    const-string v2, "textThreeDDepthDarken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDStokeInclude()Z

    move-result v1

    const-string v2, "textThreeDStokeInclude"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDObliqueAngle()I

    move-result v1

    const-string v2, "textThreeDObAn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDLightingEnabled()Z

    move-result v1

    const-string v2, "textThreeDLightingEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingIntensity()I

    move-result v1

    const-string v2, "textThreeDLightingIntensity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingShadow()I

    move-result v1

    const-string v2, "textThreeDLightingShadow"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingSpecularHardness()I

    move-result v1

    const-string v2, "textThreeDLightingSpecularHardness"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextOpacity()I

    move-result v1

    const-string v2, "textOpacity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v1

    const-string v2, "textOpacityShadowInclude"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isShadow_3d_enabled()Z

    move-result v1

    const-string v2, "textThreeDShadowEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_color()I

    move-result v1

    const-string v2, "textThreeDShadowColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_transparency()I

    move-result v1

    const-string v2, "textThreeDShadowTransparency"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_radius()I

    move-result v1

    const-string v2, "textThreeDShadowBlur"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_expand()I

    move-result v1

    const-string v2, "textThreeDShadowExpand"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isPerspectiveEnabled()Z

    move-result v1

    const-string v2, "textPerEn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "textPerP1X"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "textPerP2X"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "textPerP3X"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "textPerP4X"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "textPerP1Y"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "textPerP2Y"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "textPerP3Y"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v2, "textPerP4Y"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "textTextGradientV2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    const-string v2, "textTextFillType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurve()I

    move-result v1

    const-string v2, "textTextCurve"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    const-string v2, "textReflectionEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    const-string v2, "textReflectionOffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "textTextureImageSrcV2"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "textTextureImageSrc"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->makeBundle(Landroid/graphics/RectF;IZZZ)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "textTextureImageCropInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextureMaintainAspect()Z

    move-result v1

    const-string v2, "textTextureMaintainAspect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextureScale()I

    move-result v1

    const-string v2, "textTextureScale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    const-string v2, "B8aw"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    const-string v2, "r3g9"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    const-string v2, "3EBs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInPaddingLeft()I

    move-result v1

    const-string v2, "ZpG28v"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInPaddingRight()I

    move-result v1

    const-string v2, "deNYb4"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectHue:I

    const-string v2, "textEffectHue"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectSaturation:I

    const-string v2, "textEffectSaturation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectBrightness:I

    const-string v2, "textEffectBrightness"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectContrast:I

    const-string v2, "textEffectContrast"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fontFeatureSetting:Ljava/lang/String;

    const-string v2, "textFontFeatureSetting"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public selectMe()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;->onEvent_SelectText(I)V

    :cond_0
    return-void
.end method

.method public set3dDepth(IIIZ)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepth:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthDarken:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDQuality:I

    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDStokeInclude:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public set3dDepthColor(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthFillType:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorFill:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthGradientFill:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDDepthColorAutomatic:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public set3dEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDEnabled:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public set3dLighting(ZIIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingEnabled:Z

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingIntensity:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingShadow:I

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDLightingSpecularHardness:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public set3dObliqueAngle(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDObliqueAngle:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public set3dViewType(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->threeDViewType:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setBezierMaskBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setBezierMaskEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskEnabled:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    :cond_0
    return-void
.end method

.method public setBezierMaskIn(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskPath:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setBold(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setBoldToSelection(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setBolds(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    return-void
.end method

.method public setColorFill(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setColorFill(III)V

    return-void
.end method

.method public setColorFill(III)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setColorToSelection(III)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setColors(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    return-void
.end method

.method public setCurve(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isCurved:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setCurve(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void
.end method

.method public setEffects(IIII)V
    .locals 9

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectHue:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectSaturation:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectBrightness:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->effectContrast:I

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    if-eqz p1, :cond_0

    int-to-float v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    :cond_0
    int-to-float v2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    if-eqz p3, :cond_1

    int-to-float v2, p3

    const v5, 0x40233333    # 2.55f

    mul-float/2addr v2, v5

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v5

    const/4 v6, 0x4

    aget v7, v5, v6

    add-float/2addr v7, v2

    aput v7, v5, v6

    const/16 v6, 0x9

    aget v7, v5, v6

    add-float/2addr v7, v2

    aput v7, v5, v6

    const/16 v6, 0xe

    aget v7, v5, v6

    add-float/2addr v7, v2

    aput v7, v5, v6

    :cond_1
    if-eqz p4, :cond_2

    int-to-float v2, p4

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    const/high16 v5, -0x41000000    # -0.5f

    mul-float v5, v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x2

    aput v8, v6, v7

    const/4 v7, 0x3

    aput v8, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v8, v6, v7

    const/4 v7, 0x6

    aput v2, v6, v7

    const/4 v7, 0x7

    aput v8, v6, v7

    const/16 v7, 0x8

    aput v8, v6, v7

    const/16 v7, 0x9

    aput v5, v6, v7

    const/16 v7, 0xa

    aput v8, v6, v7

    const/16 v7, 0xb

    aput v8, v6, v7

    const/16 v7, 0xc

    aput v2, v6, v7

    const/16 v7, 0xd

    aput v8, v6, v7

    const/16 v7, 0xe

    aput v5, v6, v7

    const/16 v5, 0xf

    aput v8, v6, v5

    const/16 v5, 0x10

    aput v8, v6, v5

    const/16 v5, 0x11

    aput v8, v6, v5

    const/16 v5, 0x12

    aput v4, v6, v5

    const/16 v4, 0x13

    aput v8, v6, v4

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    :cond_2
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->paint:Landroid/graphics/Paint;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public setEmboss(ZIIIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossEnabled:Z

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossLightAngle:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIntensity:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossAmbient:I

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossHardness:I

    iput p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossBevel:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setEmbossIncludeStroke(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->EmbossIncludeStroke:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setFill_type(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    return-void
.end method

.method public setFontFeatureSettingsCustom(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fontFeatureSetting:Ljava/lang/String;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setFontFeatureSettingValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setFontFeatureSettingValue(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setFonts(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    return-void
.end method

.method public setGradientFill(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fill_type:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInPadding(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I

    iput p2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updatePaddings()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void
.end method

.method public setInnerShadow(ZFFFI)V
    .locals 6

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hasInnerShadow:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setInnerShadow(ZFFFI)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setItalic(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setItalicToSelection(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setItalics(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    return-void
.end method

.method public setJustify(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setJustifyAlign(Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setLayersListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

    return-void
.end method

.method public setLetterSpacing(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLetterSpace(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void
.end method

.method public setLineSpacing(I)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->spacing:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hidden:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->locked:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMax(F)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    float-to-double v1, p1

    iput-wide v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    const/high16 p1, 0x4f000000

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void
.end method

.method public setNewTextureSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureInRot:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->texturePortion:Landroid/graphics/RectF;

    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipH:Z

    iput-boolean p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureFlipV:Z

    const/16 p1, 0xa

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setNewTextureSrc(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureSrc:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setOuterShadow(ZZFIII)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_enabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    iput p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dx:I

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_dy:I

    float-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    mul-double p1, p1, p4

    double-to-int p1, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setOuterShadowColor(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_color:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public setPerspectiveEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectiveEnabled:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget p2, p4, Landroid/graphics/PointF;->x:F

    iget p3, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public setReflection(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setRenderMode(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderMode:Z

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderScaleF:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->unloadBitmaps()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    return-void
.end method

.method public setShadow3d(ZIIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setShadow_3d_color(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_color:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public setShadow_3d_enabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_enabled:Z

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedrawUpdateParent()V

    return-void
.end method

.method public setShadow_3d_expand(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_expand:I

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedrawUpdateParent()V

    return-void
.end method

.method public setShadow_3d_radius(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_radius:I

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedrawUpdateParent()V

    return-void
.end method

.method public setShadow_3d_transparency(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->shadow_3d_transparency:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public setSpaceWords(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setWordSpacing(Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    return-void
.end method

.method public setStroke(ZFIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setStrokeFill(ZFIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setText(Ljava/lang/String;ZI)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->returnActualText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->countLines(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v2, p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->neverEdited:Z

    if-ne v1, v0, :cond_0

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    const v0, 0x7fffffff

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p3, p1, p1}, Landroid/widget/TextView;->measure(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    if-eqz p2, :cond_1

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float p2, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    float-to-double v0, p1

    iput-wide v0, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;->textChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setTextAlign(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setTextFont(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bundleToFontIntervals(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextFont(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    :cond_0
    return-void
.end method

.method public setTextFont(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setFonts(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setTextOpacity(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacity:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public setTextOpacityShadowInclude(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textOpacityShadowInclude:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateTextSize(F)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setTextureMaintainAspect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureMaintainAspect:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setTextureScale(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureScale:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->SelectListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;

    return-void
.end method

.method public setUnderline(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setUnderToSelection(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public setUnders(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    :cond_0
    return-void
.end method

.method public solidColor(I)I
    .locals 3

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

.method public styleIntervalsToBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v5

    const-string v6, "textsIntervalsStart"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v3

    const-string v5, "textsIntervalsEnd"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "interval"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public tempDisableRotations(ZZZ)V
    .locals 0

    iput-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisablePerspective:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRot:Z

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisable3DRots:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public toggleSelect(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;->selectionChanged(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    :cond_1
    return-void
.end method

.method public unhideTemp()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setHidden(Z)V

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tmpHidden:Z

    :cond_0
    return-void
.end method

.method public unloadBitmaps()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textureBmb:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_3d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_shadow_outer_reflection:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_cache_reflection:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bitmap_3d_cache:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->need_redraw:Z

    return-void
.end method

.method public updateBackground(ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBackgroundEnabled:Z

    if-eqz p1, :cond_1

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_fill_type:I

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_usedGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_color:I

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalL:F

    iput p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addHorizontalR:F

    iput p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalT:F

    iput p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_addVerticalB:F

    iput p9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->background_border_radius:I

    :cond_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->invalidate()V

    return-void
.end method

.method public updateOuter_Shadow(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_padding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    mul-float v1, v1, p2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_shadow_radius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    mul-float v3, v3, p2

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->outer_glow_enabled:Z

    if-eqz v4, :cond_1

    float-to-int p2, v3

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->addPadding(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->dilate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    mul-float v3, v1, p2

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v3, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public updateSpans(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textDraw:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->requestLayout()V

    :goto_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    return-void
.end method

.method public visibilityCheck()V
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isNotVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->makeMeVisible()V

    :cond_0
    return-void
.end method
