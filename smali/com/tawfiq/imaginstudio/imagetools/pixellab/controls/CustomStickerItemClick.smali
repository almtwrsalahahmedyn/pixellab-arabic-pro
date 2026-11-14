.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;->opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;->opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;->opt:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;->path:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerItemClick;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    aget v5, v0, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v0, v0, v6

    int-to-float v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/high16 p1, 0x43af0000    # 350.0f

    div-float/2addr p1, v0

    mul-float/2addr v5, p1

    mul-float/2addr v6, p1

    goto :goto_0

    :cond_0
    const/high16 v5, 0x43af0000    # 350.0f

    const/high16 v6, 0x43af0000    # 350.0f

    :goto_0
    invoke-virtual/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->editSrc(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    :cond_1
    return-void
.end method
