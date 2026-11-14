.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;
    }
.end annotation


# instance fields
.field private mDrawingLocation:[I

.field private mListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field screenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mDrawingLocation:[I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget p3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-object p0
.end method

.method private computeFlags(I)I
    .locals 1

    const v0, -0x68219

    and-int/2addr p1, v0

    const v0, 0x8000

    or-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x10

    or-int/lit16 p1, p1, 0x200

    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p1, 0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DiscreteSeekBar Indicator:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->animateOpen()V

    return-void
.end method

.method private measureFloater()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    return-void
.end method

.method private translateViewIntoPosition(I)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mDrawingLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->setFloatOffset(I)V

    return-void
.end method

.method private updateLayoutParamsForPosiion(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->measureFloater()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mDrawingLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mDrawingLocation:[I

    const/4 v2, 0x1

    aget p1, p1, v2

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    add-int/2addr p1, v1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->animateClose()V

    return-void
.end method

.method public dismissComplete()V
    .locals 2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mShowing:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mShowing:Z

    return v0
.end method

.method public move(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->translateViewIntoPosition(I)V

    return-void
.end method

.method public setColors(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->setColors(II)V

    return-void
.end method

.method public setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->setValue(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showIndicator(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->animateOpen()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->updateLayoutParamsForPosiion(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mShowing:Z

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->translateViewIntoPosition(I)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public updateSizes(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->dismissComplete()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->resetSizes(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
