.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentAsPresetOverwrite(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$bundleSave:Landroid/os/Bundle;

.field final synthetic val$chosenName:Ljava/lang/String;

.field final synthetic val$pr:Landroid/app/ProgressDialog;

.field final synthetic val$whereToSavePresetDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/os/Bundle;Ljava/lang/String;Ljava/io/File;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->val$bundleSave:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->val$chosenName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->val$whereToSavePresetDir:Ljava/io/File;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->val$pr:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->val$bundleSave:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->val$chosenName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveJson(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$1;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->val$whereToSavePresetDir:Ljava/io/File;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z

    :cond_0
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2;

    invoke-direct {v1, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;Z)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void
.end method
