.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;
.super Landroidx/appcompat/widget/AppCompatTextView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;
    }
.end annotation


# instance fields
.field DRAG_HANDLE_1:I

.field DRAG_HANDLE_2:I

.field currText:Ljava/lang/String;

.field dragId:I

.field escapeTouchFor:Landroid/widget/ScrollView;

.field fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field private frozen:Z

.field handle:Landroid/graphics/Rect;

.field handle1:Landroid/graphics/PointF;

.field handle1F:Landroid/graphics/PointF;

.field handle2:Landroid/graphics/PointF;

.field handle2F:Landroid/graphics/PointF;

.field handleDrawable:Landroid/graphics/Bitmap;

.field handleDrawable1:Landroid/graphics/Bitmap;

.field handleMargin:I

.field private maxHeight:I

.field paddingSides:I

.field previousPos:Landroid/graphics/PointF;

.field public selectionEnd:I

.field public selectionStart:I

.field showBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_2:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_1:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x19

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v3

    invoke-direct {v2, v1, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v2

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->paddingSides:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    const-string p1, "new text"

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->currText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_2:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_1:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v2

    invoke-direct {v1, p2, p2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->paddingSides:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    const-string p1, "new text"

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->currText:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateFonts()V

    return-void
.end method

.method private getRectToLeft(Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object v0
.end method

.method private getRectToRight(Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object v0
.end method

.method private updateFonts()V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const-class v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v3, 0x22

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setSelection(II)V

    return-void
.end method


# virtual methods
.method public createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-object v0
.end method

.method public dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget p1, v0, Landroid/graphics/PointF;->x:F

    mul-float p1, p1, p1

    iget p2, v0, Landroid/graphics/PointF;->y:F

    mul-float p2, p2, p2

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

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

.method public freezeRedraw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    return-void
.end method

.method public getCharIndexFromCoordinate(FF)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getFontsIds()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    return-object v0
.end method

.method public init()V
    .locals 4

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleDrawable:Landroid/graphics/Bitmap;

    const v1, 0x7f0801b7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleDrawable1:Landroid/graphics/Bitmap;

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleDrawable1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getRectToLeft(Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleDrawable:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getRectToRight(Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_2:I

    if-ne p1, v3, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v4

    invoke-direct {p1, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, p1}, Landroid/graphics/PointF;->offset(FF)V

    new-instance p1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    div-int/2addr v5, v2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-direct {p1, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, p1, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    if-le v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    new-instance p1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, v4, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v3, v2

    invoke-direct {p1, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, p1}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    div-int/2addr v5, v2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    if-ne p1, v4, :cond_2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    :cond_2
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    new-instance p1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v5, v3, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v2, v4

    invoke-direct {p1, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_1:I

    if-ne p1, v3, :cond_9

    new-instance p1, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v4

    invoke-direct {p1, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, p1}, Landroid/graphics/PointF;->offset(FF)V

    new-instance p1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    div-int/2addr v5, v2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-direct {p1, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, p1, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    iput v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    if-ge v5, v6, :cond_4

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    new-instance p1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, v4, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v3, v2

    invoke-direct {p1, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    div-int/2addr v5, v2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    if-ne p1, v4, :cond_5

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    :cond_5
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    new-instance p1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v5, v3, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v2, v4

    invoke-direct {p1, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_0

    :cond_6
    const/4 p1, -0x1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    goto/16 :goto_1

    :cond_7
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getRectToRight(Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object p1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getRectToLeft(Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v2

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_1:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_2:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    new-instance p1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->invalidate()V

    return v1
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    :cond_0
    return-void
.end method

.method public rectRad(Landroid/graphics/Rect;)F
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int p1, p1, v0

    add-int/2addr p1, v1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFontToSelected(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(IILcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateFonts()V

    return-void
.end method

.method public setFonts(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    return-void
.end method

.method public setParentTouchInterceptor(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setShowBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    return-void
.end method

.method public unfreezeRedraw()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->invalidate()V

    return-void
.end method

.method public updateBackgroundColor()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public updateSelection()V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const-class v3, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/BackgroundColorSpan;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    const/16 v4, 0xce

    const/16 v5, 0xff

    const/16 v6, 0x9c

    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateBackgroundColor()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$1;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
