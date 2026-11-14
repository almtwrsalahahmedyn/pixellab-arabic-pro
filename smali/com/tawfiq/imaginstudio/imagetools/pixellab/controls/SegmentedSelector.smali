.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;
    }
.end annotation


# instance fields
.field aChoiceArea:Landroid/graphics/RectF;

.field additionalHorPadding:I

.field anIconArea:Landroid/graphics/RectF;

.field choices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;",
            ">;"
        }
    .end annotation
.end field

.field fullArea:Landroid/graphics/RectF;

.field hoverColor:I

.field itemHeight:I

.field itemWidth:I

.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;

.field padding:I

.field pntArrow:Landroid/graphics/Paint;

.field pntFill:Landroid/graphics/Paint;

.field pntStroke:Landroid/graphics/Paint;

.field pntText:Landroid/graphics/Paint;

.field pressedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

.field radius:I

.field selectedColor:I

.field selectedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

.field unselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->itemWidth:I

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->itemHeight:I

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->padding:I

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->additionalHorPadding:I

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->radius:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntArrow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->selectedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->selectedColor:I

    const-string v0, "#f5f3f0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->unselectedColor:I

    const-string v0, "#9d9d9d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->hoverColor:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pressedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;

    const/16 p2, 0x18

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->itemWidth:I

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->itemHeight:I

    const/16 p2, 0x8

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->padding:I

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->additionalHorPadding:I

    const/4 p2, 0x4

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->radius:I

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntArrow:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->selectedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->selectedColor:I

    const-string p2, "#f5f3f0"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->unselectedColor:I

    const-string p2, "#9d9d9d"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->hoverColor:I

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pressedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->init()V

    return-void
.end method

.method private actionClick(FF)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pressedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->getItemAtPos(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pressedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;->selected(I)V

    :cond_0
    return-void
.end method

.method private actionPress(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->getItemAtPos(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->playSoundEffect(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->setHovered(Z)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pressedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs addItems([I)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    invoke-direct {v5, p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    return-void
.end method

.method public varargs addItems([Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    invoke-direct {v5, p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    return-void
.end method

.method public varargs addItems([Ljava/lang/String;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    invoke-direct {v5, p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    return-void
.end method

.method public getArrowHeadFromId(I)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->arrowHead:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getItemAtPos(FF)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06003f

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->spToPx(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->selectedColor:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->radius:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->isSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->radius:I

    int-to-float v5, v2

    if-nez v1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntFill:Landroid/graphics/Paint;

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->drawRoundedRectCustom(Landroid/graphics/RectF;FZZLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->padding:I

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->additionalHorPadding:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    mul-int p2, p2, p1

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->itemWidth:I

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int v0, v0, p1

    add-int/2addr v0, p2

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->itemHeight:I

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->padding:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->updateAreas()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->actionClick(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pressedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->setHovered(Z)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pressedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->actionPress(FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return v2
.end method

.method public setListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;

    return-void
.end method

.method public setSelected(I)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->selectedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->selectedItem:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->setSelected(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateAreas()V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->choices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    add-float/2addr v1, v2

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->fullArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->itemWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->aChoiceArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->anIconArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method
