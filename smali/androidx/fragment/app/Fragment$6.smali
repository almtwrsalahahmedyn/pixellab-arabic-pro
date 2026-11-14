.class public final Landroidx/fragment/app/Fragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/Fragment$6;->this$0:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final apply()Landroidx/activity/result/ActivityResultRegistry;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/Fragment$6;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v2, v1, Landroidx/activity/result/ActivityResultRegistryOwner;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/activity/result/ActivityResultRegistryOwner;

    invoke-interface {v1}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    :goto_0
    return-object v0
.end method
