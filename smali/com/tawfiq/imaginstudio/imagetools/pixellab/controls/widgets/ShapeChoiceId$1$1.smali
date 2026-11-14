.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShapePicked(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->currentShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->setShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->changeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;->onShapeChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
