.class public Lcom/TG/tg;
.super Ljava/lang/Object;


# static fields
.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x3e

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/TG/tg;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x976s
        0x93ds
        0x938s
        0x92ds
        0x938s
        0x976s
        0x938s
        0x929s
        0x929s
        0x976s
        0x22as
        0x229s
        0x23bs
        0x22ds
        0x266s
        0x229s
        0x238s
        0x223s
        0x41bs
        0x41cs
        0x44fs
        0x41bs
        0x41ds
        0x44es
        0x44cs
        0x44cs
        0x44cs
        0x41as
        0x41cs
        0x44fs
        0x447s
        0x446s
        0x44ds
        0x44fs
        0x447s
        0x448s
        0x448s
        0x41cs
        0x44es
        0x44fs
        0x447s
        0x44ds
        0x447s
        0x44ds
        0x41cs
        0x419s
        0x449s
        0x448s
        0x449s
        0x44bs
        0xa82s
        0xa8as
        0xa9bs
        0xa8es
        0xae2s
        0xa86s
        0xa81s
        0xa89s
        0xae0s
        0x18as
        0x183s
        0x1f2s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TG(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$TG$0()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Lcom/TG/ۣۥۢۡ;->ۥۣ۟ۥ(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/TG/۟ۢۦۨ۠;->ۣ۟ۢۢۤ()I

    move-result v0

    invoke-static {v0}, Lcom/TG/ۦۥۥۧ;->ۧۤۦۣ(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/TG/ۦۥۥۧ;->۟ۢ۟ۥۢ(I)V

    return-void
.end method

.method static synthetic lambda$TG$1()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Lcom/TG/ۣۥۢۡ;->ۥۣ۟ۥ(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/TG/۟ۢۦۨ۠;->ۣ۟ۢۢۤ()I

    move-result v0

    invoke-static {v0}, Lcom/TG/ۦۥۥۧ;->ۧۤۦۣ(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/TG/ۦۥۥۧ;->۟ۢ۟ۥۢ(I)V

    return-void
.end method

.method public static ۡ۟ۤۤ()[S
    .locals 1

    invoke-static {}, Lcom/TG/ۥۧۢۥ;->۟ۢۥۦۦ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/TG/tg;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
