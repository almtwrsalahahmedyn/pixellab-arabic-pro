.class Landroidx/activity/sbotGuard$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/sbotGuard;->showDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$box:Landroid/widget/LinearLayout;

.field final synthetic val$btn:Landroid/widget/Button;

.field final synthetic val$cardFrame:Landroid/widget/FrameLayout;

.field final synthetic val$divider:Landroid/view/View;

.field final synthetic val$dot:Landroid/view/View;

.field final synthetic val$eyebrow:Landroid/widget/TextView;

.field final synthetic val$footnote:Landroid/widget/TextView;

.field final synthetic val$iconRing:Landroid/view/View;

.field final synthetic val$iconWrap:Landroid/widget/FrameLayout;

.field final synthetic val$scanLine:Landroid/view/View;

.field final synthetic val$slideD:I

.field final synthetic val$statusWrap:Landroid/widget/LinearLayout;

.field final synthetic val$subTv:Landroid/widget/TextView;

.field final synthetic val$titleTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/Button;ILandroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v14, p14

    move-object/from16 v13, p13

    move-object/from16 v12, p12

    move-object/from16 v11, p11

    move/from16 v10, p10

    move-object/from16 v9, p9

    move-object/from16 v8, p8

    move-object/from16 v7, p7

    move-object/from16 v6, p6

    move-object/from16 v5, p5

    move-object/from16 v4, p4

    move-object/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/activity/sbotGuard$7;->val$cardFrame:Landroid/widget/FrameLayout;

    iput-object v2, v0, Landroidx/activity/sbotGuard$7;->val$statusWrap:Landroid/widget/LinearLayout;

    iput-object v3, v0, Landroidx/activity/sbotGuard$7;->val$iconWrap:Landroid/widget/FrameLayout;

    iput-object v4, v0, Landroidx/activity/sbotGuard$7;->val$eyebrow:Landroid/widget/TextView;

    iput-object v5, v0, Landroidx/activity/sbotGuard$7;->val$titleTv:Landroid/widget/TextView;

    iput-object v6, v0, Landroidx/activity/sbotGuard$7;->val$subTv:Landroid/widget/TextView;

    iput-object v7, v0, Landroidx/activity/sbotGuard$7;->val$divider:Landroid/view/View;

    iput-object v8, v0, Landroidx/activity/sbotGuard$7;->val$box:Landroid/widget/LinearLayout;

    iput-object v9, v0, Landroidx/activity/sbotGuard$7;->val$btn:Landroid/widget/Button;

    iput v10, v0, Landroidx/activity/sbotGuard$7;->val$slideD:I

    iput-object v11, v0, Landroidx/activity/sbotGuard$7;->val$footnote:Landroid/widget/TextView;

    iput-object v12, v0, Landroidx/activity/sbotGuard$7;->val$dot:Landroid/view/View;

    iput-object v13, v0, Landroidx/activity/sbotGuard$7;->val$iconRing:Landroid/view/View;

    iput-object v14, v0, Landroidx/activity/sbotGuard$7;->val$scanLine:Landroid/view/View;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ۟۟۠۟ۥ(Ljava/lang/Object;)Landroid/widget/Button;
    .locals 2

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$btn:Landroid/widget/Button;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟۠ۧۥ(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$divider:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۢۡۨ(Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$eyebrow:Landroid/widget/TextView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۦۡ۠(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget v1, p0, Landroidx/activity/sbotGuard$7;->val$slideD:I

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۥۥ۟ۤ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/activity/sbotGuard;->access$400(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۥۧۥۧ(Ljava/lang/Object;JJ)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۦۣ۠ۨ;->ۣ۟۟ۨۡ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/activity/sbotGuard;->access$200(Landroid/view/View;JJ)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۦۣۨ۟(Ljava/lang/Object;)Landroid/widget/LinearLayout;
    .locals 2

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$box:Landroid/widget/LinearLayout;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۨۡۦ(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$scanLine:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۠۟ۦۢ(Ljava/lang/Object;)Landroid/widget/FrameLayout;
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$cardFrame:Landroid/widget/FrameLayout;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۡ۟ۢۥ(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$dot:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۡۨۦۥ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroid/view/View;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/activity/sbotGuard;->access$500(Landroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۣۢۢ(Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 2

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$footnote:Landroid/widget/TextView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣ۠۠ۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

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

    invoke-static/range {p0 .. p9}, Landroidx/activity/sbotGuard;->access$100(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۤ۠۠(Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$iconRing:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۤۧ۠(Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 2

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$titleTv:Landroid/widget/TextView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۣ۟ۨ(Ljava/lang/Object;)Landroid/widget/LinearLayout;
    .locals 2

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$statusWrap:Landroid/widget/LinearLayout;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۥۥۨ۠(Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 2

    invoke-static {}, Landroidx/activity/۟۠۠ۦۤ;->ۣ۟ۨۧۨ()I

    move-result v0

    if-gez v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$subTv:Landroid/widget/TextView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۨ۠ۦ(Ljava/lang/Object;)Landroid/widget/FrameLayout;
    .locals 2

    invoke-static {}, Landroidx/activity/ۨۨۦۡ;->ۡۧۥۧ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroidx/activity/sbotGuard$7;

    iget-object v1, p0, Landroidx/activity/sbotGuard$7;->val$iconWrap:Landroid/widget/FrameLayout;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۨۦۣۡ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroidx/activity/۟ۨۧ;->۟ۢۤۦۣ()I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/activity/sbotGuard;->access$300(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 61

    move-object/from16 v10, p0

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->۠۟ۦۢ(Ljava/lang/Object;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۥۣ۟ۨ(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۣۨ۠ۦ(Ljava/lang/Object;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۣ۟ۢۡۨ(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۣۤۧ۠(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۥۥۨ۠(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->۟۠ۧۥ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->۟ۦۣۨ۟(Ljava/lang/Object;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->۟۟۠۟ۥ(Ljava/lang/Object;)Landroid/widget/Button;

    move-result-object v8

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۣ۟ۦۡ۠(Ljava/lang/Object;)I

    move-result v9

    invoke-static/range {v0 .. v9}, Landroidx/activity/sbotGuard$7;->ۣ۠۠ۧ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۣۣۢۢ(Ljava/lang/Object;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    const-wide/16 v4, 0x190

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/activity/sbotGuard$7;->۟ۥۧۥۧ(Ljava/lang/Object;JJ)V

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۡ۟ۢۥ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/sbotGuard$7;->ۨۦۣۡ(Ljava/lang/Object;)V

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->ۣۤ۠۠(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/sbotGuard$7;->۟ۥۥ۟ۤ(Ljava/lang/Object;)V

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->۟ۦۨۡۦ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-static {v10}, Landroidx/activity/sbotGuard$7;->۠۟ۦۢ(Ljava/lang/Object;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/activity/sbotGuard$7;->ۡۨۦۥ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
