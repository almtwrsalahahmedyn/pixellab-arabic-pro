.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    }
.end annotation


# static fields
.field public static final HISTORY_DATA:Ljava/lang/String; = "histData"

.field public static final HISTORY_GEOMETRY_ONLY:Ljava/lang/String; = "histGeo"

.field public static final HISTORY_KEEP_GOING:Ljava/lang/String; = "histKeepGoing"

.field public static final HISTORY_LAYOUT_ID:Ljava/lang/String; = "histLayId"

.field private static final HISTORY_LIMIT:I = 0x96

.field public static final HISTORY_REFERENCE:Ljava/lang/String; = "histRef"

.field public static final HISTORY_TYPE:Ljava/lang/String; = "histType"


# instance fields
.field private currentHash:Ljava/lang/String;

.field private groupingOn:Z

.field private history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private lastSavedHash:Ljava/lang/String;

.field private listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;

.field private redoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->redoList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->groupingOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->currentHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->lastSavedHash:Ljava/lang/String;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;

    return-void
.end method

.method private addStep(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->groupingOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "histKeepGoing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x96

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->countChanged()V

    return-void
.end method

.method private countChanged()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$OnHistoryListener;->countChange(I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->currentHash:Ljava/lang/String;

    return-void
.end method

.method private static createAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "histData"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "8PDnq"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string v1, "histGeo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string p0, "histType"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "histRef"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->createAction(Landroid/os/Bundle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addStep(Landroid/os/Bundle;)V

    return-void
.end method

.method public addObjectCreation(Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .locals 3

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-eq p2, v0, :cond_0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p2, v1, :cond_2

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "histRef"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v0, :cond_1

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    :goto_0
    const-string p2, "histType"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addStep(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public addObjectDeletion(Landroid/os/Bundle;ILjava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
    .locals 3

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-eq p4, v0, :cond_0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p4, v1, :cond_2

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "histRef"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "histData"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-ne p4, v0, :cond_1

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    :goto_0
    const-string p3, "histType"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "histLayId"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->addStep(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public autoSaveDone()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->currentHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->lastSavedHash:Ljava/lang/String;

    return-void
.end method

.method public clearHistory()I
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->countChanged()V

    return v0
.end method

.method public endGrouping()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->groupingOn:Z

    return-void
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->countChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->clearHistory()I

    :cond_0
    return-void
.end method

.method public getBeforeLast()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLast()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasHistory()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRedo()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public redoLast()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->countChanged()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveToBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public shouldAutoSave()Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->lastSavedHash:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->currentHash:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public startGrouping()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->groupingOn:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string v0, "histKeepGoing"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public undoAddLastStep()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "histType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->bg_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    if-ne v1, v2, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->countChanged()V

    :cond_2
    return-void
.end method

.method public undoneLast()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->redoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->history:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;->countChanged()V

    :cond_0
    return-void
.end method
