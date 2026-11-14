.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$8;
.super Ljava/lang/Object;
.source "ProjectExportStudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->injectIntoExportDialog(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$dialogObj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$8;->val$dialogObj:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$8;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1085
    :try_start_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$8;->val$dialogObj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1086
    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1088
    :catchall_0
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 1089
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio$8;->val$act:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 1090
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->showExportStudioDialog(Landroid/app/Activity;)V

    .line 1092
    :cond_1
    return-void
.end method
