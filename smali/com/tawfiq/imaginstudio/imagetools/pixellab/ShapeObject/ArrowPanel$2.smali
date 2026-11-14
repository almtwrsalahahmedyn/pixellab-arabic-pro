.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fromBundle(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

.field final synthetic val$h:I

.field final synthetic val$positions:Ljava/util/ArrayList;

.field final synthetic val$w:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;IILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$w:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$h:I

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$positions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$w:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$h:I

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->val$positions:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;IILjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
