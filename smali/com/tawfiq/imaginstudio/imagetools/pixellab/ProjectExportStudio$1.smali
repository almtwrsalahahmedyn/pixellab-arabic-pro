.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;
.super Ljava/lang/Object;
.source "ProjectExportStudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->showExportStudioDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialogHolder:[Landroid/app/AlertDialog;

.field final synthetic val$timestamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;[Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 790
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;->val$timestamp:Ljava/lang/String;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;->val$dialogHolder:[Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 793
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;->val$activity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PixelLab_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;->val$timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".psd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$1;->val$dialogHolder:[Landroid/app/AlertDialog;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "PSD"

    const-string v3, "application/x-photoshop"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V

    .line 794
    return-void
.end method
