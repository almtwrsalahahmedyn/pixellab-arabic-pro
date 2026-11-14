.class Lcom/smalihelper/iran/CustomAlertDialog$2;
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

    const v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smalihelper/iran/CustomAlertDialog$2;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xba3s
        0xb91s
        0xb98s
        0xb97s
        0xb9bs
        0xb99s
        0xb91s
    .end array-data
.end method

.method constructor <init>(Lcom/smalihelper/iran/CustomAlertDialog;)V
    .locals 51

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smalihelper/iran/CustomAlertDialog$2;->this$0:Lcom/smalihelper/iran/CustomAlertDialog;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۡ۟ۡ۠()[S
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smalihelper/iran/CustomAlertDialog$2;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۡ۟ۦۢ(Ljava/lang/Object;)Lcom/smalihelper/iran/CustomAlertDialog;
    .locals 2

    invoke-static {}, Lcom/smalihelper/iran/۟ۢۡۨ۟;->۟ۤۥۣۥ()I

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Lcom/smalihelper/iran/CustomAlertDialog$2;

    iget-object v1, p0, Lcom/smalihelper/iran/CustomAlertDialog$2;->this$0:Lcom/smalihelper/iran/CustomAlertDialog;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۧ۟ۦۧ(Ljava/lang/Object;)Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۧۨ۟۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/smalihelper/iran/CustomAlertDialog;

    invoke-static {p0}, Lcom/smalihelper/iran/CustomAlertDialog;->access$0(Lcom/smalihelper/iran/CustomAlertDialog;)Landroid/content/Context;

    move-result-object v0

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

    invoke-static {v3}, Lcom/smalihelper/iran/CustomAlertDialog$2;->ۡ۟ۦۢ(Ljava/lang/Object;)Lcom/smalihelper/iran/CustomAlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/smalihelper/iran/CustomAlertDialog$2;->ۧ۟ۦۧ(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static/range {}, Lcom/smalihelper/iran/CustomAlertDialog$2;->ۡ۟ۡ۠()[S

    move-result-object v23

    const v26, 0xbf4

    const v24, 0x0

    const v25, 0x7

    invoke-static/range {v23 .. v26}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۣ۟ۦۣ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v1, v23

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/smalihelper/iran/۟۟ۧۡ;->ۣۣ۟۠ۥ(Ljava/lang/Object;Ljava/lang/Object;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/smalihelper/iran/۟۠ۢۦ۠;->ۨۢۦۤ(Ljava/lang/Object;)V

    return-void
.end method
