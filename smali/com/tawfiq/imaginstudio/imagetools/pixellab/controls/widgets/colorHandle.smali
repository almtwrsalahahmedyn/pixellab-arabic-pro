.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;
.super Landroid/view/View;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Ljava/lang/Comparable<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private _xDelta:I

.field private _yDelta:I

.field private backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field private color:I

.field final handleH:I

.field final handleW:I

.field private final parentHeight:I

.field parentWidth:I

.field private position:I

.field root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

.field private selectedHandle:Z

.field touchListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->handleW:I

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->handleH:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->selectedHandle:Z

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->color:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->position:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->parentWidth:I

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->parentHeight:I

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private calculateContrastColor(I)I
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float v0, v0

    const v2, 0x3e991687    # 0.299f

    mul-float v0, v0, v2

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    int-to-float p1, p1

    const v0, 0x3de978d5    # 0.114f

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    const/high16 v0, 0x433a0000    # 186.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const p1, -0xbbbbbc

    goto :goto_0

    :cond_0
    const p1, -0x333334

    :goto_0
    return p1
.end method


# virtual methods
.method public compareTo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;)I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->position:I

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->compareTo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;)I

    move-result p1

    return p1
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

.method public drawStripes(Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v2, v1

    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const-wide v1, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    int-to-float v2, p3

    div-float/2addr p1, v2

    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {p0, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->calculateContrastColor(I)I

    move-result p4

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 p4, p3, 0x2

    int-to-float p4, p4

    div-float p4, v0, p4

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p4, 0x1

    :goto_0
    if-ge p4, p3, :cond_0

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v5, p4

    mul-float v5, v5, p1

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    mul-float v7, v0, v3

    add-float/2addr v7, v6

    iget v6, v4, Landroid/graphics/PointF;->y:F

    mul-float v8, v0, v1

    add-float/2addr v8, v6

    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    move-object v4, p2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->color:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->position:I

    return v0
.end method

.method public invalidate()V
    .locals 0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->invalidateOuterParent()V

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateOuterParent()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->handleH:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->handleH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->selectedHandle:Z

    const/16 v5, 0xff

    if-eqz v4, :cond_0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string v4, "#ff9800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->handleH:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->dpToPixels(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->inset(II)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->color:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->handleW:I

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->parentHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->_xDelta:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->parentWidth:I

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->handleW:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->parentWidth:I

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->handleW:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->position:I

    const/16 v0, -0xfa

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->touchListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;->onHandleMoveEvent()V

    :cond_2
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->touchListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;->onHandleDoneEvent()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->_xDelta:I

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->_yDelta:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->touchListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;->onHandleTouchEvent(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_6
    return v2
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->color:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->invalidate()V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->position:I

    return-void
.end method

.method public setTouchListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->touchListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;

    return-void
.end method

.method public toggleSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->selectedHandle:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->invalidate()V

    return-void
.end method
