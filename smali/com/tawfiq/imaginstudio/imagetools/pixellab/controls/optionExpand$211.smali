.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$211;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$211;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$211;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$211;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pathsToBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rectFToArr(Landroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "BcR2"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$211;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBezierMaskBundle(Landroid/os/Bundle;)V

    return-void
.end method
