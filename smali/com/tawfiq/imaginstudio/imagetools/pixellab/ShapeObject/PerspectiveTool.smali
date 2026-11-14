.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;
    }
.end annotation


# static fields
.field static DRAG_HANDLE_1:I = 0x1

.field static DRAG_HANDLE_2:I = 0x2

.field static DRAG_HANDLE_3:I = 0x3

.field static DRAG_HANDLE_4:I = 0x4


# instance fields
.field componentRef:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

.field dragId:I

.field handleDrawColor1:I

.field handleDrawColor2:I

.field handleDrawPaint:Landroid/graphics/Paint;

.field handleSize:I

.field handleTouchSize:I

.field mInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

.field point1:Landroid/graphics/PointF;

.field point1tmp:Landroid/graphics/PointF;

.field point2:Landroid/graphics/PointF;

.field point2tmp:Landroid/graphics/PointF;

.field point3:Landroid/graphics/PointF;

.field point3tmp:Landroid/graphics/PointF;

.field point4:Landroid/graphics/PointF;

.field point4tmp:Landroid/graphics/PointF;

.field private relativeArea:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleSize:I

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    const/16 p1, 0x96

    const/16 v0, 0xff

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor1:I

    const/16 p1, 0x64

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor2:I

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v3, 0x43020000    # 130.0f

    invoke-direct {p1, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-direct {p1, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1tmp:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2tmp:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3tmp:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4tmp:Landroid/graphics/PointF;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    int-to-float v6, v1

    div-float/2addr v4, v6

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v6

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v8

    div-float/2addr v5, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v7

    div-float/2addr v4, v6

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v9

    div-float/2addr v7, v6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v8

    div-float/2addr v5, v6

    invoke-direct {v4, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    iget-object v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v10

    div-float/2addr v8, v6

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v9

    div-float/2addr v7, v6

    invoke-direct {v5, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v1, :cond_0

    new-instance v7, Landroid/graphics/PointF;

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    int-to-float v10, v6

    iget v11, v2, Landroid/graphics/PointF;->x:F

    mul-float v11, v11, v10

    add-float/2addr v11, v9

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    mul-float v9, v9, v10

    add-float/2addr v9, v8

    invoke-direct {v7, v11, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v11, v9, Landroid/graphics/PointF;->x:F

    iget v12, v3, Landroid/graphics/PointF;->x:F

    mul-float v12, v12, v10

    add-float/2addr v12, v11

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget v11, v3, Landroid/graphics/PointF;->y:F

    mul-float v11, v11, v10

    add-float/2addr v11, v9

    invoke-direct {v8, v12, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    iget-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    iget v13, v4, Landroid/graphics/PointF;->x:F

    mul-float v13, v13, v10

    add-float/2addr v13, v12

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v12, v4, Landroid/graphics/PointF;->y:F

    mul-float v12, v12, v10

    add-float/2addr v12, v11

    invoke-direct {v9, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->x:F

    mul-float v14, v14, v10

    add-float/2addr v14, v13

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    mul-float v10, v10, v13

    add-float/2addr v10, v12

    invoke-direct {v11, v14, v10}, Landroid/graphics/PointF;-><init>(FF)V

    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v15, p1

    move/from16 v16, v10

    move/from16 v17, v7

    move/from16 v18, v12

    move/from16 v19, v8

    move-object/from16 v20, p2

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v14, v9, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->y:F

    iget v7, v11, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->y:F

    move-object/from16 v13, p1

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v18, p2

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private validPoly()Z
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->intersect(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, p2

    add-float/2addr v1, p2

    add-float/2addr p1, p2

    invoke-direct {v0, v2, v3, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    mul-int/lit8 p3, p3, -0x1

    int-to-float p1, p3

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0
.end method

.method public disable()V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->restoreRotations()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->restoreRotations()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    return-void
.end method

.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor2:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v3, 0x3c

    const/16 v4, 0xff

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dpToPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor2:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v0, 0x6

    invoke-direct {p0, p1, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1tmp:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2tmp:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3tmp:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4tmp:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_1:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    :goto_0
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_2:I

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    goto :goto_0

    :cond_2
    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_3:I

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    goto :goto_0

    :cond_3
    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_4:I

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->validPoly()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1tmp:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2tmp:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3tmp:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4tmp:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_5
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    if-eqz p1, :cond_7

    new-instance p1, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    invoke-interface {v4, p1, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;->handlesDragged(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_3

    :cond_6
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    sget p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_1:I

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    sget p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_2:I

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_b

    sget p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_3:I

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_4:I

    goto :goto_2

    :goto_4
    return v0
.end method

.method public setComponentReference(Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;)V
    .locals 3

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

    instance-of v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p1, v2, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRotations(ZZZ)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p1, v2, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRotations(ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHandles(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, p1

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float p2, p2, v1

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, p3

    add-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget v0, p4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float p2, p2, v0

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p4

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHandles(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    iget v1, p5, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    iget v0, p5, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v0

    add-float/2addr v1, p2

    iget p2, p5, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, p3

    add-float/2addr v0, p2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget p3, p4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v0, v0, p3

    add-float/2addr v0, p2

    iget p2, p5, Landroid/graphics/RectF;->top:F

    iget p3, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float p4, p4, p3

    add-float/2addr p4, p2

    invoke-virtual {p1, v0, p4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPerspectiveToolInterface(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    return-void
.end method
