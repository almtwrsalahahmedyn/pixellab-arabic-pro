.class public Linfo/hoang8f/android/segmented/SegmentedGroup;
.super Landroid/widget/RadioGroup;


# instance fields
.field public mCheckedTextColor:I

.field public mTintColor:I

.field public final oneDP:I

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    const v0, 0x7f060086

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    const p2, 0x7f060086

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public final setTintColor(I)V
    .locals 0

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    const/4 p1, -0x1

    iput p1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    invoke-virtual {p0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public final updateBackground()V
    .locals 9

    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_6

    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup$LayoutParams;

    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    iget v6, v4, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v7, v4, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v4, v4, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v5, v6, v7, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v4

    iget v6, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    if-nez v4, :cond_0

    neg-int v4, v6

    invoke-virtual {v5, v2, v2, v4, v2}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    neg-int v4, v6

    invoke-virtual {v5, v2, v2, v2, v4}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f08020e

    const v5, 0x7f080214

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080211

    const v5, 0x7f080218

    :goto_1
    invoke-virtual {p0, v3, v4, v5}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v3

    const v4, 0x7f08020f

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f080215

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f080216

    :goto_3
    invoke-virtual {p0, v3, v4, v5}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup$LayoutParams;

    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    iget v7, v4, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v8, v4, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v4, v4, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v5, v7, v8, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v4

    if-nez v4, :cond_3

    neg-int v4, v6

    invoke-virtual {v5, v2, v2, v4, v2}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    goto :goto_4

    :cond_3
    neg-int v4, v6

    invoke-virtual {v5, v2, v2, v2, v4}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080210

    const v2, 0x7f080217

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08020c

    const v2, 0x7f080212

    goto :goto_5

    :cond_6
    if-ne v0, v1, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08020d

    const v2, 0x7f080213

    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    :cond_7
    return-void
.end method

.method public final updateBackground(Landroid/view/View;II)V
    .locals 5

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v1, v1, [[I

    const/4 v2, 0x0

    const v3, 0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    iget v2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    iget v3, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mCheckedTextColor:I

    const v4, -0x777778

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v1, p1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    move-object v0, p3

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->oneDP:I

    iget v2, p0, Linfo/hoang8f/android/segmented/SegmentedGroup;->mTintColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, -0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p3, 0x10100a0

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a0
    .end array-data

    :array_1
    .array-data 4
        -0x10100a7
        0x10100a0
    .end array-data
.end method
