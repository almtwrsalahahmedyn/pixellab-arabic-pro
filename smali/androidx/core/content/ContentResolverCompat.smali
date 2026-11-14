.class public final Landroidx/core/content/ContentResolverCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8

    if-eqz p6, :cond_1

    :try_start_0
    monitor-enter p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p6, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Landroid/os/CancellationSignal;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p6, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Landroid/os/CancellationSignal;

    iget-boolean v1, p6, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v0, p6, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Landroid/os/CancellationSignal;

    monitor-exit p6

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_1
    instance-of p1, p0, Landroid/os/OperationCanceledException;

    if-eqz p1, :cond_2

    new-instance p0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {p0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw p0

    :cond_2
    throw p0
.end method
