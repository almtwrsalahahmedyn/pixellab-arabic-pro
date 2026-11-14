.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;
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

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$format:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 999
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;->val$format:Ljava/lang/String;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1002
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;->val$activity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;->val$format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$6;->val$code:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    return-void
.end method
