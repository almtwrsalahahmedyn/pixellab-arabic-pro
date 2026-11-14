.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;
    }
.end annotation


# static fields
.field private static final LAST_USED_COLOR:Ljava/lang/String; = "last_colors"

.field private static final LAST_USED_GRADIENT:Ljava/lang/String; = "last_gradients"

.field public static TYPE_COLOR:I = 0x1

.field public static TYPE_GRADIENT:I = 0x2


# instance fields
.field colorsAdded:Z

.field currColor:I

.field currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field fillType:I

.field gradientsAdded:Z

.field private isAutomatic:Z

.field mColorListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;

.field private showAutomatic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 19

    move-object/from16 v9, p0

    move/from16 v10, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->colorsAdded:Z

    iput-boolean v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->gradientsAdded:Z

    iput-boolean v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic:Z

    iput-boolean v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->showAutomatic:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0033

    invoke-static {v0, v1, v9}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iput v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    move/from16 v0, p4

    iput v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const v1, 0x7f0a021a

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const-string v1, "#e91e63"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v1}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(I)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v0}, Landroid/widget/RadioGroup;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x28

    invoke-virtual {v9, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->dpToPixels(I)I

    move-result v1

    invoke-virtual {v9, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->dpToPixels(I)I

    move-result v0

    invoke-direct {v13, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->dpToPixels(I)I

    move-result v1

    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v9, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->dpToPixels(I)I

    move-result v0

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const v0, 0x7f0a011e

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0191

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    const v0, 0x7f0a011f

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0192

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const v0, 0x7f0a00fd

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const v0, 0x7f0a015e

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f0a00f7

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v0, 0x7f0a015a

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioButton;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v12, v3

    move-object v3, v6

    move-object/from16 v16, v4

    move-object v4, v14

    move-object/from16 p4, v14

    move-object v14, v5

    move-object v5, v13

    move-object/from16 p5, v14

    move-object v14, v6

    move-object v6, v15

    move-object/from16 v17, v7

    move-object v7, v8

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v12}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0a0117

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0a0119

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    invoke-direct {v2, v9, v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    move-object/from16 v2, v17

    invoke-direct {v0, v9, v2, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v10, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v1, v18

    invoke-virtual {v9, v1, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertDefaultGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v9, v2, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertLastUsedGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    move-object/from16 v1, v16

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v1, p4

    invoke-virtual {v9, v1, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertDefaultColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v9, v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertLastUsedColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    :goto_2
    if-nez p2, :cond_3

    const v1, 0x7f0a0219

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
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

.method public getCurrColor()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    return v0
.end method

.method public getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getFillType()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    return v0
.end method

.method public insertDefaultColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 8

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->defaultColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v1

    goto :goto_1

    :catch_0
    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_1
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->colorsAdded:Z

    return-void
.end method

.method public insertDefaultGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 9

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->defaultGradients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    move-object v6, v1

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v8, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->gradientsAdded:Z

    return-void
.end method

.method public insertLastUsedColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 9

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "last_colors"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getListInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v8, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public insertLastUsedGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 9

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "last_gradients"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v6, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v8, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isAutomatic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getType()I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayColor()I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    goto :goto_1

    :cond_0
    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->reportColorChange()V

    return-void
.end method

.method public reportColorChange()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->mColorListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-interface {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;->colorChanged(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_0
    return-void
.end method

.method public setIsAutomatic(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic:Z

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->mColorListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;

    return-void
.end method

.method public setParamsQuietly(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 p3, 0x1

    if-ne p1, p2, :cond_1

    const p1, 0x7f0a00f7

    goto :goto_1

    :cond_1
    const p1, 0x7f0a015a

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public setShowAutomatic(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->showAutomatic:Z

    const p1, 0x7f0a00bb

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic:Z

    return-void
.end method
