.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->drawPathPoints(Landroid/graphics/Canvas;ZZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

.field final synthetic val$canvas:Landroid/graphics/Canvas;

.field final synthetic val$invert:Z


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;ZLandroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->val$invert:Z

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->val$canvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOn(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V
    .locals 6

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->val$invert:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v4, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v5, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v4, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v2, v3, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getPointOnCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)[Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)F

    move-result v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v1, v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v3

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isDarkColor(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;

    move-result-object v3

    const/16 v4, 0xe6

    const/16 v5, 0xff

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->val$canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$500(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Path;

    move-result-object v5

    invoke-static {v4, v2, v1, v0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$600(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->val$canvas:Landroid/graphics/Canvas;

    iget v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)F

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v5, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v5, :cond_4

    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    mul-float v3, v3, v5

    iget-boolean v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->val$invert:Z

    if-eqz v5, :cond_5

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$700(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->val$invert:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-ne v1, p1, :cond_6

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->val$canvas:Landroid/graphics/Canvas;

    iget v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)F

    move-result v0

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->access$800(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method
