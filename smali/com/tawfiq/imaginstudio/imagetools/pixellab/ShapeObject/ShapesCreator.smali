.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
.super Landroid/view/View;


# instance fields
.field HandlesActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field alpha:I

.field bounds:Landroid/graphics/RectF;

.field public changedGeometry:Z

.field currentlyDraggedPoint:Landroid/graphics/PointF;

.field dX:F

.field dY:F

.field public editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field private fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

.field private isRendering:Z

.field minDim:I

.field pnt:Landroid/graphics/Paint;

.field pntHandles:Landroid/graphics/Paint;

.field previousX:F

.field previousY:F

.field shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

.field shapePaint:Landroid/graphics/Paint;

.field strokePaint:Landroid/graphics/Paint;

.field stroke_alpha:I

.field stroke_blur:I

.field touchRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->touchRadius:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->minDim:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->isRendering:Z

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    const/16 v1, 0xff

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousX:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousY:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dX:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dY:F

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v0

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, v5, v2

    invoke-direct {v3, v5, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pntHandles:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->restoreStyles()V

    return-void
.end method

.method private updateAvailableHandlesPos()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method


# virtual methods
.method public clearMe()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->unhideTemp()V

    :cond_0
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-void
.end method

.method public dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v1

    sub-float/2addr v0, v1

    mul-float v0, v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float v1, p1, p2

    sub-float/2addr p1, p2

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public drawAvailableHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->getAbsolutePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->touchRadius:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    :goto_2
    div-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p1, v3, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->getPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->applyCapOnPaint(Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v1

    sget v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v1

    sget v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    if-eqz v4, :cond_3

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v1

    sget v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v1

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "mfp2JbFB"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V

    const-string v0, "vCScn1x"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->absolutePortionF(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const-string v1, "mrdCt2Pon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "3GsP"

    const/16 v1, 0xff

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    const-string v0, "3JaWTe"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    const-string v0, "UTRQ"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    const-string v1, "2Xskb7"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getAbsolutePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    return-object v0
.end method

.method public init()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fromBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V

    :goto_0
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->changedGeometry:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->drawShape(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->isRendering:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pntHandles:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->drawAvailableHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_12

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    if-eq v2, v1, :cond_10

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousY:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousY:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    const/high16 v2, 0x3f000000    # 0.5f

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->changedGeometry:Z

    if-eqz v0, :cond_f

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v3, v6, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result v3

    sget-object v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v6, p1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result p1

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->minDim:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v4, :cond_3

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v3

    goto :goto_2

    :cond_3
    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v6, v3, v6

    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->minDim:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, p1

    goto :goto_3

    :cond_4
    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, p1, v6

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_7

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p1

    goto :goto_4

    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->top:F

    :goto_4
    iput v3, v2, Landroid/graphics/RectF;->top:F

    if-eqz v0, :cond_6

    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    :cond_6
    add-float/2addr p1, v3

    :goto_5
    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_c

    :cond_7
    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v5, v2

    if-nez v2, :cond_a

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v4, :cond_8

    iget v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_6

    :cond_8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    :goto_6
    iput v0, p1, Landroid/graphics/RectF;->right:F

    if-eqz v4, :cond_9

    sub-float/2addr v0, v3

    goto :goto_7

    :cond_9
    iget v0, p1, Landroid/graphics/RectF;->left:F

    :goto_7
    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_c

    :cond_a
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v3, v2

    div-float/2addr p1, v5

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v2, v2, p1

    mul-float p1, p1, v5

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v4, :cond_b

    iget v5, v3, Landroid/graphics/RectF;->right:F

    goto :goto_8

    :cond_b
    iget v5, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    :goto_8
    iput v5, v3, Landroid/graphics/RectF;->right:F

    if-eqz v0, :cond_c

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_9

    :cond_c
    iget v6, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, p1

    :goto_9
    iput v6, v3, Landroid/graphics/RectF;->bottom:F

    if-eqz v4, :cond_d

    sub-float/2addr v5, v2

    goto :goto_a

    :cond_d
    iget v5, v3, Landroid/graphics/RectF;->left:F

    :goto_a
    iput v5, v3, Landroid/graphics/RectF;->left:F

    if-eqz v0, :cond_e

    sub-float/2addr v6, p1

    goto :goto_b

    :cond_e
    iget v6, v3, Landroid/graphics/RectF;->top:F

    :goto_b
    iput v6, v3, Landroid/graphics/RectF;->top:F

    goto :goto_c

    :cond_f
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dX:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dY:F

    invoke-virtual {p1, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v2

    invoke-virtual {v0, v3, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FFZ)F

    move-result v0

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v4, v4, v2

    invoke-virtual {v3, v5, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FFZ)F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_d

    :cond_10
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    goto :goto_d

    :cond_11
    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dY:F

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousY:F

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->updateCurrentlyDraggedPoint(Landroid/graphics/PointF;)V

    :cond_12
    :goto_d
    return v1
.end method

.method public prepareEdit(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-void
.end method

.method public restoreStyles()V
    .locals 3

    const/16 v0, 0xff

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_cap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_color(I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_type(I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_gradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_width(I)V

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_color(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_type(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_gradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_0

    iput v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    :cond_0
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_type(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_color(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFillGradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_type(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_gradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIsRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->isRendering:Z

    return-void
.end method

.method public setOpacity(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V
    .locals 2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;Z)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->restoreStyles()V

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->updateAvailableHandlesPos()V

    if-eqz p3, :cond_1

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_cap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStroke_alpha(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStroke_blur(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStroke_colorFill(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_type(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_color(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStroke_gradientFill(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_type(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_gradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStroke_width(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_width(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mrdCt2Pon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    const-string v2, "3GsP"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    const-string v2, "3JaWTe"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    const-string v2, "UTRQ"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    int-to-float v1, v1

    div-float/2addr v5, v1

    iget v7, v4, Landroid/graphics/RectF;->top:F

    mul-float v7, v7, v6

    int-to-float v2, v2

    div-float/2addr v7, v2

    iget v8, v4, Landroid/graphics/RectF;->right:F

    mul-float v8, v8, v6

    div-float/2addr v8, v1

    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    mul-float v1, v1, v6

    div-float/2addr v1, v2

    invoke-direct {v3, v5, v7, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rectFToArr(Landroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "vCScn1x"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mfp2JbFB"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    const-string v2, "2Xskb7"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateControlsFromBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    move-object v4, p1

    invoke-virtual {p1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->setCurrShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    invoke-virtual {p3, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    move-object v5, p5

    invoke-virtual {p5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v3

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v6

    iget-object v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v7

    move-object/from16 v8, p6

    invoke-virtual {v8, v3, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setParamsQuietly(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v4, p10

    invoke-virtual {v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v3

    move-object/from16 v6, p8

    invoke-virtual {v6, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v3

    iget-object v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v7

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v8

    move-object/from16 v9, p11

    invoke-virtual {v9, v3, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setParamsQuietly(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_cap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    sget-object v7, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    const/4 v8, 0x0

    if-ne v3, v7, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_cap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    sget-object v7, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v7, p12

    goto :goto_1

    :cond_1
    move-object/from16 v7, p12

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v7, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    move-object/from16 v7, p14

    invoke-virtual {v7, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    invoke-virtual {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-virtual {p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    move-object v5, p4

    invoke-virtual {p4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-virtual/range {p8 .. p8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    move-object/from16 v5, p7

    invoke-virtual {v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-virtual/range {p10 .. p10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    move-object/from16 v4, p9

    invoke-virtual {v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-virtual/range {p14 .. p14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    move-object/from16 v4, p13

    invoke-virtual {v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v8, 0x8

    :goto_2
    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public updateCurrentlyDraggedPoint(Landroid/graphics/PointF;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->getAbsolutePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->touchRadius:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    :cond_1
    return-void
.end method
