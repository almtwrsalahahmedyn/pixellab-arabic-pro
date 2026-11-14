.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cropDone(Landroid/graphics/RectF;IZZZ[I)V
    .locals 0

    iget-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p6, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFlipH(Z)V

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p4, p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFlipV(Z)V

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p4, p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p4, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setCircular(Z)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p4, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->updateBitmapPortion(Landroid/graphics/RectF;ILandroid/content/Context;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$24;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    return-void
.end method
