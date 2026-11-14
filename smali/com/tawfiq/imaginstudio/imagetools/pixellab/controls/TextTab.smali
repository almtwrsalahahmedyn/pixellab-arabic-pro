.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;
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

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab$1;

    invoke-direct {v2, p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getTextStylesButtonRegion()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const v1, 0x7f0a02e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v0, v1, v4

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0043

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const p2, 0x7f0a027f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const p3, 0x7f0a027d

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->addJustifyOptionToTextTab(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->togglePanels(Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    return-object p1
.end method

.method public togglePanels(Z)V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0a027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const v2, 0x7f0a027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method
