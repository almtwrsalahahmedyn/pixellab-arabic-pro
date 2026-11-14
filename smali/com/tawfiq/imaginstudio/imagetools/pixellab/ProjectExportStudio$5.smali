.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;
.super Ljava/lang/Object;
.source "ProjectExportStudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->showSuccessDialog(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 985
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 988
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;->val$file:Ljava/io/File;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$5;->val$mimeType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->shareFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 989
    return-void
.end method
