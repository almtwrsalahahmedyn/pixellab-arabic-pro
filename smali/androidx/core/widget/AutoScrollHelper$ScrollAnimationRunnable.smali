.class public final Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/core/widget/AutoScrollHelper;


# direct methods
.method public constructor <init>(Landroidx/core/widget/AutoScrollHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v2, v1, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v1, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    const/4 v3, 0x0

    iget-object v4, v1, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    if-eqz v2, :cond_1

    iput-boolean v3, v1, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v7, -0x1

    iput-wide v7, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iput-wide v5, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    :cond_1
    iget-wide v5, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v9, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v2, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v11, v2

    add-long/2addr v9, v11

    cmp-long v2, v5, v9

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_6

    invoke-virtual {v1}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v2, v1, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    iget-object v5, v1, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_4

    iput-boolean v3, v1, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    iget-wide v2, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    cmp-long v6, v2, v7

    if-eqz v6, :cond_5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v6

    const/high16 v7, -0x3f800000    # -4.0f

    mul-float v7, v7, v6

    mul-float v7, v7, v6

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v6, v6, v8

    add-float/2addr v6, v7

    iget-wide v7, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v7, v2, v7

    iput-wide v2, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    long-to-float v2, v7

    mul-float v2, v2, v6

    iget v3, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    check-cast v1, Landroidx/core/widget/ListViewAutoScrollHelper;

    iget-object v1, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->scrollListBy(I)V

    sget-object v1, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$1;

    invoke-virtual {v5, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_1
    iput-boolean v3, v1, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    return-void
.end method
