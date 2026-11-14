.class public Landroidx/activity/MusicService;
.super Landroid/app/Service;


# static fields
.field private static final short:[S


# instance fields
.field private handler:Landroid/os/Handler;

.field private player:Landroid/media/MediaPlayer;

.field private final volumeWatcher:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x2f

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/activity/MusicService;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x3fcs
        0x3fes
        0x3f3s
        0x3f3s
        0x3c0s
        0x3ecs
        0x3ebs
        0x3e6s
        0x3f3s
        0x3fas
        0x46es
        0x45es
        0x446s
        0x44fs
        0x44fs
        0x44fs
        0x44fs
        0x44fs
        0x407s
        -0x23e7s
        -0x26a9s
        0xb23s
        0xb22s
        0xb39s
        0xb24s
        0xb2bs
        0xb24s
        0xb2es
        0xb2cs
        0xb39s
        0xb24s
        0xb22s
        0xb23s
        0xb52s
        0xb46s
        0xb57s
        0xb5as
        0xb5cs
        0x12bs
        0x13fs
        0x12es
        0x123s
        0x125s
        0x164s
        0x127s
        0x13as
        0x179s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 52

    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroidx/activity/MusicService$1;

    invoke-direct {v0, v1}, Landroidx/activity/MusicService$1;-><init>(Landroidx/activity/MusicService;)V

    iput-object v0, v1, Landroidx/activity/MusicService;->volumeWatcher:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroidx/activity/MusicService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3
    invoke-static {p0}, Landroidx/activity/MusicService;->ۢۡۢ۠(Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private createSilentNotification()Landroid/app/Notification;
    .locals 57

    move-object/from16 v6, p0

    const/4 v5, 0x0

    const/16 v4, 0x1a

    const/4 v3, 0x1

    invoke-static/range {}, Landroidx/activity/MusicService;->ۨۢۥ۟()[S

    move-result-object v19

    const v22, 0x39f

    const v20, 0x0

    const v21, 0xa

    invoke-static/range {v19 .. v22}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v1, v19

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۦۡ۟ۢ()I

    move-result v0

    if-lt v0, v4, :cond_0

    new-instance v2, Landroid/app/NotificationChannel;

    invoke-static/range {}, Landroidx/activity/MusicService;->ۨۢۥ۟()[S

    move-result-object v22

    const v25, 0x427

    const v23, 0xa

    const v24, 0xb

    invoke-static/range {v22 .. v25}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v2, v1, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {v2, v5, v5}, Landroidx/activity/ۨۨۦۡ;->ۧۧۦ۠(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Landroidx/activity/MusicService;->ۨۢۥ۟()[S

    move-result-object v21

    const v24, 0xb4d

    const v22, 0x15

    const v23, 0xc

    invoke-static/range {v21 .. v24}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroidx/activity/۟ۨۧ;->ۦ۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v0, v2}, Landroidx/activity/۟۠۠ۦۤ;->۟ۡۢۨ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۦۡ۟ۢ()I

    move-result v0

    if-lt v0, v4, :cond_1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v6, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۥۣۢۨ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۦۤ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۥۣۢۨ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/activity/۟ۨۧ;->۟ۢۡۦۤ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080084

    invoke-static {v0, v1}, Landroidx/activity/ۥۨۧۨ;->ۣۧۨۡ(Ljava/lang/Object;I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/activity/ۥۨۧۨ;->ۦۨۦ۠(Ljava/lang/Object;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/۟۠۠ۦۤ;->ۧۧۦۡ(Ljava/lang/Object;)Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static ۟ۢۡۡۨ(Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 2

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroidx/activity/MusicService;

    iget-object v1, p0, Landroidx/activity/MusicService;->volumeWatcher:Ljava/lang/Runnable;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣ۠ۨۤ(Ljava/lang/Object;)Landroid/app/Notification;
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/MusicService;

    invoke-direct {p0}, Landroidx/activity/MusicService;->createSilentNotification()Landroid/app/Notification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۡۢ۠(Ljava/lang/Object;)Landroid/os/Handler;
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/MusicService;

    iget-object v1, p0, Landroidx/activity/MusicService;->handler:Landroid/os/Handler;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۤۢۥۥ(Ljava/lang/Object;)Landroid/media/MediaPlayer;
    .locals 2

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroidx/activity/MusicService;

    iget-object v1, p0, Landroidx/activity/MusicService;->player:Landroid/media/MediaPlayer;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۨۢۥ۟()[S
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroidx/activity/MusicService;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 53

    move-object/from16 v2, p0

    invoke-super {v2}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v2, Landroidx/activity/MusicService;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v2}, Landroidx/activity/MusicService;->ۣ۠ۨۤ(Ljava/lang/Object;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/activity/۟ۨۧ;->ۣۧ۟ۤ(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2}, Landroidx/activity/MusicService;->ۢۡۢ۠(Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2}, Landroidx/activity/MusicService;->۟ۢۡۡۨ(Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/activity/۟۠۠ۦۤ;->ۤۧ۠۟(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 53

    move-object/from16 v2, p0

    const/4 v1, 0x0

    invoke-static {v2}, Landroidx/activity/MusicService;->ۤۢۥۥ(Ljava/lang/Object;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroidx/activity/MusicService;->ۤۢۥۥ(Ljava/lang/Object;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->۟ۧۦۨ(Ljava/lang/Object;)V

    invoke-static {v2}, Landroidx/activity/MusicService;->ۤۢۥۥ(Ljava/lang/Object;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->۟ۤۦۣۧ(Ljava/lang/Object;)V

    iput-object v1, v2, Landroidx/activity/MusicService;->player:Landroid/media/MediaPlayer;

    :cond_0
    invoke-static {v2}, Landroidx/activity/MusicService;->ۢۡۢ۠(Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Landroidx/activity/MusicService;->ۢۡۢ۠(Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/activity/۟ۨۧ;->ۦۦۢ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-super {v2}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
