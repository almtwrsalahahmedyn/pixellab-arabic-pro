.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;IILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;->val$requestCode:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;->val$resultCode:I

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;->val$requestCode:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;->val$resultCode:I

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$42;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->activityResultLogic(IILandroid/content/Intent;)V

    return-void
.end method
