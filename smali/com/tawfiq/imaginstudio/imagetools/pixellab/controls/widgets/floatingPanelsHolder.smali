.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder;
.super Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
