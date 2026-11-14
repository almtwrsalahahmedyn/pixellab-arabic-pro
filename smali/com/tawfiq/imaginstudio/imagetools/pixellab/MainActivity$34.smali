.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$34;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$34;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$34;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$34;->val$requestCode:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doPickGalleryImage(I)V

    return-void
.end method
