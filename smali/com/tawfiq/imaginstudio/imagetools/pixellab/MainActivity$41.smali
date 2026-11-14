.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$41;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->showCropForCurrentShape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$selectedShapeId:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$41;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$41;->val$selectedShapeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cropDone(Landroid/graphics/RectF;IZZZ[I)V
    .locals 6

    iget-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$41;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object p6, p6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$41;->val$selectedShapeId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz p6, :cond_0

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->compareCrop(Landroid/graphics/RectF;IZZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$41;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, p6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setCrop(Landroid/graphics/RectF;IZZZ)V

    :cond_0
    return-void
.end method
