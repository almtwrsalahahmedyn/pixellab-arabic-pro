.class public final Landroidx/gridlayout/widget/GridLayout$Axis$1;
.super Ljava/lang/Object;


# instance fields
.field public arcsByVertex:[[Landroidx/gridlayout/widget/GridLayout$Arc;

.field public cursor:I

.field public result:[Landroidx/gridlayout/widget/GridLayout$Arc;

.field public visited:[I


# virtual methods
.method public final walk(I)V
    .locals 7

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->visited:[I

    aget v1, v0, p1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    aput v1, v0, p1

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroidx/gridlayout/widget/GridLayout$Arc;

    aget-object v1, v1, p1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, v4, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v5, v5, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    invoke-virtual {p0, v5}, Landroidx/gridlayout/widget/GridLayout$Axis$1;->walk(I)V

    iget v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->cursor:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->cursor:I

    iget-object v6, p0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->result:[Landroidx/gridlayout/widget/GridLayout$Arc;

    aput-object v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    aput v1, v0, p1

    :goto_1
    return-void
.end method
