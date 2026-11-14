.class public Landroidx/activity/sbotGuard;
.super Ljava/lang/Object;


# static fields
.field private static final AMBER:I

.field private static final AMBER_DIM:I

.field private static final AMBER_GLOW:I

.field private static final AMBER_RING:I

.field private static final BG:I

.field private static final BORDER:I

.field private static final BOX_BG:I

.field private static final BOX_BORDER:I

.field private static final BTN_TEXT:I

.field private static final DIVIDER_MID:I

.field private static final PREF_COUNT:Ljava/lang/String;

.field private static final PREF_LOCKED:Ljava/lang/String;

.field private static final PREF_NAME:Ljava/lang/String;

.field private static final RED:I

.field private static final RED_BORDER:I

.field private static final RED_DIM:I

.field private static final SCAN_COLOR:I

.field private static final SHA1:Ljava/lang/String;

.field private static final SURFACE:I

.field private static final TELEGRAM_URL:Ljava/lang/String;

.field private static final TEXT_1:I

.field private static final TEXT_2:I

.field private static final TEXT_3:I

.field private static final short:[S


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x31e

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/activity/sbotGuard;->short:[S

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v15

    const v18, 0x58c

    const v16, 0x0

    const v17, 0x5

    invoke-static/range {v15 .. v18}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v15

    sput-object v0, Landroidx/activity/sbotGuard;->PREF_COUNT:Ljava/lang/String;

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v28

    const v31, 0x769

    const v29, 0x5

    const v30, 0x5

    invoke-static/range {v28 .. v31}, Landroidx/activity/۟۠۠ۦۤ;->ۥۡ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    sput-object v0, Landroidx/activity/sbotGuard;->PREF_LOCKED:Ljava/lang/String;

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v23

    const v26, 0x449

    const v24, 0xa

    const v25, 0x4

    invoke-static/range {v23 .. v26}, Landroidx/activity/۟۠۠ۦۤ;->ۥۡ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    sput-object v0, Landroidx/activity/sbotGuard;->PREF_NAME:Ljava/lang/String;

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v29

    const v32, 0x3f3

    const v30, 0xe

    const v31, 0x3b

    invoke-static/range {v29 .. v32}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    sput-object v0, Landroidx/activity/sbotGuard;->SHA1:Ljava/lang/String;

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v35

    const v38, 0x564

    const v36, 0x49

    const v37, 0x16

    invoke-static/range {v35 .. v38}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    sput-object v0, Landroidx/activity/sbotGuard;->TELEGRAM_URL:Ljava/lang/String;

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v32

    const v35, 0x95e

    const v33, 0x5f

    const v34, 0x7

    invoke-static/range {v32 .. v35}, Landroidx/activity/۟۠۠ۦۤ;->ۥۡ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->BG:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v34

    const v37, 0xc04

    const v35, 0x66

    const v36, 0x7

    invoke-static/range {v34 .. v37}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->SURFACE:I

    invoke-static {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v6

    const v9, 0x389

    const v7, 0x6d

    const v8, 0x7

    invoke-static/range {v6 .. v9}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v6

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->BORDER:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v31

    const v34, 0x14e

    const v32, 0x74

    const v33, 0x7

    invoke-static/range {v31 .. v34}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->AMBER:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v40

    const v43, 0xa8f

    const v41, 0x7b

    const v42, 0x7

    invoke-static/range {v40 .. v43}, Landroidx/activity/۟۠۠ۦۤ;->ۥۡ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->AMBER_DIM:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v16

    const v19, 0xc45

    const v17, 0x82

    const v18, 0x7

    invoke-static/range {v16 .. v19}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->AMBER_GLOW:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v15

    const v18, 0x2f1

    const v16, 0x89

    const v17, 0x9

    invoke-static/range {v15 .. v18}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v15

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->AMBER_RING:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v16

    const v19, 0xa4e

    const v17, 0x92

    const v18, 0x7

    invoke-static/range {v16 .. v19}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->RED:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v22

    const v25, 0x5b0

    const v23, 0x99

    const v24, 0x7

    invoke-static/range {v22 .. v25}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->RED_DIM:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v27

    const v30, 0x359

    const v28, 0xa0

    const v29, 0x7

    invoke-static/range {v27 .. v30}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->RED_BORDER:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v16

    const v19, 0x9e3

    const v17, 0xa7

    const v18, 0x7

    invoke-static/range {v16 .. v19}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->TEXT_1:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v19

    const v22, 0x8db

    const v20, 0xae

    const v21, 0x7

    invoke-static/range {v19 .. v22}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->TEXT_2:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v40

    const v43, 0x843

    const v41, 0xb5

    const v42, 0x7

    invoke-static/range {v40 .. v43}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->TEXT_3:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v18

    const v21, 0x629

    const v19, 0xbc

    const v20, 0x7

    invoke-static/range {v18 .. v21}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->BOX_BG:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v21

    const v24, 0x56c

    const v22, 0xc3

    const v23, 0x7

    invoke-static/range {v21 .. v24}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->BOX_BORDER:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v26

    const v29, 0x7d6

    const v27, 0xca

    const v28, 0x7

    invoke-static/range {v26 .. v29}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->BTN_TEXT:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v14

    const v17, 0x2f4

    const v15, 0xd1

    const v16, 0x9

    invoke-static/range {v14 .. v17}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v14

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->SCAN_COLOR:I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v24

    const v27, 0x3a6

    const v25, 0xda

    const v26, 0x7

    invoke-static/range {v24 .. v27}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v0

    sput v0, Landroidx/activity/sbotGuard;->DIVIDER_MID:I

    return-void

    :array_0
    .array-data 2
        0x5f4s
        0x5efs
        0x5d3s
        0x5e0s
        0x5efs
        0x711s
        0x70as
        0x736s
        0x70fs
        0x705s
        0x431s
        0x42as
        0x416s
        0x439s
        0x396s
        0x3c4s
        0x3c9s
        0x3c1s
        0x3cbs
        0x3c9s
        0x392s
        0x390s
        0x3c9s
        0x395s
        0x3c7s
        0x3c9s
        0x3c1s
        0x3c7s
        0x3c9s
        0x3c2s
        0x3c1s
        0x3c9s
        0x391s
        0x3c7s
        0x3c9s
        0x397s
        0x3cas
        0x3c9s
        0x3c1s
        0x397s
        0x3c9s
        0x3c0s
        0x3c3s
        0x3c9s
        0x392s
        0x390s
        0x3c9s
        0x396s
        0x395s
        0x3c9s
        0x391s
        0x3c2s
        0x3c9s
        0x3c6s
        0x395s
        0x3c9s
        0x3c4s
        0x3c0s
        0x3c9s
        0x395s
        0x391s
        0x3c9s
        0x3cas
        0x391s
        0x3c9s
        0x3cas
        0x3c0s
        0x3c9s
        0x395s
        0x3c6s
        0x3c9s
        0x3c2s
        0x3c1s
        0x50cs
        0x510s
        0x510s
        0x514s
        0x517s
        0x55es
        0x54bs
        0x54bs
        0x510s
        0x54as
        0x509s
        0x501s
        0x54bs
        0x530s
        0x525s
        0x533s
        0x522s
        0x52ds
        0x535s
        0x53bs
        0x530s
        0x523s
        0x97ds
        0x96es
        0x96bs
        0x96es
        0x968s
        0x96es
        0x918s
        0xc27s
        0xc34s
        0xc46s
        0xc34s
        0xc40s
        0xc35s
        0xc45s
        0x3aas
        0x3b9s
        0x3cfs
        0x3b8s
        0x3b9s
        0x3bbs
        0x3b9s
        0x16ds
        0x108s
        0x17bs
        0x177s
        0x10bs
        0x17es
        0x10cs
        0xaacs
        0xabes
        0xac9s
        0xabes
        0xabas
        0xabfs
        0xabfs
        0xc66s
        0xc76s
        0xc01s
        0xc77s
        0xc7ds
        0xc75s
        0xc75s
        0x2d2s
        0x2b7s
        0x2c4s
        0x2c8s
        0x2b4s
        0x2c1s
        0x2b3s
        0x2c5s
        0x2c1s
        0xa6ds
        0xa0bs
        0xa08s
        0xa7as
        0xa7as
        0xa7as
        0xa7as
        0x593s
        0x581s
        0x5f1s
        0x580s
        0x585s
        0x580s
        0x585s
        0x37as
        0x36bs
        0x36fs
        0x369s
        0x318s
        0x369s
        0x318s
        0x9c0s
        0x9a5s
        0x9d2s
        0x9a5s
        0x9d3s
        0x9a5s
        0x9d4s
        0x8f8s
        0x8ecs
        0x899s
        0x8ecs
        0x89ds
        0x89as
        0x8e3s
        0x860s
        0x870s
        0x806s
        0x877s
        0x871s
        0x875s
        0x875s
        0x60as
        0x619s
        0x611s
        0x619s
        0x611s
        0x618s
        0x619s
        0x54fs
        0x55cs
        0x52as
        0x55ds
        0x55cs
        0x55es
        0x55cs
        0x7f5s
        0x7e6s
        0x797s
        0x7e6s
        0x7ees
        0x7e6s
        0x7e6s
        0x2d7s
        0x2b2s
        0x2c1s
        0x2cds
        0x2b1s
        0x2c4s
        0x2b6s
        0x2cds
        0x2cds
        0x385s
        0x397s
        0x3e3s
        0x394s
        0x396s
        0x395s
        0x39es
        0xa79s
        0xa62s
        0xa5es
        0xa71s
        0x66cs
        0x677s
        0x64bs
        0x672s
        0x678s
        0x76ds
        0x73fs
        0x732s
        0x73as
        0x730s
        0x732s
        0x769s
        0x76bs
        0x732s
        0x76es
        0x73cs
        0x732s
        0x73as
        0x73cs
        0x732s
        0x739s
        0x73as
        0x732s
        0x76as
        0x73cs
        0x732s
        0x76cs
        0x731s
        0x732s
        0x73as
        0x76cs
        0x732s
        0x73bs
        0x738s
        0x732s
        0x769s
        0x76bs
        0x732s
        0x76ds
        0x76es
        0x732s
        0x76as
        0x739s
        0x732s
        0x73ds
        0x76es
        0x732s
        0x73fs
        0x73bs
        0x732s
        0x76es
        0x76as
        0x732s
        0x731s
        0x76as
        0x732s
        0x731s
        0x73bs
        0x732s
        0x76es
        0x73ds
        0x732s
        0x739s
        0x73as
        0x1e7s
        0x1fcs
        0x1c0s
        0x1f3s
        0x1fcs
        0x68bs
        0x690s
        0x6acs
        0x69fs
        0x690s
        0x2e4s
        0x2ffs
        0x2c3s
        0x2fas
        0x2f0s
        0x287s
        0x28as
        0x296s
        0x28es
        0x287s
        0x21fs
        0x212s
        0x20es
        0x216s
        0x21fs
        0x2afs
        0x2a9s
        0x2bas
        0x2b5s
        0x2a8s
        0x2b7s
        0x2bas
        0x2afs
        0x2b2s
        0x2b4s
        0x2b5s
        0x282s
        0x3cbs
        0x3d0s
        0x3d9s
        0x3a9s
        0x245s
        0x250s
        0x252s
        0x238s
        0xaf8s
        0x8dfs
        0x8ccs
        0x8b8s
        0x8bas
        0x8bas
        0x8bas
        0x8bas
        0x8bas
        0x8bas
        0x7bds
        0x7ads
        0x7afs
        0x7a2s
        0x7abs
        0x796s
        0x7b9s
        0x7a9s
        0x7abs
        0x7a6s
        0x7afs
        0x793s
        0x24cs
        0x241s
        0x25ds
        0x245s
        0x24cs
        0x43as
        0x437s
        0x42bs
        0x433s
        0x43as
        0x1d2s
        0x1d4s
        0x1c7s
        0x1c8s
        0x1d5s
        0x1cas
        0x1c7s
        0x1d2s
        0x1cfs
        0x1c9s
        0x1c8s
        0x1ffs
        0x2f1s
        0x2f7s
        0x2e4s
        0x2ebs
        0x2f6s
        0x2e9s
        0x2e4s
        0x2f1s
        0x2ecs
        0x2eas
        0x2ebs
        0x2dcs
        0x64cs
        0x641s
        0x65ds
        0x645s
        0x64cs
        0x855s
        0x858s
        0x844s
        0x85cs
        0x855s
        0x7es
        0xbs
        0x7bs
        0x61fs
        0x18s
        0x7bs
        0x15s
        0x12s
        0x7ds
        0x7ds
        0x61fs
        0x7as
        0x79s
        0x61fs
        0x18s
        0x7as
        0x18s
        0x79s
        0x61fs
        0x18s
        0x7bs
        0x15s
        0x8s
        0x17s
        0x75s
        0x7ds
        0x727s
        0x730s
        0x730s
        0x73ds
        0x731s
        0x72bs
        0x725s
        0x73ds
        0x752s
        0x71as
        0x752s
        0x753s
        0x2d91s
        0x2f0s
        0x2f7s
        0x2eas
        0x290s
        0x2ebs
        0x4fas
        0x2f9s
        0x29fs
        0x29cs
        0x290s
        0x79as
        0x7f9s
        0x797s
        0x78as
        0x795s
        0x7f7s
        0x7ffs
        0x19ds
        0x787s
        0x7f7s
        0x78cs
        0x19ds
        0x788s
        0x79as
        0x7f9s
        0x790s
        0xf24s
        0xf53s
        0xf44s
        0x943s
        0xf44s
        0xf27s
        0xf46s
        0xf56s
        0xf4cs
        0xf44s
        0xf52s
        0x943s
        0xf27s
        0xf44s
        0x943s
        0xf29s
        0xf49s
        0xf54s
        0xf44s
        0xf4bs
        0xf21s
        0x943s
        0xf26s
        0xf5as
        0x943s
        0xf46s
        0xf56s
        0xf4cs
        0xf44s
        0xf52s
        0x943s
        0x937s
        0x924s
        0x943s
        0xf44s
        0xf27s
        0xf52s
        0xf50s
        0xf26s
        0xf29s
        0x94ds
        0x943s
        0xf21s
        0xf4cs
        0x943s
        0xf29s
        0xf20s
        0xf2bs
        0xf25s
        0x943s
        0xf4fs
        0xf24s
        0xf44s
        0xf51s
        0xf20s
        0x943s
        0xf26s
        0xf5as
        0xf52s
        0xf55s
        0xf28s
        0xf44s
        0x943s
        0xf27s
        0xf27s
        0xf4ds
        0xf54s
        0xf52s
        0x94ds
        0xfafs
        0xfcds
        0xfdas
        0xfcds
        0x9cas
        0xfa0s
        0xfd3s
        0xfacs
        0xfa0s
        0x9cas
        0xfads
        0xfdas
        0xfcds
        0xff5s
        0x1es
        0x69s
        0x7es
        0x679s
        0x7es
        0x1ds
        0x7cs
        0x6cs
        0x76s
        0x7es
        0x68s
        0x679s
        0x1cs
        0x1fs
        0x679s
        0x71s
        0x68s
        0x1fs
        0x7es
        0x1cs
        0x75s
        0x679s
        0x60ds
        0x61es
        0x679s
        0x13s
        0x74s
        0x73s
        0x11s
        0x13s
        0x679s
        0x60s
        0x1ds
        0x10s
        0x679s
        0x1cs
        0x60s
        0x1ds
        0x11s
        0x1cs
        0x7es
        0x73s
        0x679s
        0x7as
        0x1as
        0x72s
        0x68s
        0x679s
        0x76s
        0x1bs
        0x70s
        0x679s
        0x1cs
        0x1fs
        0x679s
        0x7es
        0x1ds
        0x7cs
        0x6cs
        0x76s
        0x7es
        0x68s
        0x679s
        0x7es
        0x1ds
        0x68s
        0x6as
        0x1cs
        0x13s
        0x677s
        0x679s
        0x11s
        0x13s
        0x71s
        0x76s
        0x11s
        0x679s
        0x7as
        0x1fs
        0x1es
        0x679s
        0x1cs
        0x6cs
        0x76s
        0x68s
        0x1es
        0x679s
        0x63s
        0x13s
        0x68s
        0x679s
        0x1cs
        0x6cs
        0x68s
        0x74s
        0x679s
        0x71s
        0x1es
        0x677s
        0x653s
        0x653s
        0x679s
        0x1ds
        0x6fs
        0x1cs
        0x7es
        0x1fs
        0x679s
        0x6as
        0x1ds
        0x7es
        0x1cs
        0x73s
        0x1as
        0x679s
        0x11s
        0x77s
        0x6cs
        0x11s
        0x6cs
        0x13s
        0x73s
        0x1as
        0x55s
        0x679s
        0x13s
        0x16s
        0x68s
        0x75s
        0x10s
        0x679s
        0x7cs
        0x1ds
        0x63s
        0x7es
        0x78s
        0x679s
        0x73s
        0x72s
        0x71s
        0x13s
        0x73s
        0x679s
        0x1es
        0x69s
        0x7es
        0x679s
        0x7es
        0x1ds
        0x7cs
        0x6cs
        0x76s
        0x7es
        0x68s
        0x679s
        0x11s
        0x73s
        0x1fs
        0x6bs
        0x13s
        0x1ds
        0x679s
        0x7es
        0x1ds
        0x7cs
        0x6cs
        0x76s
        0x7es
        0x68s
        0x679s
        0x7es
        0x1ds
        0x68s
        0x6as
        0x1cs
        0x13s
        0x679s
        0x1cs
        0x71s
        0x7es
        0x6ds
        0x68s
        0x70s
        0x12s
        0x677s
        0x4fds
        0x491s
        0x4e5s
        0x49ds
        0x493s
        0x2f7s
        0x4f0s
        0x493s
        0x491s
        0x4e4s
        0x4f9s
        0x4fes
        0x2f7s
        0x4f0s
        0x493s
        0x4e6s
        0x4e4s
        0x492s
        0x49ds
        0x4fes
        0x2f7s
        0x2345s
        0x1f2s
        0x1ees
        0x1ees
        0x1eas
        0x1e9s
        0x1a0s
        0x1b5s
        0x1b5s
        0x1ees
        0x1b4s
        0x1f7s
        0x1ffs
        0x1b5s
        0x1ces
        0x1dbs
        0x1cds
        0x1dcs
        0x1d3s
        0x1cbs
        0x1c5s
        0x1ces
        0x1dds
        0x97bs
        0x96bs
        0x969s
        0x964s
        0x96ds
        0x950s
        0x6fds
        0x6eds
        0x6efs
        0x6e2s
        0x6ebs
        0x6d7s
        0x730s
        0x73ds
        0x721s
        0x739s
        0x730s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->۠۟ۨۡ(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 38
    invoke-static/range {p0 .. p9}, Landroidx/activity/sbotGuard;->ۣ۟۠ۤۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;JJ)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/activity/sbotGuard;->۟ۡۥۣۤ(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Landroidx/activity/sbotGuard;->ۤ۟ۨۢ(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Landroidx/activity/sbotGuard;->ۢۡۡۢ(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->۠ۧ۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static animateEntrance(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 62

    move/from16 v20, p9

    move-object/from16 v19, p8

    move-object/from16 v18, p7

    move-object/from16 v17, p6

    move-object/from16 v16, p5

    move-object/from16 v15, p4

    move-object/from16 v14, p3

    move-object/from16 v13, p2

    move-object/from16 v12, p1

    move-object/from16 v11, p0

    const/4 v2, 0x0

    invoke-static {v11, v2}, Landroidx/activity/۟ۨۧ;->۟ۦۢۧ(Ljava/lang/Object;F)V

    move/from16 v0, v20

    int-to-float v2, v0

    invoke-static {v11, v2}, Landroidx/activity/۟۠۠ۦۤ;->ۣۥۤۢ(Ljava/lang/Object;F)V

    const-wide/16 v4, 0x50

    const-wide/16 v6, 0x168

    const/4 v8, 0x1

    move/from16 v0, v20

    int-to-float v9, v0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-static/range {v3 .. v10}, Landroidx/activity/sbotGuard;->ۣۣ۟۟۟(Ljava/lang/Object;JJZFF)V

    const/4 v2, 0x0

    invoke-static {v12, v2}, Landroidx/activity/۟ۨۧ;->۟ۦۢۧ(Ljava/lang/Object;F)V

    move/from16 v0, v20

    neg-int v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-static {v12, v2}, Landroidx/activity/۟۠۠ۦۤ;->ۣۥۤۢ(Ljava/lang/Object;F)V

    const-wide/16 v4, 0x1a4

    const-wide/16 v6, 0x140

    const/4 v8, 0x1

    move/from16 v0, v20

    neg-int v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float v9, v2, v3

    const/4 v10, 0x0

    move-object v3, v12

    invoke-static/range {v3 .. v10}, Landroidx/activity/sbotGuard;->ۣۣ۟۟۟(Ljava/lang/Object;JJZFF)V

    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroidx/activity/۟ۨۧ;->۟ۦۢۧ(Ljava/lang/Object;F)V

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v13, v2}, Landroidx/activity/ۥۨۧۨ;->ۣۥ۟۟(Ljava/lang/Object;F)V

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v13, v2}, Landroidx/activity/ۥۨۧۨ;->ۡۤۢ۟(Ljava/lang/Object;F)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1a4

    invoke-static {v13, v2, v3, v4, v5}, Landroidx/activity/sbotGuard;->۟۠۠۠ۤ(Ljava/lang/Object;JJ)V

    const-wide/16 v4, 0x280

    const-wide/16 v6, 0x140

    const/high16 v8, 0x41200000    # 10.0f

    move-object v3, v14

    invoke-static/range {v3 .. v8}, Landroidx/activity/sbotGuard;->ۡۨۤۥ(Ljava/lang/Object;JJF)V

    const-wide/16 v4, 0x2c6

    const-wide/16 v6, 0x140

    const/high16 v8, 0x41200000    # 10.0f

    move-object v3, v15

    invoke-static/range {v3 .. v8}, Landroidx/activity/sbotGuard;->ۡۨۤۥ(Ljava/lang/Object;JJF)V

    const-wide/16 v4, 0x30c

    const-wide/16 v6, 0x140

    const/high16 v8, 0x41200000    # 10.0f

    move-object/from16 v3, v16

    invoke-static/range {v3 .. v8}, Landroidx/activity/sbotGuard;->ۡۨۤۥ(Ljava/lang/Object;JJF)V

    const-wide/16 v2, 0x35c

    const-wide/16 v4, 0x118

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/activity/sbotGuard;->۟ۡۥۣۤ(Ljava/lang/Object;JJ)V

    const-wide/16 v4, 0x398

    const-wide/16 v6, 0x140

    const/high16 v8, 0x41200000    # 10.0f

    move-object/from16 v3, v18

    invoke-static/range {v3 .. v8}, Landroidx/activity/sbotGuard;->ۡۨۤۥ(Ljava/lang/Object;JJF)V

    const-wide/16 v4, 0x3fc

    const-wide/16 v6, 0x140

    const/high16 v8, 0x41000000    # 8.0f

    move-object/from16 v3, v19

    invoke-static/range {v3 .. v8}, Landroidx/activity/sbotGuard;->ۡۨۤۥ(Ljava/lang/Object;JJF)V

    return-void
.end method

.method public static check(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private static dp(Landroid/app/Activity;F)I
    .locals 53

    move/from16 v3, p1

    move-object/from16 v2, p0

    const/4 v0, 0x1

    invoke-static {v2}, Landroidx/activity/۟ۨۧ;->ۣۤ۟ۧ(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Landroidx/activity/۟۠۠ۦۤ;->۟ۢ۟ۢۤ(Ljava/lang/Object;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroidx/activity/۟ۨۧ;->ۦۨۢۨ(IFLjava/lang/Object;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static fadeIn(Landroid/view/View;JJ)V
    .locals 54

    move-wide/from16 v6, p3

    move-wide/from16 v4, p1

    move-object/from16 v3, p0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroidx/activity/۟ۨۧ;->۟ۦۢۧ(Ljava/lang/Object;F)V

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v33

    const v36, 0x2e6

    const v34, 0x134

    const v35, 0x5

    invoke-static/range {v33 .. v36}, Landroidx/activity/۟۠۠ۦۤ;->ۥۡ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v3, v0, v1}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0, v6, v7}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v0, v4, v5}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    invoke-static {v0}, Landroidx/activity/۟۠۠ۦۤ;->ۣۣ۟ۤۥ(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static fadeUp(Landroid/view/View;JJF)V
    .locals 58

    move/from16 v12, p5

    move-wide/from16 v10, p3

    move-wide/from16 v8, p1

    move-object/from16 v7, p0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v7, v3}, Landroidx/activity/۟ۨۧ;->۟ۦۢۧ(Ljava/lang/Object;F)V

    invoke-static {v7, v12}, Landroidx/activity/۟۠۠ۦۤ;->ۣۥۤۢ(Ljava/lang/Object;F)V

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v33

    const v36, 0x27e

    const v34, 0x139

    const v35, 0x5

    invoke-static/range {v33 .. v36}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v7, v0, v1}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v21

    const v24, 0x2db

    const v22, 0x13e

    const v23, 0xc

    invoke-static/range {v21 .. v24}, Landroidx/activity/۟۠۠ۦۤ;->ۥۡ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v1, v21

    new-array v2, v4, [F

    aput v12, v2, v5

    aput v3, v2, v6

    invoke-static {v7, v1, v2}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v10, v11}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v1, v10, v11}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v0, v8, v9}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    invoke-static {v1, v8, v9}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fe66666    # 1.8f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-static {v1, v2}, Landroidx/activity/۟ۨۧ;->ۤ۠ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Landroidx/activity/۟ۨۧ;->ۨ۠ۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Landroidx/activity/۟ۨۧ;->ۣۨۤۡ(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static getAppSHA1(Landroid/app/Activity;)Ljava/lang/String;
    .locals 59

    move-object/from16 v8, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v8}, Landroidx/activity/۟ۨۧ;->۠۟ۢ۠(Ljava/lang/Object;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v8}, Landroidx/activity/۟۠۠ۦۤ;->ۢۨۥۨ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v2, v3, v4}, Landroidx/activity/ۥۨۧۨ;->۟ۡۦۥۡ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/activity/۟۠۠ۦۤ;->ۤۧۨۥ(Ljava/lang/Object;)[Landroid/content/pm/Signature;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v41

    const v44, 0x398

    const v42, 0x14a

    const v43, 0x4

    invoke-static/range {v41 .. v44}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v3, v41

    invoke-static {v3}, Landroidx/activity/۟ۨۧ;->ۡ۟ۦۤ(Ljava/lang/Object;)Ljava/security/MessageDigest;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Landroidx/activity/۟ۨۧ;->۠ۡۧۥ(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۟۟ۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Landroidx/activity/۟ۨۧ;->ۣ۟۠ۤ۠(Ljava/lang/Object;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_3

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v46

    const v49, 0x260

    const v47, 0x14e

    const v48, 0x4

    invoke-static/range {v46 .. v49}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v4, v46

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v2, v1

    invoke-static {v7}, Landroidx/activity/ۥۨۧۨ;->۟ۡۦۡۦ(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroidx/activity/۟۠۠ۦۤ;->۟ۦۡۨ۠(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/activity/۟۠۠ۦۤ;->ۢۡۥ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v33

    const v36, 0xac2

    const v34, 0x152

    const v35, 0x1

    invoke-static/range {v33 .. v36}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v4, v33

    invoke-static {v3, v4}, Landroidx/activity/۟۠۠ۦۤ;->ۢۡۥ۟(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Landroidx/activity/ۥۨۧۨ;->ۢۦ۟ۤ(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static glassCard(Landroid/app/Activity;F)Landroid/graphics/drawable/LayerDrawable;
    .locals 59

    move/from16 v9, p1

    move-object/from16 v8, p0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {}, Landroidx/activity/sbotGuard;->۟ۥ۠ۨۥ()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/activity/ۨۨۦۡ;->ۤۢۥۡ(Ljava/lang/Object;I)V

    invoke-static {v0, v9}, Landroidx/activity/ۨۨۦۡ;->۟ۢۨۥۣ(Ljava/lang/Object;F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v8, v1}, Landroidx/activity/sbotGuard;->۟ۥۦۥۢ(Ljava/lang/Object;F)I

    move-result v1

    invoke-static {}, Landroidx/activity/sbotGuard;->ۤۨ۠۠()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/activity/ۥۨۧۨ;->۟۟ۤۤ(Ljava/lang/Object;II)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Landroidx/activity/۟ۨۧ;->ۣ۠ۨۦ()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v2

    new-array v3, v7, [I

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v21

    const v24, 0x8fc

    const v22, 0x153

    const v23, 0x9

    invoke-static/range {v21 .. v24}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v4, v21

    invoke-static {v4}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۦۧ(Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v5

    aput v5, v3, v6

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-static {v1, v9}, Landroidx/activity/ۨۨۦۡ;->۟ۢۨۥۣ(Ljava/lang/Object;F)V

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v7, [Landroid/graphics/drawable/GradientDrawable;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private static iconPop(Landroid/view/View;JJ)V
    .locals 60

    move-wide/from16 v12, p3

    move-wide/from16 v10, p1

    move-object/from16 v9, p0

    const v7, 0x3fcccccd    # 1.6f

    const/4 v6, 0x2

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v34

    const v37, 0x7ce

    const v35, 0x15c

    const v36, 0x6

    invoke-static/range {v34 .. v37}, Landroidx/activity/۟۠۠ۦۤ;->ۥۡ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-static {v9, v0, v1}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v37

    const v40, 0x7ca

    const v38, 0x162

    const v39, 0x6

    invoke-static/range {v37 .. v40}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v1, v37

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v9, v1, v2}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v44

    const v47, 0x22d

    const v45, 0x168

    const v46, 0x5

    invoke-static/range {v44 .. v47}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v2, v44

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {v9, v2, v3}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v0, v12, v13}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v1, v12, v13}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x2

    div-long v4, v12, v4

    invoke-static {v2, v4, v5}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v0, v10, v11}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    invoke-static {v1, v10, v11}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    invoke-static {v2, v10, v11}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-static {v0, v3}, Landroidx/activity/۟ۨۧ;->ۤ۠ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-static {v1, v3}, Landroidx/activity/۟ۨۧ;->ۤ۠ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Landroidx/activity/۟ۨۧ;->ۨ۠ۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Landroidx/activity/۟ۨۧ;->ۣۨۤۡ(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static oval(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 53

    move/from16 v4, p2

    move/from16 v3, p1

    move/from16 v2, p0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/activity/ۥۨۧۨ;->۟ۦۣۣۤ(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Landroidx/activity/ۨۨۦۡ;->ۤۢۥۡ(Ljava/lang/Object;I)V

    if-lez v3, :cond_0

    invoke-static {v0, v3, v4}, Landroidx/activity/ۥۨۧۨ;->۟۟ۤۤ(Ljava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method private static play(Landroid/view/View;JJZFF)V
    .locals 58

    move/from16 v14, p7

    move/from16 v13, p6

    move/from16 v12, p5

    move-wide/from16 v10, p3

    move-wide/from16 v8, p1

    move-object/from16 v7, p0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroidx/activity/۟ۨۧ;->۟ۦۢۧ(Ljava/lang/Object;F)V

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v36

    const v39, 0x45b

    const v37, 0x16d

    const v38, 0x5

    invoke-static/range {v36 .. v39}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v7, v0, v1}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0, v10, v11}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v0, v8, v9}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    if-eqz v12, :cond_0

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v26

    const v29, 0x1a6

    const v27, 0x172

    const v28, 0xc

    invoke-static/range {v26 .. v29}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v1, v26

    new-array v2, v4, [F

    aput v13, v2, v5

    aput v14, v2, v6

    invoke-static {v7, v1, v2}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1, v10, v11}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v1, v8, v9}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-static {v1, v2}, Landroidx/activity/۟ۨۧ;->ۤ۠ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Landroidx/activity/۟ۨۧ;->ۨ۠ۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Landroidx/activity/۟ۨۧ;->ۣۨۤۡ(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Landroidx/activity/۟۠۠ۦۤ;->ۣۣ۟ۤۥ(Ljava/lang/Object;)V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static rect(IFII)Landroid/graphics/drawable/GradientDrawable;
    .locals 52

    move/from16 v4, p3

    move/from16 v3, p2

    move/from16 v2, p1

    move/from16 v1, p0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {v0, v1}, Landroidx/activity/ۨۨۦۡ;->ۤۢۥۡ(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Landroidx/activity/ۨۨۦۡ;->۟ۢۨۥۣ(Ljava/lang/Object;F)V

    if-lez v3, :cond_0

    invoke-static {v0, v3, v4}, Landroidx/activity/ۥۨۧۨ;->۟۟ۤۤ(Ljava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method private static runScan(Landroid/view/View;I)V
    .locals 60

    move/from16 v10, p1

    move-object/from16 v9, p0

    const-wide/16 v4, 0xb4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x2

    invoke-static {v9, v2}, Landroidx/activity/۟ۨۧ;->۟ۦۢۧ(Ljava/lang/Object;F)V

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v35

    const v38, 0x285

    const v36, 0x17e

    const v37, 0xc

    invoke-static/range {v35 .. v38}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    new-array v1, v6, [F

    aput v2, v1, v7

    int-to-float v2, v10

    aput v2, v1, v8

    invoke-static {v9, v0, v1}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdac

    invoke-static {v0, v2, v3}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-static {v0, v1}, Landroidx/activity/۟ۨۧ;->ۤ۠ۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v37

    const v40, 0x62d

    const v38, 0x18a

    const v39, 0x5

    invoke-static/range {v37 .. v40}, Landroidx/activity/۟۠۠ۦۤ;->ۥۡ۠ۥ([SIII)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v1, v37

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v9, v1, v2}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v16

    const v19, 0x834

    const v17, 0x18f

    const v18, 0x5

    invoke-static/range {v16 .. v19}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v2, v16

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v9, v2, v3}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v1, v4, v5}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v2, v4, v5}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc4e

    invoke-static {v2, v4, v5}, Landroidx/activity/ۥۨۧۨ;->ۣۣۢۨ(Ljava/lang/Object;J)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Landroidx/activity/۟ۨۧ;->ۨ۠ۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroidx/activity/sbotGuard$2;

    invoke-direct {v0, v9, v10}, Landroidx/activity/sbotGuard$2;-><init>(Landroid/view/View;I)V

    invoke-static {v3, v0}, Landroidx/activity/۟۠۠ۦۤ;->ۦۧ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Landroidx/activity/۟ۨۧ;->ۣۨۤۡ(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x3f400000    # 0.75f
        0x0
    .end array-data
.end method

.method private static showDialog(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private static startDotPulse(Landroid/view/View;)V
    .locals 55

    move-object/from16 v4, p0

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroidx/activity/۟۠۠ۦۤ;->ۢۦۣ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Landroidx/activity/۟۠۠ۦۤ;->۟۠ۢۡۥ(Ljava/lang/Object;J)Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroidx/activity/۟ۨۧ;->ۥ۠ۡۤ(Ljava/lang/Object;I)V

    new-instance v1, Landroidx/activity/sbotGuard$3;

    invoke-direct {v1, v4}, Landroidx/activity/sbotGuard$3;-><init>(Landroid/view/View;)V

    invoke-static {v0, v1}, Landroidx/activity/ۨۨۦۡ;->۟ۦ۟ۧۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۤۧۨۤ(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static startMusic(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private static startRingPulse(Landroid/view/View;)V
    .locals 59

    move-object/from16 v8, p0

    const-wide/16 v6, 0xbb8

    const/4 v5, -0x1

    const/4 v4, 0x3

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v25

    const v28, 0x908

    const v26, 0x30d

    const v27, 0x6

    invoke-static/range {v25 .. v28}, Landroidx/activity/ۨۨۦۡ;->ۣۣ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v8, v0, v1}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v15

    const v18, 0x68e

    const v16, 0x313

    const v17, 0x6

    invoke-static/range {v15 .. v18}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v1, v15

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v8, v1, v2}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static/range {}, Landroidx/activity/sbotGuard;->ۥۣۧ۠()[S

    move-result-object v46

    const v49, 0x751

    const v47, 0x319

    const v48, 0x5

    invoke-static/range {v46 .. v49}, Landroidx/activity/ۥۨۧۨ;->۠۟ۧ۠([SIII)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v2, v46

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v8, v2, v3}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۥۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v0, v6, v7}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v1, v6, v7}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v2, v6, v7}, Landroidx/activity/۟۠۠ۦۤ;->ۥۨ۟(Ljava/lang/Object;J)Landroid/animation/ObjectAnimator;

    invoke-static {v0, v5}, Landroidx/activity/ۥۨۧۨ;->۟۠ۨۨۦ(Ljava/lang/Object;I)V

    invoke-static {v1, v5}, Landroidx/activity/ۥۨۧۨ;->۟۠ۨۨۦ(Ljava/lang/Object;I)V

    invoke-static {v2, v5}, Landroidx/activity/ۥۨۧۨ;->۟۠ۨۨۦ(Ljava/lang/Object;I)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Landroidx/activity/۟ۨۧ;->ۨ۠ۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Landroidx/activity/۟ۨۧ;->ۣۨۤۡ(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8a3d71    # 1.08f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8a3d71    # 1.08f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private static startScanLine(Landroid/view/View;Landroid/view/View;)V
    .locals 52

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    new-instance v0, Landroidx/activity/sbotGuard$1;

    invoke-direct {v0, v2, v1}, Landroidx/activity/sbotGuard$1;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-static {v2, v0}, Landroidx/activity/۟۠۠ۦۤ;->ۣۣۧۢ(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public static ۟۠۠۠ۤ(Ljava/lang/Object;JJ)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/activity/sbotGuard;->iconPop(Landroid/view/View;JJ)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟۠ۤۨ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/view/View;

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    check-cast p3, Landroid/view/View;

    check-cast p4, Landroid/view/View;

    check-cast p5, Landroid/view/View;

    check-cast p6, Landroid/view/View;

    check-cast p7, Landroid/view/View;

    check-cast p8, Landroid/view/View;

    invoke-static/range {p0 .. p9}, Landroidx/activity/sbotGuard;->animateEntrance(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟۠ۦۢۢ()I
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->BG:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۡ۠ۡۥ(Ljava/lang/Object;F)Landroid/graphics/drawable/LayerDrawable;
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->glassCard(Landroid/app/Activity;F)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۡ۠۠()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->RED_BORDER:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۡۥۣۤ(Ljava/lang/Object;JJ)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/activity/sbotGuard;->fadeIn(Landroid/view/View;JJ)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣ۟ۢۡۤ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->AMBER_DIM:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۢۨۥۨ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->BOX_BORDER:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۣ۟۟۟(Ljava/lang/Object;JJZFF)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static/range {p0 .. p7}, Landroidx/activity/sbotGuard;->play(Landroid/view/View;JJZFF)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۤۤۧۨ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->RED:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۦۥۨ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Landroidx/activity/sbotGuard;->getAppSHA1(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤۦۧۨ(IFII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/activity/sbotGuard;->rect(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۥ۠ۨۥ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->SURFACE:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۥۦۥۢ(Ljava/lang/Object;F)I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->dp(Landroid/app/Activity;F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧ۠ۤۨ(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static ۟ۧۦۥۥ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->SCAN_COLOR:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧۧ۟۟()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->TEXT_1:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠۟ۨۡ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->runScan(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۠ۧ۟ۥ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/view/View;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->startScanLine(Landroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۡۦ۠ۥ()I
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->BTN_TEXT:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۡۨۤۥ(Ljava/lang/Object;JJF)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static/range {p0 .. p5}, Landroidx/activity/sbotGuard;->fadeUp(Landroid/view/View;JJF)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۢۡۡۢ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/activity/sbotGuard;->startRingPulse(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۢۢۥۧ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-static/range {p0 .. p0}, Landroidx/activity/sbotGuard;->startMusic(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۢۤ۟()I
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->AMBER_GLOW:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۥ۟۠()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->AMBER_RING:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۥۧۡ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->DIVIDER_MID:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۤ۟ۨۢ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/activity/sbotGuard;->startDotPulse(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۤۨ۠۠()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->BORDER:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥ۠۟ۥ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->TEXT_2:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥۡۨۨ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->RED_DIM:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥۣۧ۠()[S
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Landroidx/activity/sbotGuard;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۣۤۤ(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static/range {p0 .. p2}, Landroidx/activity/sbotGuard;->oval(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۧۢ۟ۦ()I
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->BOX_BG:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۧۢۡ()I
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->AMBER:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨ۠ۧۢ()I
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Landroidx/activity/sbotGuard;->TEXT_3:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
