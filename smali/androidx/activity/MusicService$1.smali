.class Landroidx/activity/MusicService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final short:[S


# instance fields
.field final synthetic this$0:Landroidx/activity/MusicService;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/activity/MusicService$1;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xa5cs
        0xa48s
        0xa59s
        0xa54s
        0xa52s
    .end array-data
.end method

.method constructor <init>(Landroidx/activity/MusicService;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/activity/MusicService$1;->this$0:Landroidx/activity/MusicService;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟ۢۨ۠ۦ(Ljava/lang/Object;)Landroid/os/Handler;
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/MusicService;

    invoke-static {p0}, Landroidx/activity/MusicService;->access$000(Landroidx/activity/MusicService;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۡ۟()[S
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Landroidx/activity/MusicService$1;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۨۧۡ(Ljava/lang/Object;)Landroidx/activity/MusicService;
    .locals 2

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroidx/activity/MusicService$1;

    iget-object v1, p0, Landroidx/activity/MusicService$1;->this$0:Landroidx/activity/MusicService;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 55

    move-object/from16 v4, p0

    :try_start_0
    invoke-static {v4}, Landroidx/activity/MusicService$1;->ۨۨۧۡ(Ljava/lang/Object;)Landroidx/activity/MusicService;

    move-result-object v0

    invoke-static/range {}, Landroidx/activity/MusicService$1;->ۣ۟ۡ۟()[S

    move-result-object v34

    const v37, 0xa3d

    const v35, 0x0

    const v36, 0x5

    invoke-static/range {v34 .. v37}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroidx/activity/۟ۨۧ;->ۦ۠ۧ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۥ۟ۥ(Ljava/lang/Object;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroidx/activity/۟۠۠ۦۤ;->ۢۨۦ۠(Ljava/lang/Object;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/activity/ۨۨۦۡ;->۟ۢۦۣۡ(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v4}, Landroidx/activity/MusicService$1;->ۨۨۧۡ(Ljava/lang/Object;)Landroidx/activity/MusicService;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/MusicService$1;->۟ۢۨ۠ۦ(Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Landroidx/activity/MusicService$1;->ۨۨۧۡ(Ljava/lang/Object;)Landroidx/activity/MusicService;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/MusicService$1;->۟ۢۨ۠ۦ(Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v4, v2, v3}, Landroidx/activity/۟۠۠ۦۤ;->ۧۡ۟ۤ(Ljava/lang/Object;Ljava/lang/Object;J)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
