.class public abstract Landroidx/core/widget/AutoScrollHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final DEFAULT_ACTIVATION_DELAY:I


# instance fields
.field public final mActivationDelay:I

.field public mAlreadyDelayed:Z

.field public mAnimating:Z

.field public final mEdgeInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field public final mEdgeType:I

.field public mEnabled:Z

.field public final mMaximumEdges:[F

.field public final mMaximumVelocity:[F

.field public final mMinimumVelocity:[F

.field public mNeedsCancel:Z

.field public mNeedsReset:Z

.field public final mRelativeEdges:[F

.field public final mRelativeVelocity:[F

.field public mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

.field public final mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

.field public final mTarget:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    iput-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    new-array v5, v1, [F

    fill-array-data v5, :array_3

    iput-object v5, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v6, 0x44c4e000    # 1575.0f

    mul-float v6, v6, p1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    const v8, 0x439d8000    # 315.0f

    mul-float p1, p1, v8

    add-float/2addr p1, v7

    float-to-int p1, p1

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    const/4 v8, 0x0

    aput v6, v1, v8

    const/4 v9, 0x1

    aput v6, v1, v9

    int-to-float p1, p1

    div-float/2addr p1, v7

    aput p1, v5, v8

    aput p1, v5, v9

    iput v9, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    aput p1, v3, v8

    aput p1, v3, v9

    const p1, 0x3e4ccccd    # 0.2f

    aput p1, v2, v8

    aput p1, v2, v9

    const p1, 0x3a83126f    # 0.001f

    aput p1, v4, v8

    aput p1, v4, v9

    sget p1, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    const/16 p1, 0x1f4

    iput p1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    iput p1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static constrain(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public final computeTargetVelocity(IFFF)F
    .locals 3

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    mul-float v0, v0, p3

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v1

    sub-float/2addr p3, p2

    invoke-virtual {p0, p3, v0}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p2

    sub-float/2addr p2, v1

    iget-object p3, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/AccelerateInterpolator;

    cmpg-float v0, p2, v2

    if-gez v0, :cond_0

    neg-float p2, p2

    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p2

    neg-float p2, p2

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p2

    :goto_0
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p3, v0}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    cmpl-float p3, p2, v2

    if-nez p3, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v0, v0, p1

    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v1, v1, p1

    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget p1, v2, p1

    mul-float v0, v0, p4

    if-lez p3, :cond_3

    mul-float p2, p2, v0

    invoke-static {p2, v1, p1}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    return p1

    :cond_3
    neg-float p2, p2

    mul-float p2, p2, v0

    invoke-static {p2, v1, p1}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method public final constrainEdgeValue(FF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_2
    cmpg-float v3, p1, p2

    if-gez v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v3, p1

    return v3

    :cond_3
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p1, :cond_4

    if-ne v1, v2, :cond_4

    return v3

    :cond_4
    :goto_0
    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v1, v0, v3, v5}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v2, p2, p1, v3}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result p1

    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    iput v0, p2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iput p1, p2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    if-nez p1, :cond_4

    new-instance p1, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {p1, p0}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidx/core/widget/AutoScrollHelper;)V

    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    :cond_4
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez p1, :cond_5

    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    int-to-long v5, p1

    sget-object p1, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$1;

    invoke-virtual {v4, p2, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-virtual {p1}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->run()V

    :goto_0
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    :cond_6
    :goto_1
    return v1
.end method

.method public final requestStop()V
    .locals 6

    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v5, v4

    iget v4, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    if-le v5, v4, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    iput v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    invoke-virtual {v0, v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v1

    iput v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    iput-wide v2, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    :goto_1
    return-void
.end method

.method public final shouldAnimate()Z
    .locals 9

    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    iget v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/ListViewAutoScrollHelper;

    iget-object v3, v3, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    add-int v8, v7, v6

    if-lez v1, :cond_2

    if-lt v8, v4, :cond_3

    sub-int/2addr v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_3

    goto :goto_0

    :cond_2
    if-gez v1, :cond_0

    if-gtz v7, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :cond_5
    :goto_2
    return v2
.end method
