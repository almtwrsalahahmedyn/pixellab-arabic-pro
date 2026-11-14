.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOUCH_TOLERANCE:F

.field private static final MAXP:F = 0.75f

.field private static final MINP:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "DrawView"

.field private static final maxTolerance:F

.field private static final minTolerance:F = 0.1f


# instance fields
.field private TOUCH_TOLERANCE:F

.field private currBlur:I

.field private currColor:I

.field private currDashed:Z

.field private currFill:Z

.field private currNeon:Z

.field private currPenType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

.field private currStrokeWidth:I

.field currX:F

.field currY:F

.field private drawings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;",
            ">;"
        }
    .end annotation
.end field

.field isDrawing:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mX:F

.field private mY:F

.field pntEraser:Landroid/graphics/Paint;

.field pntEraserBorder:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->DEFAULT_TOUCH_TOLERANCE:F

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->maxTolerance:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    sget p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->DEFAULT_TOUCH_TOLERANCE:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currColor:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraser:Landroid/graphics/Paint;

    const/16 p3, 0xb4

    const/16 v0, 0xff

    invoke-static {p3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraserBorder:Landroid/graphics/Paint;

    const/16 p3, 0x40

    invoke-static {p3, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraserBorder:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getCurrDrawing()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCurrPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getPath()Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private touch_move(FF)V
    .locals 6

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    add-float v3, p1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v5, p2, v2

    div-float/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    :cond_1
    return-void
.end method

.method private touch_start(FF)V
    .locals 16

    move-object/from16 v12, p0

    move/from16 v13, p1

    move/from16 v14, p2

    iget-object v15, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    iget v2, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currBlur:I

    iget v3, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currColor:I

    iget-boolean v4, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currDashed:Z

    iget-boolean v5, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currFill:Z

    iget-boolean v6, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currNeon:Z

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget v8, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    iget-object v9, v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object v12, v11

    move/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;IIZZZLandroid/graphics/Path;ILcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;FF)V

    invoke-virtual {v15, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    iput v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    return-void
.end method

.method private touch_up()V
    .locals 3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrDrawing()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrDrawing()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->doneDrawing()V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearMe()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public drawingsEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public getCurrStrokeWidth()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    return v0
.end method

.method public getSmoothness()I
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->maxTolerance:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isDrawing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawingsEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->eraser:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_0
    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->isFill()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->stillDrawing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->isDashed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getStrokeWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v4, v7

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getStrokeWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v4, v7

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_2
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->isFill()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getStrokeWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_2

    :cond_3
    const/high16 v3, 0x40800000    # 4.0f

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->isNeon()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x41300000    # 11.0f

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getBlur()I

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getBlur()I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    goto :goto_3

    :cond_5
    move-object v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->eraser:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currX:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currY:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraserBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currX:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currY:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraser:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result p1

    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->touch_move(FF)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->touch_up()V

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing:Z

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->touch_start(FF)V

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing:Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return v1
.end method

.method public restoreOptions()V
    .locals 1

    sget v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->DEFAULT_TOUCH_TOLERANCE:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-void
.end method

.method public setCurrBlur(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currBlur:I

    return-void
.end method

.method public setCurrColor(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currColor:I

    return-void
.end method

.method public setCurrDashed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currDashed:Z

    return-void
.end method

.method public setCurrFill(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currFill:Z

    return-void
.end method

.method public setCurrNeon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currNeon:Z

    return-void
.end method

.method public setCurrPenType(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-void
.end method

.method public setCurrStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    return-void
.end method

.method public setSmoothness(I)V
    .locals 2

    sget v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->maxTolerance:F

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    int-to-float p1, p1

    mul-float v0, v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    return-void
.end method

.method public undo()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
