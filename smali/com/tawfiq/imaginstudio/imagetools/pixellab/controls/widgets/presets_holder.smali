.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;
.super Landroid/widget/LinearLayout;


# instance fields
.field layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field progress:Landroid/widget/ProgressBar;

.field space:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0074

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a006c

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->space:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01a5

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->progress:Landroid/widget/ProgressBar;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->dpToPixels(I)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->dpToPixels(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->dpToPixels(I)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->dpToPixels(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void
.end method


# virtual methods
.method public addPreset(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->space:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public hideProgress()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->space:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public startLoading()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
