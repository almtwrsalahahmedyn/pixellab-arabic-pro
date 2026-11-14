.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;
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

.field final synthetic val$oldX:F

.field final synthetic val$oldY:F


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;->val$oldX:F

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;->val$oldY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;->val$oldX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;->val$oldY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method
