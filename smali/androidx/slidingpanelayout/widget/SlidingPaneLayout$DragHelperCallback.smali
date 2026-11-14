.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;


# instance fields
.field public final synthetic this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final clampViewPositionHorizontal(Landroid/view/View;I)I
    .locals 3

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    sub-int p1, v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr p1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final clampViewPositionVertical(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    return p1
.end method

.method public final onEdgeDragStarted(II)V
    .locals 1

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return-void
.end method

.method public final onViewCaptured(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onViewDragStateChanged(I)V
    .locals 3

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget v0, v0, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v1, 0x0

    const/16 v2, 0x20

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_1
    return-void
.end method

.method public final onViewPositionChanged(Landroid/view/View;I)V
    .locals 4

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    iput p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    iget-object v1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, p2

    sub-int p2, v3, v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_3

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    add-int/2addr v2, v0

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-virtual {p1, v0, p2, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final onViewReleased(Landroid/view/View;F)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    cmpg-float v0, p2, v4

    if-ltz v0, :cond_0

    cmpl-float p2, p2, v4

    if-nez p2, :cond_1

    iget p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    :cond_0
    iget p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v2, p2

    :cond_1
    iget-object p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    cmpl-float p2, p2, v4

    if-gtz p2, :cond_3

    if-nez p2, :cond_4

    iget p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float p2, p2, v3

    if-lez p2, :cond_4

    :cond_3
    iget p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v0, p2

    :cond_4
    :goto_0
    iget-object p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final tryCaptureView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    return p1
.end method
