.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->doInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$shapePath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->newShapeSize:I

    int-to-float v3, v3

    iget v4, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbWidth:F

    mul-float v3, v3, v4

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbHeight:F

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    float-to-int v4, v3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->newShapeSize:I

    int-to-float v3, v3

    iget v5, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbHeight:F

    mul-float v3, v3, v5

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbWidth:F

    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    float-to-int v5, v3

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->editCurrShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZII)V

    :cond_0
    return-void
.end method
