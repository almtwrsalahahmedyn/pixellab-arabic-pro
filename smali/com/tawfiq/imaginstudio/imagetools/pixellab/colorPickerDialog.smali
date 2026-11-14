.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;
    }
.end annotation


# instance fields
.field private colorPickerView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

.field dialogLayout:Landroid/view/View;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final onColorSelectedListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$7;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$7;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->onColorSelectedListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0032

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x104000a

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a00fb

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->colorPickerView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(II)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a00f6

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dpToPixels(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dpToPixels(I)I

    move-result v0

    invoke-direct {p3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dpToPixels(I)I

    move-result v1

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a00f9

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->describeColor(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a01fe

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    const/4 p1, 0x1

    invoke-virtual {v4, p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;->initialize(II)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$1;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {v4, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColorListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a02e8

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    const/4 p1, 0x2

    invoke-virtual {v5, p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;->initialize(II)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$2;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {v5, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColorListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a009e

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    invoke-virtual {v6, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;->initialize(II)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$3;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {v6, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColorListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f0a01cf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->colorPickerView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$5;

    move-object v2, p2

    move-object v3, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;->setOnColorChangedListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f0a00f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->colorPickerView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->describeColor(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->onColorSelectedListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;

    return-object p0
.end method

.method private describeColor(I)Ljava/lang/String;
    .locals 6

    const-string v0, ","

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#%06X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "error"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public dpToPixels(I)I
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

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

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method
