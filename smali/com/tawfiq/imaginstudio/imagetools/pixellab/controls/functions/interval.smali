.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;
.super Ljava/lang/Object;


# instance fields
.field private base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

.field private color:I

.field private font:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-direct {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-direct {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    return-void
.end method

.method public constructor <init>(IILcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-direct {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->font:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    return-void
.end method


# virtual methods
.method public copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->setColor(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->setFont(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;)V

    return-object v0
.end method

.method public getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v0

    return v0
.end method

.method public getFont()Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->font:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v0

    return v0
.end method

.method public setBase(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->color:I

    return-void
.end method

.method public setFont(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->font:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    return-void
.end method

.method public setStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->base:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->setStart(I)V

    return-void
.end method
