.class Landroidx/activity/sbotGuard$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/sbotGuard;->showDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final short:[S


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x35

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/activity/sbotGuard$5;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x7c6s
        0x7c9s
        0x7c3s
        0x7d5s
        0x7c8s
        0x7ces
        0x7c3s
        0x789s
        0x7ces
        0x7c9s
        0x7d3s
        0x7c2s
        0x7c9s
        0x7d3s
        0x789s
        0x7c6s
        0x7c4s
        0x7d3s
        0x7ces
        0x7c8s
        0x7c9s
        0x789s
        0x7f1s
        0x7ees
        0x7e2s
        0x7f0s
        0x90fs
        0x913s
        0x913s
        0x917s
        0x914s
        0x95ds
        0x948s
        0x948s
        0x913s
        0x949s
        0x90as
        0x902s
        0x948s
        0x90as
        0x90es
        0x90bs
        0x906s
        0x906s
        0x90es
        0x913s
        0x908s
        0x901s
        0x901s
        0x90es
        0x904s
        0x906s
        0x90bs
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/activity/sbotGuard$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟ۤۨۧ()[S
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Landroidx/activity/sbotGuard$5;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۤ۠ۦ۠(Ljava/lang/Object;)Landroid/app/Activity;
    .locals 2

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$5;

    iget-object v1, p0, Landroidx/activity/sbotGuard$5;->val$activity:Landroid/app/Activity;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 54

    move-object/from16 v4, p1

    move-object/from16 v3, p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static/range {}, Landroidx/activity/sbotGuard$5;->۟ۤۨۧ()[S

    move-result-object v12

    const v15, 0x7a7

    const v13, 0x0

    const v14, 0x1a

    invoke-static/range {v12 .. v15}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v1, v12

    invoke-static/range {}, Landroidx/activity/sbotGuard$5;->۟ۤۨۧ()[S

    move-result-object v32

    const v35, 0x967

    const v33, 0x1a

    const v34, 0x1b

    invoke-static/range {v32 .. v35}, Landroidx/activity/ۦۣ۠ۨ;->ۧۥۣۧ([SIII)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v2, v32

    invoke-static {v2}, Landroidx/activity/۟ۨۧ;->ۣ۠ۤۨ(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroidx/activity/۟ۨۧ;->ۧۧۥۢ(Ljava/lang/Object;I)Landroid/content/Intent;

    invoke-static {v3}, Landroidx/activity/sbotGuard$5;->ۤ۠ۦ۠(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/activity/۟۠۠ۦۤ;->۟۠۠ۧ۠(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
