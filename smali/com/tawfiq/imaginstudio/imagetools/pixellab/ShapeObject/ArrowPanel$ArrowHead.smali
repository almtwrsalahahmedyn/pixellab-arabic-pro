.class public abstract Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ArrowHead"
.end annotation


# static fields
.field static subclasses:[Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead2;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead3;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead4;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead5;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead6;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead7;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->subclasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doShapeSpecific(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/PointF;F)V
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x3e99999a    # 0.3f

    mul-float v1, v1, p4

    const v2, 0x3f333333    # 0.7f

    mul-float v2, v2, p4

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/PointF;->y:F

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, p4

    add-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->isAdjustableSize()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const v5, 0x3e19999a    # 0.15f

    :goto_0
    mul-float v5, v5, p4

    sub-float/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, p3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->getPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const p3, -0x42333333    # -0.1f

    mul-float p4, p4, p3

    invoke-virtual {v0, v3, p4}, Landroid/graphics/Path;->offset(FF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->doShapeSpecific(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public isAdjustableSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
