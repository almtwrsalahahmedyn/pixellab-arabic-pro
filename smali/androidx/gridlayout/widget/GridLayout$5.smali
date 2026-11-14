.class public final Landroidx/gridlayout/widget/GridLayout$5;
.super Landroidx/gridlayout/widget/GridLayout$Alignment;


# instance fields
.field public final synthetic val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field public final synthetic val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;


# direct methods
.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)V
    .locals 0

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlignmentValue(Landroid/view/View;II)I
    .locals 2

    sget-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$1;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;

    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public final getDebugString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SWITCHING[L:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGravityOffset(Landroid/view/View;I)I
    .locals 2

    sget-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$1;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$ltr:Landroidx/gridlayout/widget/GridLayout$Alignment;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$5;->val$rtl:Landroidx/gridlayout/widget/GridLayout$Alignment;

    :goto_1
    invoke-virtual {v0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result p1

    return p1
.end method
