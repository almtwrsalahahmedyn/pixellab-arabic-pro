.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Marker"
.end annotation


# instance fields
.field isHorizontal:Z

.field next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

.field private relPos:F

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;FZ)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->relPos:F

    iput-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->isHorizontal:Z

    return-void
.end method


# virtual methods
.method public getAbsPos()F
    .locals 2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->isHorizontal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->relPos:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getRelPos()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->relPos:F

    return v0
.end method

.method public setPos(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GridPanel$Marker;->relPos:F

    return-void
.end method
