.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;
    }
.end annotation


# static fields
.field public static final defaultStrokeWidth:F


# instance fields
.field private TOUCH_TOLERANCE:F

.field backgroundCheckersShader:Landroid/graphics/BitmapShader;

.field bounds:Landroid/graphics/Rect;

.field currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

.field currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field currSelectionRect:Landroid/graphics/RectF;

.field currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

.field currStrokeBlur:I

.field currStrokeWidth:F

.field currTouchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

.field dX:F

.field dY:F

.field draggingSecondaryHandle:Z

.field private final enableStripes:Z

.field firstQuadTo:Z

.field gridSize:I

.field handlesDrag:I

.field image:Landroid/graphics/Bitmap;

.field imgArea:Landroid/graphics/RectF;

.field lastSelectionPoint:Landroid/graphics/PointF;

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

.field private mX:F

.field private mY:F

.field public masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

.field needUpdateArea:Z

.field oldX:F

.field oldY:F

.field pntBackgroundCheckers:Landroid/graphics/Paint;

.field pntBlack:Landroid/graphics/Paint;

.field pntEraserInd:Landroid/graphics/Paint;

.field pntGrid:Landroid/graphics/Paint;

.field pntImg:Landroid/graphics/Paint;

.field pntMask:Landroid/graphics/Paint;

.field pntSelection:Landroid/graphics/Paint;

.field pntSelection2:Landroid/graphics/Paint;

.field pntSelection3:Landroid/graphics/Paint;

.field pntSelectionHandle:Landroid/graphics/Paint;

.field pntSelectionHandleInv:Landroid/graphics/Paint;

.field previewListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

.field secondaryHandlePaint:Landroid/graphics/Paint;

.field private final secondaryHandleRad:F

.field selectionHandleRad:F

.field selectionHandleRad2:F

.field public sizeUnder:F

.field touchCenterDist:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->defaultStrokeWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0x39e3c000    # -10000.0f

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->TOUCH_TOLERANCE:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->needUpdateArea:Z

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad:F

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    mul-float v3, v3, v2

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->enableStripes:Z

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->defaultStrokeWidth:F

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeBlur:I

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntGrid:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->firstQuadTo:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldX:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldY:F

    const/4 v3, -0x2

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchCenterDist:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBlack:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntImg:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntMask:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntMask:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    const/16 v6, 0xc8

    const/16 v7, 0xff

    invoke-static {v6, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v6

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v8, 0x2

    new-array v9, v8, [F

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    aput v1, v9, v0

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    aput v1, v9, v4

    invoke-direct {v6, v9, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection2:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection2:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    const/16 v2, 0x63

    const/16 v6, 0x50

    const/16 v8, 0xe9

    invoke-static {v6, v8, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-static {v6, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-static {v1, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-static {v6, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;

    invoke-direct {v0, p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V

    invoke-virtual {p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->setOnPathChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08010d

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance p3, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p3, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->backgroundCheckersShader:Landroid/graphics/BitmapShader;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBackgroundCheckers:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->backgroundCheckersShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    invoke-virtual {p0, v4, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawMasks(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/RectF;Landroid/graphics/BitmapShader;)V
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getMasks()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->isStrokeFill()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getStrokeWidth()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p4, :cond_1

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_1
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_2
    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    :goto_3
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-static {v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->equalsRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float v2, v2, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getSecondaryHandleOffset()F
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    :cond_0
    return v1
.end method

.method private updateArea()V
    .locals 7

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->needUpdateArea:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v0, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->imgAreaUpdated(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->needUpdateArea:Z

    :cond_1
    return-void
.end method

.method private updateSelectionPathFromRect()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addOval(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addRect(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public delLastFreeSelection()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->removeLast()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public drawAlphaGrid(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntGrid:Landroid/graphics/Paint;

    const/16 v1, 0x96

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v3, v3, v2

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v5, v4, v2

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    mul-int v7, v4, v1

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    add-int/lit8 v9, v2, 0x1

    mul-int v9, v9, v4

    int-to-float v9, v9

    add-float/2addr v9, v6

    add-int/lit8 v6, v1, 0x1

    mul-int v6, v6, v4

    int-to-float v4, v6

    add-float/2addr v4, v8

    invoke-direct {v3, v5, v7, v9, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntGrid:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public drawStripes(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBlack:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    const/16 v1, 0x28

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v0, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v3

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v2

    :goto_0
    iget v4, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v0

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    add-float v8, v4, v0

    iget-object v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBlack:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentEraserRadius()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->updateArea()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBackgroundCheckers:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntImg:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntMask:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->backgroundCheckersShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->drawMasks(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/RectF;Landroid/graphics/BitmapShader;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v1, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    mul-float v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x75000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v0

    add-float v6, v4, v0

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v0

    add-float v6, v4, v0

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    const/high16 v1, -0x6a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    const v1, -0x69000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBlack:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_2
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq v0, v1, :cond_4

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad:F

    const v3, 0x3fb33333    # 1.4f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad:F

    div-float/2addr v2, v3

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    :goto_2
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->needUpdateArea:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_e

    const/4 v6, -0x2

    if-eq v2, v4, :cond_b

    const/4 v7, 0x2

    if-eq v2, v7, :cond_0

    const/4 p1, 0x3

    if-eq v2, p1, :cond_b

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldY:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldY:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq v3, v8, :cond_5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v5

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v1

    div-float/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    mul-float v1, v1, p1

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    if-eq p1, v6, :cond_15

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->updateSelectionPathFromRect()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_5

    :cond_5
    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    iget-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->draggingSecondaryHandle:Z

    if-nez v5, :cond_6

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_6
    if-lez v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchCenterDist:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->clipValue(FFF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchCenterDist:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->clipValue(FFF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeMove(FF)V

    goto :goto_1

    :cond_7
    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeMove(FF)V

    :cond_9
    :goto_1
    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->previewListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

    if-eqz v5, :cond_15

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/PointF;

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {v8, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne p1, v3, :cond_a

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getCurrentEraserRadius()F

    move-result p1

    goto :goto_2

    :cond_a
    sget p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->defaultStrokeWidth:F

    :goto_2
    move v9, p1

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;->update(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/PointF;FF)V

    goto/16 :goto_5

    :cond_b
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->previewListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;->disable()V

    :cond_c
    iput v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne p1, v2, :cond_d

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    cmpl-float p1, p1, v5

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->pointIfNotMoved(FF)V

    :cond_d
    iput-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->draggingSecondaryHandle:Z

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_e
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v2, v6, :cond_12

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_11

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v2, v6, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dist(FFFF)F

    move-result v2

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    cmpl-float v2, v2, v6

    if-lez v2, :cond_f

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v2, v6, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dist(FFFF)F

    move-result v2

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v6, v6, v7

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_f

    const/4 v3, 0x1

    :cond_f
    iput-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->draggingSecondaryHandle:Z

    if-nez v3, :cond_10

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchCenterDist:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v6

    add-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    :cond_11
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeStart(FF)V

    goto :goto_4

    :cond_12
    sget-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v2, v3, :cond_13

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v6, v7, :cond_13

    goto :goto_3

    :cond_13
    if-ne v2, v3, :cond_14

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchedRectSide(Landroid/graphics/PointF;Landroid/graphics/RectF;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    :cond_14
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldY:F

    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    :cond_15
    :goto_5
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    :goto_6
    return v4
.end method

.method public rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public removeFreeSelection(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getInverted(Landroid/graphics/RectF;I)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object p1

    :goto_0
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-direct {v1, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->masksCountChanged(I)V

    return-void
.end method

.method public setCurrStrokeBlur(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeBlur:I

    return-void
.end method

.method public setCurrentEraserRadius(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMasks(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPreviewListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->previewListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

    return-void
.end method

.method public setSelectionType(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->selTypeChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;)V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq v0, p1, :cond_3

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3f59999a    # 0.85f

    mul-float p1, p1, v0

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->updateSelectionPathFromRect()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setSizeUnder(I)V
    .locals 0

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public touchFreeModeMove(FF)V
    .locals 8

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->TOUCH_TOLERANCE:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->moved()V

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    add-float v0, p1, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    add-float v0, p2, v4

    div-float v6, v0, v1

    iget-boolean v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->firstQuadTo:Z

    invoke-virtual/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->quadTo(FFFFZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->firstQuadTo:Z

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public touchFreeModeStart(FF)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->firstQuadTo:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeBlur:I

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(FZILandroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->add(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getLast()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->lineTo(FFZ)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->masksCountChanged(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->lineTo(FFZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    return-void
.end method

.method public touchedRectSide(Landroid/graphics/PointF;Landroid/graphics/RectF;)I
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    mul-float v1, v1, v4

    :cond_0
    float-to-int v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    mul-float v3, v3, v4

    :cond_1
    float-to-int v1, v3

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget v3, p2, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    add-float/2addr v4, v1

    iget v5, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float v4, v3, v0

    iget v5, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float v5, v4, v1

    iget v6, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget v3, p2, Landroid/graphics/RectF;->right:F

    sub-float v4, v3, v0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v5, p2, v1

    add-float/2addr v3, v0

    add-float/2addr p2, v1

    invoke-virtual {v2, v4, v5, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    return p1

    :cond_5
    const/4 p1, -0x2

    return p1
.end method

.method public undoAll()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->remAll()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->masksCountChanged(I)V

    return-void
.end method

.method public undoOp()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->remLast()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->masksCountChanged(I)V

    return-void
.end method
