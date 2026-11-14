.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;


# instance fields
.field public final mFallbackOnBackPressed:Ljava/lang/Runnable;

.field public final mOnBackPressedCallbacks:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Landroidx/activity/ComponentActivity$1;)V

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    iget-boolean v2, v1, Landroidx/activity/OnBackPressedCallback;->mEnabled:Z

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/fragment/app/FragmentManager$1;

    const/4 v0, 0x1

    iget-object v1, v1, Landroidx/fragment/app/FragmentManager$1;->this$0:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    iget-object v0, v1, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v0, v0, Landroidx/activity/OnBackPressedCallback;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
