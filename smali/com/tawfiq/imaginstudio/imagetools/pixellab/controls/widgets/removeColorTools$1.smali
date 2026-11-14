.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;->changedColor(I)V

    :cond_0
    return-void
.end method
