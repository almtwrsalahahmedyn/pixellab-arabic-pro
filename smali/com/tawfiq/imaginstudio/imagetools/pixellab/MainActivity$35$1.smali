.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35;

.field final synthetic val$currText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35;Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35$1;->val$currText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35$1;->val$currText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35$1;->val$currText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35$1;->val$currText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$35$1;->val$currText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method
