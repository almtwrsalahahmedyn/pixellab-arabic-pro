.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method
