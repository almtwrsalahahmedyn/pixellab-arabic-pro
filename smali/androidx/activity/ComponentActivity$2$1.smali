.class public final Landroidx/activity/ComponentActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/activity/ComponentActivity$2;

.field public final synthetic val$requestCode:I

.field public final synthetic val$synchronousResult:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity$2;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$2$1;->this$1:Landroidx/activity/ComponentActivity$2;

    iput p2, p0, Landroidx/activity/ComponentActivity$2$1;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$2$1;->val$synchronousResult:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/ComponentActivity$2$1;->val$synchronousResult:Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    iget-object v0, v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->mValue:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/activity/ComponentActivity$2$1;->this$1:Landroidx/activity/ComponentActivity$2;

    iget-object v2, v1, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/HashMap;

    iget v3, p0, Landroidx/activity/ComponentActivity$2$1;->val$requestCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v0}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v3, v1, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
