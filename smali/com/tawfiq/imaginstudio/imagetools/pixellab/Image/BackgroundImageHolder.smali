.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
.super Landroid/view/View;


# instance fields
.field public blurRadius:I

.field bounds:Landroid/graphics/Rect;

.field brightness:I

.field contrast:I

.field private currBitmap:Landroid/graphics/Bitmap;

.field hue:I

.field pntColor:Landroid/graphics/Paint;

.field pntGradient:Landroid/graphics/Paint;

.field pntImage:Landroid/graphics/Paint;

.field pntImageCircle:Landroid/graphics/Paint;

.field renderMode:Z

.field renderScaleF:F

.field saturation:I

.field private usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderScaleF:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->blurRadius:I

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x64

    invoke-direct {v0, p1, p1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntColor:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImageCircle:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private calculateContrastColor(I)Z
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float v0, v0

    const v3, 0x3e991687    # 0.299f

    mul-float v0, v0, v3

    int-to-float v2, v2

    const v3, 0x3f1645a2    # 0.587f

    mul-float v2, v2, v3

    add-float/2addr v2, v0

    int-to-float p1, p1

    const v0, 0x3de978d5    # 0.114f

    mul-float p1, p1, v0

    add-float/2addr p1, v2

    const/high16 v0, 0x433a0000    # 186.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private unloadImage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;
    .locals 5

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

.method public applyEffects()V
    .locals 4

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    if-nez v0, :cond_1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    invoke-static {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/ColorFilterGenerator;->adjustColor(IIII)Landroid/graphics/ColorFilter;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public contrastColorIsDark()Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getColorAtTopLeft()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 v0, -0x1000000

    :goto_0
    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->calculateContrastColor(I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->loadBitmap()V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->calculateContrastColor(I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->calculateContrastColor(I)Z

    move-result v0

    return v0
.end method

.method public flipPortion(Landroid/graphics/RectF;ZZ)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz p2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v2, v1, v2

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    :goto_0
    if-eqz p3, :cond_1

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v1, v3

    goto :goto_1

    :cond_1
    iget v3, p1, Landroid/graphics/RectF;->top:F

    :goto_1
    if-eqz p2, :cond_2

    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float p2, v1, p2

    goto :goto_2

    :cond_2
    iget p2, p1, Landroid/graphics/RectF;->right:F

    :goto_2
    if-eqz p3, :cond_3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    goto :goto_3

    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    :goto_3
    invoke-direct {v0, v2, v3, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
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

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getRenderScaleF()F

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

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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

.method public getBlurRadius()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->blurRadius:I

    return v0
.end method

.method public getBrightness()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    return v0
.end method

.method public getContrast()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    return v0
.end method

.method public getContrastColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrastColorIsDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xbbbbbc

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHue()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    return v0
.end method

.method public getOvalPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

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

    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method public getRenderScaleF()F
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderScaleF:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getSaturation()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    return v0
.end method

.method public getUsedImage()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    return-object v0
.end method

.method public hasTransparency()Z
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v3, 0xff

    if-eq v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->hasAlpha()Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isCircular()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public loadBitmap()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getRenderScaleF()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getRenderScaleF()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v3

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v3

    aget v4, v3, v7

    int-to-float v4, v4

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v8

    goto :goto_0

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    mul-float v4, v4, v7

    float-to-int v4, v4

    aget v3, v3, v6

    int-to-float v3, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v5, v0, v8

    :cond_1
    mul-float v3, v3, v5

    float-to-int v0, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result v0

    invoke-static {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v3

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromAssets(Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v3

    aget v4, v3, v7

    int-to-float v4, v4

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v8

    goto :goto_2

    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_2
    mul-float v4, v4, v7

    float-to-int v4, v4

    aget v3, v3, v6

    int-to-float v3, v3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v5, v0, v8

    :cond_4
    mul-float v3, v3, v5

    float-to-int v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result v0

    invoke-static {v3, v5, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->loadBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#f44336"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    :cond_1
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntColor:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntColor:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->loadBitmap()V

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipH()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v0, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipV()Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v1, -0x40800000    # -1.0f

    :cond_6
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipH()Z

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipV()Z

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->flipPortion(Landroid/graphics/RectF;ZZ)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->rotateRect(Landroid/graphics/Rect;I)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->blurRadius:I

    if-lez v4, :cond_7

    invoke-virtual {p0, v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->gaussianBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImageCircle:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isCircular()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->rotateRect(Landroid/graphics/Rect;I)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getOvalPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImageCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_2
    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    if-eqz p1, :cond_a

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    :cond_a
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public rotateRect(Landroid/graphics/Rect;I)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    invoke-virtual {v1, p2, v2, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public setBlurRadius(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-le p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->blurRadius:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void
.end method

.method public setContrast(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void
.end method

.method public setEffectsNoUpdate(IIII)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void
.end method

.method public setHue(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void
.end method

.method public setRenderMode(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderScaleF:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSaturation(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void
.end method

.method public setUsedImage(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    return-void
.end method
