.class public final Landroidx/recyclerview/widget/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Landroidx/recyclerview/widget/FastScroller;

    iget-object v2, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    iget v3, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int v4, v2, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, v1, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lez v4, :cond_0

    if-lt v3, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    iget-object v4, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget v8, v1, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int v9, v4, v8

    if-lez v9, :cond_1

    if-lt v8, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v1, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    iget-boolean v9, v1, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v9, :cond_2

    if-nez v7, :cond_2

    iget p1, v1, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_6

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_2

    :cond_2
    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v9, :cond_3

    int-to-float p1, p1

    int-to-float v7, v3

    div-float v9, v7, v6

    add-float/2addr v9, p1

    mul-float v9, v9, v7

    int-to-float p1, v2

    div-float/2addr v9, p1

    float-to-int p1, v9

    iput p1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    mul-int p1, v3, v3

    div-int/2addr p1, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    :cond_3
    iget-boolean p1, v1, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p1, :cond_4

    int-to-float p1, v0

    int-to-float v0, v8

    div-float v2, v0, v6

    add-float/2addr v2, p1

    mul-float v2, v2, v0

    int-to-float p1, v4

    div-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v8, v8

    div-int/2addr p1, v4

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    :cond_4
    iget p1, v1, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_6

    :cond_5
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    :cond_6
    :goto_2
    return-void
.end method
