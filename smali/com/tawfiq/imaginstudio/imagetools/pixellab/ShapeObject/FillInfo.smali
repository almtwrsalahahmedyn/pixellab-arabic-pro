.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;
.super Ljava/lang/Object;


# instance fields
.field private fill_color:I

.field private fill_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field private fill_type:I

.field private stroke_cap:Landroid/graphics/Paint$Cap;

.field private stroke_color:I

.field private stroke_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field private stroke_type:I

.field private stroke_width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ILandroid/graphics/Paint$Cap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    iput-object p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    return-void
.end method

.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;)V
    .locals 9

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v5

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v6

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v8

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_cap()Landroid/graphics/Paint$Cap;

    move-result-object p1

    move-object v0, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ILandroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public applyCapOnPaint(Landroid/graphics/Paint;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;)V

    return-object v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "yMR4"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_0
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    const-string v0, "NyqG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    const-string v0, "9vwh"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "A67W"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v0, "JrtC"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    const-string v0, "UJ3K"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "5CVh"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v0, "vtf8"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    return-void
.end method

.method public getFill_color()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    return v0
.end method

.method public getFill_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getFill_type()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    return v0
.end method

.method public getStroke_cap()Landroid/graphics/Paint$Cap;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getStroke_color()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    return v0
.end method

.method public getStroke_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0
.end method

.method public getStroke_type()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    return v0
.end method

.method public getStroke_width()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    return v0
.end method

.method public setFill_color(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    return-void
.end method

.method public setFill_gradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-void
.end method

.method public setFill_type(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    return-void
.end method

.method public setStroke_cap(Landroid/graphics/Paint$Cap;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    return-void
.end method

.method public setStroke_color(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    return-void
.end method

.method public setStroke_gradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-void
.end method

.method public setStroke_type(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    return-void
.end method

.method public setStroke_width(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    const-string v2, "NyqG"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    const-string v2, "9vwh"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A67W"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    const-string v2, "JrtC"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    const-string v2, "UJ3K"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5CVh"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    const-string v2, "vtf8"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const-string v2, "yMR4"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
