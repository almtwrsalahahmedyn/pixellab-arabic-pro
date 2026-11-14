.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;
.super Landroidx/fragment/app/Fragment;


# static fields
.field static final STICKER_TYPE_EMOJI:I = 0x2

.field static final STICKER_TYPE_PRO:I = 0x4

.field static final STICKER_TYPE_STICKER:I = 0x1


# instance fields
.field private callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field cancelAbility:Landroid/widget/ImageButton;

.field cancelAction:Ljava/lang/Runnable;

.field cancelButtonListener:Landroid/view/View$OnClickListener;

.field cancelled:Z

.field controlsLayout:Landroid/widget/LinearLayout;

.field currentStickersJob:I

.field doneAbility:Landroid/widget/ImageButton;

.field doneButtonListener:Landroid/view/View$OnClickListener;

.field newShapeSize:I

.field positiveAction:Ljava/lang/Runnable;

.field references:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resetAbility:Landroid/widget/ImageButton;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getTextContainer()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p0

    return-object p0
.end method

.method private addBlendControls()V
    .locals 13

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget v7, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->blendMode:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v0, 0x1b

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u0639\u0627\u062f\u064a (Normal)"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "\u062a\u0634\u062a\u062a (Dissolve)"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "\u062a\u063a\u0645\u064a\u0642 (Darken)"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "\u0636\u0627\u0639\u0641 (Multiply)"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "\u062d\u0631\u0642 \u0644\u0648\u0646\u064a (Color Burn)"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "\u062d\u0631\u0642 \u062e\u0637\u064a (Linear Burn)"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "\u0644\u0648\u0646 \u0623\u063a\u0645\u0642 (Darker Color)"

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, "\u062a\u0646\u0648\u064a\u0631 (Lighten)"

    aput-object v1, v9, v0

    const/16 v0, 0x8

    const-string v1, "\u0627\u0644\u0634\u0627\u0634\u0629 (Screen)"

    aput-object v1, v9, v0

    const/16 v0, 0x9

    const-string v1, "\u062a\u0641\u0627\u062f\u064a \u0627\u0644\u0644\u0648\u0646 (Color Dodge)"

    aput-object v1, v9, v0

    const/16 v0, 0xa

    const-string v1, "\u062a\u0641\u0627\u062f\u064a \u062e\u0637\u064a / \u0625\u0636\u0627\u0641\u0629 (Add)"

    aput-object v1, v9, v0

    const/16 v0, 0xb

    const-string v1, "\u0644\u0648\u0646 \u0623\u0641\u062a\u062d (Lighter Color)"

    aput-object v1, v9, v0

    const/16 v0, 0xc

    const-string v1, "\u062a\u0631\u0627\u0643\u0628 (Overlay)"

    aput-object v1, v9, v0

    const/16 v0, 0xd

    const-string v1, "\u0636\u0648\u0621 \u062e\u0627\u0641\u062a (Soft Light)"

    aput-object v1, v9, v0

    const/16 v0, 0xe

    const-string v1, "\u0636\u0648\u0621 \u0634\u062f\u064a\u062f (Hard Light)"

    aput-object v1, v9, v0

    const/16 v0, 0xf

    const-string v1, "\u0636\u0648\u0621 \u0645\u0634\u0631\u0642 (Vivid Light)"

    aput-object v1, v9, v0

    const/16 v0, 0x10

    const-string v1, "\u0636\u0648\u0621 \u062e\u0637\u064a (Linear Light)"

    aput-object v1, v9, v0

    const/16 v0, 0x11

    const-string v1, "\u0636\u0648\u0621 \u0646\u0642\u0637\u064a (Pin Light)"

    aput-object v1, v9, v0

    const/16 v0, 0x12

    const-string v1, "\u0645\u0632\u064a\u062c \u0635\u0644\u0628 (Hard Mix)"

    aput-object v1, v9, v0

    const/16 v0, 0x13

    const-string v1, "\u0641\u0631\u0642 (Difference)"

    aput-object v1, v9, v0

    const/16 v0, 0x14

    const-string v1, "\u0627\u0633\u062a\u0628\u0639\u0627\u062f (Exclusion)"

    aput-object v1, v9, v0

    const/16 v0, 0x15

    const-string v1, "\u0637\u0631\u062d (Subtract)"

    aput-object v1, v9, v0

    const/16 v0, 0x16

    const-string v1, "\u0642\u0633\u0645\u0629 (Divide)"

    aput-object v1, v9, v0

    const/16 v0, 0x17

    const-string v1, "\u0635\u0628\u063a\u0629 (Hue)"

    aput-object v1, v9, v0

    const/16 v0, 0x18

    const-string v1, "\u062a\u0634\u0628\u0639 (Saturation)"

    aput-object v1, v9, v0

    const/16 v0, 0x19

    const-string v1, "\u0644\u0648\u0646 (Color)"

    aput-object v1, v9, v0

    const/16 v0, 0x1a

    const-string v1, "\u0625\u0636\u0627\u0621\u0629 (Luminosity)"

    aput-object v1, v9, v0

    const/4 v10, 0x0

    :goto_0
    const/16 v0, 0x1b

    if-ge v10, v0, :cond_2

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v0, v9, v10

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v0

    invoke-virtual {v11, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    if-ne v10, v7, :cond_1

    const v0, -0x16e19d

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const v0, 0x1affffff

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v0

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BlendSliderListener;

    invoke-direct {v1, p0, v6, v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BlendSliderListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BlendCancel;

    invoke-direct {v0, p0, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BlendCancel;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    return-void
.end method

.method private addControlsForMessage(I)V
    .locals 111

    move-object/from16 v15, p0

    move/from16 v14, p1

    const/16 v0, 0x77

    if-ne v14, v0, :cond_0

    invoke-static {v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->buildJustifyPanel(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v1, :cond_72

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v1, :cond_72

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const v12, 0x7f080224

    const/16 v5, 0x11

    const/16 v4, 0x32

    const/4 v3, 0x5

    const/16 v2, 0x8

    const/4 v8, -0x2

    if-ne v0, v1, :cond_4

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v0, 0x4a

    if-ne v14, v0, :cond_1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    invoke-virtual {v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-direct {v11, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/ImageButton;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v9, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/ImageButton;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v13, v10}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v10, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v10, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v13, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f080098

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f08009a

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f08009b

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f080094

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f080096

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f08009c

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$5;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$6;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$7;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$7;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$8;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$8;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$9;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$9;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v13, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$10;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$10;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v10, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v7, 0x7

    invoke-virtual {v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v9, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v4, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v8, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v13, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x46

    if-ne v14, v0, :cond_2

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x6

    const/16 v6, 0x14

    invoke-direct {v1, v2, v4, v0, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f1100d1

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/16 v11, 0x64

    const/4 v12, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;

    invoke-direct {v2, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x49

    if-ne v14, v0, :cond_3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x32

    invoke-virtual {v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080224

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080149

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080158

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08016f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080131

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f110165

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    const/4 v10, 0x3

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v33

    const/16 v34, 0x5

    move-object/from16 v29, v9

    invoke-direct/range {v29 .. v34}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    const/4 v12, 0x3

    invoke-virtual {v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12, v13, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$12;

    invoke-direct {v5, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$12;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$13;

    invoke-direct {v5, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$13;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$14;

    invoke-direct {v5, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$14;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$15;

    invoke-direct {v5, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$15;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$16;

    invoke-direct {v5, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$16;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x11

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v11, 0x7

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v6, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v7, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v8, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x44

    if-ne v14, v0, :cond_4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    const/16 v4, 0xb4

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110157

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$17;

    invoke-direct {v2, v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$17;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_0
    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    const/16 v13, 0x64

    if-eqz v0, :cond_8

    const/16 v1, 0x46

    if-ne v14, v1, :cond_5

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getBlurRadius()I

    move-result v6

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x19

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "\u062a\u0645\u0648\u064a\u0647 \u0627\u0644\u062e\u0644\u0641\u064a\u0647"

    const/4 v9, 0x1

    const/4 v11, 0x2

    move v10, v6

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurListener;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {v3, v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurReset;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {v3, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurReset;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurCancel;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getBlurRadius()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurCancel;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;I)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    :cond_5
    const/16 v1, 0x35

    if-ne v14, v1, :cond_6

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getBrightness()I

    move-result v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, -0x64

    invoke-direct {v1, v2, v4, v13, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f1100ee

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object v6, v2

    move v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$18;

    invoke-direct {v4, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$18;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$19;

    invoke-direct {v2, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$19;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$20;

    invoke-direct {v4, v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$20;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    const/16 v1, 0x36

    if-ne v14, v1, :cond_7

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getContrast()I

    move-result v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2, v13, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f1100ef

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object v6, v2

    move v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$21;

    invoke-direct {v4, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$21;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$22;

    invoke-direct {v2, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$22;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$23;

    invoke-direct {v4, v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$23;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const/16 v0, 0x38

    if-ne v14, v0, :cond_8

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getSaturation()I

    move-result v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, -0x64

    invoke-direct {v1, v2, v4, v13, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f1100f1

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object v6, v2

    move v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$24;

    invoke-direct {v4, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$24;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$25;

    invoke-direct {v2, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$25;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$26;

    invoke-direct {v2, v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$26;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const/16 v0, 0x37

    if-ne v14, v0, :cond_9

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getHue()I

    move-result v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, -0xb4

    const/16 v6, 0xb4

    invoke-direct {v1, v2, v4, v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f1100f0

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object v6, v2

    move v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$5pPssg9tM7vsIty_RokJSJHmCjE;

    invoke-direct {v4, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$5pPssg9tM7vsIty_RokJSJHmCjE;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$27;

    invoke-direct {v2, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$27;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$28;

    invoke-direct {v2, v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$28;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const/16 v12, 0x1e

    const/16 v11, 0x28

    const/4 v0, -0x1

    if-ne v14, v11, :cond_c

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_2
    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVignetteColor()I

    move-result v4

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v6, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVignetteColorAlpha()I

    move-result v6

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_b

    const/4 v8, 0x0

    goto :goto_3

    :cond_b
    const/16 v8, 0x8

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x0

    sget v33, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v35, 0x0

    move-object/from16 v30, v8

    move/from16 v34, v4

    invoke-direct/range {v30 .. v35}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$29;

    invoke-direct {v5, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$29;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v9, v10, v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$30;

    invoke-direct {v2, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$30;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v8, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v10, 0x7f110158

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v35, 0x3

    move-object/from16 v30, v2

    move/from16 v34, v6

    invoke-direct/range {v30 .. v35}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0xff

    invoke-direct {v5, v10, v12, v11, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$31;

    invoke-direct {v10, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$31;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v5, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x7

    invoke-virtual {v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$32;

    invoke-direct {v0, v15, v6, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$32;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;III)V

    goto/16 :goto_6

    :cond_c
    const/16 v1, 0x29

    if-ne v14, v1, :cond_f

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    :goto_4
    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;->getEffectAlpha()I

    move-result v4

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/noise_bg;->getNumberToRepeat()I

    move-result v11

    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v10, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_e

    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    const/16 v5, 0x8

    :goto_5
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$33;

    invoke-direct {v6, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$33;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v9, v5, v2, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v7, 0x7f110158

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v31, 0x3

    move-object v5, v2

    move-object v3, v9

    move v9, v4

    move-object/from16 v36, v10

    move/from16 v10, v31

    invoke-direct/range {v5 .. v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f11015e

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object v6, v5

    move v10, v11

    move v0, v11

    move/from16 v11, v31

    invoke-direct/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v12, v13, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$34;

    invoke-direct {v7, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$34;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    const/16 v10, 0xf

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$35;

    invoke-direct {v8, v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$35;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x7

    invoke-virtual {v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v9, v36

    invoke-virtual {v8, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$36;

    invoke-direct {v2, v15, v4, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$36;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;III)V

    move-object v0, v2

    :goto_6
    iput-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_9

    :cond_f
    const/16 v0, 0x2a

    if-ne v14, v0, :cond_12

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getEffectAlpha()I

    move-result v2

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getNumberToRepeat()I

    move-result v10

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_11

    const/4 v3, 0x0

    goto :goto_8

    :cond_11
    const/16 v3, 0x8

    :goto_8
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$37;

    invoke-direct {v4, v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$37;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v9, v3, v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110158

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x3

    move-object v3, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f11016f

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/16 v31, 0x3

    move-object v4, v3

    move v8, v10

    move-object v12, v9

    move/from16 v9, v31

    invoke-direct/range {v4 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xff

    const/4 v7, 0x5

    invoke-direct {v4, v5, v7, v6, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$38;

    invoke-direct {v5, v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$38;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x2

    const/16 v9, 0xf

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$39;

    invoke-direct {v6, v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$39;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x7

    invoke-virtual {v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$40;

    invoke-direct {v1, v15, v2, v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$40;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;III)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v7, 0x5

    :goto_a
    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    if-eqz v0, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v0, 0x33

    if-ne v14, v0, :cond_13

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isPerspectiveEnabled()Z

    move-result v2

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setComponentReference(Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$41;

    invoke-direct {v1, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$41;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setPerspectiveToolInterface(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeWidth()F

    move-result v10

    add-float/2addr v10, v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeHeight()F

    move-result v11

    add-float/2addr v11, v9

    invoke-direct {v0, v1, v8, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v8

    iget-object v8, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v9

    iget-object v9, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v10

    iget-object v10, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v11

    iget-object v11, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    move-object/from16 v35, v1

    move-object/from16 v36, v8

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v0

    invoke-virtual/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setHandles(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$42;

    invoke-direct {v8, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$42;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v0, v1, v2, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080224

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080134

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$43;

    invoke-direct {v8, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$43;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x32

    invoke-virtual {v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    invoke-virtual {v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x1

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;

    move-object v0, v8

    move-object/from16 v1, p0

    const/16 v12, 0x8

    const/4 v11, 0x5

    const/16 v10, 0x32

    const/16 v9, 0x11

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iput-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto :goto_b

    :cond_13
    const/4 v7, 0x3

    const/16 v9, 0x11

    const/16 v10, 0x32

    const/4 v11, 0x5

    const/16 v12, 0x8

    :goto_b
    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    if-eqz v0, :cond_15

    const/16 v0, -0x54

    if-ne v14, v0, :cond_15

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v1, 0x7f110086

    invoke-virtual {v15, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3c

    const/16 v3, 0x14

    const/16 v4, 0xa

    invoke-direct {v6, v1, v4, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/HorizontalScrollView;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getArrowInstances()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/HorizontalScrollView;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getArrowInstances()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    const v12, 0x7f1100f4

    invoke-virtual {v15, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    const/16 v39, 0xc8

    const/16 v40, 0x2

    move-object/from16 v35, v1

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v11, 0x3c

    const/16 v9, 0x14

    const/16 v13, 0xa

    invoke-direct {v12, v7, v13, v11, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v7, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v7, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hideTemp()V

    :cond_14
    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v7, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$45;

    move-object v11, v0

    move-object v0, v9

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 v41, v2

    move-object v2, v11

    move-object v8, v3

    move-object v3, v6

    move-object/from16 v42, v4

    move-object v4, v13

    move-object v10, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$45;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->initiate(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$46;

    invoke-direct {v0, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$46;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;)V

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$47;

    invoke-direct {v0, v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$47;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;)V

    invoke-virtual {v8, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f1100d1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v46, 0x1

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->defaultMiddleSize:I

    const/16 v40, 0x3

    const/16 v38, 0x1

    move-object/from16 v35, v0

    move/from16 v39, v1

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x32

    invoke-virtual {v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$48;

    invoke-direct {v1, v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$48;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v6, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$49;

    invoke-direct {v1, v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$49;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$50;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$50;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f1100c5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v39, 0x64

    const/16 v48, 0x2

    const/16 v40, 0x2

    move-object/from16 v35, v1

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x64

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$51;

    invoke-direct {v4, v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$51;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x1

    sget v38, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v39, -0x1

    new-instance v40, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct/range {v40 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    move-object/from16 v35, v4

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$52;

    invoke-direct {v5, v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$52;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v9, 0x7f110173

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v37

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v7, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v7, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v39

    const/16 v40, 0x3

    const/16 v38, 0x1

    move-object/from16 v35, v5

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v35, v4

    const/16 v14, 0x14

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    iget-object v14, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v14, v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v14, v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v14

    move-object/from16 v36, v3

    const/4 v3, 0x0

    invoke-direct {v7, v9, v3, v4, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$53;

    invoke-direct {v3, v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$53;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v44

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v9, 0x7f1100c5

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v45

    const/16 v47, 0x32

    move-object/from16 v43, v3

    invoke-direct/range {v43 .. v48}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v38, v5

    move-object/from16 v37, v7

    const/4 v5, 0x0

    const/16 v7, 0x64

    const/16 v14, 0x32

    invoke-direct {v4, v9, v5, v7, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$54;

    invoke-direct {v5, v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$54;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v44

    const/16 v45, 0x1

    sget v46, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const v47, -0x777778

    new-instance v48, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct/range {v48 .. v48}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    move-object/from16 v43, v5

    invoke-direct/range {v43 .. v48}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$55;

    invoke-direct {v7, v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$55;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v5, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v14

    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v2, v41

    invoke-virtual {v2, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f110116

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f110115

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v7, 0x7f110117

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1101b9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$56;

    invoke-direct {v0, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$56;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    :cond_15
    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    if-eqz v0, :cond_17

    const/16 v0, -0x52

    move/from16 v14, p1

    if-ne v14, v0, :cond_18

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->restoreOptions()V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iput-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hideTemp()V

    :cond_16
    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->initiate()V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;

    invoke-direct {v2, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$58;

    invoke-direct {v1, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$58;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_17
    move/from16 v14, p1

    :cond_18
    :goto_c
    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    if-eqz v0, :cond_1a

    const/16 v1, -0x3c

    if-ne v14, v1, :cond_1a

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->init()V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hideTemp()V

    :cond_19
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v1, 0x7f11016e

    invoke-virtual {v15, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-direct {v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x46

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    const/16 v5, 0x37

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x5

    invoke-virtual {v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f1100c5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    const/16 v39, 0x64

    const/16 v40, 0x2

    move-object/from16 v35, v4

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v7, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x1

    sget v38, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v39, -0x1

    new-instance v40, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct/range {v40 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    move-object/from16 v35, v6

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v42

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v9, 0x7f110173

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v43

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x3

    const/16 v47, 0x1

    const/16 v45, 0x0

    const/16 v46, 0x3

    const/16 v44, 0x1

    move-object/from16 v41, v7

    invoke-direct/range {v41 .. v46}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v11, 0x14

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v11, v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v45

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f1100c5

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v46

    const/16 v48, 0x64

    const/16 v49, 0x2

    move-object/from16 v44, v9

    invoke-direct/range {v44 .. v49}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0x64

    const/4 v13, 0x0

    invoke-direct {v10, v11, v13, v12, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x1

    sget v44, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v45, -0x1

    new-instance v46, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct/range {v46 .. v46}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    move-object/from16 v41, v11

    invoke-direct/range {v41 .. v46}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f11015c

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v35, v12

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v14, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v52, v3

    move-object/from16 v53, v12

    const/16 v3, 0x19

    const/4 v12, 0x0

    invoke-direct {v13, v14, v12, v3, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x3

    new-array v14, v12, [I

    fill-array-data v14, :array_0

    invoke-virtual {v3, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([I)V

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v12, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    move-object/from16 v35, v12

    move-object/from16 v36, v2

    move-object/from16 v37, v0

    move-object/from16 v38, v1

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-object/from16 v46, v11

    move-object/from16 v47, v3

    move-object/from16 v48, v53

    move-object/from16 v49, v13

    invoke-virtual/range {v35 .. v49}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->updateControlsFromBundle(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v12, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v35, v3

    const/16 v14, 0xa

    invoke-static {v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    iput v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;

    invoke-direct {v3, v15, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->setChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$31rZr348WZy5sdEVwicpsi3vB1o;

    invoke-direct {v3, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$31rZr348WZy5sdEVwicpsi3vB1o;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$A_amKYX-aIEbWpfHbymX0wiBcx0;

    invoke-direct {v3, v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$A_amKYX-aIEbWpfHbymX0wiBcx0;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$Ag3LWACLZyiZH78KnNWOkVkO3Uc;

    invoke-direct {v3, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$Ag3LWACLZyiZH78KnNWOkVkO3Uc;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$8uxb7E5gNxkKqPOE633kpWZo460;

    invoke-direct {v3, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$8uxb7E5gNxkKqPOE633kpWZo460;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v8, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$9_NxMmDp7a2nCWekp239v5db9Lw;

    invoke-direct {v3, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$9_NxMmDp7a2nCWekp239v5db9Lw;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$3VnjoowoeWSSEAlf9FYk16K5BoQ;

    invoke-direct {v3, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$3VnjoowoeWSSEAlf9FYk16K5BoQ;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v11, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$uDXAhZjnYkagyfZMdzeZcCgx_1w;

    move-object/from16 v14, v53

    invoke-direct {v3, v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$uDXAhZjnYkagyfZMdzeZcCgx_1w;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v13, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$Rgb41wWORfUHTdPJcW-4reYzdO4;

    invoke-direct {v3, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$Rgb41wWORfUHTdPJcW-4reYzdO4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    move-object/from16 v36, v13

    move-object/from16 v13, v35

    invoke-virtual {v13, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v14, v52

    invoke-virtual {v3, v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f110116

    invoke-virtual {v3, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110115

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x3

    move-object/from16 v37, v1

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110117

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1101b9

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$59;

    invoke-direct {v0, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$59;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    :cond_1a
    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/4 v14, 0x0

    if-eqz v0, :cond_1b

    const/16 v1, -0x1e

    move/from16 v13, p1

    if-ne v13, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->restoreOptions()V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrColor(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrStrokeWidth(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrBlur(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrFill(Z)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrNeon(Z)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrDashed(Z)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x28

    invoke-virtual {v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-virtual {v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ImageButton;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080224

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080170

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080134

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08018a

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$60;

    invoke-direct {v6, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$60;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$61;

    invoke-direct {v6, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$61;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/high16 v11, -0x1000000

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$62;

    invoke-direct {v7, v15, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$62;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/ImageButton;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x5

    invoke-virtual {v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x11

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$63;

    invoke-direct {v0, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$63;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f11016d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v38, 0x1

    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    const/4 v12, 0x3

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v11, 0x28

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrStrokeWidth()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v36

    const v3, 0x7f1101b5

    invoke-virtual {v15, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v42, 0x1

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getSmoothness()I

    move-result v39

    const/16 v40, 0x2

    move-object/from16 v35, v2

    invoke-direct/range {v35 .. v40}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getSmoothness()I

    move-result v5

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8, v7, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$64;

    invoke-direct {v4, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$64;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v40

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f11015c

    invoke-virtual {v5, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v41

    const/16 v43, 0x0

    const/16 v44, 0x3

    move-object/from16 v39, v4

    invoke-direct/range {v39 .. v44}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v10, 0x19

    invoke-direct {v5, v7, v8, v10, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9, v8, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v8, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$65;

    invoke-direct {v8, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$65;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;)V

    invoke-virtual {v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setOnCheckedChange(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$66;

    invoke-direct {v8, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$66;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;)V

    invoke-virtual {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setOnCheckedChange(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$67;

    invoke-direct {v11, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$67;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    const/4 v12, 0x0

    invoke-direct {v8, v10, v12, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f1100e9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setToggleLabel(Ljava/lang/String;)V

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f1100e8

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setToggleLabel(Ljava/lang/String;)V

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f1100ea

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setToggleLabel(Ljava/lang/String;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$68;

    invoke-direct {v10, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$68;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$69;

    invoke-direct {v10, v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$69;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v5, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$70;

    invoke-direct {v0, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$70;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    goto :goto_d

    :cond_1b
    move/from16 v13, p1

    :cond_1c
    :goto_d
    const/16 v0, 0x21

    if-ne v13, v0, :cond_1f

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v8

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-eq v0, v2, :cond_1e

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v2, :cond_1d

    goto :goto_e

    :cond_1d
    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    move v5, v2

    goto :goto_f

    :cond_1e
    :goto_e
    move v5, v0

    :goto_f
    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    move-object v2, v9

    move v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$71;

    invoke-direct {v2, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$71;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v9, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$72;

    invoke-direct {v2, v15, v0, v1, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$72;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto :goto_10

    :cond_1f
    const/16 v0, 0x2b

    if-ne v13, v0, :cond_20

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;-><init>(Landroid/content/Context;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$73;

    invoke-direct {v2, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$73;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    invoke-virtual {v15, v1, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoBgImagesJob(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V

    :cond_20
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    const-string v35, "#e91e63"

    if-eqz v0, :cond_21

    goto :goto_11

    :cond_21
    const/16 v1, 0x5b

    if-eq v13, v1, :cond_22

    goto/16 :goto_24

    :cond_22
    :goto_11
    const/16 v0, 0x15

    if-eq v13, v0, :cond_23

    const/16 v0, 0x16

    if-ne v13, v0, :cond_25

    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v0

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    if-ne v0, v1, :cond_25

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0086

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v2

    const v3, 0x7f0a021c

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v4, 0x7f0a01d1

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v6, 0x7f0a180d

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-virtual {v6, v5}, Landroid/view/View;->setClickable(Z)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$AddFolderDialogClick;

    invoke-direct {v7, v15, v0, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$AddFolderDialogClick;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_24
    invoke-virtual {v3, v5, v14}, Landroid/widget/RadioGroup;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(I)V

    invoke-static {v15, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->loadSavedTabs(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Linfo/hoang8f/android/segmented/SegmentedGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$74;

    invoke-direct {v1, v15, v13, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$74;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$75;

    invoke-direct {v1, v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$75;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;

    invoke-direct {v1, v15, v3, v0, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Linfo/hoang8f/android/segmented/SegmentedGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/4 v1, 0x4

    invoke-virtual {v15, v0, v13, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoStickersJob(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;II)V

    goto/16 :goto_24

    :cond_25
    const/16 v0, 0x26

    if-ne v13, v0, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v6, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v7, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v37

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110164

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x3

    move-object/from16 v36, v1

    invoke-direct/range {v36 .. v41}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v37

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110176

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v39, 0x1

    const/16 v41, 0x2

    move-object/from16 v36, v8

    move/from16 v40, v0

    invoke-direct/range {v36 .. v41}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v37

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v10, 0x7f11015f

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v36, v9

    move/from16 v39, v3

    move/from16 v40, v2

    move/from16 v41, v4

    invoke-direct/range {v36 .. v41}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v10, v3, v4, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0x64

    invoke-direct {v11, v3, v4, v5, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0, v4, v5, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$77;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v8

    move-object v4, v12

    move-object v14, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$77;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$78;

    move-object v0, v14

    move-object v3, v9

    move-object v4, v11

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$78;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$79;

    invoke-direct {v0, v15, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$79;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    const/4 v7, 0x3

    const/16 v13, 0x8

    goto/16 :goto_1f

    :cond_26
    const/16 v0, 0x24

    if-ne v13, v0, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x32

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080224

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080149

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080158

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08016f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080131

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f110165

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x1

    const/4 v10, 0x3

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v41

    const/16 v42, 0x5

    move-object/from16 v37, v9

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v14

    const/4 v12, 0x3

    invoke-virtual {v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12, v14, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$80;

    invoke-direct {v11, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$80;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$81;

    invoke-direct {v11, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$81;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$82;

    invoke-direct {v11, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$82;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$83;

    invoke-direct {v11, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$83;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$84;

    invoke-direct {v11, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$84;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, 0x5

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v11, 0x11

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v11, 0x7

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v5, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v6, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v8, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$85;

    invoke-direct {v2, v15, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$85;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    move/from16 v8, p1

    :goto_12
    const/4 v9, 0x1

    const/4 v10, -0x2

    :goto_13
    const/16 v11, 0x64

    const/4 v12, 0x0

    const v13, 0x7f1100c5

    const/4 v14, 0x5

    goto/16 :goto_1d

    :cond_27
    const/16 v0, 0x25

    move/from16 v13, p1

    if-ne v13, v0, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x32

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/ImageButton;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/ImageButton;

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/ImageButton;

    iget-object v14, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v10, 0x7f080224

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v11, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v10, 0x7f080098

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f08009a

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f08009b

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f080094

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f080096

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f08009c

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$86;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$86;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$87;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$87;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$88;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$88;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$89;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$89;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$90;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$90;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$91;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$91;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v12, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v14, 0x5

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v10, 0x11

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v10, 0x7

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v14

    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v6, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v7, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v8, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v11, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v12, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$92;

    invoke-direct {v2, v15, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$92;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    move v8, v13

    goto/16 :goto_12

    :cond_28
    const/4 v10, 0x7

    const/16 v0, 0x3d

    if-ne v13, v0, :cond_2a

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isEmbossEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossLightAngle()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossIntensity()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossAmbient()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossHardness()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossBevel()I

    move-result v1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    goto :goto_14

    :cond_29
    const/16 v3, 0x8

    :goto_14
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$93;

    invoke-direct {v5, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$93;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v8, v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110163

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v27, 0x1

    const/16 v37, 0x1

    const/16 v38, 0x1

    const/4 v6, 0x1

    move-object v3, v7

    move-object v10, v7

    move v7, v9

    move-object v13, v8

    move/from16 v8, v37

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$94;

    invoke-direct {v4, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$94;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-direct {v8, v3, v9, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110160

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v37, 0x3

    const/16 v40, 0x3

    const/16 v41, 0x3

    move-object v3, v7

    move-object/from16 v54, v7

    move v7, v11

    move/from16 v42, v9

    move-object v9, v8

    move/from16 v8, v41

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110159

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/from16 v55, v7

    move v7, v12

    move/from16 v43, v11

    move-object v11, v8

    move/from16 v8, v41

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110171

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move/from16 v6, v38

    move-object/from16 v56, v7

    move v7, v14

    move/from16 v38, v12

    move-object v12, v8

    move/from16 v8, v40

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f11015b

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move/from16 v6, v27

    move-object/from16 v57, v7

    move v7, v1

    move/from16 v27, v14

    move-object v14, v8

    move/from16 v8, v37

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$95;

    move-object/from16 v5, v54

    invoke-direct {v4, v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$95;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$96;

    move-object/from16 v6, v55

    invoke-direct {v4, v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$96;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$97;

    move-object/from16 v7, v56

    invoke-direct {v4, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$97;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v14, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$98;

    move-object/from16 v8, v57

    invoke-direct {v4, v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$98;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v37, v1

    const v1, 0x7f110042

    invoke-virtual {v10, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v9, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$99;

    move-object v0, v9

    move/from16 v7, v37

    move-object/from16 v1, p0

    move/from16 v3, v42

    move/from16 v4, v43

    move/from16 v5, v38

    move/from16 v6, v27

    const/4 v13, 0x3

    const/4 v14, 0x7

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$99;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/lang/Boolean;IIIII)V

    goto/16 :goto_23

    :cond_2a
    const/4 v8, -0x2

    const/4 v13, 0x3

    const/4 v14, 0x7

    const/16 v0, 0x3f

    move/from16 v12, p1

    if-ne v12, v0, :cond_31

    const/16 v0, 0x78

    invoke-virtual {v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    mul-double v0, v0, v2

    double-to-int v3, v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDEnabled()Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDViewType()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepth()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthFillType()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthColorFill()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDDepthColorAutomatic()Z

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthDarken()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDStokeInclude()Z

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextRotationX()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextRotationY()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v8

    iget v8, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDObliqueAngle()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDLightingEnabled()Z

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v37

    move/from16 v45, v4

    invoke-virtual/range {v37 .. v37}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossLightAngle()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v37

    move/from16 v46, v3

    invoke-virtual/range {v37 .. v37}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingIntensity()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v37

    move/from16 v47, v7

    invoke-virtual/range {v37 .. v37}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingShadow()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v37

    move/from16 v48, v7

    invoke-virtual/range {v37 .. v37}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingSpecularHardness()I

    move-result v7

    move/from16 v49, v7

    new-instance v7, Landroid/widget/LinearLayout;

    move/from16 v52, v3

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_2b

    const/4 v3, 0x0

    goto :goto_15

    :cond_2b
    const/16 v3, 0x8

    :goto_15
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    move/from16 v53, v4

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v54, v12

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$100;

    invoke-direct {v12, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$100;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v3, v4, v6, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v12, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v55, v3

    const v3, 0x7f0d008d

    invoke-static {v4, v3, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x7f0a021c

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Linfo/hoang8f/android/segmented/SegmentedGroup;

    move/from16 v36, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/widget/RadioGroup;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(I)V

    const v6, 0x7f0a01ca

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    const v4, 0x7f0a01be

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    move-object/from16 v57, v12

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    move-object/from16 v58, v7

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v59, v3

    const v3, 0x7f1100e5

    invoke-virtual {v7, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x1

    const/4 v3, 0x3

    if-ne v10, v3, :cond_2c

    move/from16 v3, v46

    goto :goto_16

    :cond_2c
    move/from16 v3, v45

    :goto_16
    invoke-virtual {v15, v9, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v41

    const/16 v42, 0x3

    move-object/from16 v37, v12

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v60, v12

    const/4 v12, 0x3

    if-ne v10, v12, :cond_2d

    move/from16 v12, v46

    goto :goto_17

    :cond_2d
    move/from16 v12, v45

    :goto_17
    invoke-virtual {v15, v9, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v12

    move-object/from16 v62, v4

    move/from16 v61, v9

    const/4 v4, 0x1

    const/16 v9, 0x64

    invoke-direct {v7, v3, v4, v9, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f1100e6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x3

    move-object/from16 v37, v9

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v37, v12

    move/from16 v40, v10

    move/from16 v41, v11

    move-object/from16 v42, v22

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-virtual {v12, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setIsAutomatic(Z)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setShowAutomatic(ZZ)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v63, v5

    const v5, 0x7f1100dd

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x1

    const/16 v42, 0x2

    move-object/from16 v37, v4

    move/from16 v41, v2

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v64, v4

    move/from16 v65, v11

    const/16 v4, 0x64

    const/4 v11, 0x0

    invoke-direct {v5, v3, v11, v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110108

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x3

    move-object/from16 v37, v11

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v66, v2

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$101;

    invoke-direct {v2, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$101;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v4, v3, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v67, v1

    const v1, 0x7f1101d6

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x1

    const/16 v42, 0x1

    move-object/from16 v37, v3

    move/from16 v41, v0

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v68, v4

    const/16 v4, -0x50

    move-object/from16 v69, v5

    const/16 v5, 0x50

    invoke-direct {v2, v1, v4, v5, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f1101d8

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v37, v5

    move/from16 v41, v13

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v70, v0

    const/16 v0, -0x50

    move-object/from16 v71, v11

    const/16 v11, 0x50

    invoke-direct {v4, v1, v0, v11, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f1101da

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v37, v11

    const/4 v0, 0x1

    move/from16 v40, v0

    move/from16 v41, v8

    const/4 v0, 0x1

    move/from16 v42, v0

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v16, v9

    move/from16 v37, v13

    const/16 v9, 0xb4

    const/16 v13, -0xb4

    invoke-direct {v1, v0, v13, v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v39

    const-string v40, "oblique angle"

    const/16 v43, 0x1

    const/16 v41, 0x1

    move-object/from16 v38, v0

    move/from16 v42, v14

    invoke-direct/range {v38 .. v43}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v73, v1

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$102;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$102;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-direct {v13, v9, v14, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    move/from16 v74, v8

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v75, v2

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$103;

    invoke-direct {v2, v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$103;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    move/from16 v76, v14

    move/from16 v14, v54

    invoke-direct {v8, v0, v14, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v39

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v54, v3

    const v3, 0x7f110163

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v38, v0

    move/from16 v42, v53

    invoke-direct/range {v38 .. v43}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v77, v4

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$104;

    invoke-direct {v4, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$104;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v78, v5

    move/from16 v5, v53

    invoke-direct {v2, v3, v5, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v39

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110160

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v40

    const/16 v43, 0x3

    move-object/from16 v38, v4

    move/from16 v42, v52

    invoke-direct/range {v38 .. v43}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v80, v11

    move/from16 v79, v14

    move/from16 v14, v52

    const/4 v11, 0x0

    move-object/from16 v52, v8

    const/16 v8, 0x64

    invoke-direct {v5, v3, v11, v8, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v39

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f1101a9

    invoke-virtual {v3, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v38, v8

    const/4 v3, 0x1

    move/from16 v41, v3

    move/from16 v42, v48

    const/4 v3, 0x3

    move/from16 v43, v3

    invoke-direct/range {v38 .. v43}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v81, v7

    move/from16 v72, v14

    move/from16 v14, v48

    const/4 v7, 0x0

    move-object/from16 v48, v12

    const/16 v12, 0x64

    invoke-direct {v11, v3, v7, v12, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v39

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f110171

    invoke-virtual {v3, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x1

    const/16 v43, 0x3

    move-object/from16 v38, v7

    move/from16 v42, v49

    invoke-direct/range {v38 .. v43}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v20, v10

    move/from16 v38, v14

    move/from16 v14, v49

    const/16 v10, 0x64

    const/4 v15, 0x0

    invoke-direct {v12, v3, v15, v10, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v3, v47

    const/4 v2, 0x1

    if-ne v3, v2, :cond_2e

    invoke-virtual {v6, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18

    :cond_2e
    const/4 v0, 0x3

    const/16 v6, 0x8

    if-ne v3, v0, :cond_2f

    move-object/from16 v0, v62

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2f
    :goto_18
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$105;

    const/16 v18, 0x0

    move-object/from16 v15, p0

    invoke-direct {v0, v15, v9, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$105;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v2, v59

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$106;

    move/from16 v27, v70

    const/16 v29, 0x3

    move-object v0, v2

    move-object v10, v1

    move/from16 v39, v67

    move-object/from16 v6, v73

    move-object/from16 v1, p0

    move-object/from16 v42, v13

    move/from16 v49, v14

    move/from16 v19, v66

    move-object/from16 v14, v75

    const/16 v43, 0x1

    move-object v13, v2

    move/from16 v2, v20

    move/from16 v47, v3

    move-object/from16 v82, v55

    move-object/from16 v55, v10

    move-object/from16 v10, v54

    move/from16 v54, v72

    move/from16 v3, v46

    move-object/from16 v59, v7

    move-object/from16 v56, v12

    move/from16 v46, v53

    move-object/from16 v83, v68

    move-object/from16 v12, v77

    const/16 v62, 0x0

    move-object v7, v4

    move-object/from16 v53, v9

    move-object/from16 v9, v64

    move/from16 v4, v45

    move-object/from16 v84, v5

    move-object/from16 v64, v8

    move/from16 v45, v63

    move-object/from16 v8, v78

    move-object/from16 v63, v11

    move-object/from16 v11, v69

    move-object/from16 v5, v60

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$106;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;IIILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v0, v81

    invoke-virtual {v0, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$107;

    move-object/from16 v2, v48

    invoke-direct {v1, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$107;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-virtual {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$108;

    invoke-direct {v1, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$108;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$109;

    invoke-direct {v1, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$109;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v14, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$110;

    invoke-direct {v1, v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$110;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$111;

    move-object/from16 v3, v80

    invoke-direct {v1, v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$111;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v6, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$112;

    invoke-direct {v1, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$112;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v4, v84

    invoke-virtual {v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$113;

    move-object/from16 v4, v64

    invoke-direct {v1, v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$113;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v4, v63

    invoke-virtual {v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$114;

    move-object/from16 v4, v59

    invoke-direct {v1, v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$114;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v4, v56

    invoke-virtual {v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v85

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f1101d1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v86

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x3

    move-object/from16 v84, v1

    invoke-direct/range {v84 .. v89}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    move-object/from16 v4, v58

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v57

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f1100e4

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v60

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_30
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110194

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1101b4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v42, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$115;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move/from16 v2, v36

    move/from16 v3, v47

    move/from16 v4, v61

    move/from16 v5, v19

    const/16 v12, 0x8

    move/from16 v6, v39

    move/from16 v14, v38

    move/from16 v16, v49

    move/from16 v7, v20

    move/from16 v19, v74

    const/4 v10, -0x2

    const/16 v11, 0xb4

    const v13, 0x7f1100c5

    move/from16 v8, v65

    move-object/from16 v9, v22

    const/16 v17, 0x19

    const v20, 0x7f080224

    const/16 v21, 0x64

    move/from16 v10, v45

    const/16 v18, 0x14

    move/from16 v11, v79

    const v17, 0x7f11015c

    move/from16 v12, v46

    move/from16 v18, v37

    move/from16 v13, v54

    move/from16 v17, v76

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v27

    invoke-direct/range {v0 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$115;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIIZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ZZIIIIIIII)V

    const/4 v7, 0x3

    const/16 v13, 0x8

    move-object/from16 v15, p0

    goto/16 :goto_1f

    :cond_31
    const/16 v0, 0x2e

    move/from16 v8, p1

    if-ne v8, v0, :cond_32

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextRotationX()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextRotationY()I

    move-result v9

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v11, -0xb4

    const/16 v12, 0xb4

    invoke-direct {v10, v1, v11, v12, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110177

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v13

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v11, v12, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110178

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v14

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$116;

    invoke-direct {v2, v15, v10, v1, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$116;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$117;

    invoke-direct {v2, v15, v10, v1, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$117;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$118;

    invoke-direct {v2, v15, v0, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$118;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;II)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$119;

    invoke-direct {v2, v15, v10, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$119;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_24

    :cond_32
    const/4 v9, 0x0

    const/16 v10, 0x19

    const/16 v11, -0xb4

    const/16 v12, 0xb4

    move-object/from16 v15, p0

    if-ne v8, v10, :cond_33

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1, v11, v12, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110157

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v13

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$EzRO-cS6XZMQEGjLjvMnh0kk9LI;

    invoke-direct {v2, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$EzRO-cS6XZMQEGjLjvMnh0kk9LI;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->setRotationListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$120;

    invoke-direct {v1, v15, v7, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$120;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$121;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$121;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$122;

    invoke-direct {v1, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$122;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_24

    :cond_33
    const/16 v0, 0x3b

    if-ne v8, v0, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeEnabled()Z

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeColor()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeRadius()I

    move-result v13

    new-instance v14, Landroid/widget/LinearLayout;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_34

    const/4 v2, 0x0

    goto :goto_19

    :cond_34
    const/16 v2, 0x8

    :goto_19
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v16, 0x0

    move-object v2, v6

    move-object v10, v6

    move v6, v1

    const/4 v9, 0x1

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110173

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v21, 0x3

    move-object/from16 v16, v2

    move/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v7, 0x1e

    invoke-direct {v3, v4, v9, v7, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$123;

    invoke-direct {v6, v15, v14, v3, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$123;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v4, v5, v0, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$124;

    invoke-direct {v5, v15, v4, v10, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$124;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$125;

    invoke-direct {v5, v15, v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$125;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v10, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$126;

    invoke-direct {v2, v15, v0, v13, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$126;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZII)V

    goto/16 :goto_13

    :cond_35
    const/16 v7, 0x1e

    const/4 v9, 0x1

    const/4 v10, -0x2

    const/16 v0, 0x5b

    if-ne v8, v0, :cond_38

    invoke-direct {v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getHue()I

    move-result v13

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getSaturation()I

    move-result v14

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBrightness()I

    move-result v1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getContrast()I

    move-result v6

    move v0, v1

    goto :goto_1a

    :cond_36
    invoke-direct {v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEffectHue()I

    move-result v13

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEffectSaturation()I

    move-result v14

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEffectBrightness()I

    move-result v1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEffectContrast()I

    move-result v6

    move v0, v1

    goto :goto_1a

    :cond_37
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1a
    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1, v11, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1100f0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object v1, v4

    move-object/from16 v22, v4

    move/from16 v4, v16

    move-object/from16 v23, v5

    move v5, v13

    move v7, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0x64

    const/16 v5, 0x64

    invoke-direct {v6, v1, v2, v5, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1100f1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v21, 0x3

    move-object v1, v4

    move-object/from16 v24, v4

    move/from16 v4, v16

    const/16 v11, 0x64

    move v5, v14

    move-object/from16 v25, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0x64

    invoke-direct {v6, v1, v2, v11, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1100ee

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v19, 0x1

    const/4 v4, 0x1

    const/16 v16, 0x3

    move-object v1, v5

    move-object/from16 v26, v5

    move v5, v0

    move-object/from16 v27, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2, v11, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f1100ef

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v5

    move/from16 v20, v7

    invoke-direct/range {v16 .. v21}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;

    move/from16 v16, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object v12, v4

    move-object/from16 v4, v25

    move-object/from16 v18, v5

    move-object/from16 v5, v27

    move-object/from16 v19, v6

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v6, v23

    invoke-virtual {v6, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$wVaGNIuOurVF6e9fM8IbAuSqa-M;

    move-object v0, v12

    move-object/from16 v2, v24

    move-object v3, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$wVaGNIuOurVF6e9fM8IbAuSqa-M;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v6, v25

    invoke-virtual {v6, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$rq9IraMqZqbN-PUgZfPNRlD7uR4;

    move-object v0, v12

    move-object/from16 v2, v26

    move-object/from16 v3, v23

    move-object v4, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$rq9IraMqZqbN-PUgZfPNRlD7uR4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v6, v27

    invoke-virtual {v6, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$RQjwVJM1w_hKTNYgqSwDr5N5gF8;

    move-object v0, v12

    move-object/from16 v2, v18

    move-object/from16 v4, v25

    move-object v5, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$RQjwVJM1w_hKTNYgqSwDr5N5gF8;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$D2sbI6E5muT1khHkw0A2vrVFZc0;

    move-object v0, v12

    move v2, v13

    move/from16 v3, v16

    move v4, v14

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$D2sbI6E5muT1khHkw0A2vrVFZc0;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;IIII)V

    iput-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$127;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$127;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_24

    :cond_38
    const/16 v0, 0x63

    if-ne v8, v0, :cond_39

    invoke-direct {v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->addBlendControls()V

    :cond_39
    const/16 v0, 0x5d

    if-ne v8, v0, :cond_3a

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getGaussianBlurRadius()I

    move-result v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x19

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u062a\u0645\u0648\u064a\u0647 \u0627\u0644\u0645\u0644\u062d\u0642\u0627\u062a"

    const/4 v5, 0x1

    move v6, v0

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$GaussianBlurListener;

    invoke-direct {v3, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$GaussianBlurListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$GaussianBlurCancel;

    invoke-direct {v3, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$GaussianBlurCancel;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$GaussianBlurReset;

    invoke-direct {v4, v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$GaussianBlurReset;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_24

    :cond_3a
    const/16 v11, 0x64

    const/16 v0, 0x39

    if-ne v8, v0, :cond_3b

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeOpacity()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isShapeOpacityShadowInclude()Z

    move-result v7

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v13, 0x7f1100c5

    invoke-virtual {v1, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v1, v12

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v11, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110156

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v23}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$128;

    invoke-direct {v5, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$128;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v3, v4, v7, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$W2x0YZ47pW406L-hFd_Oc_pOEFY;

    invoke-direct {v4, v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$W2x0YZ47pW406L-hFd_Oc_pOEFY;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$129;

    invoke-direct {v1, v15, v0, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$129;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;IZ)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_24

    :cond_3b
    const v13, 0x7f1100c5

    const/16 v0, -0x53

    if-ne v8, v0, :cond_3e

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isBezierMaskEnabled()Z

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isBezierMaskIn()Z

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct {v2, v3, v4, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->restoreOptions()V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->initiateMaskMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$130;

    invoke-direct {v4, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$130;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d004c

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f0a021b

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v5, 0x7f0a01c8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v6, 0x7f0a0182

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v4, v9, v12}, Landroid/widget/RadioGroup;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(I)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$131;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$131;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-eqz v1, :cond_3c

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1b

    :cond_3c
    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1b
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v0, :cond_3d

    const/4 v5, 0x0

    goto :goto_1c

    :cond_3d
    const/16 v5, 0x8

    :goto_1c
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$132;

    invoke-direct {v7, v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$132;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v5, v6, v0, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f11013a

    invoke-virtual {v7, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v6

    invoke-direct/range {v18 .. v23}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    invoke-virtual {v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v14, 0x5

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v6, Landroid/view/View;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v7, "#d0d0d0"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$133;

    invoke-direct {v2, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$133;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$134;

    invoke-direct {v2, v15, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$134;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZZ)V

    :goto_1d
    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_24

    :cond_3e
    const/4 v12, 0x0

    const/4 v14, 0x5

    const/16 v0, 0x55

    if-ne v8, v0, :cond_3f

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextureScale()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isTextureMaintainAspect()Z

    move-result v5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextureSrc()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v4

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$135;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$135;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;-><init>(Landroid/content/Context;ZLcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$136;

    invoke-direct {v1, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$136;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setNewTextureOnClick(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$137;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$137;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setDeleteTextureOnClick(Landroid/view/View$OnClickListener;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_24

    :cond_3f
    const/16 v7, 0x8

    const/16 v0, 0x34

    if-ne v8, v0, :cond_41

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRemoveColorsTolerances(Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRemoveColorsTolerances(Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isRemoveColorEnabled()Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRemoveColorBlur()I

    move-result v3

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0071

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a00e6

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    const v0, 0x7f0a00e5

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v4, :cond_40

    const/4 v13, 0x0

    goto :goto_1e

    :cond_40
    const/16 v13, 0x8

    :goto_1e
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$138;

    invoke-direct {v10, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$138;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v13, v9, v4, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x23

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    const/16 v11, 0x23

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v10, 0x11

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x32

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    move-object/from16 v16, v1

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    invoke-direct {v9, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x11

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget v10, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    invoke-direct {v9, v1, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$139;

    invoke-direct {v1, v15, v7, v13, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$139;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$140;

    move-object v0, v10

    move-object/from16 v11, v16

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v9

    move/from16 v25, v3

    move-object v3, v7

    move v14, v4

    move-object v4, v13

    move-object v8, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$140;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f110174

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget v1, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    const/16 v11, 0xa

    div-int/lit8 v22, v1, 0xa

    const/4 v1, 0x3

    const/16 v21, 0x1

    const/16 v23, 0x3

    move-object/from16 v18, v10

    invoke-direct/range {v18 .. v23}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    div-int/2addr v4, v11

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->removeColorToleranceInverse(I)I

    move-result v4

    const/16 v11, 0x64

    invoke-direct {v5, v2, v3, v11, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110170

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v11

    move/from16 v21, v0

    move/from16 v22, v25

    move/from16 v23, v1

    invoke-direct/range {v18 .. v23}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move/from16 v3, v25

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$141;

    move-object v0, v1

    move/from16 v18, v14

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v90, v3

    move-object v3, v8

    move-object/from16 v19, v12

    move-object v12, v4

    move-object v4, v9

    move-object/from16 v20, v12

    move-object v12, v5

    move-object v5, v7

    move-object/from16 v91, v6

    move-object v6, v13

    move-object/from16 v22, v7

    move-object/from16 v21, v13

    const/16 v13, 0x8

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$141;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Ljava/util/ArrayList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->toggleBubble(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$142;

    invoke-direct {v0, v15, v10, v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$142;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$143;

    invoke-direct {v0, v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$143;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x4

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v15, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginHor(Landroid/widget/LinearLayout$LayoutParams;I)V

    invoke-virtual {v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v15, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginVer(Landroid/widget/LinearLayout$LayoutParams;I)V

    invoke-virtual {v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v15, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginHor(Landroid/widget/LinearLayout$LayoutParams;I)V

    const/4 v7, 0x3

    invoke-virtual {v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v15, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginVer(Landroid/widget/LinearLayout$LayoutParams;I)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08010b

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v4, v19

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$144;

    move/from16 v2, v18

    move/from16 v3, v90

    move-object/from16 v1, v91

    invoke-direct {v0, v15, v2, v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$144;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZILjava/util/ArrayList;)V

    :goto_1f
    iput-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_24

    :cond_41
    const/4 v7, 0x3

    const/16 v13, 0x8

    const/16 v0, 0x23

    move/from16 v8, p1

    if-ne v8, v0, :cond_43

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isColorOverlayEnabled()Z

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getColorOverlayColor()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getColorOverlayFillType()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getColorOverlayGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v5

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_42

    const/4 v1, 0x0

    goto :goto_20

    :cond_42
    const/16 v1, 0x8

    :goto_20
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v18, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v18 .. v23}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$145;

    invoke-direct {v10, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$145;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v6, v9, v2, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$146;

    invoke-direct {v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$146;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v1, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x7

    invoke-virtual {v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_24

    :cond_43
    const/4 v9, 0x7

    const/16 v0, 0x1b

    if-ne v8, v0, :cond_45

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadowEnabled()Z

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadowColor()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadow_radius()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadow_dx()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadow_dy()I

    move-result v0

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_44

    const/4 v2, 0x0

    goto :goto_21

    :cond_44
    const/16 v2, 0x8

    :goto_21
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v16, 0x0

    move-object v1, v5

    move-object/from16 v18, v5

    move v5, v11

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f11015c

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    const/16 v20, 0x3

    const/4 v4, 0x1

    const/16 v21, 0x3

    move-object v1, v6

    const v13, 0x7f11015c

    move v5, v12

    move-object/from16 v22, v6

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3, v2, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110167

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v5

    move/from16 v4, v16

    move-object/from16 v16, v5

    move v5, v14

    move-object/from16 v21, v6

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v5, 0x46

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    invoke-direct {v6, v1, v2, v3, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110168

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x1

    const/16 v23, 0x3

    move-object v1, v4

    move-object/from16 v25, v4

    move/from16 v4, v20

    const/16 v9, 0x46

    move v5, v0

    move-object/from16 v20, v6

    move/from16 v6, v23

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    invoke-direct {v6, v1, v2, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$148;

    move/from16 v23, v0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v7, v3

    move-object/from16 v3, v21

    move-object v9, v4

    move-object/from16 v4, v20

    move-object v13, v5

    move-object v5, v6

    move-object/from16 v26, v6

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$148;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v13, v9, v10, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$149;

    move-object v0, v7

    move-object v2, v13

    move-object/from16 v3, v20

    move-object/from16 v4, v26

    move-object/from16 v5, v18

    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$149;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v9, v21

    invoke-virtual {v9, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$150;

    move-object v0, v7

    move-object v3, v9

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$150;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v20

    invoke-virtual {v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$151;

    move-object v0, v7

    move-object v4, v6

    move-object/from16 v6, v25

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$151;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v26

    invoke-virtual {v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$152;

    move-object v0, v7

    move-object/from16 v4, v20

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$152;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$153;

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v10

    move v3, v12

    move v4, v14

    move/from16 v5, v23

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$153;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V

    iput-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_24

    :cond_45
    const/16 v0, 0x3e

    if-ne v8, v0, :cond_47

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadowEnabled()Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadowColor()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadow_radius()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadow_dx()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadow_dy()I

    move-result v12

    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v7, :cond_46

    const/4 v2, 0x0

    goto :goto_22

    :cond_46
    const/16 v2, 0x8

    :goto_22
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v6, 0x0

    move-object v1, v14

    move v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f11015c

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object v1, v0

    move-object v3, v4

    move v4, v5

    move v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3, v2, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110167

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v16, 0x3

    const/16 v18, 0x3

    move-object v1, v5

    move-object/from16 v19, v5

    move v5, v11

    move-object/from16 v20, v6

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v6, v1, v3, v4, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110168

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, v5

    move-object/from16 v18, v5

    move v5, v12

    move-object/from16 v21, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v6, v1, v3, v4, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$154;

    move-object v2, v0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v13

    move-object v8, v3

    move-object/from16 v3, v20

    move/from16 v22, v9

    move-object v9, v4

    move-object/from16 v4, v21

    move/from16 v23, v12

    move-object v12, v5

    move-object v5, v6

    move-object/from16 v25, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$154;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v12, v9, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$155;

    move-object v0, v8

    move-object v2, v12

    move-object/from16 v3, v21

    move-object/from16 v4, v25

    move-object v5, v14

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$155;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v9, v20

    invoke-virtual {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$156;

    move-object v0, v8

    move-object v3, v9

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$156;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v21

    invoke-virtual {v6, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$157;

    move-object v0, v8

    move-object v4, v6

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$157;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v25

    invoke-virtual {v6, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$158;

    move-object v0, v8

    move-object/from16 v4, v21

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$158;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v14, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$159;

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v7

    move v3, v10

    move v4, v11

    move/from16 v5, v23

    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$159;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V

    :goto_23
    iput-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    :cond_47
    :goto_24
    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    if-eqz v0, :cond_72

    move/from16 v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_48

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    const/16 v3, 0xb4

    invoke-direct {v7, v1, v2, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$2MEzpP8m3f6U9K_4xSiWQ8gt5V0;

    invoke-direct {v2, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$2MEzpP8m3f6U9K_4xSiWQ8gt5V0;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->setRotationListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110157

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$160;

    invoke-direct {v1, v15, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$160;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$161;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$161;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$162;

    invoke-direct {v1, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$162;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_37

    :cond_48
    const/16 v1, 0x24

    if-ne v0, v1, :cond_49

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x32

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080224

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080149

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080158

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08016f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080131

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f110165

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/4 v10, 0x3

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v20

    const/16 v21, 0x5

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v21}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v10, v11, v14, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$163;

    invoke-direct {v11, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$163;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$164;

    invoke-direct {v11, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$164;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$165;

    invoke-direct {v11, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$165;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$166;

    invoke-direct {v11, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$166;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$167;

    invoke-direct {v11, v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$167;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, 0x5

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v11, 0x11

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v11, 0x7

    invoke-virtual {v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v5, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v6, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v8, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$168;

    invoke-direct {v2, v15, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$168;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    goto/16 :goto_2a

    :cond_49
    const v10, 0x7f080224

    const/16 v1, 0x25

    if-ne v0, v1, :cond_4a

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x32

    invoke-virtual {v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-virtual {v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/ImageButton;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/ImageButton;

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/ImageButton;

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v12, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f080098

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f08009a

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f08009b

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f080094

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f080096

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f08009c

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$169;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$169;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$170;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$170;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$171;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$171;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$172;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$172;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$173;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$173;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$174;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$174;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v12, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v10, 0x5

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v10, 0x11

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v10, 0x7

    invoke-virtual {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v6, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v7, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v8, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v11, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v12, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;

    invoke-direct {v2, v15, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$175;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    goto/16 :goto_2a

    :cond_4a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_4b

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextJustify()Z

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextAlign()I

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x32

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08012b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08012c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08012a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$176;

    invoke-direct {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$176;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v8, v9, v0, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v9, 0x7f110137

    invoke-virtual {v15, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setToggleLabel(Ljava/lang/String;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$177;

    invoke-direct {v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$177;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$178;

    invoke-direct {v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$178;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$179;

    invoke-direct {v9, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$179;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v9, 0xa

    invoke-virtual {v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v9, 0x11

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v5, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v6, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v2, v7, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$180;

    invoke-direct {v2, v15, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$180;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;IZ)V

    goto/16 :goto_2a

    :cond_4b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4c

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->minTextSizePx:I

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->maxTextSizePx:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v7, v1, v2, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1100d1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x3

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$kimSMrawxblpkRhAo5zx3JC15Bk;

    invoke-direct {v2, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$kimSMrawxblpkRhAo5zx3JC15Bk;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->setResizeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$181;

    invoke-direct {v1, v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$181;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x32

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$182;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$182;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    goto/16 :goto_26

    :cond_4c
    const/16 v1, 0x56

    if-ne v0, v1, :cond_4d

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInPaddingLeft()I

    move-result v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pxToDp(I)F

    move-result v0

    float-to-int v7, v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInPaddingRight()I

    move-result v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pxToDp(I)F

    move-result v0

    float-to-int v8, v0

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f11016a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x3

    move-object v1, v9

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0x14

    const/16 v3, 0x64

    invoke-direct {v11, v1, v2, v3, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f11016b

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v12

    move v4, v0

    move v5, v8

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x14

    const/16 v2, 0x64

    invoke-direct {v6, v0, v1, v2, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$183;

    invoke-direct {v0, v15, v9, v11, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$183;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v11, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$184;

    invoke-direct {v0, v15, v12, v11, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$184;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$185;

    invoke-direct {v0, v15, v6, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$185;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->setResetAbility(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;I)V

    iput-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_37

    :cond_4d
    const/16 v1, 0x31

    if-ne v0, v1, :cond_4e

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextureScale()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextureMaintainAspect()Z

    move-result v5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextureSrc()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v4

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$187;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$187;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;-><init>(Landroid/content/Context;ZLcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$188;

    invoke-direct {v1, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$188;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setNewTextureOnClick(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$189;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$189;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setDeleteTextureOnClick(Landroid/view/View$OnClickListener;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_37

    :cond_4e
    const/16 v1, 0x32

    if-ne v0, v1, :cond_4f

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextOpacity()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v7

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1100c5

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110156

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$190;

    invoke-direct {v5, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$190;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v3, v4, v7, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$191;

    invoke-direct {v4, v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$191;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$192;

    invoke-direct {v1, v15, v0, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$192;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;IZ)V

    goto/16 :goto_26

    :cond_4f
    const/4 v1, 0x4

    if-ne v0, v1, :cond_51

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getFill_type()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getColors()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v1

    move v5, v1

    goto :goto_25

    :cond_50
    const v1, -0x777778

    const v5, -0x777778

    :goto_25
    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v8

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object v1, v9

    move v4, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f1101a8

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    invoke-virtual {v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setShowBackground(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setParentTouchInterceptor(Landroid/widget/ScrollView;)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateText(Ljava/lang/String;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$193;

    invoke-direct {v3, v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$193;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v9, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$194;

    invoke-direct {v1, v15, v0, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$194;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :goto_26
    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_37

    :cond_51
    const/4 v1, 0x7

    if-ne v0, v1, :cond_53

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_enabled()Z

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_usedType()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_color()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_usedGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_addHorizontalL()F

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_addHorizontalR()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_addVerticalT()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_addVerticalB()F

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_border_radius()I

    move-result v0

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_52

    const/4 v2, 0x0

    goto :goto_27

    :cond_52
    const/16 v2, 0x8

    :goto_27
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object v1, v5

    move v4, v10

    move-object/from16 p1, v5

    move v5, v11

    move-object/from16 v16, v6

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v3

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v4

    iget v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v23, v12

    const v12, 0x7f11016a

    invoke-virtual {v5, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    float-to-int v5, v13

    const/16 v22, 0x3

    move-object/from16 v17, v6

    move/from16 v21, v5

    invoke-direct/range {v17 .. v22}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    neg-int v3, v3

    invoke-direct {v12, v6, v3, v1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v26

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v18, v13

    const v13, 0x7f11016b

    invoke-virtual {v5, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v31, 0x1

    float-to-int v5, v14

    const/16 v33, 0x3

    const/16 v37, 0x1

    const/16 v39, 0x3

    const/16 v28, 0x1

    const/16 v30, 0x3

    move-object/from16 v25, v6

    move/from16 v29, v5

    invoke-direct/range {v25 .. v30}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    move-object/from16 v19, v6

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v13, v6, v3, v1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v35

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f11016c

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v36

    float-to-int v1, v8

    move-object/from16 v34, v6

    move/from16 v38, v1

    invoke-direct/range {v34 .. v39}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    neg-int v4, v4

    invoke-direct {v5, v3, v4, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v20, v5

    const v5, 0x7f110169

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v30

    float-to-int v1, v7

    move-object/from16 v28, v3

    move/from16 v32, v1

    invoke-direct/range {v28 .. v33}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    move-object/from16 v21, v3

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v5, v3, v4, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f11016e

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v22, 0x1

    const/16 v25, 0x3

    move-object v1, v4

    move-object/from16 v26, v21

    move-object/from16 v21, v4

    move/from16 v4, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v5

    move v5, v0

    move-object/from16 v27, v17

    move-object/from16 v17, v6

    move/from16 v6, v25

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$195;

    move/from16 v25, v0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v28, v14

    move-object v14, v3

    move-object/from16 v3, p1

    move/from16 v29, v11

    move-object v11, v4

    move-object v4, v12

    move/from16 v30, v10

    move-object v10, v5

    move-object v5, v13

    move-object/from16 v31, v6

    move-object/from16 v6, v22

    move/from16 v32, v7

    move-object/from16 v7, v20

    move/from16 v33, v8

    move-object/from16 v8, v31

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$195;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-direct {v10, v11, v9, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$196;

    move-object v0, v11

    move-object v2, v10

    move-object v4, v13

    move-object/from16 v5, v22

    move-object/from16 v6, v20

    move-object/from16 v7, v31

    move-object/from16 v8, v27

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$196;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$197;

    move-object v0, v11

    move-object v4, v12

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$197;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v13, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;

    move-object v0, v11

    move-object v5, v13

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v14, v22

    invoke-virtual {v14, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$199;

    move-object v0, v11

    move-object v6, v14

    move-object/from16 v8, v26

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$199;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v8, v20

    invoke-virtual {v8, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$200;

    move-object v0, v11

    move-object v7, v8

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$200;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v8, v31

    invoke-virtual {v8, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$201;

    move-object v0, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, v20

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$201;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$202;

    move-object v0, v11

    move-object/from16 v1, p0

    move v2, v9

    move/from16 v3, v30

    move/from16 v4, v29

    move-object/from16 v5, v23

    move/from16 v6, v18

    move/from16 v7, v28

    move/from16 v8, v33

    move/from16 v9, v32

    move/from16 v10, v25

    invoke-direct/range {v0 .. v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$202;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V

    iput-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_37

    :cond_53
    const/16 v1, 0x12

    if-ne v0, v1, :cond_54

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBolds()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getItalics()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getUnders()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v2

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x32

    invoke-virtual {v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-virtual {v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    const/16 v9, 0x28

    invoke-virtual {v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/ImageButton;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/ImageButton;

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f080240

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f080244

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f080248

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f080242

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/view/View;

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v12, "#FFD8D8D8"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 p1, v0

    const v0, 0x7f1101a8

    invoke-virtual {v14, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v13, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v0, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x5

    invoke-virtual {v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v14

    iput v14, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v13, 0x1

    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v14, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setShowBackground(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setParentTouchInterceptor(Landroid/widget/ScrollView;)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateText(Ljava/lang/String;)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$203;

    invoke-direct {v13, v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$203;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v7, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$204;

    invoke-direct {v13, v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$204;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$205;

    invoke-direct {v13, v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$205;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$206;

    invoke-direct {v13, v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$206;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v16, v1

    const/4 v13, 0x5

    invoke-virtual {v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x10

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v1, 0x11

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v1, 0x7

    invoke-virtual {v15, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v7, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v8, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v10, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v3, v11, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$207;

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    invoke-direct {v0, v15, v1, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$207;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    iput-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_37

    :cond_54
    const/16 v9, 0x28

    const/16 v1, -0x10

    if-ne v0, v1, :cond_57

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBezierMaskEnabled()Z

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBezierMaskIn()Z

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->restoreOptions()V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->initiateMaskMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$208;

    invoke-direct {v4, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$208;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d004c

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f0a021b

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v5, 0x7f0a01c8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v6, 0x7f0a0182

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v7}, Landroid/widget/RadioGroup;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(I)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$209;

    invoke-direct {v7, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$209;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-eqz v1, :cond_55

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_28

    :cond_55
    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_28
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v0, :cond_56

    const/4 v5, 0x0

    goto :goto_29

    :cond_56
    const/16 v5, 0x8

    :goto_29
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$210;

    invoke-direct {v7, v15, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$210;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v5, v6, v0, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f11013a

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    invoke-virtual {v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v6, 0x5

    invoke-virtual {v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v6, Landroid/view/View;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v7, "#d0d0d0"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$211;

    invoke-direct {v2, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$211;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$212;

    invoke-direct {v2, v15, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$212;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZZ)V

    :goto_2a
    iput-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_37

    :cond_57
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLetterSpacing()I

    move-result v0

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0x1e

    const/16 v4, 0x64

    invoke-direct {v8, v2, v3, v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f1100d2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x3

    move-object v2, v9

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSpaceWords()Z

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0084

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f0a021d

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v5, 0x7f0a02f8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2b

    :cond_58
    const/4 v2, 0x1

    :goto_2b
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/widget/RadioGroup;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(I)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$213;

    invoke-direct {v2, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$213;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurve()I

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_2c

    :cond_59
    const/4 v1, 0x1

    :goto_2c
    invoke-virtual {v8, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setStep(I)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyButtonAsStopTrack(Z)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$214;

    invoke-direct {v2, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$214;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v8, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$215;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$215;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$216;

    invoke-direct {v1, v15, v8, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$216;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    goto/16 :goto_2d

    :cond_5a
    const/16 v1, 0x14

    if-ne v0, v1, :cond_5b

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLineSpacing()I

    move-result v0

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v7, v1, v3, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1100c2

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x3

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$217;

    invoke-direct {v1, v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$217;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$218;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$218;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$219;

    invoke-direct {v1, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$219;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    goto :goto_2d

    :cond_5b
    const/16 v2, 0x13

    if-ne v0, v2, :cond_5c

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurve()I

    move-result v0

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f11015a

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v2, 0xb4

    invoke-virtual {v15, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v6

    const/4 v7, 0x2

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xb4

    invoke-virtual {v15, v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v4

    const/4 v5, 0x5

    div-int/2addr v4, v5

    const/16 v5, -0x14

    invoke-direct {v2, v3, v5, v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->toggleBubble(Ljava/lang/Boolean;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$220;

    invoke-direct {v1, v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$220;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$221;

    invoke-direct {v1, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$221;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$222;

    invoke-direct {v1, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$222;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    :cond_5c
    const/16 v1, 0x40

    if-ne v0, v1, :cond_5e

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isShadow_3d_enabled()Z

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_color()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_transparency()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_radius()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_expand()I

    move-result v13

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_5d

    const/4 v1, 0x0

    goto :goto_2e

    :cond_5d
    const/16 v1, 0x8

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v8, 0x0

    move-object v3, v1

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f1100c5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x1

    const/4 v8, 0x2

    const/16 v17, 0x1

    const/4 v6, 0x1

    move-object v3, v14

    move v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f11015c

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x3

    const/16 v19, 0x3

    move-object v3, v7

    move/from16 v6, v17

    move-object/from16 v92, v7

    move v7, v12

    move-object/from16 v93, v8

    move/from16 v8, v19

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f1100c1

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move/from16 v6, v16

    move-object/from16 v94, v7

    move v7, v13

    move-object/from16 v95, v8

    move/from16 v8, v18

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v9, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$223;

    invoke-direct {v6, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$223;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v4, v5, v2, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$224;

    invoke-direct {v5, v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$224;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v93

    invoke-virtual {v6, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$225;

    move-object/from16 v7, v92

    invoke-direct {v5, v15, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$225;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v8, v95

    invoke-virtual {v8, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$226;

    move-object/from16 v9, v94

    invoke-direct {v5, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$226;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$227;

    invoke-direct {v5, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$227;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$228;

    move-object v0, v7

    move-object/from16 v1, p0

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$228;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V

    iput-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_37

    :cond_5e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_60

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowEnabled()Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowColor()I

    move-result v8

    invoke-direct {v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->alphaPercentFromColor(I)I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuter_shadow_radius()F

    move-result v0

    float-to-int v10, v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuter_shadow_dx()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuter_shadow_dy()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterGlowEnabled()Z

    move-result v13

    new-instance v14, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v7, :cond_5f

    const/4 v2, 0x0

    goto :goto_2f

    :cond_5f
    const/16 v2, 0x8

    :goto_2f
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v6, 0x0

    move-object v1, v0

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1100c5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x2

    move-object v4, v0

    move-object v0, v6

    move-object/from16 v96, v4

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f11015c

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v16, 0x3

    move-object v1, v9

    move v5, v10

    move/from16 p1, v8

    move-object v8, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3, v2, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f11017b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v21}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110167

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x3

    move-object v1, v4

    move-object/from16 v19, v4

    move/from16 v4, v16

    move-object/from16 v97, v5

    move v5, v11

    move-object/from16 v16, v6

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v6, v1, v3, v4, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110168

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, v5

    move-object/from16 v18, v5

    move v5, v12

    move-object/from16 v20, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v6, v1, v3, v2, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v5, v1, v13, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$229;

    move-object v1, v0

    move-object v0, v2

    move/from16 v17, v12

    move-object v12, v1

    move-object/from16 v1, p0

    move/from16 v21, v11

    move-object v11, v2

    move-object v2, v14

    move/from16 v22, v10

    move-object v10, v3

    move-object v3, v5

    move/from16 v23, v13

    move-object v13, v4

    move-object/from16 v4, v16

    move-object/from16 v25, v14

    move-object v14, v5

    move-object/from16 v5, v20

    move-object/from16 v26, v6

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$229;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-direct {v13, v10, v7, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$230;

    move-object v0, v6

    move-object v2, v13

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    move-object/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$230;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v14, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setOnCheckedChange(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$231;

    move-object/from16 v10, v96

    invoke-direct {v0, v15, v8, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$231;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-virtual {v12, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$232;

    move-object v0, v11

    move-object v3, v14

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$232;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v16

    invoke-virtual {v6, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$233;

    move-object v0, v11

    move-object v4, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$233;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v20

    invoke-virtual {v6, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$234;

    move-object v0, v11

    move-object/from16 v4, v16

    move-object v5, v6

    move/from16 v20, v7

    move-object v7, v6

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$234;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$235;

    invoke-direct {v1, v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$235;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v10, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    move-object/from16 v1, v25

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v97

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$236;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v22

    move/from16 v5, v21

    move/from16 v6, v17

    move/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$236;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZZIIII)V

    iput-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_37

    :cond_60
    const/16 v1, 0x30

    if-ne v0, v1, :cond_67

    const/16 v0, 0x78

    invoke-virtual {v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    mul-double v0, v0, v2

    double-to-int v3, v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDEnabled()Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDViewType()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepth()I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthFillType()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthColorFill()I

    move-result v16

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDDepthColorAutomatic()Z

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthDarken()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDStokeInclude()Z

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextRotationX()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextRotationY()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    iget v12, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDObliqueAngle()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDLightingEnabled()Z

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v19

    move/from16 p1, v11

    invoke-virtual/range {v19 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingIntensity()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v19

    move/from16 v20, v11

    invoke-virtual/range {v19 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingShadow()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v19

    move/from16 v21, v11

    invoke-virtual/range {v19 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingSpecularHardness()I

    move-result v11

    move/from16 v19, v11

    new-instance v11, Landroid/widget/LinearLayout;

    move/from16 v22, v9

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v11, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_61

    const/4 v9, 0x0

    goto :goto_30

    :cond_61
    const/16 v9, 0x8

    :goto_30
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    move/from16 v23, v10

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    move/from16 v24, v12

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$237;

    invoke-direct {v12, v15, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$237;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v9, v10, v6, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v12, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v25, v9

    const v9, 0x7f0d008d

    invoke-static {v10, v9, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v9, 0x7f0a021c

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Linfo/hoang8f/android/segmented/SegmentedGroup;

    move-object/from16 v26, v11

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v9}, Landroid/widget/RadioGroup;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v9}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(I)V

    const v9, 0x7f0a01ca

    invoke-virtual {v10, v9}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroid/widget/RadioButton;

    const v9, 0x7f0a01be

    invoke-virtual {v10, v9}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    move-object/from16 v27, v11

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    move-object/from16 v28, v9

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v36, v10

    const v10, 0x7f1100e5

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    const/4 v9, 0x3

    if-ne v5, v9, :cond_62

    move v9, v3

    goto :goto_31

    :cond_62
    move v9, v4

    :goto_31
    invoke-virtual {v15, v8, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v34

    const/16 v35, 0x3

    move-object/from16 v30, v11

    invoke-direct/range {v30 .. v35}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x3

    if-ne v5, v11, :cond_63

    move v11, v3

    goto :goto_32

    :cond_63
    move v11, v4

    :goto_32
    invoke-virtual {v15, v8, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v11

    move-object/from16 v31, v12

    move/from16 v32, v13

    const/16 v12, 0x64

    const/4 v13, 0x1

    invoke-direct {v10, v9, v13, v12, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f1100e6

    invoke-virtual {v9, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x3

    move-object/from16 v37, v13

    invoke-direct/range {v37 .. v42}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v33, 0x1

    move/from16 v35, v6

    move/from16 v34, v22

    move-object/from16 v6, v28

    move/from16 v28, v8

    move-object/from16 v8, v25

    move-object v9, v12

    move-object/from16 v37, v8

    move-object/from16 v98, v10

    move/from16 v8, v23

    move-object/from16 v110, v36

    move/from16 v36, v4

    move-object/from16 v4, v110

    move-object v10, v11

    move/from16 v38, p1

    move/from16 v39, v3

    move/from16 p1, v20

    move-object/from16 v99, v26

    move-object/from16 v3, v27

    move-object/from16 v40, v30

    move/from16 v30, v19

    move/from16 v27, v21

    move/from16 v11, v33

    move-object/from16 v101, v12

    move/from16 v33, v24

    move-object/from16 v100, v31

    move v12, v5

    move-object/from16 v102, v13

    move/from16 v31, v32

    move/from16 v13, v16

    move/from16 v32, v14

    move-object/from16 v14, v18

    invoke-direct/range {v9 .. v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    move-object/from16 v14, v101

    invoke-virtual {v14, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setIsAutomatic(Z)V

    const/4 v9, 0x1

    invoke-virtual {v14, v9, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setShowAutomatic(ZZ)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f1100dd

    invoke-virtual {v9, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/16 v19, 0x2

    move-object v9, v13

    move-object/from16 v103, v13

    move v13, v1

    move-object/from16 v104, v14

    move/from16 v14, v19

    invoke-direct/range {v9 .. v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x64

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f110108

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v24}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$238;

    invoke-direct {v13, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$238;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v11, v12, v0, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    iget-object v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f1101d6

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v24, 0x1

    move-object/from16 v19, v12

    move/from16 v23, v32

    invoke-direct/range {v19 .. v24}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v14, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    move/from16 v41, v0

    const/16 v0, -0x50

    move/from16 v42, v1

    const/16 v1, 0x50

    move-object/from16 v43, v11

    move/from16 v11, v32

    invoke-direct {v13, v14, v0, v1, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f1101d8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v19, v14

    move/from16 v23, v31

    invoke-direct/range {v19 .. v24}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move/from16 v32, v2

    const/16 v2, -0x50

    move/from16 v44, v11

    const/16 v11, 0x50

    move-object/from16 v45, v10

    move/from16 v10, v31

    invoke-direct {v1, v0, v2, v11, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f1101da

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v19, v11

    move/from16 v23, v33

    invoke-direct/range {v19 .. v24}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v17, v11

    move/from16 v10, v33

    const/16 v11, -0xb4

    move-object/from16 v33, v9

    const/16 v9, 0xb4

    invoke-direct {v2, v0, v11, v9, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "oblique angle"

    move-object/from16 v19, v0

    move/from16 v23, v38

    const/4 v9, 0x1

    move/from16 v24, v9

    invoke-direct/range {v19 .. v24}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v46, v2

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$239;

    invoke-direct {v2, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$239;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move/from16 v47, v10

    move/from16 v10, v38

    invoke-direct {v9, v11, v10, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v48, v1

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$240;

    invoke-direct {v1, v15, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$240;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v10, v0, v8, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v49, v8

    const v8, 0x7f110163

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x1

    move-object/from16 v19, v0

    const/4 v1, 0x1

    move/from16 v22, v1

    move/from16 v23, v34

    invoke-direct/range {v19 .. v24}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v19, v10

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$241;

    invoke-direct {v10, v15, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$241;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v50, v14

    move/from16 v14, v34

    invoke-direct {v1, v8, v14, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    iget-object v10, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f110160

    invoke-virtual {v10, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v25, 0x3

    move-object/from16 v20, v8

    move/from16 v24, p1

    invoke-direct/range {v20 .. v25}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v14, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    move/from16 v52, v5

    move-object/from16 v51, v13

    const/4 v5, 0x0

    move/from16 v13, p1

    move-object/from16 p1, v12

    const/16 v12, 0x64

    invoke-direct {v10, v14, v5, v12, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f1101a9

    invoke-virtual {v5, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v12

    move/from16 v24, v27

    invoke-direct/range {v20 .. v25}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v53, v6

    move/from16 v20, v13

    move/from16 v13, v27

    const/4 v6, 0x0

    move-object/from16 v27, v4

    const/16 v4, 0x64

    invoke-direct {v14, v5, v6, v4, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110171

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v26, 0x3

    move-object/from16 v21, v6

    move/from16 v25, v30

    invoke-direct/range {v21 .. v26}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v22, v2

    move/from16 v21, v13

    move/from16 v13, v30

    const/4 v2, 0x0

    const/16 v15, 0x64

    invoke-direct {v5, v4, v2, v15, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    if-ne v7, v0, :cond_64

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v3, v22

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33

    :cond_64
    move-object/from16 v3, v22

    const/16 v1, 0x8

    const/4 v4, 0x3

    if-ne v7, v4, :cond_65

    move-object/from16 v4, v53

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_65
    :goto_33
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$242;

    move-object/from16 v15, p0

    invoke-direct {v0, v15, v11, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$242;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$243;

    move/from16 v22, v41

    move-object v0, v4

    move/from16 v23, v42

    move-object/from16 v2, v48

    move-object/from16 v1, p0

    move/from16 v25, v7

    move/from16 v30, v13

    move/from16 v24, v32

    move-object/from16 v13, v46

    move-object v7, v3

    move-object v3, v2

    move/from16 v2, v52

    move-object/from16 v26, v9

    move-object v9, v3

    move/from16 v3, v39

    move-object/from16 v27, v7

    move-object v7, v4

    move/from16 v4, v36

    move-object/from16 v32, v11

    move/from16 v29, v52

    move-object v11, v5

    move-object/from16 v5, v40

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$243;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;IIILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v0, v98

    invoke-virtual {v0, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$244;

    move-object/from16 v2, v104

    invoke-direct {v1, v15, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$244;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-virtual {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$245;

    move-object/from16 v3, v103

    invoke-direct {v1, v15, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$245;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v4, v33

    invoke-virtual {v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$246;

    move-object/from16 v5, p1

    invoke-direct {v1, v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$246;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v5, v51

    invoke-virtual {v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$247;

    move-object/from16 v5, v50

    invoke-direct {v1, v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$247;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v9, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$248;

    move-object/from16 v5, v17

    invoke-direct {v1, v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$248;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v13, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$249;

    invoke-direct {v1, v15, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$249;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$250;

    invoke-direct {v1, v15, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$250;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v14, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$251;

    invoke-direct {v1, v15, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$251;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v51

    iget-object v6, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v7, 0x7f1101d1

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v52

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x3

    move-object/from16 v50, v1

    invoke-direct/range {v50 .. v55}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    move-object/from16 v6, v99

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v100

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v7, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v9, 0x7f1100e4

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v40

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v102

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_66
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110194

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v1, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f1101b4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, v35

    move/from16 v3, v25

    move/from16 v4, v28

    move/from16 v5, v23

    move/from16 v6, v22

    move/from16 v7, v29

    move/from16 v11, v49

    move/from16 v8, v16

    move-object/from16 v9, v18

    move/from16 v18, v31

    move/from16 v16, v38

    move/from16 v19, v47

    move/from16 v10, v24

    move/from16 v17, v44

    move/from16 v12, v34

    move/from16 v22, v30

    move/from16 v13, v20

    move-object/from16 v105, v14

    move/from16 v14, v21

    move/from16 v15, v22

    invoke-direct/range {v0 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$252;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIIZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ZZIIIIIIII)V

    move-object/from16 v9, p0

    move-object/from16 v0, v105

    iput-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_38

    :cond_67
    move-object v9, v15

    const/16 v1, 0x8

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_68

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isPerspectiveEnabled()Z

    move-result v2

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setComponentReference(Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$f0PcufEmlmK-9T2WtMXxLCU953w;

    invoke-direct {v1, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$f0PcufEmlmK-9T2WtMXxLCU953w;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setPerspectiveToolInterface(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v11

    iget v11, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v11, v11

    add-float/2addr v8, v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v12

    iget v12, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-direct {v0, v1, v7, v8, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v11, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v12, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v13, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v14, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v15, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setHandles(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$253;

    invoke-direct {v7, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$253;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v0, v1, v2, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v7, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080134

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$254;

    invoke-direct {v7, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$254;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x32

    invoke-virtual {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    invoke-virtual {v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    invoke-direct {v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x1

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v8, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$255;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$255;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/16 :goto_35

    :cond_68
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_6b

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossIntensity()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossAmbient()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossHardness()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossBevel()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossIncludeStroke()Z

    move-result v15

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_69

    const/4 v1, 0x0

    :cond_69
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$256;

    invoke-direct {v5, v9, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$256;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v1, v3, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110163

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/4 v6, 0x1

    move-object v3, v8

    move v7, v10

    move-object/from16 p1, v2

    move-object v2, v8

    move/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$257;

    invoke-direct {v4, v9, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$257;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-direct {v8, v3, v10, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110160

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x3

    const/16 v19, 0x3

    const/16 v20, 0x3

    move-object v3, v7

    move-object/from16 v106, v7

    move v7, v11

    move/from16 v21, v10

    move-object v10, v8

    move/from16 v8, v20

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110159

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/from16 v107, v7

    move v7, v12

    move/from16 v22, v11

    move-object v11, v8

    move/from16 v8, v20

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110171

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move/from16 v6, v18

    move-object/from16 v108, v7

    move v7, v13

    move/from16 v18, v12

    move-object v12, v8

    move/from16 v8, v19

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f11015b

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move/from16 v6, v16

    move-object/from16 v109, v7

    move v7, v14

    move/from16 v16, v13

    move-object v13, v8

    move/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v5, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$258;

    move-object/from16 v5, v106

    invoke-direct {v4, v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$258;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$259;

    move-object/from16 v6, v107

    invoke-direct {v4, v9, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$259;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$260;

    move-object/from16 v7, v108

    invoke-direct {v4, v9, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$260;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v13, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$261;

    move-object/from16 v8, v109

    invoke-direct {v4, v9, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$261;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v4, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v17, v14

    const v14, 0x7f110042

    invoke-virtual {v10, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v4, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v2

    if-eqz v2, :cond_6a

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110132

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v4, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$262;

    invoke-direct {v5, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$262;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v3, v4, v15, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6a
    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v18

    move/from16 v6, v16

    move/from16 v7, v17

    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$263;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/lang/Boolean;IIIIIZ)V

    iput-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_38

    :cond_6b
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6d

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerEnabled()Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerColor()I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerRadius()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerDx()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerDy()I

    move-result v4

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v7, :cond_6c

    const/4 v2, 0x0

    goto :goto_34

    :cond_6c
    const/16 v2, 0x8

    :goto_34
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    sget v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v15, 0x0

    move-object v10, v2

    move v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v10, 0x7f11015c

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x1

    const/4 v15, 0x3

    const/4 v13, 0x1

    move-object v10, v1

    move v14, v6

    invoke-direct/range {v10 .. v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x19

    const/4 v12, 0x0

    invoke-direct {v15, v10, v12, v11, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f110167

    invoke-virtual {v10, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x3

    const/16 v17, 0x3

    move-object v10, v14

    move v13, v0

    move-object v0, v14

    move v14, v5

    move-object/from16 p1, v15

    move/from16 v15, v17

    invoke-direct/range {v10 .. v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x46

    invoke-virtual {v9, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    neg-int v12, v12

    invoke-virtual {v9, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    invoke-direct {v15, v10, v12, v13, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v10, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f110168

    invoke-virtual {v10, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object v10, v14

    move-object/from16 v17, v14

    move v14, v4

    move-object/from16 v18, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0x46

    invoke-virtual {v9, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    neg-int v13, v13

    invoke-virtual {v9, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    invoke-direct {v10, v11, v13, v12, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v12, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$264;

    move-object v14, v0

    move-object v0, v13

    move-object v15, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v3

    move/from16 v19, v8

    move-object v8, v3

    move-object/from16 v3, p1

    move/from16 v20, v4

    move-object/from16 v4, v18

    move/from16 v21, v5

    move-object v5, v10

    move/from16 v22, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$264;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v11, v12, v7, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$265;

    move-object v0, v12

    move-object v2, v11

    move-object/from16 v3, v18

    move-object v4, v10

    move-object/from16 v5, v16

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$265;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$266;

    move-object v0, v12

    move-object v3, v13

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$266;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v18

    invoke-virtual {v6, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$267;

    move-object v0, v12

    move-object v4, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$267;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$268;

    move-object v0, v6

    move-object/from16 v4, v18

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$268;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$269;

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v7

    move/from16 v3, v22

    move/from16 v4, v21

    move/from16 v5, v20

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$269;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V

    iput-object v8, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_38

    :cond_6d
    const/16 v2, 0xb

    if-ne v0, v2, :cond_6f

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeColor()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeRadius()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeFillType()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v13

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_6e

    const/4 v1, 0x0

    :cond_6e
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    move-object v3, v1

    move v6, v12

    move v7, v10

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110173

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x3

    move-object v3, v14

    move v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {v9, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v5, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$270;

    invoke-direct {v6, v9, v0, v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$270;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v4, v5, v2, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$271;

    invoke-direct {v5, v9, v4, v1, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$271;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$272;

    invoke-direct {v5, v9, v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$272;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$273;

    move-object v0, v7

    move-object/from16 v1, p0

    move v3, v11

    move v4, v12

    move v5, v10

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$273;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :goto_35
    iput-object v7, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_38

    :cond_6f
    const/16 v2, 0xf

    if-ne v0, v2, :cond_70

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextRotationX()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextRotationY()I

    move-result v8

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    const/16 v3, 0xb4

    invoke-direct {v10, v1, v2, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f110177

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v11

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0xb4

    const/16 v4, 0xb4

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f110178

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v12

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$274;

    invoke-direct {v2, v9, v10, v1, v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$274;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$275;

    invoke-direct {v2, v9, v10, v1, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$275;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$276;

    invoke-direct {v2, v9, v0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$276;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;II)V

    iput-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$277;

    invoke-direct {v2, v9, v10, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$277;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_38

    :cond_70
    const/4 v2, 0x0

    const/16 v3, 0x11

    if-ne v0, v3, :cond_73

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v3

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_71

    goto :goto_36

    :cond_71
    const/16 v2, 0x8

    :goto_36
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f110166

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v15, 0x3

    move-object v10, v1

    move v14, v3

    invoke-direct/range {v10 .. v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-virtual {v9, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v9, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-direct {v2, v5, v7, v6, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v6, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$278;

    invoke-direct {v7, v9, v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$278;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-direct {v5, v6, v0, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$279;

    invoke-direct {v6, v9, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$279;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$280;

    invoke-direct {v1, v9, v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$280;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZI)V

    iput-object v1, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto :goto_38

    :cond_72
    :goto_37
    move-object v9, v15

    :cond_73
    :goto_38
    return-void

    nop

    :array_0
    .array-data 4
        0x7f080225
        0x7f080108
        0x7f08023b
    .end array-data
.end method

.method private alphaPercentFromColor(I)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result p1

    return p1
.end method

.method private createDummyShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 8

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    const-string v6, "dummyS"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;FFLjava/lang/String;)V

    return-object v7
.end method

.method private createDummyText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, -0x1000000

    const-string v3, "dummyT"

    invoke-direct {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method private getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getTextContainer()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    return-object v0
.end method

.method public static synthetic lambda$addControlsForMessage$10(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void
.end method

.method public static synthetic lambda$addControlsForMessage$17(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void
.end method

.method public static newInstance(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;"
        }
    .end annotation

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "editFor"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "type"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "references"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setLParamMargin(Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginHor(Landroid/widget/LinearLayout$LayoutParams;I)V

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginVer(Landroid/widget/LinearLayout$LayoutParams;I)V

    return-void
.end method

.method private setLParamMarginHor(Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 0

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private setLParamMarginVer(Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 0

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void
.end method


# virtual methods
.method public DoBgImagesJob(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V
    .locals 1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/content/res/AssetManager;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void
.end method

.method public DoStickersJob(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;II)V
    .locals 6

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->removeAll()V

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->startLoading()V

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    const-string p2, "emojis"

    goto :goto_1

    :cond_1
    const/4 p2, 0x4

    if-ne p3, p2, :cond_2

    const-string p2, "pro_stickers"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "stickers"

    :goto_1
    move-object v4, p2

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    move-object v0, p2

    move-object v1, p0

    move v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ILandroid/content/res/AssetManager;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V

    invoke-static {p2}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void
.end method

.method public colorToPercent(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    div-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public doCancelAction()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    return-void
.end method

.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

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

.method public getScroller()Landroid/widget/ScrollView;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    return-object v0
.end method

.method public synthetic lambda$addControlsForMessage$0$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setHue(I)V

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$1$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p2, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$11$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 6

    invoke-virtual {p1, p7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p4

    invoke-virtual {p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p5

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEffects(IIII)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$addControlsForMessage$12$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 6

    invoke-virtual {p1, p7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p4

    invoke-virtual {p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p5

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEffects(IIII)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$addControlsForMessage$13$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 6

    invoke-virtual {p1, p7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p4

    invoke-virtual {p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p5

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEffects(IIII)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$addControlsForMessage$14$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 6

    invoke-virtual {p1, p7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p4

    invoke-virtual {p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p5

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEffects(IIII)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$addControlsForMessage$15$optionExpand(IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$addControlsForMessage$16$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShapeOpacity(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$18$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$19$optionExpand(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$2$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setBorderRadius(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$3$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setOpacity(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$4$optionExpand(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    sget v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setFillColor(I)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setFillGradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$5$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_width(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$6$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_alpha(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$7$optionExpand(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    sget v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_colorFill(I)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_gradientFill(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$8$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_blur(I)V

    return-void
.end method

.method public synthetic lambda$addControlsForMessage$9$optionExpand(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x101

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomStickerSaver;->saveImageFromIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    :cond_1
    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0041

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const/16 p1, 0x3c

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->newShapeSize:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const p2, 0x7f0a0105

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const p2, 0x7f0a01c3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const p2, 0x7f0a01c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const p2, 0x7f0a01c4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->doneAbility:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "editFor"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$3;

    invoke-direct {p2, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelButtonListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$4;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->doneButtonListener:Landroid/view/View$OnClickListener;

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->doneAbility:Landroid/widget/ImageButton;

    invoke-virtual {p3, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "type"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "references"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    if-gez p1, :cond_0

    const/16 v0, -0x10

    if-eq p1, v0, :cond_0

    const/16 v0, -0x53

    if-ne p1, v0, :cond_3

    :cond_0
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p2, v0, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p2, v0, :cond_2

    :try_start_1
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    :try_start_2
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveStatesForReferences(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doneEditing()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public percentToColor(I)I
    .locals 0

    mul-int/lit16 p1, p1, 0xff

    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method public setResetAbility(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public toNum(II)I
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public toPercent(II)I
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method
