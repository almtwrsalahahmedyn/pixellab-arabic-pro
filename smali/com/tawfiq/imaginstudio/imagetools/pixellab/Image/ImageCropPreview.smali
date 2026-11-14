.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;
    }
.end annotation


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

.field _lastX:F

.field _lastY:F

.field activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

.field private backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field bottom:F

.field bounds:Landroid/graphics/Rect;

.field public circularCrop:Z

.field cropArea:Landroid/graphics/RectF;

.field currentlyDraggedPoint:Landroid/graphics/PointF;

.field public flipH:Z

.field public flipV:Z

.field private image:Landroid/graphics/Bitmap;

.field imgArea:Landroid/graphics/RectF;

.field imgHeight:I

.field imgWidth:I

.field left:F

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

.field public lockAspect:Z

.field private minDim:F

.field padding:I

.field private pntBorder:Landroid/graphics/Paint;

.field private pntCrop:Landroid/graphics/Paint;

.field private pntCropDark:Landroid/graphics/Paint;

.field private pntDarken:Landroid/graphics/Paint;

.field private pntImage:Landroid/graphics/Paint;

.field private pntOval:Landroid/graphics/Paint;

.field right:F

.field rotation:I

.field shouldUseDarkOnBitmap:Z

.field top:F

.field touchRadius:F

.field zoomWidgetReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->lockAspect:Z

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    const/16 v0, 0x64

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->padding:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    const/high16 v2, 0x40200000    # 2.5f

    mul-float v1, v1, v2

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->minDim:F

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->shouldUseDarkOnBitmap:Z

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->zoomWidgetReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCropDark:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCropDark:Landroid/graphics/Paint;

    const-string v3, "#2a2a2a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    const-string v2, "#80ff1744"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntDarken:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    const/16 v0, 0x3c

    invoke-static {v0, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateAvailableHandlesPos()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08010e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private drawCropper(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->shouldUseDarkOnBitmap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCropDark:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    :goto_0
    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->drawAvailableHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method private fixCropArea()V
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v7, v2

    if-lez v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iput v5, v0, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iput v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iput v5, v1, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iput v5, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    iput v5, v1, Landroid/graphics/RectF;->right:F

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    :goto_4
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    goto :goto_4

    :cond_a
    :goto_5
    return-void
.end method

.method private updateAvailableHandlesPos()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H0:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_1H:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H1:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_0H:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_00:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_10:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_11:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_01:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private useDark(Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    :try_start_0
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3e991687    # 0.299f

    mul-float p1, p1, v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f1645a2    # 0.587f

    mul-float v3, v3, v4

    add-float/2addr v3, p1

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3de978d5    # 0.114f

    mul-float p1, p1, v2

    add-float/2addr p1, v3

    const/high16 v2, 0x433a0000    # 186.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public cyclicRotate(Z)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    :goto_0
    return-void
.end method

.method public cyclicRotateRect(Landroid/graphics/RectF;I)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    rem-int/lit16 p2, p2, 0x168

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    :goto_1
    if-lez p2, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cyclicRotateRect(Landroid/graphics/RectF;Z)V

    add-int/lit8 p2, p2, -0x5a

    goto :goto_1

    :cond_2
    return-void
.end method

.method public cyclicRotateRect(Landroid/graphics/RectF;Z)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v0, v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :goto_0
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

.method public dpToPixels(I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public dpToPixelsInt(I)I
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

.method public drawAvailableHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_1

    const/4 v9, 0x2

    goto :goto_2

    :cond_1
    const/4 v9, 0x3

    :goto_2
    int-to-float v9, v9

    div-float/2addr v6, v9

    iget-object v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    if-eqz v2, :cond_2

    const/4 v7, 0x2

    :cond_2
    int-to-float v2, v7

    div-float/2addr v5, v2

    invoke-virtual {p1, v4, v3, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public drawGrid(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move/from16 v3, p3

    int-to-float v3, v3

    div-float v10, v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v11, v2, v3

    const/4 v12, 0x0

    const/high16 v13, 0x41200000    # 10.0f

    cmpl-float v2, v10, v13

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    add-float v14, v2, v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v14, v2

    if-gez v2, :cond_0

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v5, v14, v2

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v2, p1

    move v3, v5

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    float-to-int v2, v14

    goto :goto_0

    :cond_0
    cmpl-float v2, v11, v13

    if-lez v2, :cond_1

    :goto_1
    int-to-float v2, v12

    add-float v10, v2, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v10, v2

    if-gez v2, :cond_1

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v6, v10, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v2, p1

    move v4, v6

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    float-to-int v12, v10

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v1

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p1

    iget p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCropBounds()Landroid/graphics/RectF;
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    invoke-static {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->flipPortion(Landroid/graphics/RectF;ZZ)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cyclicRotateRect(Landroid/graphics/RectF;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageRotation()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->zoomWidgetReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->getZoomFactor()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public imageUpdated()V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 v3, v3, 0x5a

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;->cropSizeChanged(FFZ)V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v6

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v6

    div-float/2addr v5, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public maximize()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 v3, v3, 0x5a

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;->cropSizeChanged(FFZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotateRect(Landroid/graphics/RectF;I)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    if-eqz v4, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    :cond_2
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntDarken:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->drawCropper(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->padding:I

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->_lastY:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->_lastX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->_lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->_lastX:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_13

    if-eq v4, v5, :cond_12

    const/4 v2, 0x2

    if-eq v4, v2, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    if-eqz v4, :cond_10

    iget v0, v4, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v6, v8, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, v8, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result p1

    invoke-direct {v4, v6, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->minDim:F

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, v4, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_3
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    :goto_2
    sub-float/2addr v6, v7

    invoke-static {p1, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->minDim:F

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    goto :goto_3

    :cond_4
    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float v7, v4, v7

    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_7

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_5

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_4

    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->top:F

    :goto_4
    iput v0, p1, Landroid/graphics/RectF;->top:F

    if-eqz v1, :cond_6

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    :cond_6
    add-float/2addr v0, v4

    :goto_5
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_c

    :cond_7
    iget v6, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_a

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    iget v4, v1, Landroid/graphics/RectF;->right:F

    goto :goto_6

    :cond_8
    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, p1

    :goto_6
    iput v4, v1, Landroid/graphics/RectF;->right:F

    if-eqz v0, :cond_9

    sub-float/2addr v4, p1

    goto :goto_7

    :cond_9
    iget v4, v1, Landroid/graphics/RectF;->left:F

    :goto_7
    iput v4, v1, Landroid/graphics/RectF;->left:F

    goto :goto_c

    :cond_a
    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr p1, v6

    div-float/2addr v4, v7

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v6, v6, p1

    mul-float p1, p1, v7

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_b

    iget v7, v4, Landroid/graphics/RectF;->right:F

    goto :goto_8

    :cond_b
    iget v7, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v6

    :goto_8
    iput v7, v4, Landroid/graphics/RectF;->right:F

    if-eqz v1, :cond_c

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_9

    :cond_c
    iget v8, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, p1

    :goto_9
    iput v8, v4, Landroid/graphics/RectF;->bottom:F

    if-eqz v0, :cond_d

    sub-float/2addr v7, v6

    goto :goto_a

    :cond_d
    iget v7, v4, Landroid/graphics/RectF;->left:F

    :goto_a
    iput v7, v4, Landroid/graphics/RectF;->left:F

    if-eqz v1, :cond_e

    sub-float/2addr v8, p1

    goto :goto_b

    :cond_e
    iget v8, v4, Landroid/graphics/RectF;->top:F

    :goto_b
    iput v8, v4, Landroid/graphics/RectF;->top:F

    :goto_c
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/2addr v4, v2

    if-eqz v4, :cond_f

    const/4 v3, 0x1

    :cond_f
    invoke-interface {p1, v0, v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;->cropSizeChanged(FFZ)V

    goto :goto_d

    :cond_10
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getZoomFactor()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getZoomFactor()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->fixCropArea()V

    :cond_11
    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_e

    :cond_12
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    goto :goto_e

    :cond_13
    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCurrentlyDraggedPoint(Landroid/graphics/PointF;)V

    :goto_e
    return v5

    :cond_14
    return v3
.end method

.method public putInBounds(FFF)F
    .locals 1

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    move p1, p2

    :cond_1
    :goto_0
    return p1
.end method

.method public rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public rotateImg(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    if-eqz v2, :cond_2

    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    const/16 v0, -0x5a

    :goto_1
    add-int/2addr p1, v0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    float-to-int p1, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cyclicRotate(Z)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imageUpdated()V

    return-void
.end method

.method public rotateRect(Landroid/graphics/RectF;I)V
    .locals 3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public setAspectAndLock(II)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    mul-float p1, p1, v0

    mul-float v0, v0, p2

    const/4 p2, 0x0

    invoke-virtual {v1, p2, p2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;->cropSizeChanged(FFZ)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->toggleLockAspect(Z)V

    :cond_2
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->useDark(Landroid/graphics/Bitmap;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->shouldUseDarkOnBitmap:Z

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    rem-int/lit16 p3, p3, 0x168

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 p1, p3, 0x5a

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cyclicRotateRect(Landroid/graphics/RectF;I)V

    invoke-static {p2, p5, p6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->flipPortion(Landroid/graphics/RectF;ZZ)V

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iget p1, p2, Landroid/graphics/RectF;->top:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    iput-boolean p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    iput-boolean p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imageUpdated()V

    return-void
.end method

.method public setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    return-void
.end method

.method public setZoomWidget(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->zoomWidgetReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    return-void
.end method

.method public toggleLockAspect(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->lockAspect:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->toggleFree(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->toggleAll(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateAvailableHandlesPos()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateCropAreaPercentage()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v0, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateCurrentlyDraggedPoint(Landroid/graphics/PointF;)V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_0

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    mul-float v4, v4, v2

    cmpg-float v2, v3, v4

    if-gtz v2, :cond_0

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    mul-float v5, v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    return-void

    :cond_4
    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    mul-float v5, v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    :cond_5
    return-void
.end method
