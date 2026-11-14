.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Floater"
.end annotation


# instance fields
.field private mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

.field private mOffset:I

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    const/16 p4, 0x33

    invoke-direct {p2, p3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    return-object p0
.end method


# virtual methods
.method public onClosingComplete()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->dismissComplete()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mOffset:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->measureChildren(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onOpeningComplete()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->setColors(II)V

    return-void
.end method

.method public setFloatOffset(I)V
    .locals 2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mOffset:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
