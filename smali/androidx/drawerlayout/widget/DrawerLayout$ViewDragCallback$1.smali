.class public final Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, v1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    iget v2, v2, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x5

    iget-object v9, v1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v7, :cond_2

    invoke-virtual {v9, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    add-int/2addr v11, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    sub-int/2addr v11, v2

    :goto_2
    if-eqz v10, :cond_8

    if-eqz v7, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v2, v11, :cond_4

    :cond_3
    if-nez v7, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v11, :cond_8

    :cond_4
    invoke-virtual {v9, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget-object v1, v1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1, v10, v11, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    iput-boolean v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    invoke-virtual {v9}, Landroid/view/ViewGroup;->invalidate()V

    if-ne v5, v6, :cond_5

    const/4 v6, 0x5

    :cond_5
    invoke-virtual {v9, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v9, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_6
    iget-boolean v1, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v10, v12

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v4, v2, :cond_7

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v3, v9, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :cond_8
    return-void
.end method
