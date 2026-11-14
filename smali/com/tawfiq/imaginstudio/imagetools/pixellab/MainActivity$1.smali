.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field dX:F

.field minX:F

.field previousX:F

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x3ee00000    # -10.0f

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->previousX:F

    sub-float p2, p1, p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->dX:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->previousX:F

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getX()F

    move-result p2

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->dX:F

    add-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->previousX:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->dX:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)F

    move-result p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHandle:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
