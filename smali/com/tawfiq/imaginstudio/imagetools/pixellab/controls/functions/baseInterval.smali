.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;
.super Ljava/lang/Object;


# instance fields
.field end:I

.field start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->start:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->end:I

    return-void
.end method


# virtual methods
.method public contains(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describe()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->end:I

    return v0
.end method

.method public getLength()I
    .locals 2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->start:I

    return v0
.end method

.method public intersect(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v1

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p1

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    return-object v0
.end method

.method public isInterval()Z
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->start:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->end:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoOverlapInterval(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v0

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public removeInterval(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;",
            ")",
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v2

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result p1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->end:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->start:I

    return-void
.end method
