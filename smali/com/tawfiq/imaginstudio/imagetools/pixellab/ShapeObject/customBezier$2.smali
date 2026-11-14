.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->rotate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

.field final synthetic val$relativeAngle:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;I)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->val$relativeAngle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOn(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getControlP1()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->val$relativeAngle:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint1(Landroid/graphics/PointF;)V

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getControlP2()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->val$relativeAngle:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint2(Landroid/graphics/PointF;)V

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->val$relativeAngle:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setPoint(Landroid/graphics/PointF;)V

    return-void
.end method
