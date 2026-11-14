.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;
    }
.end annotation


# instance fields
.field public activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

.field public aspectX:I

.field public aspectY:I

.field public currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

.field currentPath:Landroid/graphics/Path;

.field isPreview:Z

.field public rect_roundedCorners:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->isPreview:Z

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->setAspect()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->setHandles()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    return-void
.end method

.method private addPointsToPath([F[FFF)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFFZ)V

    return-void
.end method

.method private addPointsToPath([F[FFFZ)V
    .locals 5

    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    if-nez v1, :cond_0

    aget v3, p1, v1

    mul-float v3, v3, p3

    aget v4, p2, v1

    mul-float v4, v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_0
    aget v3, p1, v1

    mul-float v3, v3, p3

    aget v4, p2, v1

    mul-float v4, v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_2
    return-void
.end method

.method private drawCustom100(IFF)V
    .locals 12

    iget-object v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    add-int/lit8 v0, p1, -0x16

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v1, v0, 0x14

    rem-int/lit8 v2, v0, 0x14

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p2, v3

    move v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr p3, v4

    move v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-int/lit8 v6, v2, 0x3

    if-lez v1, :cond_0

    add-int/lit8 v6, v2, 0x4

    :cond_0
    move v7, v6

    const/4 v8, 0x1

    if-lt v1, v8, :cond_1

    const/4 v8, 0x3

    if-gt v1, v8, :cond_1

    mul-int/lit8 v7, v6, 0x2

    :cond_1
    const/4 v8, 0x4

    if-ne v1, v8, :cond_2

    mul-int/lit8 v7, v6, 0x4

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_9

    int-to-float v0, v8

    const v2, 0x40c90fdb

    mul-float/2addr v0, v2

    int-to-float v2, v7

    div-float/2addr v0, v2

    const v2, -0x40490fdb

    add-float/2addr v0, v2

    move v2, v5

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    rem-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_7

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v10

    goto :goto_1

    :cond_4
    const/4 v10, 0x2

    if-ne v1, v10, :cond_5

    rem-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_7

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v2, v10

    goto :goto_1

    :cond_5
    const/4 v10, 0x3

    if-ne v1, v10, :cond_6

    rem-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_7

    const v10, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v10

    goto :goto_1

    :cond_6
    rem-int/lit8 v10, v8, 0x4

    const/4 v11, 0x1

    if-le v10, v11, :cond_7

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v10

    :cond_7
    :goto_1
    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float/2addr v6, v2

    add-float/2addr v6, v3

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v2

    add-float/2addr v10, v4

    if-nez v8, :cond_8

    invoke-virtual {v9, v6, v10}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_8
    invoke-virtual {v9, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private setAspect()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel:[I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x1a

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    :goto_0
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x13

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    const/16 v0, 0x11

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x9

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    const/4 v0, 0x7

    :goto_1
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    goto :goto_2

    :pswitch_4
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    goto :goto_2

    :pswitch_5
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setHandles()V
    .locals 4

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel:[I

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->applyPreset1()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iput-boolean v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    iput-boolean v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    iput-boolean v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->toggleAll(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInitialArea(IIZ)Landroid/graphics/RectF;
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x1

    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p3, :cond_2

    iget p3, v1, Landroid/graphics/RectF;->right:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iput p3, v1, Landroid/graphics/RectF;->right:F

    iget p3, v1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p3, v0

    iput p3, v1, Landroid/graphics/RectF;->bottom:F

    :cond_2
    new-instance p3, Landroid/graphics/Point;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget p1, p3, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p1, p2

    iget p2, p3, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-object v1
.end method

.method public getPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 48

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->isPreview:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectX:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->aspectY:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    invoke-direct {v1, v7, v7, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p1

    :goto_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v15

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    invoke-direct {v6, v1, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->drawCustom100(IFF)V

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel:[I

    aget v0, v0, v1

    const/high16 v10, 0x43340000    # 180.0f

    const v3, 0x3db851ec    # 0.09f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3dcccccd    # 0.1f

    const v11, 0x3f6b851f    # 0.92f

    const/16 v17, 0x1

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/high16 v1, 0x3ec00000    # 0.375f

    const/high16 v16, 0x3e800000    # 0.25f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f400000    # 0.75f

    const/4 v2, 0x5

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v22, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_4

    :pswitch_0
    new-array v1, v14, [F

    fill-array-data v1, :array_0

    new-array v2, v14, [F

    fill-array-data v2, :array_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v3, v9

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFFZ)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v7, v7, v9, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_2

    :pswitch_1
    new-array v0, v12, [F

    fill-array-data v0, :array_2

    new-array v1, v12, [F

    fill-array-data v1, :array_3

    invoke-direct {v6, v0, v1, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_2
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    const v2, 0x3f28f5c3    # 0.66f

    mul-float v2, v2, v15

    invoke-direct {v1, v7, v7, v9, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v1, v9, v19

    mul-float v4, v4, v15

    mul-float v3, v3, v9

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v1, v9, v11

    mul-float v15, v15, v11

    const v3, 0x3d50e560    # 0.051f

    mul-float v9, v9, v3

    invoke-virtual {v0, v1, v15, v9, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_3

    :pswitch_4
    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    new-array v0, v0, [F

    fill-array-data v0, :array_7

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_5
    new-array v0, v2, [F

    fill-array-data v0, :array_8

    new-array v1, v2, [F

    fill-array-data v1, :array_9

    invoke-direct {v6, v0, v1, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_6
    new-array v0, v13, [F

    fill-array-data v0, :array_a

    new-array v1, v13, [F

    fill-array-data v1, :array_b

    invoke-direct {v6, v0, v1, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_7
    new-array v0, v12, [F

    fill-array-data v0, :array_c

    new-array v1, v12, [F

    fill-array-data v1, :array_d

    invoke-direct {v6, v0, v1, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v2, v9, v21

    invoke-virtual {v0, v2, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v25, v9, v19

    const/high16 v3, 0x3f600000    # 0.875f

    mul-float v14, v15, v3

    const v3, 0x3fa8f5c2    # 1.3199999f

    mul-float v23, v9, v3

    const/4 v3, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move/from16 v21, v25

    move/from16 v22, v14

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const/high16 v4, 0x3f200000    # 0.625f

    mul-float v23, v9, v4

    mul-float v4, v15, v5

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v28, v15, v5

    move-object/from16 v22, v0

    move/from16 v24, v3

    move/from16 v25, v2

    move/from16 v26, v4

    move/from16 v27, v2

    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v25, v9, v1

    const/16 v26, 0x0

    mul-float v13, v9, v16

    const/16 v28, 0x0

    move-object/from16 v22, v0

    move/from16 v23, v2

    move/from16 v24, v4

    move/from16 v27, v13

    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v10, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v0, -0x415c28f6    # -0.32f

    mul-float v11, v9, v0

    const/4 v12, 0x0

    move v5, v15

    move v15, v2

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_2

    :pswitch_9
    move v5, v15

    const/16 v0, 0xa

    new-array v1, v0, [F

    fill-array-data v1, :array_e

    new-array v0, v0, [F

    fill-array-data v0, :array_f

    invoke-direct {v6, v1, v0, v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    mul-float v1, v1, v21

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v8, v1, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :pswitch_b
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1

    :pswitch_c
    move v5, v15

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2

    :pswitch_d
    move v5, v15

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v1, v9, v21

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2

    :pswitch_e
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v22

    add-float/2addr v5, v3

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v10, v10}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_4

    :pswitch_f
    move v5, v15

    mul-float v0, v9, v22

    div-float v15, v5, v0

    invoke-static {v15, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    new-array v1, v2, [F

    const/4 v0, 0x0

    aput v11, v1, v0

    sub-float v0, v18, v11

    aput v0, v1, v17

    const/4 v3, 0x2

    aput v18, v1, v3

    aput v0, v1, v14

    aput v11, v1, v13

    new-array v2, v2, [F

    fill-array-data v2, :array_10

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move v3, v9

    move v4, v5

    move v15, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFFZ)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    mul-float v11, v11, v22

    mul-float v11, v11, v9

    invoke-direct {v1, v7, v7, v11, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto/16 :goto_2

    :pswitch_10
    mul-float v22, v22, v9

    div-float v0, v15, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-array v1, v2, [F

    const/4 v3, 0x0

    aput v7, v1, v3

    sub-float v0, v18, v0

    aput v0, v1, v17

    const/4 v3, 0x2

    aput v18, v1, v3

    aput v0, v1, v14

    aput v7, v1, v13

    new-array v0, v2, [F

    fill-array-data v0, :array_11

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_11
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v1, v9, v5

    mul-float v2, v15, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v4, 0x3f3ae148    # 0.73f

    mul-float v21, v15, v4

    const v5, 0x3d4ccccd    # 0.05f

    mul-float v22, v9, v5

    const v10, 0x3f2b851f    # 0.67f

    mul-float v10, v10, v15

    const v12, 0x3cf5c28f    # 0.03f

    mul-float v24, v9, v12

    const v12, 0x3f19999a    # 0.6f

    mul-float v25, v15, v12

    move-object/from16 v19, v0

    move/from16 v20, v1

    move/from16 v23, v10

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v12, -0x435c28f6    # -0.02f

    mul-float v27, v9, v12

    const v12, 0x3ef0a3d7    # 0.47f

    mul-float v25, v15, v12

    const v12, 0x3ca3d70a    # 0.02f

    mul-float v33, v9, v12

    const v12, 0x3e99999a    # 0.3f

    mul-float v30, v15, v12

    const v12, 0x3da3d70a    # 0.08f

    mul-float v31, v9, v12

    const v12, 0x3e570a3d    # 0.21f

    mul-float v32, v15, v12

    move-object/from16 v26, v0

    move/from16 v28, v25

    move/from16 v29, v33

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v12, 0x3e6b851f    # 0.23f

    mul-float v31, v9, v12

    mul-float v36, v15, v7

    const v7, 0x3f0f5c29    # 0.56f

    mul-float v37, v9, v7

    const v7, -0x42dc28f6    # -0.04f

    mul-float v38, v15, v7

    mul-float v39, v9, v4

    mul-float v40, v15, v5

    move-object/from16 v34, v0

    move/from16 v35, v31

    invoke-virtual/range {v34 .. v40}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v4, 0x3f6147ae    # 0.88f

    mul-float v20, v9, v4

    const v4, 0x3df5c28f    # 0.12f

    mul-float v21, v15, v4

    mul-float v4, v9, v18

    const v5, 0x3e8a3d71    # 0.27f

    mul-float v23, v15, v5

    move-object/from16 v19, v0

    move/from16 v22, v4

    move/from16 v24, v4

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v5, 0x3f5c28f6    # 0.86f

    mul-float v26, v9, v5

    const v7, 0x3f547ae1    # 0.83f

    mul-float v27, v15, v7

    const v7, 0x3f30a3d7    # 0.69f

    mul-float v28, v9, v7

    const v7, 0x3f63d70a    # 0.89f

    mul-float v29, v15, v7

    move-object/from16 v23, v0

    move/from16 v25, v10

    invoke-virtual/range {v23 .. v29}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v4, 0x3f028f5c    # 0.51f

    mul-float v27, v9, v4

    const v4, 0x3f733333    # 0.95f

    mul-float v28, v15, v4

    const v4, 0x3eae147b    # 0.34f

    mul-float v29, v9, v4

    const v4, 0x3f666666    # 0.9f

    mul-float v30, v15, v4

    mul-float v32, v15, v11

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v32}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v4, 0x3e0f5c29    # 0.14f

    mul-float v29, v9, v4

    const v4, 0x3f6e147b    # 0.93f

    mul-float v30, v15, v4

    mul-float v31, v9, v3

    const v3, 0x3f7851ec    # 0.97f

    mul-float v32, v15, v3

    const v3, 0x3f7d70a4    # 0.99f

    mul-float v34, v15, v3

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v34}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    const v3, 0x3d23d70a    # 0.04f

    mul-float v20, v9, v3

    const v3, 0x3f70a3d7    # 0.94f

    mul-float v21, v15, v3

    mul-float v23, v15, v5

    move-object/from16 v19, v0

    move/from16 v22, v1

    move/from16 v24, v1

    move/from16 v25, v2

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_3

    :pswitch_12
    const/4 v0, 0x7

    new-array v1, v0, [F

    fill-array-data v1, :array_12

    new-array v0, v0, [F

    fill-array-data v0, :array_13

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_13
    sub-float v0, v15, v9

    div-float v1, v15, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v2, v9, v16

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v2, v9, v21

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v9, v9, v19

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2

    :pswitch_14
    mul-float v1, v1, v9

    invoke-static {v15, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v2, v15, v21

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v3, v15, v16

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    sub-float v4, v9, v0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v2, v15, v19

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2

    :pswitch_15
    sub-float v0, v9, v15

    div-float v1, v9, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v2, v15, v16

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v2, v15, v21

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    mul-float v15, v15, v19

    invoke-virtual {v1, v0, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :pswitch_16
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_14

    new-array v0, v0, [F

    fill-array-data v0, :array_16

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_15

    new-array v0, v0, [F

    fill-array-data v0, :array_16

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_17

    new-array v0, v0, [F

    fill-array-data v0, :array_16

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto :goto_3

    :pswitch_19
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_18

    new-array v0, v0, [F

    fill-array-data v0, :array_16

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto :goto_3

    :pswitch_1a
    const/4 v0, 0x5

    new-array v1, v0, [F

    fill-array-data v1, :array_19

    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto :goto_3

    :pswitch_1b
    const/4 v0, 0x5

    new-array v1, v0, [F

    fill-array-data v1, :array_1b

    new-array v0, v0, [F

    fill-array-data v0, :array_1c

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto :goto_3

    :pswitch_1c
    const/16 v0, 0xc

    new-array v1, v0, [F

    fill-array-data v1, :array_1d

    new-array v0, v0, [F

    fill-array-data v0, :array_1e

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto :goto_3

    :pswitch_1d
    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_1f

    new-array v0, v0, [F

    fill-array-data v0, :array_20

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto :goto_3

    :pswitch_1e
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_21

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto :goto_3

    :pswitch_1f
    const/4 v0, 0x5

    new-array v1, v0, [F

    fill-array-data v1, :array_23

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-direct {v6, v1, v0, v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->addPointsToPath([F[FFF)V

    goto :goto_3

    :goto_2
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :goto_3
    const/4 v2, 0x1

    goto :goto_5

    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_2

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    :cond_2
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x0
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x0
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_4
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
    .end array-data

    :array_6
    .array-data 4
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3ec28f5c    # 0.38f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_a
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3ec7ae14    # 0.39f
        0x3f147ae1    # 0.58f
        0x3f051eb8    # 0.52f
        0x3f428f5c    # 0.76f
        0x3f2b851f    # 0.67f
        0x3f800000    # 1.0f
        0x3ef5c28f    # 0.48f
        0x3f11eb85    # 0.57f
        0x3e75c28f    # 0.24f
        0x3ebd70a4    # 0.37f
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x3e3851ec    # 0.18f
        0x0
        0x3e8f5c29    # 0.28f
        0x3ea3d70a    # 0.32f
        0x3f0ccccd    # 0.55f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f30a3d7    # 0.69f
        0x3f266666    # 0.65f
        0x3ee66666    # 0.45f
        0x3ec7ae14    # 0.39f
        0x3e3851ec    # 0.18f
    .end array-data

    :array_e
    .array-data 4
        0x3f000000    # 0.5f
        0x3f1c28f6    # 0.61f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x0
        0x3ec7ae14    # 0.39f
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x3ec28f5c    # 0.38f
        0x3ec28f5c    # 0.38f
        0x3f1c28f6    # 0.61f
        0x3f800000    # 1.0f
        0x3f428f5c    # 0.76f
        0x3f800000    # 1.0f
        0x3f1c28f6    # 0.61f
        0x3ec28f5c    # 0.38f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3ed1eb85    # 0.41f
        0x3e051eb8    # 0.13f
        0x3e2e147b    # 0.17f
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_14
    .array-data 4
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_17
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1d
    .array-data 4
        0x3eb33333    # 0.35f
        0x3f266666    # 0.65f
        0x3f266666    # 0.65f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x3f266666    # 0.65f
        0x3eb33333    # 0.35f
        0x3eb33333    # 0.35f
        0x0
        0x0
        0x3eb33333    # 0.35f
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x0
        0x3eb33333    # 0.35f
        0x3eb33333    # 0.35f
        0x3f266666    # 0.65f
        0x3f266666    # 0.65f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x3f266666    # 0.65f
        0x3eb33333    # 0.35f
        0x3eb33333    # 0.35f
    .end array-data

    :array_1f
    .array-data 4
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f59999a    # 0.85f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f59999a    # 0.85f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3ecccd
        0x3e19999a    # 0.15f
        0x3e99999a    # 0.3f
        0x0
        0x3e99999a    # 0.3f
        0x3e19999a    # 0.15f
        0x3ecccd
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3e19999a    # 0.15f
        0x3ecccd
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f59999a    # 0.85f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f59999a    # 0.85f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3ecccd
        0x3e19999a    # 0.15f
        0x3e99999a    # 0.3f
    .end array-data

    :array_21
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
        0x0
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x0
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->setAspect()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->toggleAll(Z)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->setHandles()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currentPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    return-void
.end method
