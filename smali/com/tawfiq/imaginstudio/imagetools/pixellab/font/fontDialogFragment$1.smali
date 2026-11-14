.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->fo:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;->onOkButton(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
