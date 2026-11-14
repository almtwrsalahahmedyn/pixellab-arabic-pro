.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;
    }
.end annotation


# instance fields
.field addHere:Landroid/widget/LinearLayout;

.field selectorInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

.field textureDelete:Landroid/widget/ImageButton;

.field textureName:Landroid/widget/TextView;

.field textureSelect:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p6

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->selectorInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d008b

    invoke-static {v3, v4, v0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    mul-int/lit8 v7, p5, 0xa

    if-eqz v1, :cond_0

    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->textureSizeShapeInverse(I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->textureSizeInverse(I)I

    move-result v3

    :goto_0
    move v9, v3

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, 0x7f0a0282

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureName:Landroid/widget/TextView;

    const v3, 0x7f0a0283

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureSelect:Landroid/widget/ImageButton;

    const v3, 0x7f0a0280

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureDelete:Landroid/widget/ImageButton;

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->selectorInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureName:Landroid/widget/TextView;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$1;

    invoke-direct {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setImagePath(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110179

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110164

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object v12, v8

    invoke-direct/range {v12 .. v17}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;

    invoke-direct {v4, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V

    move/from16 v5, p4

    invoke-direct {v12, v3, v5, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f110030

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v14, 0x2

    move-object v3, v13

    move-object v15, v8

    move v8, v14

    invoke-direct/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x11

    invoke-direct {v3, v4, v10, v5, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->toggleBubble(Ljava/lang/Boolean;)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v4, 0x7f0a0103

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;

    invoke-direct {v4, v0, v1, v13, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;ZLcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V

    invoke-virtual {v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    return-void
.end method


# virtual methods
.method public setDeleteTextureOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setImagePath(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1101bf

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1101be

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->toggleDeleteButton(Z)V

    return-void
.end method

.method public setNewTextureOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public toggleDeleteButton(Z)V
    .locals 4

    const v0, 0x7f0a0281

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureDelete:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
