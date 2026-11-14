.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockAspect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

.field final synthetic val$toggle:Z


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;->val$toggle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;->val$toggle:Z

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->toggleLockAspect(Z)V

    return-void
.end method
