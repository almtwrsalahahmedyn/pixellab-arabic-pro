.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
.super Ljava/lang/Object;


# instance fields
.field intervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;",
            ">;"
        }
    .end annotation
.end field

.field tmpIntervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addInterval(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->isInterval()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->contains(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addIntervalNoCheck(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->setIntervals(Ljava/util/List;)V

    return-object v1
.end method

.method public getIntervals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    return-object v0
.end method

.method public getLastAttr()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLastColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    return v0
.end method

.method public isCoverAll(I)Z
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getLength()I

    move-result v0

    if-ne v0, p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeInterval(II)V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->isNoOverlapInterval(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-direct {v2, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->removeInterval(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->isInterval()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getStart()I

    move-result v5

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->tmpIntervals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setIntervals(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    return-void
.end method

.method public updateEnds(II)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->getEnd()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getBase()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/baseInterval;->setEnd(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
