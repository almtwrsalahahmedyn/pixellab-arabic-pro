.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;
    }
.end annotation


# instance fields
.field acceptHex:Landroid/widget/ImageButton;

.field bValue:Landroid/widget/EditText;

.field currBlueVal:I

.field currGreenVal:I

.field currRedVal:I

.field dialogLayout:Landroid/view/View;

.field gValue:Landroid/widget/EditText;

.field hexValue:Landroid/widget/EditText;

.field justifiedEdit:Z

.field newColorButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final onColorSelectedListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;

.field rValue:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->justifiedEdit:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onColorSelectedListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0d0031

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a01ee

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->rValue:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a0157

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->gValue:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a00bc

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->bValue:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a016c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a000d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->acceptHex:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->rValue:Landroid/widget/EditText;

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$1;

    invoke-direct {p3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->gValue:Landroid/widget/EditText;

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;

    invoke-direct {p3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->bValue:Landroid/widget/EditText;

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$3;

    invoke-direct {p3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;

    invoke-direct {p3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->acceptHex:Landroid/widget/ImageButton;

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;

    invoke-direct {p3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a00fc

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dpToPixels(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dpToPixels(I)I

    move-result v1

    invoke-direct {p3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dpToPixels(I)I

    move-result v1

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x11

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->newColorButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p1, v1, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->setRGBFields(I)V

    invoke-direct {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->updateHexField(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)I
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->getCurrentColor()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->updateHexField(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onColorSelectedListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;

    return-object p0
.end method

.method private getCurrentColor()I
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private updateHexField(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->justifiedEdit:Z

    :try_start_0
    const-string v1, "%06X"

    new-array v0, v0, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->newColorButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    return-void
.end method


# virtual methods
.method public commitEditTextValue(Landroid/widget/EditText;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    nop

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xff

    if-eqz v2, :cond_1

    if-ltz v1, :cond_1

    if-le v1, v3, :cond_2

    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public dpToPixels(I)I
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

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

.method public setRGBFields(I)V
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->gValue:Landroid/widget/EditText;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->bValue:Landroid/widget/EditText;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->rValue:Landroid/widget/EditText;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateHexField()V
    .locals 1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->getCurrentColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->updateHexField(I)V

    return-void
.end method
