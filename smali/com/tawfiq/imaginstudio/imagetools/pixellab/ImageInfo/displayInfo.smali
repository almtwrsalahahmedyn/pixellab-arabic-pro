.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;
.super Ljava/lang/Object;


# instance fields
.field private gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

.field imageHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

.field private layerHolderScroll:Landroid/widget/ScrollView;

.field previewPanel:Landroid/widget/FrameLayout;

.field private textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

.field zoom_widget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->previewPanel:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->zoom_widget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    return-void
.end method


# virtual methods
.method public getContainerHeight()I
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->previewPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getContainerWidth()I
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->previewPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getLayerHolderScroll()Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->layerHolderScroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getTextContain()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    return-object v0
.end method

.method public getUsedBitmapBg()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->imageHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUsedImageInfoBg()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->imageHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getUsedImage()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getViewOrigin()Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->zoom_widget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->getViewOrigin()Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object v0
.end method

.method public getZoomFactor()F
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->zoom_widget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->getZoomFactor()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    return v1
.end method

.method public motionActionUp()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->actionUp()V

    return-void
.end method

.method public safetyCheck()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->previewPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBgLayout(Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->imageHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    return-void
.end method

.method public setGridPanel(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    return-void
.end method

.method public setLayerHolderScroll(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->layerHolderScroll:Landroid/widget/ScrollView;

    return-void
.end method

.method public setTextContain(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    return-void
.end method

.method public snapEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->isSnapEnabled()Z

    move-result v0

    return v0
.end method

.method public snapPosX(FFZ)F
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapPos(FFZZ)F

    move-result p1

    :cond_0
    return p1
.end method

.method public snapPosX(FZ)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FFZ)F

    move-result p1

    return p1
.end method

.method public snapPosY(FFZ)F
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->gridPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapPos(FFZZ)F

    move-result p1

    :cond_0
    return p1
.end method

.method public snapPosY(FZ)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FFZ)F

    move-result p1

    return p1
.end method
