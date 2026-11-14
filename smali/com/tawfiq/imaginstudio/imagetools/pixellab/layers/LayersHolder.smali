.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;
    }
.end annotation


# static fields
.field public static final height:I

.field public static final horizontalMargin:I

.field public static final verticalMargin:I


# instance fields
.field private Enabled:Z

.field buttonsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;

.field private selectionMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4a

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->horizontalMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public addLayerObject(Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->horizontalMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Z)V

    invoke-virtual {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->setLayerActionListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;)V

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clickedEditButton(Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->buttonsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;->clickedQuickEditLayers(Landroid/view/View;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public deleteMyView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->reArrangeLayers(Z)V

    return-void
.end method

.method public disable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->Enabled:Z

    return-void
.end method

.method public dragLayerFinish(Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;)V
    .locals 6

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sget v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    int-to-float v5, v4

    sub-float/2addr v3, v5

    sget v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    add-int/2addr v5, v4

    int-to-float v4, v5

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    iget-object v4, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    :goto_0
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->setObjectIdInLayout(Ljava/lang/String;Landroid/view/View;IZ)V

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->Enabled:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->populateLayers()V

    return-void
.end method

.method public getSelectedReferences()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    return v0
.end method

.method public objectCountChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->Enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->populateLayers()V

    :cond_0
    return-void
.end method

.method public objectZChange()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->reArrangeLayers(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getLayerHolderScroll()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v2, v3

    mul-int v2, v2, v1

    add-int/2addr v2, v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public populateLayers()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->addLayerObject(Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->reArrangeLayers(Z)V

    return-void
.end method

.method public reArrangeLayers(Z)V
    .locals 8

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const-wide/16 v4, 0xc8

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v3, v6

    if-ltz v3, :cond_3

    sget v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v6, v7

    mul-int v6, v6, v3

    add-int/2addr v6, v7

    int-to-float v3, v6

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_3

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    goto :goto_2

    :cond_2
    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v3, v6

    if-ltz v3, :cond_3

    sget v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v6, v7

    mul-int v6, v6, v3

    add-int/2addr v6, v7

    int-to-float v3, v6

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public setButtonsListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->buttonsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder$OnButtonsListener;

    return-void
.end method

.method public toggleSelectionMode()V
    .locals 3

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;

    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->selectionMode:Z

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->setSelectionMode(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
