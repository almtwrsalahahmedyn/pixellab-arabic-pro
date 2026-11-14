.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;
    }
.end annotation


# static fields
.field static final handleHDp:I = 0xf

.field static final handleWDp:I = 0x1a


# instance fields
.field backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field bgGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

.field private colorHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;",
            ">;"
        }
    .end annotation
.end field

.field colors:[I

.field private gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

.field final gridSquare:I

.field final handleH:I

.field final handleW:I

.field lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

.field pnGridBlack:Landroid/graphics/Paint;

.field pnGridWhite:Landroid/graphics/Paint;

.field positions:[F

.field private sliderControls:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleH:I

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridBlack:Landroid/graphics/Paint;

    const-string v0, "#bdbdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridWhite:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->bgGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08010e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    return-object p0
.end method


# virtual methods
.method public addNewColor()V
    .locals 11

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v1

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/16 v5, 0x3e8

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    sub-int v6, v5, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v7

    move v8, v6

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move v6, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v7, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v10

    if-le v10, v0, :cond_2

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v10

    sub-int/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v8, :cond_2

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v6

    move v8, v5

    move v5, v6

    move v6, v2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    move v6, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v7, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v10

    if-ge v10, v0, :cond_4

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v10

    sub-int/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v8, :cond_4

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v6

    move v8, v5

    move v5, v6

    move v6, v2

    const/4 v2, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->averageTwoColors(II)I

    move-result v1

    :cond_6
    invoke-virtual {p0, v1, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->addNewColor(II)V

    :cond_7
    return-void
.end method

.method public addNewColor(II)V
    .locals 8

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    move-object v0, v7

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;-><init>(Landroid/content/Context;IIIILandroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    sub-int/2addr v1, v2

    mul-int v1, v1, p2

    int-to-float p2, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 p2, -0xfa

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    :cond_0
    iput-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v7, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setTouchListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    return-void
.end method

.method public averageTwoColors(II)I
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-static {v1, v2, v3, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public connectControls(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    return-void
.end method

.method public connectPreview(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    return-void
.end method

.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public drawGrid(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    mul-int v2, v2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    mul-int v3, v3, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    mul-int v4, v2, v3

    mul-int v5, v1, v3

    add-int/2addr v3, v4

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    add-int/2addr v6, v5

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    rem-int/lit8 v7, v2, 0x2

    const/4 v8, 0x1

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    :goto_2
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    :goto_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    if-ne v7, v8, :cond_2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridBlack:Landroid/graphics/Paint;

    goto :goto_4

    :cond_2
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridWhite:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {p2, v9, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public flipPositions()V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v3

    rsub-int v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setPosition(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    sub-int/2addr v4, v5

    mul-int v4, v4, v3

    int-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v3, -0xfa

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    :cond_1
    return-void
.end method

.method public gradientChanged()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v4

    aput v4, v3, v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->bgGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->updateGradient([I[F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->selectionChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientDoneEditing()V

    return-void
.end method

.method public gradientColorsChanged()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v4

    aput v4, v3, v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->bgGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->updateGradient([I[F)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientDoneEditing()V

    return-void
.end method

.method public gradientDoneEditing()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->setColors([I[F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$1;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public initializeColors([I[F)V
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;[I[F)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHandleDoneEvent()V
    .locals 0

    return-void
.end method

.method public onHandleMoveEvent()V
    .locals 0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    return-void
.end method

.method public onHandleTouchEvent(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->selectionChanged()V

    :cond_1
    return-void
.end method

.method public removeCurrentColor()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    :cond_0
    return-void
.end method

.method public selectLeft()V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    if-ge v5, v0, :cond_0

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eq v4, v5, :cond_0

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object v3, v4

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->selectionChanged()V

    :cond_2
    return-void
.end method

.method public selectRight()V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    if-le v5, v0, :cond_0

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eq v4, v5, :cond_0

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object v3, v4

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->selectionChanged()V

    :cond_2
    return-void
.end method

.method public setCurrentColorPosition(I)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setPosition(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    sub-int/2addr v1, v2

    mul-int v1, v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 p1, -0xfa

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method
