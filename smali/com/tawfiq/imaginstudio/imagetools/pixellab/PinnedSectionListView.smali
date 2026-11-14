.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

.field mRecycleSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->initView()V

    return-void
.end method

.method private clearTouchTarget()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchSlop:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->initShadow(Z)V

    return-void
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .locals 1

    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    :cond_0
    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;

    invoke-interface {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result p0

    return p0
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private performPinnedItemClick()Z
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->position:I

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget v5, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->position:I

    iget-wide v6, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->id:J

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public createPinnedShadow(I)V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mRecycleSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mRecycleSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;-><init>()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-interface {v1, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v3, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget v2, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_3

    move v2, v5

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->position:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->id:J

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    return-void
.end method

.method public destroyPinnedShadow()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mRecycleSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v0, v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-direct {p0, v3, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v0, v3, Landroid/graphics/PointF;->x:F

    iput v1, v3, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v3, :cond_5

    invoke-direct {p0, v3, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->performPinnedItemClick()Z

    :goto_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public ensureShadowForPosition(III)V
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->position:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->createPinnedShadow(I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    sub-int v0, p1, p2

    sub-int/2addr p3, v0

    invoke-virtual {p0, p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result p1

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-le p1, p3, :cond_4

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    if-gez p1, :cond_3

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    :cond_5
    :goto_0
    return-void
.end method

.method public findCurrentSectionPosition(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-lt p1, v1, :cond_0

    return v2

    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/SectionIndexer;

    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    :goto_0
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public findFirstVisibleSectionPosition(II)I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    const/4 v3, -0x1

    if-lt v2, v1, :cond_0

    return v3

    :cond_0
    add-int v2, p1, p2

    if-lt v2, v1, :cond_1

    sub-int p2, v1, p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    add-int v2, p1, v1

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public initShadow(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "#ffa0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#50a0a0a0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#00a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/AbsListView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eq p4, p1, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->recreatePinnedShadow()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recreatePinnedShadow()V
    .locals 3

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->ensureShadowForPosition(III)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    :goto_0
    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->initShadow(Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/ListView;->invalidate(IIII)V

    :cond_0
    return-void
.end method
