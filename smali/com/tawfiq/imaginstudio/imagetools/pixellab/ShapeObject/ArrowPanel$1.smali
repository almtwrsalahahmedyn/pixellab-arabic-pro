.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->initDefaultStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->origin:Landroid/graphics/PointF;

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v2, v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middle:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->origin:Landroid/graphics/PointF;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->origin:Landroid/graphics/PointF;

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v2, v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
