.class public final Landroidx/gridlayout/widget/GridLayout$7$1;
.super Landroidx/gridlayout/widget/GridLayout$Bounds;


# instance fields
.field public size:I


# virtual methods
.method public final getOffset(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$Alignment;IZ)I
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/gridlayout/widget/GridLayout$Bounds;->getOffset(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$Alignment;IZ)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final include(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$Bounds;->include(II)V

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$7$1;->size:I

    add-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$7$1;->size:I

    return-void
.end method

.method public final reset()V
    .locals 1

    invoke-super {p0}, Landroidx/gridlayout/widget/GridLayout$Bounds;->reset()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout$7$1;->size:I

    return-void
.end method

.method public final size(Z)I
    .locals 1

    invoke-super {p0, p1}, Landroidx/gridlayout/widget/GridLayout$Bounds;->size(Z)I

    move-result p1

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$7$1;->size:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
