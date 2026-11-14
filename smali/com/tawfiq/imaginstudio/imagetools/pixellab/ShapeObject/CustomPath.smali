.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_CIRCLE:Ljava/lang/String; = "c"

.field private static final ACTION_TYPE_FILL_TYPE:Ljava/lang/String; = "f"

.field private static final ACTION_TYPE_LINETO:Ljava/lang/String; = "l"

.field private static final ACTION_TYPE_OVAL:Ljava/lang/String; = "o"

.field private static final ACTION_TYPE_QUADTO:Ljava/lang/String; = "q"

.field private static final ACTION_TYPE_RECT:Ljava/lang/String; = "r"


# instance fields
.field public actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;",
            ">;"
        }
    .end annotation
.end field

.field cache:Landroid/graphics/Path;

.field defaultDirection:Landroid/graphics/Path$Direction;

.field fillType:I

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;

.field syncFrozen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->fillType:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncFrozen:Z

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->defaultDirection:Landroid/graphics/Path$Direction;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->fillType:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncFrozen:Z

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->defaultDirection:Landroid/graphics/Path$Direction;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->freezeSync()V

    const-string v0, "PtD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->applyArrayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->unfreezeSync()V

    return-void
.end method

.method private addActionToPath(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;)V
    .locals 6

    instance-of v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;

    iget-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->isMoveTo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    iget v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->x:F

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    iget v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->x:F

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    iget v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x1:F

    iget v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y1:F

    iget v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x2:F

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y2:F

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    iget v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->x:F

    iget v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->y:F

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->rad:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->defaultDirection:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    iget v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->left:F

    iget v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->top:F

    iget v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->right:F

    iget v4, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->bottom:F

    iget-object v5, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->direction:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->defaultDirection:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private applyArrayData(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_5
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->stringToDirection(Ljava/lang/String;)Landroid/graphics/Path$Direction;

    move-result-object v9

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->stringToBool(Ljava/lang/String;)Z

    move-result v9

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFZ)V

    :goto_2
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x6

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;

    new-instance v4, Landroid/graphics/RectF;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    add-int/lit8 v7, v1, 0x3

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    add-int/lit8 v8, v1, 0x4

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v3, p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x5

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->stringToBool(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFZ)V

    goto :goto_3

    :pswitch_4
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->setFillType(I)V

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFF)V

    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_0

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6c -> :sswitch_3
        0x6f -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private copyActions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setFillType(I)V
    .locals 1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->fillType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :cond_0
    return-void
.end method

.method private syncPath(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncFrozen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;->countChanged(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :cond_2
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->fillType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addActionToPath(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addActionToPath(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public addCircle(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    return-void
.end method

.method public addOval(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;

    invoke-direct {v1, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    return-void
.end method

.method public addRect(FFFF)V
    .locals 6

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->defaultDirection:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 9

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    return-void
.end method

.method public addRect(Landroid/graphics/RectF;)V
    .locals 3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addRect(FFFF)V

    return-void
.end method

.method public freezeSync()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncFrozen:Z

    return-void
.end method

.method public getInverted(Landroid/graphics/RectF;I)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
    .locals 7

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;-><init>()V

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->setFillType(I)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->copyActions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    sub-float v1, v0, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float v3, v0, p2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float v4, p1, p2

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-object v6
.end method

.method public getLastPoint()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->x:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->y:F

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x2:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y2:F

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lineTo(FFZ)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    return-void
.end method

.method public quadTo(FFFFZ)V
    .locals 9

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFZ)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    return-void
.end method

.method public removeLast()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;

    instance-of v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->first:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->removeLast()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->cache:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;->countChanged(I)V

    :cond_0
    return-void
.end method

.method public set(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V
    .locals 1

    iget v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->fillType:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->fillType:I

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->copyActions()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    return-void
.end method

.method public setOnPathChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->fillType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "f"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;

    invoke-virtual {v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;->addToArrayList(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v2, "PtD"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public unfreezeSync()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncFrozen:Z

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->syncPath(Z)V

    return-void
.end method
