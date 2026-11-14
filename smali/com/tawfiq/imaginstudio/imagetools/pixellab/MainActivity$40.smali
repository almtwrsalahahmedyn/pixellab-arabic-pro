.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->activityResultLogic(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$selectedBGImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->val$selectedBGImagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cropDone(Landroid/graphics/RectF;IZZZ[I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setCircular(Z)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFlipH(Z)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p3, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFlipV(Z)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p4, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->val$selectedBGImagePath:Ljava/lang/String;

    invoke-virtual {p4, p3, p5, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;I)V

    const/4 p1, 0x1

    if-eqz p6, :cond_0

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    const/4 p4, 0x0

    aget p4, p6, p4

    aget p5, p6, p1

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3, p4, p5, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setForcedDims(IIZLandroid/content/Context;)V

    :cond_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    return-void
.end method
