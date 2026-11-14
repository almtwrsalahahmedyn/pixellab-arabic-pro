.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "cubicToList"
.end annotation


# instance fields
.field root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

.field tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getFirst()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->add(FF)V

    return-void
.end method

.method public static synthetic access$900(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object p0

    return-object p0
.end method

.method private add(FF)V
    .locals 9

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    invoke-direct {p0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    return-void
.end method

.method private add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    return-void
.end method

.method private getFirst()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    return-object v0
.end method

.method private getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    return-object v0
.end method

.method private recCount(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->recCount(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    return-void
.end method

.method public contains(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->compare(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public copyFrom(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;F)V
    .locals 2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-direct {v0, v1, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;F)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public count()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->recCount(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)I

    move-result v0

    return v0
.end method

.method public fixLastPoint(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x5

    new-array p1, p1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    aput v2, p1, v1

    const/4 v1, 0x2

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    aput v2, p1, v1

    const/4 v1, 0x3

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    aput v2, p1, v1

    const/4 v1, 0x4

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    aput v0, p1, v1

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->checkEquality([F)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v0, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v4, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint1(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint2(FF)V

    :cond_1
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;F)V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    sub-float v3, v2, v1

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    sub-float v4, v0, v1

    add-float/2addr v2, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v3, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :cond_2
    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->findExtremaCubicCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v4, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v5, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->findExtremaCubicCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_4
    neg-float p2, p2

    invoke-virtual {p1, p2, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public getCenteroid()Landroid/graphics/PointF;
    .locals 6

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    return-void
.end method

.method public iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;->doOn(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_0
    if-eqz v1, :cond_2

    iget v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v4, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-virtual {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint1(FF)V

    iget-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_1
    iget-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_2
    iput-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    return-object v2

    :cond_4
    :goto_3
    return-object v0
.end method
