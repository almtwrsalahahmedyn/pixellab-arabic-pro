.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
.super Landroid/view/View;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;
    }
.end annotation


# instance fields
.field currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

.field public customBeziers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;",
            ">;"
        }
    .end annotation
.end field

.field defaultOffset:F

.field dx:F

.field dy:F

.field public editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field fingerPos:Landroid/graphics/PointF;

.field isMotionMove:Z

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

.field maskMode:Z

.field maskOffsetCounter:I

.field needNotifyMaskedObject:Z

.field objectAngle:F

.field objectPivot:Landroid/graphics/PointF;

.field pntBezier:Landroid/graphics/Paint;

.field pntBezierSelected:Landroid/graphics/Paint;

.field prevX:F

.field prevY:F

.field private renderMode:Z

.field shapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field textReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

.field zoomF:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskMode:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->isMotionMove:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->renderMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevX:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevY:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dx:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dy:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskOffsetCounter:I

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->needNotifyMaskedObject:Z

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezierSelected:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;->doOnBezier(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_2
    return-object v1
.end method

.method private notifyMaskedObject()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getAllPaths()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBezierMaskPath(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getAllPaths()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBezierMaskPath(Ljava/util/ArrayList;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->needNotifyMaskedObject:Z

    return-void
.end method

.method private startEmpty()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private startNew(FF)V
    .locals 2

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startEmpty()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addPointLast(Landroid/graphics/PointF;)Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void
.end method


# virtual methods
.method public addAfterSelected()V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$2;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public addFromStringArrayList(Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startEmpty()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v1

    if-eqz p4, :cond_1

    invoke-virtual {v1, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setStyleFromBundle(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setStyleForMask()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    :goto_0
    iget p4, p2, Landroid/graphics/RectF;->left:F

    neg-float v3, p4

    iget p4, p2, Landroid/graphics/RectF;->top:F

    neg-float v4, p4

    iget v5, p3, Landroid/graphics/RectF;->left:F

    iget v6, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v7, p4, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float v8, p3, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dataFromStringArrayList(Ljava/util/ArrayList;FFFFFF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public addNew()V
    .locals 2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNewDefaultForMask(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNewDefault(Z)V

    :goto_2
    return-void
.end method

.method public clearMe()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskOffsetCounter:I

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->restoreRotations()V

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->restoreRotations()V

    :cond_1
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->unhideTemp()V

    :cond_2
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public closeSelected()V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$5;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void
.end method

.method public commitTransform(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->commitTransforms(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copySelected()V
    .locals 3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    mul-float v2, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->copy(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void
.end method

.method public defaultOnSelected()V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public divideNext()V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$4;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public getAllPaths()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBitmapFromBezierPanel(I)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v1, v1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v2, v2, p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->toggleRenderMode(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->toggleRenderMode(Z)V

    return-object v1
.end method

.method public initiate()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$1;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initiateMaskMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 7

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0, v2, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRotations(ZZZ)V

    iget v3, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    int-to-float v3, v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v4

    iget v5, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v5, v5, v1

    add-float/2addr v5, v4

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v4

    iget v6, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v6, v6, v1

    add-float/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v2, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRotations(ZZZ)V

    iget v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    int-to-float v3, v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    iget v5, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v5, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    iget v6, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v1

    add-float/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    :cond_2
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskMode:Z

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_4

    iget-object p1, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    :goto_1
    if-eqz p1, :cond_7

    const-string p2, "BcR2"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "st"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->addFromStringArrayList(Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNewDefaultForMask(Landroid/graphics/RectF;)V

    :cond_8
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->selectBezier(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_9
    return-void
.end method

.method public isCurrBezierClosed()Z
    .locals 1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifySelectionChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;->selectionChanged(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->drawPath(Landroid/graphics/Canvas;)V

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->renderMode:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v2, p1, v3, v4, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->drawPathPoints(Landroid/graphics/Canvas;ZZF)V

    :cond_3
    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->renderMode:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne v3, v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v2, p1, v4, v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->drawPathPoints(Landroid/graphics/Canvas;ZZF)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->isMotionMove:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    const/high16 v6, -0x40800000    # -1.0f

    mul-float v0, v0, v6

    invoke-static {v4, v5, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNew(FF)V

    :cond_2
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v5

    if-nez v5, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    goto/16 :goto_3

    :cond_4
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevX:F

    sub-float p1, v4, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dx:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevY:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dy:F

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevX:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevY:F

    invoke-virtual {v5, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dragCurrent(FF)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setY(F)V

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->resetDragTarget()V

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->needNotifyMaskedObject:Z

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifyMaskedObject()V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v1, v4, v0, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectPoint(FFF)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eq v1, v5, :cond_7

    const/4 p1, 0x0

    iput-object p1, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    if-eqz p1, :cond_8

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;->selectionChanged(I)V

    :cond_8
    move-object v5, v1

    :cond_9
    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setDragWhole()V

    goto :goto_2

    :cond_a
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne p1, v1, :cond_b

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v5, v4, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectPoint(FFF)Z

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v5, v4, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setDragTarget(FFF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    goto :goto_2

    :cond_b
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addPointLast(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    goto :goto_1

    :cond_c
    invoke-direct {p0, v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNew(FF)V

    :goto_1
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {v5, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setDragTarget(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;)V

    :goto_2
    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevX:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevY:F

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dx:F

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dy:F

    :cond_d
    :goto_3
    return v2
.end method

.method public openSelected()V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$6;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void
.end method

.method public pathChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->isMotionMove:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->needNotifyMaskedObject:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifyMaskedObject()V

    :goto_0
    return-void
.end method

.method public pathsToBundle(Z)Landroid/os/Bundle;
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addToArrayList(Ljava/util/ArrayList;Z)V

    if-eqz p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "st"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->styleToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v2, v3

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepareEdit(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-void
.end method

.method public removeSelected()V
    .locals 3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v1

    if-lt v1, v2, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->removeSelected()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->selectBezier(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_3
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public removeSelectedBezier()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v1, v0, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifyMaskedObject()V

    :cond_2
    return-void
.end method

.method public removeSelectedPoint()V
    .locals 0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->removeSelected()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    return-void
.end method

.method public reportActionability()V
    .locals 8

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCount()I

    move-result v2

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne v4, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-interface {v1, v2, v3, v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;->pathChanged(IZZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public restoreOptions()V
    .locals 0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->clearMe()V

    return-void
.end method

.method public rotateBezier(I)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$14;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$14;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public scaleBezier(I)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$13;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$13;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public selectBezier(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    if-eq v1, p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public selectNextBezier()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    :cond_2
    return-void
.end method

.method public selectPrevBezier()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    :cond_2
    return-void
.end method

.method public setCurrMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFill(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public setFillOpacity(I)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$7;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$7;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    return-void
.end method

.method public setStroke(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$11;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$12;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$12;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;Landroid/graphics/Paint$Cap;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public setStrokeOpacity(I)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void
.end method

.method public startNewDefault(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierShapeBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_4

    new-instance p1, Landroid/graphics/RectF;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierShapeBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string v2, "BcR2"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "st"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v7, v3, p1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->addFromStringArrayList(Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->selectBezier(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;->updateMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    :cond_3
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/PointF;

    int-to-float p1, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, p1, v3

    int-to-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v2, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x64

    if-ge v1, v5, :cond_7

    if-nez v3, :cond_7

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v3, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->isStillDefault(Landroid/graphics/PointF;F)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    rem-float/2addr v1, v3

    iget v3, v2, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x40400000    # 3.0f

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    mul-float v6, v6, v5

    add-float/2addr v6, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    rem-float/2addr v6, v3

    invoke-virtual {v2, v1, v6}, Landroid/graphics/PointF;->set(FF)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_2
    move v1, v4

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startEmpty()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->doDefaultPreset(Landroid/graphics/PointF;F)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void
.end method

.method public startNewDefaultForMask(Landroid/graphics/RectF;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startEmpty()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setStyleForMask()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskOffsetCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskOffsetCounter:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->doDefaultPresetMask(Landroid/graphics/RectF;F)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void
.end method

.method public toggleRenderMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->renderMode:Z

    return-void
.end method

.method public zoomChanged(F)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
