.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;
.super Landroid/os/AsyncTask;
.source "PsdProjectImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter;->importPsdFile(Landroid/content/Context;Ljava/io/File;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private errorMsg:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

.field final synthetic val$keepPreset:Z

.field final synthetic val$pd:Landroid/app/ProgressDialog;

.field final synthetic val$psdFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/app/ProgressDialog;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;Z)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$psdFile:Ljava/io/File;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$pd:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$event:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    iput-boolean p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$keepPreset:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->errorMsg:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 2

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$psdFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter;->access$000(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->errorMsg:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$context:Landroid/content/Context;

    const-string v1, "\u062a\u0645 \u0627\u0633\u062a\u064a\u0631\u0627\u062f \u0645\u0634\u0631\u0648\u0639 \u0627\u0644\u0641\u0648\u062a\u0648\u0634\u0648\u0628 \u0628\u0646\u062c\u0627\u062d!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$event:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$event:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;->loadProject(Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$keepPreset:Z

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$event:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;->removeProject(Ljava/lang/String;)V

    .line 80
    :cond_1
    :goto_1
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->errorMsg:Ljava/lang/String;

    .line 78
    :goto_2
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u062e\u0637\u0623 \u0641\u064a \u0627\u0633\u062a\u064a\u0631\u0627\u062f PSD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 77
    :cond_3
    const-string v0, "\u062a\u0639\u0630\u0631 \u0627\u0633\u062a\u064a\u0631\u0627\u062f \u0645\u0644\u0641 PSD"

    goto :goto_2

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
