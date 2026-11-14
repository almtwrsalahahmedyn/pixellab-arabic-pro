.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$oldPerspectiveEnabled:Z

.field final synthetic val$oldPoint1:Landroid/graphics/PointF;

.field final synthetic val$oldPoint2:Landroid/graphics/PointF;

.field final synthetic val$oldPoint3:Landroid/graphics/PointF;

.field final synthetic val$oldPoint4:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPerspectiveEnabled:Z

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPoint1:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPoint2:Landroid/graphics/PointF;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPoint3:Landroid/graphics/PointF;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPoint4:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPerspectiveEnabled:Z

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setPerspectiveEnabled(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPoint1:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPoint2:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPoint3:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$44;->val$oldPoint4:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method
