.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;
.super Landroid/view/View;


# instance fields
.field vignetteColorA:I

.field vignetteColorB:I

.field vignetteColorG:I

.field vignetteColorR:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    const/16 p1, 0xaa

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    const/16 p1, 0xaa

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->init()V

    return-void
.end method


# virtual methods
.method public getVignetteColor()I
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getVignetteColorAlpha()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    const/4 v3, 0x4

    aget v1, v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    new-instance v10, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/graphics/Paint;-><init>(I)V

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v5, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v2, v1, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    filled-new-array {v4, v4, v3}, [I

    move-result-object v15

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/RadialGradient;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v12, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v13, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v14, v3, v4

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v2

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v6, v1, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v2, v3}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v9, v1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setVignetteAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVignetteColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
