.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;
    }
.end annotation


# instance fields
.field dialogLayout:Landroid/view/View;

.field shapeEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;->shapeEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0082

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f0a0186

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/gridlayout/widget/GridLayout;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0a022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    new-instance v5, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-direct {v5}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>()V

    const/16 v6, 0x46

    invoke-virtual {p0, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dpToPixels(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dpToPixels(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;

    invoke-direct {v5, p0, p2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dpToPixels(I)I
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

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
