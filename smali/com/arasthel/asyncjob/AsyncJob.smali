.class public final Lcom/arasthel/asyncjob/AsyncJob;
.super Ljava/lang/Object;


# static fields
.field public static final uiHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/arasthel/asyncjob/AsyncJob;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/arasthel/asyncjob/AsyncJob$2;

    invoke-direct {v1, p0}, Lcom/arasthel/asyncjob/AsyncJob$2;-><init>(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V
    .locals 2

    sget-object v0, Lcom/arasthel/asyncjob/AsyncJob;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arasthel/asyncjob/AsyncJob$1;

    invoke-direct {v1, p0}, Lcom/arasthel/asyncjob/AsyncJob$1;-><init>(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
