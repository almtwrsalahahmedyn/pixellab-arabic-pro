.class public abstract Landroidx/activity/result/contract/ActivityResultContract;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createIntent(Ljava/lang/Object;)Landroid/content/Intent;
.end method

.method public getSynchronousResult(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
.end method
