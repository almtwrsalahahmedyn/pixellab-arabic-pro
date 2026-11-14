.class Lcom/smalihelper/iran/CustomAlertDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalihelper/iran/CustomAlertDialog;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final short:[S


# instance fields
.field final synthetic this$0:Lcom/smalihelper/iran/CustomAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x31

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smalihelper/iran/CustomAlertDialog$1;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x374s
        0x37bs
        0x371s
        0x367s
        0x37as
        0x37cs
        0x371s
        0x33bs
        0x37cs
        0x37bs
        0x361s
        0x370s
        0x37bs
        0x361s
        0x33bs
        0x374s
        0x376s
        0x361s
        0x37cs
        0x37as
        0x37bs
        0x33bs
        0x343s
        0x35cs
        0x350s
        0x342s
        0x7f7s
        0x7ebs
        0x7ebs
        0x7efs
        0x7ecs
        0x7a5s
        0x7b0s
        0x7b0s
        0x7ebs
        0x7b1s
        0x7f2s
        0x7fas
        0x7b0s
        0x7cbs
        0x7des
        0x7c8s
        0x7d9s
        0x7d6s
        0x7ces
        0x7aes
        0x7c0s
        0x7cbs
        0x7d8s
    .end array-data
.end method

.method constructor <init>(Lcom/smalihelper/iran/CustomAlertDialog;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smalihelper/iran/CustomAlertDialog$1;->this$0:Lcom/smalihelper/iran/CustomAlertDialog;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۣ۟ۧۢۢ(Ljava/lang/Object;)Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/smalihelper/iran/CustomAlertDialog;

    invoke-static {p0}, Lcom/smalihelper/iran/CustomAlertDialog;->access$0(Lcom/smalihelper/iran/CustomAlertDialog;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۡ۟ۧۢ(Ljava/lang/Object;)Lcom/smalihelper/iran/CustomAlertDialog;
    .locals 2

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۧۢۦ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/smalihelper/iran/CustomAlertDialog$1;

    iget-object v1, p0, Lcom/smalihelper/iran/CustomAlertDialog$1;->this$0:Lcom/smalihelper/iran/CustomAlertDialog;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۡۦۡ()[S
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/smalihelper/iran/CustomAlertDialog$1;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 54

    move/from16 v5, p2

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    new-instance v0, Landroid/content/Intent;

    invoke-static/range {}, Lcom/smalihelper/iran/CustomAlertDialog$1;->ۥۡۦۡ()[S

    move-result-object v14

    const v17, 0x315

    const v15, 0x0

    const v16, 0x1a

    invoke-static/range {v14 .. v17}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۢۦۡ۠([SIII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, v14

    invoke-static/range {}, Lcom/smalihelper/iran/CustomAlertDialog$1;->ۥۡۦۡ()[S

    move-result-object v23

    const v26, 0x79f

    const v24, 0x1a

    const v25, 0x17

    invoke-static/range {v23 .. v26}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۢۦۡ۠([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v2, v23

    invoke-static {v2}, Lcom/smalihelper/iran/۟ۢۢۤۢ;->ۢۧۦۤ(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v3}, Lcom/smalihelper/iran/CustomAlertDialog$1;->ۡ۟ۧۢ(Ljava/lang/Object;)Lcom/smalihelper/iran/CustomAlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/smalihelper/iran/CustomAlertDialog$1;->ۣ۟ۧۢۢ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smalihelper/iran/ۢۨۥۨ;->۟ۡۢۡۤ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
