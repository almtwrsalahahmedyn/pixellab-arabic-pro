.class Landroidx/activity/sbotGuard$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/sbotGuard;->runScan(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cardH:I

.field final synthetic val$scanLine:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method constructor <init>(Landroid/view/View;I)V
    .locals 51

    move/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/activity/sbotGuard$2;->val$scanLine:Landroid/view/View;

    iput v2, v0, Landroidx/activity/sbotGuard$2;->val$cardH:I

    invoke-direct {v0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static ۟ۡۡۥۢ(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$2;

    iget v1, p0, Landroidx/activity/sbotGuard$2;->val$cardH:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۡۢۥۧ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->access$000(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۧۧۧۦ(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$2;

    iget-object v1, p0, Landroidx/activity/sbotGuard$2;->val$scanLine:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 53

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static {v2}, Landroidx/activity/sbotGuard$2;->۟ۧۧۧۦ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-static {v2}, Landroidx/activity/sbotGuard$2;->۟ۡۡۥۢ(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/activity/sbotGuard$2;->۟ۡۢۥۧ(Ljava/lang/Object;I)V

    return-void
.end method
