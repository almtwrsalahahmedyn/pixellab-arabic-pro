.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;
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

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab$1;

    invoke-direct {v2, p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d003d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;->v:Landroid/view/View;

    const p2, 0x7f0a00da

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;->v:Landroid/view/View;

    return-object p1
.end method

.method public toggleCropButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setClickEnabled(Z)V

    :cond_0
    return-void
.end method
