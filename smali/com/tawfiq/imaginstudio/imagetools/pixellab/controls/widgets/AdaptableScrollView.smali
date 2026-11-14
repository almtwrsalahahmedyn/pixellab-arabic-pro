.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field maxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/R$styleable;->AdaptableScrollView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    if-lez v0, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method
