.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

.field final synthetic val$finalDone:Z


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;->val$finalDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;->val$finalDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f110105

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f110134

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->val$pr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->val$pr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
