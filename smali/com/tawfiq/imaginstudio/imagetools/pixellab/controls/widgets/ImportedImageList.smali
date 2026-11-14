.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;
    }
.end annotation


# static fields
.field private static final margin:F


# instance fields
.field backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;

.field private orientHorizontal:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->margin:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/R$styleable;->ImportedImageList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08010e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImportedImageList$K-VnkZPEkDOM7Kr96cdkeOaUnSA;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImportedImageList$K-VnkZPEkDOM7Kr96cdkeOaUnSA;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private clickedAt(FF)V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->select(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$K-VnkZPEkDOM7Kr96cdkeOaUnSA(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->updateImageList()V

    return-void
.end method

.method private select(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->setSelected(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;->selected(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateImageList()V
    .locals 9

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getUsedImageInfoBg()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v5

    if-eq v5, v3, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v2, 0x4

    if-eq v5, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    sget-object v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getUsedBitmapBg()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getBoundsAt(IF)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    aput-object v5, v2, v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    invoke-virtual {p0, v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getBoundsAt(IF)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v6, p0, v2, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Landroid/graphics/RectF;)V

    aput-object v6, v5, v4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v2

    invoke-virtual {p0, v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getBoundsAt(IF)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v6, p0, v2, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;ILandroid/graphics/RectF;)V

    aput-object v6, v5, v4

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->setSelected(Z)V

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iget-object v7, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->getBoundsAt(IF)Landroid/graphics/RectF;

    move-result-object v8

    invoke-direct {v6, p0, v4, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    aput-object v6, v5, v3

    move v3, v7

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->selectFirst()V

    return-void
.end method


# virtual methods
.method public getBoundsAt(IF)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p1, p1

    mul-float p1, p1, p2

    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    if-eqz p2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    sget p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->margin:F

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->orientHorizontal:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz p1, :cond_0

    array-length p1, p1

    mul-int v1, p1, p2

    :cond_0
    invoke-virtual {p0, v1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz p2, :cond_2

    array-length p2, p2

    mul-int v1, p2, p1

    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->clickedAt(FF)V

    :cond_0
    return v1
.end method

.method public selectFirst()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->list:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->select(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;

    return-void
.end method
