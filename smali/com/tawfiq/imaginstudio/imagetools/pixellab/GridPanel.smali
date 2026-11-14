.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;
    }
.end annotation


# instance fields
.field HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

.field VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

.field controlsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

.field dX:F

.field dY:F

.field gridEnabled:Z

.field halfCircleRad:F

.field markerSelectionRad:F

.field pntMarker:Landroid/graphics/Paint;

.field pntMarkerSelected:Landroid/graphics/Paint;

.field pntMarkerSnap:Landroid/graphics/Paint;

.field pntMarkerStroke:Landroid/graphics/Paint;

.field prevX:F

.field prevY:F

.field remainderH:F

.field remainderV:F

.field selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

.field public selectionEnabled:Z

.field snapEnabled:Z

.field snapRad:F

.field snappedToHor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

.field snappedToVer:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;Z)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;Z)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->markerSelectionRad:F

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapRad:F

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->find(F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-static {v1, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    const-string v0, "#C8ff9800"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    const-string v0, "#C8f44336"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->makeSureSomethingIsSelected()V

    return-void
.end method

.method private makeSureSomethingIsSelected()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    return-void
.end method

.method private selectMarker(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    return-void
.end method


# virtual methods
.method public actionUp()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public addHorizontal()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public addVertical()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public currentlySnappingTo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)V
    .locals 1

    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_0
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :cond_1
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public findAndSelectMarker(FF)Z
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->markerSelectionRad:F

    invoke-virtual {v1, p2, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getAtPos(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->markerSelectionRad:F

    invoke-virtual {v2, p1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getAtPos(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v3

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectMarker(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    :goto_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eq v0, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public getContainer(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->isHorizontal:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    :goto_0
    return-object p1
.end method

.method public getCurrentMarkerPosition()F
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v0

    return v0
.end method

.method public isSnapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    return v0
.end method

.method public offsetCurrentRemainder(ZF)V
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v0, v2

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    add-float/2addr v0, p2

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->makeSureSomethingIsSelected()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    iget-boolean v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    iget-object v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarker:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerStroke:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSelected:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->pntMarkerSnap:Landroid/graphics/Paint;

    iget-boolean v13, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->makeSureSomethingIsSelected()V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->prevX:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->dX:F

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->prevY:F

    sub-float p1, v1, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->dY:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->prevX:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->prevY:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->getContainer(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    move-result-object p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->isHorizontal:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->dY:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->dX:F

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->moveBy(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)V

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->prevX:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->prevY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->dX:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->dY:F

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->findAndSelectMarker(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public remMarker()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->getContainer(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->remove(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->toggle()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->toggle(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public resetCurrentRemainder(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    :goto_0
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    :cond_1
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    return-void
.end method

.method public setControlsListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    return-void
.end method

.method public setCurrentMarkerPosition(F)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->getContainer(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->move(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;FZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSnap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;->gridSnapToggled(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    return-void
.end method

.method public snapPos(FFZZ)F
    .locals 3

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapEnabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    :goto_0
    add-float v1, p1, p2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapRad:F

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getAtPos(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->currentlySnappingTo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)V

    if-nez p4, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result p1

    sub-float/2addr p1, p2

    :goto_1
    return p1

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->resetCurrentRemainder(Z)V

    return p1

    :cond_4
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result p4

    if-eqz p3, :cond_5

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    :goto_2
    add-float/2addr p4, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snapRad:F

    invoke-virtual {v0, p4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getAtPos(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object p4

    if-eq p4, v1, :cond_7

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result p1

    if-eqz p3, :cond_6

    iget p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderH:F

    goto :goto_3

    :cond_6
    iget p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->remainderV:F

    :goto_3
    add-float/2addr p1, p4

    sub-float/2addr p1, p2

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->resetCurrentRemainder(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result p4

    sub-float/2addr p4, p2

    sub-float/2addr p1, p4

    invoke-virtual {p0, p3, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->offsetCurrentRemainder(ZF)V

    move p1, p4

    :cond_8
    :goto_4
    return p1
.end method

.method public startNewFromDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x3

    :goto_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    const/16 p2, 0x64

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x1

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->clear()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->clear()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    div-float v2, v1, v2

    new-array v3, p1, [F

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v5, v4, -0x1

    if-ge v5, p1, :cond_1

    int-to-float v6, v4

    mul-float v6, v6, v2

    aput v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->HorizontalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-static {p1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    :cond_2
    if-eqz p2, :cond_4

    add-int/lit8 p1, p2, 0x1

    int-to-float p1, p1

    div-float/2addr v1, p1

    new-array p1, p2, [F

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-ge v2, p2, :cond_3

    int-to-float v3, v0

    mul-float v3, v3, v1

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->VerticalMarkers:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    invoke-static {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->toggle(Z)V

    return-void
.end method

.method public toggle(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    invoke-interface {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;->gridToggled(Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->gridEnabled:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;->gridSelectionToggled(Z)V

    :cond_2
    return-void
.end method

.method public toggleSelection(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->controlsListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$OnGridUpdated;->gridSelectionToggled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
