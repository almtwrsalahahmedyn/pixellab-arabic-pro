.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "lineEquation"
.end annotation


# instance fields
.field angle:D

.field cosAlpha:F

.field pointAlongLine:Landroid/graphics/PointF;

.field sinAlpha:F

.field startingPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;DLandroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->angle:D

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->startingPoint:Landroid/graphics/PointF;

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->cosAlpha:F

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->sinAlpha:F

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->pointAlongLine:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getPointAtDistance(F)Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->pointAlongLine:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->startingPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->cosAlpha:F

    mul-float v3, v3, p1

    add-float/2addr v3, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->sinAlpha:F

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->pointAlongLine:Landroid/graphics/PointF;

    return-object p1
.end method
