.class public Lcom/smalihelper/iran/CustomAlertDialog;
.super Ljava/lang/Object;


# static fields
.field private static final PREF_DIALOG_DISPLAYED:Ljava/lang/String;

.field private static final short:[S


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0xe9

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smalihelper/iran/CustomAlertDialog;->short:[S

    invoke-static {}, Lcom/smalihelper/iran/CustomAlertDialog;->ۦۡۦۣ()[S

    move-result-object v7

    const v10, 0x4ed

    const v8, 0x0

    const v9, 0xf

    invoke-static/range {v7 .. v10}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۣ۟ۦۣ([SIII)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v7

    sput-object v0, Lcom/smalihelper/iran/CustomAlertDialog;->PREF_DIALOG_DISPLAYED:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x489s
        0x484s
        0x48cs
        0x481s
        0x482s
        0x48as
        0x4a9s
        0x484s
        0x49es
        0x49ds
        0x481s
        0x48cs
        0x494s
        0x488s
        0x489s
        0x582s
        0x5afs
        0x5a7s
        0x5aas
        0x5a9s
        0x5a1s
        0x596s
        0x5b4s
        0x5a3s
        0x5a0s
        0x5a3s
        0x5b4s
        0x5a3s
        0x5a8s
        0x5a5s
        0x5a3s
        0x606s
        0x60bs
        0x603s
        0x60es
        0x60ds
        0x605s
        0x621s
        0x60ds
        0x617s
        0x60cs
        0x616s
        0x768s
        0x70ds
        0x70ds
        0x70ds
        0x70ds
        0x77bs
        0x77bs
        0x77bs
        0x77ds
        0x496s
        0x485s
        0x485s
        0x485s
        0x485s
        0x485s
        0x485s
        0x48bs
        0x486s
        0x48es
        0x483s
        0x480s
        0x488s
        0x4dcs
        0x4c1s
        0x49fs
        0x481s
        0x488s
        0x1d1s
        0x1c2s
        0x1dcs
        0x1c7s
        0x1b5s
        0x7d6s
        0x1b7s
        0x1bcs
        0x7d6s
        0x1b4s
        0x1b0s
        0x1d1s
        0x1dcs
        0x1b0s
        0x1d1s
        0x7d6s
        0x1cfs
        0x1b2s
        0x1bfs
        0x7d6s
        0x1d1s
        0x1b2s
        0x1dcs
        0x1b2s
        0x1bcs
        0x1das
        0x1c7s
        0x1d1s
        0x1b3s
        0x7d6s
        0x1b2s
        0x1b2s
        0x1b3s
        0x1c4s
        0x1bcs
        0x1d9s
        0x7d6s
        0x1b3s
        0x1b0s
        0x7d6s
        0x1d1s
        0x1b2s
        0x1dcs
        0x1c1s
        0x1des
        0x1bcs
        0x1b4s
        0x1d1s
        0x1dcs
        0x7d6s
        0x1b3s
        0x1cfs
        0x7d6s
        0x1d1s
        0x1b2s
        0x1dcs
        0x1dbs
        0x1d9s
        0x1bcs
        0x1dds
        0x1d1s
        0x1dcs
        0x7d6s
        -0x2035s
        -0x24fcs
        0xa37s
        0xa24s
        0xa3as
        0xa21s
        0xa37s
        0xa53s
        0x4es
        0x2fs
        0x51s
        0x4cs
        0x4as
        0x468s
        0x40ds
        0x40ds
        0x47bs
        0x47bs
        0x40ds
        0x40ds
        0x47bs
        0x47cs
        0x9c7s
        0x9a0s
        0x9d1s
        0x9d4s
        0x9d4s
        0x9a2s
        0x9dds
        0x9eas
        0x98fs
        0x98fs
        0x98fs
        0x98fs
        0x98fs
        0x98fs
        0x98fs
        0x98fs
        0xc0ds
        0xc68s
        0xc68s
        0xc68s
        0xc68s
        0xc68s
        0xc68s
        0xc68s
        0xc68s
        0x217s
        0x21as
        0x213s
        0x204s
        0x202s
        0x222s
        0x21fs
        0x202s
        0x21as
        0x213s
        0xc6ds
        0xc60s
        0x90cs
        0x903s
        0x909s
        0x91fs
        0x902s
        0x904s
        0x909s
        0x5e4s
        0x5ecs
        0x5fas
        0x5fas
        0x5e8s
        0x5ees
        0x5ecs
        0x32fs
        0x322s
        0xa91s
        0xa9es
        0xa94s
        0xa82s
        0xa9fs
        0xa99s
        0xa94s
        0xbffs
        0xbf6s
        0xbf7s
        0xbeds
        0xbb7s
        0xbeds
        0xbeds
        0xbffs
        0x356s
        0x35bs
        0x353s
        0x35es
        0x35ds
        0x355s
        0x371s
        0x35ds
        0x347s
        0x35cs
        0x346s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/smalihelper/iran/CustomAlertDialog;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/smalihelper/iran/CustomAlertDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/smalihelper/iran/CustomAlertDialog;->ۣ۟ۤۢ۟(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static ۣ۟ۤۢ۟(Ljava/lang/Object;)Landroid/content/Context;
    .locals 2

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/smalihelper/iran/CustomAlertDialog;

    iget-object v1, p0, Lcom/smalihelper/iran/CustomAlertDialog;->context:Landroid/content/Context;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۦۡۦۣ()[S
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/smalihelper/iran/CustomAlertDialog;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public showAlertDialog()V
    .locals 0

    return-void
.end method
