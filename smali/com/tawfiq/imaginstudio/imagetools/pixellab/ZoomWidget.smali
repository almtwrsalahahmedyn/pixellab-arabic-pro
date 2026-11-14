.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;
    }
.end annotation


# static fields
.field private static final MAX_ZOOM:F = 30.0f

.field private static final MIN_ZOOM:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ZoomLayout"


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private child:Landroid/view/View;

.field private dx:F

.field private dy:F

.field horScroll:Landroid/graphics/RectF;

.field horScrollArea:Landroid/graphics/RectF;

.field private lastScaleFactor:F

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

.field pntBg:Landroid/graphics/Paint;

.field private prevDx:F

.field private prevDy:F

.field previewQuadrant:I

.field private scale:F

.field scaleDetector:Landroid/view/ScaleGestureDetector;

.field final scrollBarPadding:F

.field final scrollBarWidth:F

.field scrollPaint:Landroid/graphics/Paint;

.field scrollPaintBorder:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F

.field private toNotify:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

.field verScroll:Landroid/graphics/RectF;

.field verScrollArea:Landroid/graphics/RectF;

.field zoomEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    const/4 v1, 0x3

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    const/16 p2, 0xa

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    const/4 p2, 0x4

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    const/16 p2, 0xa

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    const/4 p2, 0x4

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    const/4 p3, 0x3

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method private applyScaleAndTranslation()V
    .locals 2

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private child()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->pntBg:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->pntBg:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaint:Landroid/graphics/Paint;

    const-string v0, "#a6a6a6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    const-string v0, "#69222222"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private notifyScaleChanged()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-interface {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;->zoomChanged(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->toNotify:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->updateZoom(F)V

    :cond_1
    return-void
.end method

.method private setPreviewQuadrant(FF)Z
    .locals 4

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method


# virtual methods
.method public addListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dpToPixels(I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public drawScrollBars(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    mul-float v0, v0, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    div-float/2addr v3, v0

    const/high16 v0, -0x40800000    # -1.0f

    mul-float v3, v3, v0

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    mul-float v3, v3, v5

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    div-float/2addr v4, v3

    mul-float v4, v4, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    mul-float v4, v4, v0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getViewOrigin()Landroid/graphics/PointF;
    .locals 6

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->inRange(FFF)F

    move-result v0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v5, v1

    sub-float/2addr v2, v5

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->inRange(FFF)F

    move-result v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public getZoomFactor()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    return v0
.end method

.method public inRange(FFF)F
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->drawScrollBars(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->notifyScaleChanged()V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    :cond_0
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    if-nez p3, :cond_1

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    :cond_1
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    if-nez p3, :cond_2

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    :cond_2
    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p3, p3, v0

    add-float/2addr p3, p2

    invoke-virtual {p1, p3, p4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    neg-float p2, p2

    invoke-virtual {p1, p4, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    mul-float p3, p3, v0

    add-float/2addr p3, p2

    invoke-virtual {p1, p4, p3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    neg-float p2, p2

    invoke-virtual {p1, p2, p4}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->ZOOM:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->setPreviewQuadrant(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    if-ne p1, v2, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->setPreviewQuadrant(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    if-ne p1, p2, :cond_6

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    cmpl-float p2, p2, v0

    if-gez p2, :cond_7

    :cond_6
    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->ZOOM:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    if-ne p1, p2, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    mul-float p1, p1, v0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, p2

    mul-float v0, v0, v3

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    neg-float v2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    neg-float p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->applyScaleAndTranslation()V

    :cond_8
    return v1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public resetZoom(Z)V
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->notifyScaleChanged()V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$2;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->toggleZoom(Z)V

    :cond_2
    return-void
.end method

.method public setChild(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    return-void
.end method

.method public setNotifyOnChange(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->toNotify:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    return-void
.end method

.method public setZoomLevel(F)V
    .locals 2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->notifyScaleChanged()V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$1;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public toggleZoom(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->toNotify:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomOn(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public toggleZoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->toggleZoom(Z)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    return v0
.end method
