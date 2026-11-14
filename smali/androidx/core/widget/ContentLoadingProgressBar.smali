.class public Landroidx/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;


# instance fields
.field public final mDelayedHide:Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;

.field public final mDelayedShow:Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;

    invoke-direct {p1, p0}, Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;

    new-instance p1, Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs;

    invoke-direct {p1, p0}, Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Landroidx/core/widget/-$$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
