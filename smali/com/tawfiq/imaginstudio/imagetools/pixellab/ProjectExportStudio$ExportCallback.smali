.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;
.super Ljava/lang/Object;
.source "ProjectExportStudio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportCallback"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final code:Ljava/lang/String;

.field private final error:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final format:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final parentDialog:Landroid/app/AlertDialog;

.field private final pd:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->activity:Landroid/app/Activity;

    .line 932
    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->file:Ljava/io/File;

    .line 933
    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->error:Ljava/lang/String;

    .line 934
    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->format:Ljava/lang/String;

    .line 935
    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->mimeType:Ljava/lang/String;

    .line 936
    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->code:Ljava/lang/String;

    .line 937
    iput-object p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->parentDialog:Landroid/app/AlertDialog;

    .line 938
    iput-object p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->pd:Landroid/app/ProgressDialog;

    .line 939
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 945
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 947
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->parentDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->parentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->format:Ljava/lang/String;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->code:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->access$100(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0641\u0634\u0644 \u0627\u0644\u062a\u0635\u062f\u064a\u0631: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;->error:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "\u062e\u0637\u0623 \u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 955
    :goto_2
    return-void
.end method
