.class public final Landroidx/fragment/app/Fragment$8;
.super Landroidx/fragment/app/Fragment$OnPreAttachedListener;


# instance fields
.field public final synthetic this$0:Landroidx/fragment/app/Fragment;

.field public final synthetic val$callback:Landroidx/activity/result/ActivityResultCallback;

.field public final synthetic val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field public final synthetic val$ref:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$registryProvider:Landroidx/arch/core/util/Function;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/arch/core/util/Function;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$8;->this$0:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$8;->val$registryProvider:Landroidx/arch/core/util/Function;

    iput-object p3, p0, Landroidx/fragment/app/Fragment$8;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/Fragment$8;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iput-object p5, p0, Landroidx/fragment/app/Fragment$8;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onPreAttached()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/Fragment$8;->this$0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/Fragment$8;->val$registryProvider:Landroidx/arch/core/util/Function;

    invoke-interface {v2}, Landroidx/arch/core/util/Function;->apply()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/Fragment$8;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iget-object v4, p0, Landroidx/fragment/app/Fragment$8;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/fragment/app/Fragment$9;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment$8;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
