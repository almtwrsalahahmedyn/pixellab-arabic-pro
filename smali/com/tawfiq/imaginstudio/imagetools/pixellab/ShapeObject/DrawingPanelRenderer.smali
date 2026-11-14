.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p0, v2, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 4

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapTopPadding(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapLeftPadding(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapBottomPadding(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapRightPadding(Landroid/graphics/Bitmap;)I

    move-result p0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v0, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private static getBitmapBottomPadding(Landroid/graphics/Bitmap;)I
    .locals 12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-array v9, v8, [I

    const/4 v10, -0x1

    add-int/2addr v0, v10

    move v11, v0

    :goto_0
    if-ltz v11, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v9

    move v3, v8

    move v5, v11

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_2

    aget v1, v9, v0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v11, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    :goto_2
    return v11

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_3
    return v10
.end method

.method public static getBitmapFromDrawing(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v1, v1, p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static getBitmapLeftPadding(Landroid/graphics/Bitmap;)I
    .locals 14

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-array v10, v9, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, -0x1

    if-ge v12, v0, :cond_3

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
    if-ge v1, v9, :cond_2

    aget v2, v10, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_1

    add-int/2addr v12, v13

    if-lez v12, :cond_0

    move v11, v12

    :cond_0
    return v11

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return v13
.end method

.method private static getBitmapRightPadding(Landroid/graphics/Bitmap;)I
    .locals 12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-array v10, v9, [I

    const/4 v11, -0x1

    add-int/2addr v0, v11

    :goto_0
    if-ltz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v10

    move v5, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_2

    aget v2, v10, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v11
.end method

.method private static getBitmapTopPadding(Landroid/graphics/Bitmap;)I
    .locals 14

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-array v10, v8, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, -0x1

    if-ge v12, v9, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v5, v12

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_2

    aget v1, v10, v0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1

    add-int/2addr v12, v13

    if-lez v12, :cond_0

    move v11, v12

    :cond_0
    return v11

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return v13
.end method
