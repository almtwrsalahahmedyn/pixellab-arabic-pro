.class public Lcom/signcheck/check;
.super Ljava/lang/Object;


# static fields
.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x3e

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/signcheck/check;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xcb4s
        0xcffs
        0xcfas
        0xcefs
        0xcfas
        0xcb4s
        0xcfas
        0xcebs
        0xcebs
        0xcb4s
        0x871s
        0x872s
        0x860s
        0x876s
        0x83ds
        0x872s
        0x863s
        0x878s
        0x6d1s
        0x6d6s
        0x685s
        0x6d1s
        0x6d7s
        0x684s
        0x686s
        0x686s
        0x686s
        0x6d0s
        0x6d6s
        0x685s
        0x68ds
        0x68cs
        0x687s
        0x685s
        0x68ds
        0x682s
        0x682s
        0x6d6s
        0x684s
        0x685s
        0x68ds
        0x687s
        0x68ds
        0x687s
        0x6d6s
        0x6d3s
        0x683s
        0x682s
        0x683s
        0x681s
        0xab1s
        0xab9s
        0xaa8s
        0xabds
        0xad1s
        0xab5s
        0xab2s
        0xabas
        0xad3s
        0x9cfs
        0x9c6s
        0x9b7s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SignCheck(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$SignCheck$0()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۣ۟ۤۤۧ(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۣ۟ۧۢ۟()I

    move-result v0

    invoke-static {v0}, Lcom/signcheck/ۨ۠ۥ۟;->ۣۧۦۤ(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/signcheck/ۢۢ;->۟ۥۥۣۨ(I)V

    return-void
.end method

.method static synthetic lambda$SignCheck$1()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Lcom/signcheck/۟ۧ۟ۦۨ;->ۣ۟ۤۤۧ(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->ۣ۟ۧۢ۟()I

    move-result v0

    invoke-static {v0}, Lcom/signcheck/ۨ۠ۥ۟;->ۣۧۦۤ(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/signcheck/ۢۢ;->۟ۥۥۣۨ(I)V

    return-void
.end method

.method public static ۤ۟ۧۨ()[S
    .locals 1

    invoke-static {}, Lcom/signcheck/ۨ۠ۥ۟;->۟۠ۡۢۧ()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/signcheck/check;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
