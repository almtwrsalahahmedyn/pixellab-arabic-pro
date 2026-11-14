.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;
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
    name = "ExportTask"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final fileName:Ljava/lang/String;

.field private final formatType:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final parentDialog:Landroid/app/AlertDialog;

.field private final pd:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    .line 881
    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->formatType:Ljava/lang/String;

    .line 882
    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->fileName:Ljava/lang/String;

    .line 883
    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->mimeType:Ljava/lang/String;

    .line 884
    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->parentDialog:Landroid/app/AlertDialog;

    .line 885
    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->pd:Landroid/app/ProgressDialog;

    .line 886
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 890
    nop

    .line 891
    nop

    .line 892
    nop

    .line 894
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->getExportDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 895
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->fileName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 896
    const-string v1, "PSD"

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->formatType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToPsd(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_0

    .line 898
    :cond_0
    const-string v1, "SVG"

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->formatType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToSvgString(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 900
    :try_start_1
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToSvg(Landroid/app/Activity;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 909
    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_2

    .line 901
    :cond_1
    :try_start_2
    const-string v1, "VECTOR_XML"

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->formatType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 902
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToAndroidVectorString(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 903
    :try_start_3
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToAndroidVector(Landroid/app/Activity;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 904
    :cond_2
    :try_start_4
    const-string v1, "LAYOUT_XML"

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->formatType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 905
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToAndroidLayoutString(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 906
    :try_start_5
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->exportToAndroidLayout(Landroid/app/Activity;Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 908
    :cond_3
    :goto_0
    move-object v1, v0

    :goto_1
    nop

    .line 912
    move-object v6, v0

    move-object v9, v1

    move-object v5, v2

    goto :goto_3

    .line 909
    :catchall_1
    move-exception v1

    move-object v2, v0

    .line 910
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 911
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    move-object v6, v1

    move-object v9, v2

    .line 913
    :goto_3
    nop

    .line 914
    nop

    .line 915
    nop

    .line 916
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->formatType:Ljava/lang/String;

    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->mimeType:Ljava/lang/String;

    iget-object v10, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->parentDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportTask;->pd:Landroid/app/ProgressDialog;

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$ExportCallback;-><init>(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 917
    return-void
.end method
