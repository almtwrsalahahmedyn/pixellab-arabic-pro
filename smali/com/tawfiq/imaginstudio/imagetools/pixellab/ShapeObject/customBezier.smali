.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;
    }
.end annotation


# static fields
.field public static final defaultStrokeWidth:I


# instance fields
.field PathBounds:Landroid/graphics/RectF;

.field public actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

.field center:Landroid/graphics/PointF;

.field public closedContour:Z

.field private controlPnt:Landroid/graphics/Paint;

.field private controlPntInverted:Landroid/graphics/Paint;

.field private controlPntLast:Landroid/graphics/Paint;

.field private controlPntRest:Landroid/graphics/Paint;

.field private controlRad:F

.field public currDrag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field currRot:I

.field currScale:I

.field private directionPath:Landroid/graphics/Path;

.field public fillAlpha:I

.field private fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

.field private handlePnt:Landroid/graphics/Paint;

.field private handlePntInverted:Landroid/graphics/Paint;

.field private listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

.field needRecreate:Z

.field path:Landroid/graphics/Path;

.field public pathFillPnt:Landroid/graphics/Paint;

.field public pathStrokePnt:Landroid/graphics/Paint;

.field private pntIndicator:Landroid/graphics/Paint;

.field private pointRad:F

.field public selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

.field public strokeAlpha:I

.field public updatedGeometry:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->defaultStrokeWidth:I

    return-void
.end method

.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    iput v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-direct {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    const/16 v4, 0xff

    iput v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    const/16 v6, 0x64

    iput v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v7, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->PathBounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->directionPath:Landroid/graphics/Path;

    iput-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Paint;

    iget-object v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    invoke-direct {v2, v8}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pntIndicator:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pntIndicator:Landroid/graphics/Paint;

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pntIndicator:Landroid/graphics/Paint;

    const/16 v9, 0x78

    invoke-static {v9, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntLast:Landroid/graphics/Paint;

    const/16 v6, 0xc8

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntRest:Landroid/graphics/Paint;

    const-string v6, "#00bcd4"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v6

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v6, v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    const/16 v5, 0x50

    invoke-static {v5, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    sget v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const-string v2, "#212121"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    new-instance v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    sget v16, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->defaultStrokeWidth:I

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object v9, v1

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ILandroid/graphics/Paint$Cap;)V

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)F
    .locals 0

    iget p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    return p0
.end method

.method public static synthetic access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->directionPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getDirectionPointer(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntLast:Landroid/graphics/Paint;

    return-object p0
.end method

.method private getDefaultElements(Landroid/graphics/PointF;F)[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;
    .locals 20

    move-object/from16 v0, p1

    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    const v3, 0x3e99999a    # 0.3f

    mul-float v3, v3, p2

    sub-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    const/4 v3, 0x0

    aput-object v11, v0, v3

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v5, v5, p2

    add-float v14, v4, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float v15, v1, v5

    iget v1, v2, Landroid/graphics/PointF;->x:F

    sub-float v16, v1, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v17, v2, v5

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v18, v1

    move/from16 v19, v2

    invoke-direct/range {v12 .. v19}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    return-object v0
.end method

.method private getDirectionPointer(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget p1, p3, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-object p4
.end method

.method public static getPathFromStringArrayList(Ljava/util/ArrayList;)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    invoke-virtual {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dataFromStringArrayList(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private snapX(F)F
    .locals 2

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result p1

    return p1
.end method

.method private snapY(F)F
    .locals 2

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result p1

    return p1
.end method

.method private updatePaint()V
    .locals 4

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v0

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v0

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->PathBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getBounds(Landroid/graphics/RectF;F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v0

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->PathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v0

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->PathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->applyCapOnPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->applyCapOnPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method private updatePathRecreate()V
    .locals 9

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v1

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v2

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$6;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->fixLastPoint(Z)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addPointAfterSelected()V
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v4, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v2, v4, v5, v3, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getPointOnCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)[Landroid/graphics/PointF;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v2, v3

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint1(FF)V

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint2(FF)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    new-instance v4, Landroid/graphics/PointF;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    aget-object v1, v2, v1

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    const/4 v6, 0x4

    aget-object v2, v2, v6

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, p0, v4, v5, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v2, :cond_3

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :cond_3
    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iput-object v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :cond_4
    iput-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    :cond_5
    return-void
.end method

.method public addPointLast(Landroid/graphics/PointF;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$1000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;FF)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_2

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    :goto_0
    invoke-static {v0, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-static {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    :goto_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    const/4 p1, 0x1

    return p1
.end method

.method public addToArrayList(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$3;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    return-void
.end method

.method public close(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->fixLastPoint(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    :goto_0
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void
.end method

.method public commitTransforms(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->scale(I)V

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->rotate(I)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_1
    return-void
.end method

.method public copy(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;F)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-direct {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p1, v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->copyFrom(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;F)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    iput-boolean p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    return-object v0
.end method

.method public dataFromStringArrayList(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dataFromStringArrayList(Ljava/util/ArrayList;FFFFFF)V

    return-void
.end method

.method public dataFromStringArrayList(Ljava/util/ArrayList;FFFFFF)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;FFFFFF)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->clear()V

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    iget-object v11, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, p2

    mul-float v0, v0, p6

    add-float v2, v0, p4

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p3

    mul-float v0, v0, p7

    add-float v3, v0, p5

    add-int/lit8 v0, v10, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, p2

    mul-float v0, v0, p6

    add-float v4, v0, p4

    add-int/lit8 v0, v10, 0x3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p3

    mul-float v0, v0, p7

    add-float v5, v0, p5

    add-int/lit8 v0, v10, 0x4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, p2

    mul-float v0, v0, p6

    add-float v6, v0, p4

    add-int/lit8 v0, v10, 0x5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p3

    mul-float v0, v0, p7

    add-float v7, v0, p5

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    invoke-static {v11, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    add-int/lit8 v10, v10, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    :cond_2
    :goto_1
    return-void
.end method

.method public doDefaultPreset(Landroid/graphics/PointF;F)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getDefaultElements(Landroid/graphics/PointF;F)[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->clear()V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void
.end method

.method public doDefaultPresetMask(Landroid/graphics/RectF;F)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->clear()V

    iget v9, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v10, v1, p2

    iget v11, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v12, v0, p2

    sub-float v13, v11, v9

    sub-float v14, v12, v10

    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v0, v9, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$1000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;FF)V

    iget-object v15, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const v0, 0x3f333333    # 0.7f

    mul-float v0, v0, v14

    add-float v16, v0, v10

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v13

    add-float v4, v0, v9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, v14, v0

    add-float v17, v1, v10

    add-float v1, v11, v9

    mul-float v18, v1, v0

    add-float v1, v10, v12

    mul-float v19, v1, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v20, v10

    move-object v10, v7

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    invoke-static {v15, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    iget-object v10, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v13, v13, v0

    add-float/2addr v9, v13

    move-object v0, v15

    move v2, v9

    move/from16 v3, v17

    move v4, v11

    move/from16 v5, v16

    move v6, v11

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    invoke-static {v10, v15}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    iget-object v10, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const v0, 0x3fa66666    # 1.3f

    mul-float v14, v14, v0

    add-float v3, v14, v20

    const/high16 v0, 0x41300000    # 11.0f

    mul-float v12, v12, v0

    sub-float v12, v12, v20

    const v0, 0x3dcccccd    # 0.1f

    mul-float v7, v12, v0

    move-object v0, v13

    move v2, v11

    move v4, v9

    move v5, v7

    move/from16 v6, v18

    invoke-direct/range {v0 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    invoke-static {v10, v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void
.end method

.method public dragCurrent(FF)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->whole:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getCenteroid()Landroid/graphics/PointF;

    move-result-object v0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p1

    invoke-virtual {v1, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FF)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_3

    return-void

    :cond_3
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$7;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapX(F)F

    move-result p1

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_1
    iget v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapY(F)F

    move-result p2

    iput p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapX(F)F

    move-result p1

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v1, :cond_1

    :cond_7
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapX(F)F

    move-result p1

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapY(F)F

    move-result p2

    iput p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    add-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapX(F)F

    move-result p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    sub-float/2addr p1, v1

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapY(F)F

    move-result p2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    sub-float/2addr p2, v1

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    add-float/2addr v3, p1

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v1, :cond_a

    :cond_9
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    :cond_a
    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v0, :cond_b

    :goto_2
    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    add-float/2addr p1, p2

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_2
.end method

.method public drawPath(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePaint()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPathPoints(Landroid/graphics/Canvas;ZZF)V
    .locals 10

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    div-float v5, v2, p4

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    div-float v5, v3, p4

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fb33333    # 1.4f

    if-eqz p3, :cond_1

    const v7, 0x3fb33333    # 1.4f

    goto :goto_0

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    mul-float v7, v7, p4

    div-float/2addr v4, v7

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    if-eqz p3, :cond_2

    const v5, 0x3fb33333    # 1.4f

    :cond_2
    mul-float p4, p4, v5

    div-float/2addr v4, p4

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz p2, :cond_b

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v4, p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p4, p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eq v4, p4, :cond_b

    iget-object p4, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz p4, :cond_6

    :cond_3
    iget v5, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v6, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget v7, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v8, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    if-eqz p3, :cond_4

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    :goto_1
    move-object v9, p2

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p4, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    if-eqz p3, :cond_5

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, p4, p2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p4, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz p4, :cond_9

    iget v5, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v6, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget v7, p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v8, p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    :goto_3
    move-object v9, p2

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p4, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    if-eqz p3, :cond_8

    :goto_4
    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    goto :goto_5

    :cond_8
    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    :goto_5
    invoke-virtual {p1, p4, p2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_9
    iget-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz p4, :cond_b

    iget v5, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v6, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v7, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v8, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    if-eqz p3, :cond_a

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    :goto_6
    move-object v9, p2

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p4, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    if-eqz p3, :cond_8

    goto :goto_4

    :cond_b
    :goto_7
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;

    invoke-direct {p4, p0, p3, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;ZLandroid/graphics/Canvas;)V

    invoke-virtual {p2, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    return v0
.end method

.method public getCurrRot()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    return v0
.end method

.method public getCurrScale()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    return v0
.end method

.method public getFillOptions()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isStillDefault(Landroid/graphics/PointF;F)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getDefaultElements(Landroid/graphics/PointF;F)[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->contains(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->contains(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public removeSelected()Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->remove(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public resetDragTarget()V
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-void
.end method

.method public rotate(I)V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    sub-int v0, p1, v0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getCenteroid()Landroid/graphics/PointF;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;

    invoke-direct {v1, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;I)V

    invoke-virtual {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePathRecreate()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_1
    return-void
.end method

.method public scale(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getCenteroid()Landroid/graphics/PointF;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;

    invoke-direct {v1, p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;F)V

    invoke-virtual {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePathRecreate()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_1
    return-void
.end method

.method public selectMe()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    return-void
.end method

.method public selectPoint(FFF)Z
    .locals 4

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    div-float/2addr v2, p3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    div-float/2addr v2, p3

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setDragTarget(FFF)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    div-float/2addr v2, p3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    div-float/2addr v1, p3

    mul-float v1, v1, v3

    cmpg-float p3, v0, v1

    if-gez p3, :cond_1

    :goto_0
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    :goto_1
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    goto :goto_6

    :cond_1
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p3, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v0, 0x0

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v0

    goto :goto_3

    :cond_3
    :goto_2
    new-instance p3, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {p3, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_3
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v1, :cond_5

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_4

    :cond_4
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_5
    :goto_4
    if-nez p3, :cond_6

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    if-nez p3, :cond_8

    :cond_7
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->nextP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    goto :goto_1

    :cond_8
    if-nez v0, :cond_9

    :goto_5
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->prevP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    goto :goto_1

    :cond_9
    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p3, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dist(FFFF)F

    move-result p3

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dist(FFFF)F

    move-result p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_7

    goto :goto_5

    :goto_6
    return-void
.end method

.method public setDragTarget(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-void
.end method

.method public setDragWhole()V
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->whole:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setDragTarget(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;)V

    return-void
.end method

.method public setStyleForMask()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_width(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_color(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_color(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    return-object p0
.end method

.method public setStyleFromBundle(Landroid/os/Bundle;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "Kzd2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    const-string v0, "Qs16"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    const-string v0, "lAc1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->stringToBool(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    return-object p0
.end method

.method public styleToBundle()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->boolToString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lAc1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    const-string v2, "Kzd2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    const-string v2, "Qs16"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updatePath()V
    .locals 11

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    :cond_0
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePathRecreate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$900(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v6, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_4
    return-void
.end method
