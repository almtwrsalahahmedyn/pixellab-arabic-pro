.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;
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

.field final synthetic val$forText:Z

.field final synthetic val$textureImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->val$forText:Z

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->val$textureImagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cropDone(Landroid/graphics/RectF;IZZZ[I)V
    .locals 6

    iget-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->val$forText:Z

    const/4 p6, -0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-eq v1, p6, :cond_1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p6

    invoke-virtual {p3, p6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrTextState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object p6, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget p3, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->val$textureImagePath:Ljava/lang/String;

    invoke-direct {v1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    move v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setNewTextureSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const/16 p2, 0x31

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq v1, p6, :cond_1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p6

    invoke-virtual {p3, p6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object p6, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget p3, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->val$textureImagePath:Ljava/lang/String;

    invoke-direct {v1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    move v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewTextureSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$38;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const/16 p2, 0x55

    :goto_0
    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    :cond_1
    return-void
.end method
