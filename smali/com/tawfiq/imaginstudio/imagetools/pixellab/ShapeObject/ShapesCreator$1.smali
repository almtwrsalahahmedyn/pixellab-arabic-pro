.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->getInitialArea(IIZ)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
