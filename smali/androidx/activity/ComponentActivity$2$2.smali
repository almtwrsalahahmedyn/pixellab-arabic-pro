.class public final Landroidx/activity/ComponentActivity$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/activity/ComponentActivity$2;

.field public final synthetic val$e:Landroid/content/IntentSender$SendIntentException;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$2$2;->this$1:Landroidx/activity/ComponentActivity$2;

    iput p2, p0, Landroidx/activity/ComponentActivity$2$2;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$2$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/ComponentActivity$2$2;->val$e:Landroid/content/IntentSender$SendIntentException;

    const-string v2, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/activity/ComponentActivity$2$2;->this$1:Landroidx/activity/ComponentActivity$2;

    iget v3, p0, Landroidx/activity/ComponentActivity$2$2;->val$requestCode:I

    invoke-virtual {v2, v3, v1, v0}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    return-void
.end method
