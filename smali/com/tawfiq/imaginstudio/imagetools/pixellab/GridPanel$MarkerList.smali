.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarkerList"
.end annotation


# instance fields
.field first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

.field isHorizontalList:Z

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->addRelativePos([F)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->addAfterSelected()V

    return-void
.end method

.method private add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_1
    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_2
    return-void
.end method

.method private addAfterSelected()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->getContainer(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v0

    goto :goto_2

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    add-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v2, v2, v0

    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->addRelativePos(F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    return-void
.end method

.method private addRelativePos(F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;FZ)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    return-object v0
.end method

.method private varargs addRelativePos([F)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->addRelativePos(F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private find_r(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->find_r(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public checkIfValidRect()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v10, v1

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;

    invoke-direct {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;-><init>()V

    move-object v12, v1

    :goto_1
    if-eqz v12, :cond_9

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v1

    :goto_2
    iget-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz v3, :cond_2

    invoke-virtual {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v2

    :cond_2
    iget-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz v3, :cond_3

    move v3, v10

    goto :goto_3

    :cond_3
    invoke-virtual {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v3

    :goto_3
    iget-boolean v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz v4, :cond_4

    invoke-virtual {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v4

    goto :goto_4

    :cond_4
    move v4, v10

    :goto_4
    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->set(FFFF)V

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v2

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v3

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v4

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v5

    move-object v1, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eq v12, v2, :cond_5

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-ne v12, v1, :cond_6

    :cond_5
    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v2

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v3

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v4

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v5

    move-object v1, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-ne v12, v1, :cond_7

    if-eqz p6, :cond_7

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v2

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v3

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v4

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v5

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v2

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v3

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v4

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v5

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-boolean v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    if-eqz v1, :cond_8

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v1

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v2

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    const v4, 0x3f8ccccd    # 1.1f

    mul-float v3, v3, v4

    invoke-virtual {p1, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v1

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v2

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v1

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v2

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    mul-float v3, v3, v4

    invoke-virtual {p1, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v1

    invoke-virtual {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v2

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    iget-object v12, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public find(F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-direct {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->find_r(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object p1

    return-object p1
.end method

.method public getAtPos(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_0
    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method public getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public move(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;FZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->checkIfValidRect()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->remove(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    :goto_0
    int-to-float p3, p3

    div-float/2addr p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->setPos(F)V

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    :cond_3
    return-void
.end method

.method public moveBy(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)V
    .locals 1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v0

    add-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->move(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;FZ)V

    return-void
.end method

.method public remove(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-ne v0, p1, :cond_0

    iget-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eq v1, p1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-object p1, v0

    :goto_1
    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v0, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    iput-object p1, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :cond_3
    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;)V

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
