.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;
.super Ljava/lang/Object;


# instance fields
.field private masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;
    .locals 6

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v4

    iget-object v5, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-direct {v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->isStrokeFill()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setStrokeFill(Z)V

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getStrokeWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setStrokeWidth(F)V

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    invoke-virtual {v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setBlur(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    return-object v0
.end method

.method public getMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remAll()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public remLast()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
