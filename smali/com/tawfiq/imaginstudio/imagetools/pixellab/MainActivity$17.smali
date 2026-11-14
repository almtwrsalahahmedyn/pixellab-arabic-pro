.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->shouldAutoSave()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17$1;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$1600(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$1500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)J

    move-result-wide v4

    int-to-long v6, v0

    mul-long v4, v4, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$1600(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$17;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$1500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)J

    move-result-wide v5

    int-to-long v7, v0

    mul-long v5, v5, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v1
.end method
