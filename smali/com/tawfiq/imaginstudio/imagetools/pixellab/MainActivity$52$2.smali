.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$2;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52$2;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$52;->val$pr:Landroid/app/ProgressDialog;

    const v2, 0x7f110081

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$2100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    return-void
.end method
