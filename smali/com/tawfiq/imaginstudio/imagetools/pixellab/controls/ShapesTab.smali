.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;
.super Landroidx/fragment/app/Fragment;


# instance fields
.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addClickListenersTo(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab$1;

    invoke-direct {v2, p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0042

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const p2, 0x7f0a022d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const p3, 0x7f0a022c

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    return-object p1
.end method

.method public togglePanels(ZI)V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    if-eqz v0, :cond_7

    const v1, 0x7f0a022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v2, 0x7f0a022c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v3, 0x7f0a02ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eq p2, v3, :cond_1

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v3, 0x7f0a02ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_BEZIER:I

    if-ne p2, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v3, 0x7f0a02ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_SHAPE:I

    if-ne p2, v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v3, 0x7f0a02aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_ARROW:I

    if-ne p2, v3, :cond_4

    const/4 p2, 0x0

    goto :goto_4

    :cond_4
    const/16 p2, 0x8

    :goto_4
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_5

    const/4 p2, 0x0

    goto :goto_5

    :cond_5
    const/16 p2, 0x8

    :goto_5
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
