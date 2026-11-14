.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$50;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->setScreenContent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$50;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$50;->val$savedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->recreatePreview(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
