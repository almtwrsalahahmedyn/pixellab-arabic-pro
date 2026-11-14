.class public final Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;
.super Landroidx/activity/result/contract/ActivityResultContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 5

    check-cast p1, Landroidx/activity/result/IntentSenderRequest;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string v2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    iget-object v2, p1, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    invoke-direct {v1, v2}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/activity/result/IntentSenderRequest$Builder;->mFillInIntent:Landroid/content/Intent;

    iget v2, p1, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    iput v2, v1, Landroidx/activity/result/IntentSenderRequest$Builder;->mFlagsValues:I

    iget p1, p1, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    iput p1, v1, Landroidx/activity/result/IntentSenderRequest$Builder;->mFlagsMask:I

    new-instance p1, Landroidx/activity/result/IntentSenderRequest;

    iget-object v2, v1, Landroidx/activity/result/IntentSenderRequest$Builder;->mFillInIntent:Landroid/content/Intent;

    iget v3, v1, Landroidx/activity/result/IntentSenderRequest$Builder;->mFlagsMask:I

    iget v4, v1, Landroidx/activity/result/IntentSenderRequest$Builder;->mFlagsValues:I

    iget-object v1, v1, Landroidx/activity/result/IntentSenderRequest$Builder;->mIntentSender:Landroid/content/IntentSender;

    invoke-direct {p1, v1, v2, v3, v4}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    :cond_0
    const-string v1, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/activity/result/ActivityResult;

    invoke-direct {v0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method
