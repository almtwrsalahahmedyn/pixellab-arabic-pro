.class Landroidx/activity/sbotGuard$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/sbotGuard;->startDotPulse(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dot:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/activity/sbotGuard$3;->val$dot:Landroid/view/View;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟۟ۡۦۦ(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$3;

    iget-object v1, p0, Landroidx/activity/sbotGuard$3;->val$dot:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 53

    move-object/from16 v3, p1

    move-object/from16 v2, p0

    invoke-static {v2}, Landroidx/activity/sbotGuard$3;->۟۟ۡۦۦ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-static {v3}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۧۢۤ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0}, Landroidx/activity/ۥۨۧۨ;->ۥۢۨ(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v1, v0}, Landroidx/activity/۟ۨۧ;->۟ۦۢۧ(Ljava/lang/Object;F)V

    return-void
.end method
