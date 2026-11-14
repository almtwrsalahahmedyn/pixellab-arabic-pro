.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "circle"
.end annotation


# instance fields
.field center:Landroid/graphics/PointF;

.field rad:F

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;Landroid/graphics/PointF;F)V
    .locals 1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    return-void
.end method

.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;Landroid/graphics/Rect;)V
    .locals 3

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->rectRad(Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getRad()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    return v0
.end method

.method public offset(FF)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    return-void
.end method

.method public offsetCopy(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    invoke-direct {p1, p2, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;Landroid/graphics/PointF;F)V

    return-object p1
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    return-void
.end method

.method public setRad(F)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    return-void
.end method
