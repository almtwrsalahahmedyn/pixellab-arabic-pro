.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;
.super Landroidx/appcompat/app/AlertDialog;


# instance fields
.field customDims:Landroid/widget/LinearLayout;

.field public customNameEt:Landroid/widget/EditText;

.field dialogLayout:Landroid/view/View;

.field format:Landroid/widget/Spinner;

.field public gallerySaveButton:Landroid/widget/Button;

.field public heightVal:Landroid/widget/EditText;

.field quality:Landroid/widget/Spinner;

.field public shareButton:Landroid/widget/Button;

.field public widthVal:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZIIZ)V
    .locals 10

    move-object v6, p0

    move v7, p2

    move v8, p3

    const/4 v9, 0x0

    move-object v0, p1

    invoke-direct {p0, p1, v9}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a02f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->format:Landroid/widget/Spinner;

    const/4 v1, 0x1

    if-eqz p7, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v2, 0x7f0a01e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->quality:Landroid/widget/Spinner;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;II)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    if-nez p4, :cond_1

    sget v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I

    invoke-direct {p0, v0, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->applyRes(III)V

    goto :goto_0

    :cond_1
    move v0, p5

    move/from16 v2, p6

    invoke-direct {p0, p5, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->setDims(II)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->quality:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->gallerySaveButton:Landroid/widget/Button;

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->shareButton:Landroid/widget/Button;

    iget-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a1789

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->customNameEt:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ProjectExportStudio;->injectIntoExportDialog(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->applyRes(III)V

    return-void
.end method

.method private applyRes(III)V
    .locals 2

    const-string v0, ""

    if-lt p2, p3, :cond_0

    int-to-float p3, p3

    int-to-float v1, p1

    int-to-float p2, p2

    div-float/2addr v1, p2

    mul-float v1, v1, p3

    float-to-int p2, v1

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    int-to-float v1, p1

    int-to-float p3, p3

    div-float/2addr v1, p3

    mul-float v1, v1, p2

    float-to-int p2, v1

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setDims(II)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getSelectedFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->format:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0
.end method

.method public getUserCustomName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->customNameEt:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method public setOnGalleryButtonClicked(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->gallerySaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnShareButtonClicked(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->shareButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnSocialMediaShare(Landroid/view/View$OnClickListener;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
