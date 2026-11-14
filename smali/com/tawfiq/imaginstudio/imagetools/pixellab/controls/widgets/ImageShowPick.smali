.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;
.super Landroid/view/View;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;
    }
.end annotation


# instance fields
.field ballRadius:F

.field bounds:Landroid/graphics/RectF;

.field public currColor:I

.field currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

.field dX:F

.field dY:F

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

.field pickColorPoint:Landroid/graphics/PointF;

.field pntBall:Landroid/graphics/Paint;

.field pntBorder:Landroid/graphics/Paint;

.field pntImage:Landroid/graphics/Paint;

.field pntPoint:Landroid/graphics/Paint;

.field previousX:F

.field previousY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currColor:I

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->ballRadius:F

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dX:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dY:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousX:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousY:F

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBall:Landroid/graphics/Paint;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntPoint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateCurrColor()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getColorAt(FF)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currColor:I

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;->colorChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$selected$0$ImageShowPick(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->copyForDisplay(Landroid/graphics/RectF;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->updateCurrColor()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#f44336"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->ballRadius:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBall:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->ballRadius:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntPoint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousX:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dX:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dY:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousX:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousY:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/PointF;->offset(FF)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->updateCurrColor()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iput v1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->updateCurrColor()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dX:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dY:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousX:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousY:F

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public selected(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImageShowPick$VjYpEhGmzxq5XmoBLqmvX9GtJMc;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImageShowPick$VjYpEhGmzxq5XmoBLqmvX9GtJMc;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

    return-void
.end method
