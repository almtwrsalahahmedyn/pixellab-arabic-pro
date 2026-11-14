.class Landroidx/activity/sbotGuard$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/sbotGuard;->showDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method constructor <init>()V
    .locals 51

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 55

    move-object/from16 v6, p2

    move-object/from16 v5, p1

    move-object/from16 v4, p0

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f75c28f    # 0.96f

    invoke-static {v6}, Landroidx/activity/۟۠۠ۦۤ;->۟ۢ۠۠ۥ(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    invoke-static {v5}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۡۥ(Ljava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/activity/ۨۨۦۡ;->ۣ۟ۧۨ(Ljava/lang/Object;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/activity/۟ۨۧ;->ۣۧۤۤ(Ljava/lang/Object;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3c

    invoke-static {v0, v2, v3}, Landroidx/activity/ۨۨۦۡ;->ۣ۟ۡۦۤ(Ljava/lang/Object;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/۟۠۠ۦۤ;->ۡۨۦۡ(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v5}, Landroidx/activity/ۥۨۧۨ;->ۣ۟ۡۡۥ(Ljava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/activity/ۨۨۦۡ;->ۣ۟ۧۨ(Ljava/lang/Object;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/activity/۟ۨۧ;->ۣۧۤۤ(Ljava/lang/Object;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5a

    invoke-static {v0, v2, v3}, Landroidx/activity/ۨۨۦۡ;->ۣ۟ۡۦۤ(Ljava/lang/Object;J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/۟۠۠ۦۤ;->ۡۨۦۡ(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
