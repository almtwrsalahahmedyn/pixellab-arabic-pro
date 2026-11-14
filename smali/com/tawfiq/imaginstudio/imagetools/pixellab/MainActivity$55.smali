.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromFile(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$presetDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->val$presetDir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->val$presetDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data.plab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fileJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->val$presetDir:Ljava/lang/String;

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->fixAbsolute:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->disable()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->enableLayers(Z)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->resetAll()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$2500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->val$presetDir:Ljava/lang/String;

    const-string v3, "/autosave/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->val$presetDir:Ljava/lang/String;

    const-string v3, "projectDir"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->setScreenContent(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V

    :cond_1
    return-void
.end method
