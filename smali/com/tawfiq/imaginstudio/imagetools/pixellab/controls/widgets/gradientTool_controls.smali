.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;
.super Landroid/widget/LinearLayout;


# instance fields
.field currentColorControl:Landroid/widget/ImageButton;

.field sliderPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0047

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0227

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0228

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01f6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a014e

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->dpToPixels(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->dpToPixels(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->dpToPixels(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->dpToPixels(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const v3, 0x7f0a0224

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->currentColorControl:Landroid/widget/ImageButton;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;

    invoke-direct {v4, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$2;

    invoke-direct {v3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$3;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$4;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$5;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$6;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->changeCurrentColor(I)V

    return-void
.end method

.method private changeCurrentColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientColorsChanged()V

    :cond_0
    return-void
.end method

.method private changeCurrentPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->setCurrentColorPosition(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public connectSlider(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->connectControls(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

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

.method public selectionChanged()V
    .locals 0

    return-void
.end method
