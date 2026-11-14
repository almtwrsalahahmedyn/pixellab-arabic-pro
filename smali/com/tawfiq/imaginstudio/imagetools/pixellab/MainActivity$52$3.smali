.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

.field final synthetic val$finalSavingDone:Z

.field final synthetic val$whereToSave:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;ZLjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->val$finalSavingDone:Z

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->val$whereToSave:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->access$2000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->val$finalSavingDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-static {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$2200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f11012c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->val$whereToSave:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->access$2300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const-string v2, "An error has occurred while sharing the image!"

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f110103

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    :catch_1
    :goto_0
    return-void
.end method
