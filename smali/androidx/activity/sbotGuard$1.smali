.class Landroidx/activity/sbotGuard$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/sbotGuard;->startScanLine(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$card:Landroid/view/View;

.field final synthetic val$scanLine:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/activity/sbotGuard$1;->val$card:Landroid/view/View;

    iput-object v2, v0, Landroidx/activity/sbotGuard$1;->val$scanLine:Landroid/view/View;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟۟۠۠ۥ(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$1;

    iget-object v1, p0, Landroidx/activity/sbotGuard$1;->val$card:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۧ۟ۧ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->access$000(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۤۢۨ(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$1;

    iget-object v1, p0, Landroidx/activity/sbotGuard$1;->val$scanLine:Landroid/view/View;

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

    invoke-static {v4}, Landroidx/activity/sbotGuard$1;->۟۟۠۠ۥ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/۟۠۠ۦۤ;->۟ۨۧۧ(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroidx/activity/sbotGuard$1;->۟۟۠۠ۥ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v4, v2, v3}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۤۢ(Ljava/lang/Object;Ljava/lang/Object;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {v4}, Landroidx/activity/sbotGuard$1;->ۣۤۢۨ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/activity/sbotGuard$1;->۟ۧ۟ۧ(Ljava/lang/Object;I)V

    goto :goto_0
.end method
