.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$1;
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


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->val$whereToSaveStyleDir:Ljava/io/File;

    const-string v3, "thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;->val$text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const/16 v3, 0x19

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderPreview(Landroid/os/Bundle;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
