.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;
    }
.end annotation


# instance fields
.field bezierMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

.field capSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

.field closePathButton:Landroid/view/View;

.field currBezier:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

.field divideButton:Landroid/view/View;

.field fillOptions:Landroid/view/View;

.field fill_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field fill_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

.field maskMode:Z

.field navigationOptions:Landroid/view/ViewGroup;

.field oldScroll:I

.field openPathButton:Landroid/view/View;

.field primaryOptions:Landroid/view/ViewGroup;

.field removePButton:Landroid/view/View;

.field rotButton:Landroid/view/View;

.field rotSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field rotateOptions:Landroid/widget/LinearLayout;

.field scaleButton:Landroid/view/View;

.field scaleOptions:Landroid/widget/LinearLayout;

.field scaleSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field secondaryOptions:Landroid/view/ViewGroup;

.field strokeOptions:Landroid/view/View;

.field stroke_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field stroke_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field stroke_width:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    const/4 v10, 0x0

    iput v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->oldScroll:I

    iput-boolean v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    const v1, 0x7f0d002e

    invoke-static {v7, v1, v0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    const v1, 0x7f06003f

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    iput-object v11, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->disableStroke()V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->toggleNumberView(Z)V

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0a01aa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11003d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v14

    move-object/from16 v2, p1

    move v4, v15

    move v5, v12

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->bezierMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz v9, :cond_0

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([I)V

    goto :goto_0

    :cond_0
    new-array v4, v3, [I

    fill-array-data v4, :array_1

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([I)V

    :goto_0
    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->bezierMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;

    invoke-direct {v4, v0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    const v1, 0x7f0a00d6

    const v4, 0x7f0a00ce

    if-nez v9, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addFillOptions(Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addStrokeOptions(Landroid/widget/LinearLayout;)V

    :cond_1
    const v5, 0x7f0a00d7

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->openPathButton:Landroid/view/View;

    const v5, 0x7f0a00cb

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    if-eqz v9, :cond_2

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fillOptions:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->strokeOptions:Landroid/view/View;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->navigationOptions:Landroid/view/ViewGroup;

    const v1, 0x7f0a00cf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->removePButton:Landroid/view/View;

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->divideButton:Landroid/view/View;

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleButton:Landroid/view/View;

    const v1, 0x7f0a00d4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotButton:Landroid/view/View;

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->navigationOptions:Landroid/view/ViewGroup;

    const/4 v5, 0x6

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->removePButton:Landroid/view/View;

    aput-object v6, v5, v10

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->divideButton:Landroid/view/View;

    aput-object v6, v5, v11

    iget-object v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    aput-object v6, v5, v2

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->openPathButton:Landroid/view/View;

    aput-object v2, v5, v3

    const/4 v2, 0x4

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleButton:Landroid/view/View;

    aput-object v3, v5, v2

    const/4 v2, 0x5

    aput-object v1, v5, v2

    invoke-direct {v0, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addButtonsListeners(Landroid/view/ViewGroup;[Landroid/view/View;)V

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0a00c2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;

    invoke-direct {v3, v0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;

    invoke-direct {v1, v0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->primaryOptions:Landroid/view/ViewGroup;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->secondaryOptions:Landroid/view/ViewGroup;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotateOptions:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleOptions:Landroid/widget/LinearLayout;

    return-void

    :array_0
    .array-data 4
        0x7f080189
        0x7f0801d7
    .end array-data

    :array_1
    .array-data 4
        0x7f080062
        0x7f080189
        0x7f0801d7
    .end array-data
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->restoreScroll()V

    return-void
.end method

.method private varargs addButtonsListeners(Landroid/view/ViewGroup;[Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    :goto_1
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private addFillOptions(Landroid/widget/LinearLayout;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f1100c5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v14, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x64

    invoke-direct {v3, v4, v2, v5, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v16

    sget v18, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    new-instance v20, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct/range {v20 .. v20}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    const/16 v17, 0x1

    const/16 v19, -0x1

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$5;

    invoke-direct {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$6;

    invoke-direct {v3, v0, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110115

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v15, 0x3

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRotOptions(Landroid/widget/LinearLayout;)V
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1100cf

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, -0xb4

    const/16 v5, 0xb4

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;

    invoke-direct {v1, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addScaleOptions(Landroid/widget/LinearLayout;)V
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    const/16 v1, 0x2d

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f110030

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x5f

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$7;

    invoke-direct {v1, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$7;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addStrokeOptions(Landroid/widget/LinearLayout;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f110173

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->defaultStrokeWidth:I

    const/4 v6, 0x1

    const/16 v16, 0x3

    const/4 v8, 0x3

    move-object v3, v9

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v5

    invoke-direct {v3, v4, v2, v5, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1100c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x64

    const/16 v22, 0x2

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v22}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x64

    invoke-direct {v4, v5, v2, v6, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    new-instance v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    const/4 v12, 0x1

    const/4 v14, -0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$9;

    invoke-direct {v4, v0, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$9;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$10;

    invoke-direct {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$10;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;

    invoke-direct {v4, v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$12;

    invoke-direct {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$12;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1101b9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x7f080225
        0x7f080108
        0x7f08023b
    .end array-data
.end method

.method private restoreScroll()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;

    invoke-direct {v1, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveScroll()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->oldScroll:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->oldScroll:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->openSelected()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->saveScroll()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotateOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->primaryOptions:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->secondaryOptions:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleOptions:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addScaleOptions(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->saveScroll()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotateOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->primaryOptions:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->secondaryOptions:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotateOptions:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addRotOptions(Landroid/widget/LinearLayout;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->removeSelectedBezier()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->selectPrevBezier()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->selectNextBezier()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->removeSelectedPoint()V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->copySelected()V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->divideNext()V

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->closeSelected()V

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->addNew()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c9
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->bezierMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->setCurrMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    :cond_2
    return-void
.end method

.method public updateActionsVisibility(IZZZ)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->divideButton:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p4, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotButton:Landroid/view/View;

    const/4 p4, 0x1

    if-le p1, p4, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleButton:Landroid/view/View;

    if-le p1, p4, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    if-le p1, p4, :cond_4

    if-nez p3, :cond_4

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->openPathButton:Landroid/view/View;

    if-le p1, p4, :cond_5

    if-eqz p3, :cond_5

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez p1, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateFor(ILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_d

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setNumberToView(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->openPathButton:Landroid/view/View;

    iget-object v0, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    iget-boolean v0, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    iget-object v0, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-boolean v0, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fillOptions:Landroid/view/View;

    iget-boolean v0, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fillOptions:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v4, 0x437f0000    # 255.0f

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v5

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v6

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setParamsQuietly(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz v0, :cond_5

    iget v5, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    :cond_5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->strokeOptions:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v5

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v6

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    invoke-virtual {v0, v5, v6, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setParamsQuietly(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_6
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz p1, :cond_7

    iget v0, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    :cond_7
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    :cond_8
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_cap()Landroid/graphics/Paint$Cap;

    move-result-object p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    if-ne p1, v2, :cond_9

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne p1, v2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    :cond_b
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCurrScale()I

    move-result v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->scaleBezierInverse(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    :cond_c
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCurrRot()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    :cond_d
    :goto_3
    return-void
.end method
