.class public final Landroidx/gridlayout/widget/GridLayout$Axis;
.super Ljava/lang/Object;


# instance fields
.field public arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

.field public arcsValid:Z

.field public backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field public forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

.field public forwardLinksValid:Z

.field public groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field public maxIndex:I

.field public orderPreserved:Z

.field public final parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

.field public final parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

.field public final synthetic this$0:Landroidx/gridlayout/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBoundsValid:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMarginsValid:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMarginsValid:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsValid:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeightsValid:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {v0, p1}, Landroidx/gridlayout/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    new-instance p1, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    const v0, -0x186a0

    invoke-direct {p1, v0}, Landroidx/gridlayout/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iput-boolean p2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    return-void
.end method

.method public static include(Ljava/util/ArrayList;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V
    .locals 2

    iget v0, p1, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    iget v1, p1, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/gridlayout/widget/GridLayout$Arc;

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_2
    new-instance p3, Landroidx/gridlayout/widget/GridLayout$Arc;

    invoke-direct {p3, p1, p2}, Landroidx/gridlayout/widget/GridLayout$Arc;-><init>(Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final arcsToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_0

    const-string v0, "x"

    goto :goto_0

    :cond_0
    const-string v0, "y"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/gridlayout/widget/GridLayout$Arc;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v4, v3, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v5, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$Arc;->value:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    const-string v7, "-"

    if-ge v5, v4, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v3, v3

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final computeLinks(Landroidx/gridlayout/widget/GridLayout$PackedMap;Z)V
    .locals 5

    iget-object v0, p1, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$MutableInt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    const/high16 v4, -0x80000000

    iput v4, v3, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v0

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$Bounds;

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Landroidx/gridlayout/widget/GridLayout$Bounds;->size(Z)I

    move-result v2

    iget-object v3, p1, Landroidx/gridlayout/widget/GridLayout$PackedMap;->index:[I

    aget v3, v3, v1

    iget-object v4, p1, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    aget-object v3, v4, v3

    check-cast v3, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iget v4, v3, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    neg-int v2, v2

    :goto_2
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final computeMargins(Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    :goto_0
    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    iget-boolean v6, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v6, :cond_2

    iget-object v5, v5, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_2

    :cond_2
    iget-object v5, v5, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_2
    iget-object v5, v5, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    if-eqz p1, :cond_3

    iget v5, v5, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_3
    iget v5, v5, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    :goto_3
    aget v7, v0, v5

    invoke-virtual {v1, v4, v6, p1}, Landroidx/gridlayout/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v0, v5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final createLinks(Z)Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .locals 7

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Assoc;

    const-class v1, Landroidx/gridlayout/widget/GridLayout$Interval;

    const-class v2, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {v0, v1, v2}, Landroidx/gridlayout/widget/GridLayout$Assoc;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v1

    iget-object v1, v1, Landroidx/gridlayout/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v1, [Landroidx/gridlayout/widget/GridLayout$Spec;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-eqz p1, :cond_0

    aget-object v4, v1, v3

    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    new-instance v5, Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v6, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    invoke-direct {v5, v6, v4}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    move-object v4, v5

    :goto_1
    new-instance v5, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroidx/gridlayout/widget/GridLayout$MutableInt;-><init>()V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Assoc;->pack()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object p1

    return-object p1
.end method

.method public final getArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;
    .locals 8

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    if-nez v4, :cond_0

    invoke-virtual {p0, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->createLinks(Z)Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v4

    iput-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    :cond_0
    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    invoke-virtual {p0, v4, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeLinks(Landroidx/gridlayout/widget/GridLayout$PackedMap;Z)V

    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    :cond_1
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v4, Landroidx/gridlayout/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v6, [Landroidx/gridlayout/widget/GridLayout$Interval;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    aget-object v6, v6, v5

    iget-object v7, v4, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v7, [Landroidx/gridlayout/widget/GridLayout$MutableInt;

    aget-object v7, v7, v5

    invoke-static {v0, v6, v7, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/ArrayList;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    if-nez v4, :cond_3

    invoke-virtual {p0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->createLinks(Z)Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v4

    iput-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    :cond_3
    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    invoke-virtual {p0, v4, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeLinks(Landroidx/gridlayout/widget/GridLayout$PackedMap;Z)V

    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    :cond_4
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v4, Landroidx/gridlayout/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v6, [Landroidx/gridlayout/widget/GridLayout$Interval;

    array-length v7, v6

    if-ge v5, v7, :cond_5

    aget-object v6, v6, v5

    iget-object v7, v4, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v7, [Landroidx/gridlayout/widget/GridLayout$MutableInt;

    aget-object v7, v7, v5

    invoke-static {v3, v6, v7, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/ArrayList;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    new-instance v5, Landroidx/gridlayout/widget/GridLayout$Interval;

    add-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v4, v6}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    new-instance v4, Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-direct {v4, v1}, Landroidx/gridlayout/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-static {v0, v5, v4, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/ArrayList;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    move v4, v6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v4

    new-instance v5, Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-direct {v5, v1, v4}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    iget-object v6, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-static {v0, v5, v6, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/ArrayList;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    new-instance v5, Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-direct {v5, v4, v1}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    invoke-static {v3, v5, v4, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->include(Ljava/util/ArrayList;Landroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$MutableInt;Z)V

    invoke-virtual {p0, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->topologicalSort(Ljava/util/ArrayList;)[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroidx/gridlayout/widget/GridLayout$Axis;->topologicalSort(Ljava/util/ArrayList;)[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v3

    sget-object v4, Landroidx/gridlayout/widget/GridLayout;->BASELINE:Landroidx/gridlayout/widget/GridLayout$7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    array-length v5, v0

    array-length v6, v3

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v5, v3

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v4, [Landroidx/gridlayout/widget/GridLayout$Arc;

    iput-object v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

    :cond_7
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    if-nez v0, :cond_8

    invoke-virtual {p0, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->createLinks(Z)Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    :cond_8
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    invoke-virtual {p0, v0, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeLinks(Landroidx/gridlayout/widget/GridLayout$PackedMap;Z)V

    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    :cond_9
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    if-nez v0, :cond_a

    invoke-virtual {p0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->createLinks(Z)Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    :cond_a
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    invoke-virtual {p0, v0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeLinks(Landroidx/gridlayout/widget/GridLayout$PackedMap;Z)V

    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    :cond_b
    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsValid:Z

    :cond_c
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;
    .locals 13

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Assoc;

    const-class v4, Landroidx/gridlayout/widget/GridLayout$Spec;

    const-class v5, Landroidx/gridlayout/widget/GridLayout$Bounds;

    invoke-direct {v0, v4, v5}, Landroidx/gridlayout/widget/GridLayout$Assoc;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sget-object v7, Landroidx/gridlayout/widget/GridLayout;->BASELINE:Landroidx/gridlayout/widget/GridLayout$7;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz v2, :cond_0

    iget-object v6, v6, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v6, v6, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_1
    invoke-virtual {v6, v2}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getBounds()Landroidx/gridlayout/widget/GridLayout$Bounds;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Assoc;->pack()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    :cond_2
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$Bounds;

    const/4 v4, 0x0

    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroidx/gridlayout/widget/GridLayout$Bounds;->reset()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x1

    if-ge v4, v0, :cond_a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sget-object v7, Landroidx/gridlayout/widget/GridLayout;->BASELINE:Landroidx/gridlayout/widget/GridLayout$7;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz v2, :cond_4

    iget-object v7, v7, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_4

    :cond_4
    iget-object v7, v7, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_4
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    const/4 v9, 0x0

    goto :goto_6

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    goto :goto_5

    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    :goto_5
    invoke-virtual {v3, v6, v2, v5}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v5

    invoke-virtual {v3, v6, v2, v1}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v9

    add-int/2addr v9, v5

    add-int/2addr v9, v8

    :goto_6
    iget v5, v7, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto :goto_7

    :cond_7
    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    if-nez v5, :cond_8

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    :cond_8
    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    aget v5, v5, v4

    :goto_7
    add-int/2addr v9, v5

    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    iget-object v10, v5, Landroidx/gridlayout/widget/GridLayout$PackedMap;->index:[I

    aget v10, v10, v4

    iget-object v5, v5, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v10

    check-cast v5, Landroidx/gridlayout/widget/GridLayout$Bounds;

    iget v10, v5, Landroidx/gridlayout/widget/GridLayout$Bounds;->flexibility:I

    sget-object v11, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$2;

    iget-object v12, v7, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    if-ne v12, v11, :cond_9

    iget v11, v7, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    cmpl-float v8, v11, v8

    if-nez v8, :cond_9

    const/4 v8, 0x0

    goto :goto_8

    :cond_9
    const/4 v8, 0x2

    :goto_8
    and-int/2addr v8, v10

    iput v8, v5, Landroidx/gridlayout/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {v7, v2}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v7

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v8

    invoke-virtual {v7, v6, v9, v8}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v6

    sub-int/2addr v9, v6

    invoke-virtual {v5, v6, v9}, Landroidx/gridlayout/widget/GridLayout$Bounds;->include(II)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_a
    iput-boolean v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBoundsValid:Z

    :cond_b
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public final getLocations()[I
    .locals 12

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    iget-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeightsValid:Z

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    const/16 v7, 0x8

    if-nez v2, :cond_5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_4

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz v6, :cond_2

    iget-object v9, v9, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_2
    iget-object v9, v9, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_1
    iget v9, v9, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    cmpl-float v9, v9, v5

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeights:Z

    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeightsValid:Z

    :cond_5
    iget-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeights:Z

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([Landroidx/gridlayout/widget/GridLayout$Arc;[IZ)Z

    goto/16 :goto_8

    :cond_6
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    if-nez v2, :cond_7

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    :cond_7
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([Landroidx/gridlayout/widget/GridLayout$Arc;[IZ)Z

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iget v2, v2, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    mul-int v8, v8, v2

    add-int/2addr v8, v1

    const/4 v2, 0x2

    if-ge v8, v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_b

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v7, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz v6, :cond_a

    iget-object v10, v10, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_5

    :cond_a
    iget-object v10, v10, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_5
    iget v10, v10, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    add-float/2addr v5, v10

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    :goto_7
    if-ge v3, v8, :cond_d

    int-to-long v6, v3

    int-to-long v9, v8

    add-long/2addr v6, v9

    const-wide/16 v9, 0x2

    div-long/2addr v6, v9

    long-to-int v7, v6

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    invoke-virtual {p0, v7, v5}, Landroidx/gridlayout/widget/GridLayout$Axis;->shareOutDelta(IF)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v6

    invoke-virtual {p0, v6, v0, v4}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([Landroidx/gridlayout/widget/GridLayout$Arc;[IZ)Z

    move-result v6

    if-eqz v6, :cond_c

    add-int/lit8 v3, v7, 0x1

    move v2, v7

    goto :goto_7

    :cond_c
    move v8, v7

    goto :goto_7

    :cond_d
    if-lez v2, :cond_e

    if-nez v6, :cond_e

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    invoke-virtual {p0, v2, v5}, Landroidx/gridlayout/widget/GridLayout$Axis;->shareOutDelta(IF)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getArcs()[Landroidx/gridlayout/widget/GridLayout$Arc;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->solve([Landroidx/gridlayout/widget/GridLayout$Arc;[IZ)Z

    :cond_e
    :goto_8
    iget-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v2, :cond_f

    aget v2, v0, v4

    array-length v3, v0

    :goto_9
    if-ge v4, v3, :cond_f

    aget v5, v0, v4

    sub-int/2addr v5, v2

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_f
    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    :cond_10
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    return-object v0
.end method

.method public final getMaxIndex()I
    .locals 9

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    sget-object v8, Landroidx/gridlayout/widget/GridLayout;->BASELINE:Landroidx/gridlayout/widget/GridLayout$7;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    iget-boolean v8, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_0

    iget-object v7, v7, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v7, v7, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_1
    iget-object v7, v7, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v8, v7, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, v7, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v7, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    sub-int/2addr v8, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-ne v6, v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_2
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    :cond_3
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method public final getMeasure(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iput p1, v0, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    neg-int p1, p1

    iput p1, v0, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object p1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget p1, p1, v0

    return p1

    :cond_1
    iget-object p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iput v2, p1, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iget-object p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    const v0, -0x186a0

    iput v0, p1, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object p1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget p1, p1, v0

    return p1

    :cond_2
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iput v2, v0, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    neg-int p1, p1

    iput p1, v0, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object p1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget p1, p1, v0

    return p1
.end method

.method public final invalidateStructure()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->maxIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBounds:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinks:Landroidx/gridlayout/widget/GridLayout$PackedMap;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcs:[Landroidx/gridlayout/widget/GridLayout$Arc;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locations:[I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->hasWeightsValid:Z

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    return-void
.end method

.method public final invalidateValues()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->groupBoundsValid:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->forwardLinksValid:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->backwardLinksValid:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMarginsValid:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMarginsValid:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsValid:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    return-void
.end method

.method public final setCount(I)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz p1, :cond_0

    const-string p1, "column"

    goto :goto_0

    :cond_0
    const-string p1, "row"

    :goto_0
    const-string v0, "Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/gridlayout/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    return-void
.end method

.method public final shareOutDelta(IF)V
    .locals 6

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_1
    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    int-to-float v4, p1

    mul-float v4, v4, v3

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->deltas:[I

    aput v4, v5, v1

    sub-int/2addr p1, v4

    sub-float/2addr p2, v3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final solve([Landroidx/gridlayout/widget/GridLayout$Arc;[IZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v3, :cond_0

    const-string v3, "horizontal"

    goto :goto_0

    :cond_0
    const-string v3, "vertical"

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    array-length v9, v1

    if-ge v8, v9, :cond_13

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_9

    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v13, v1, v11

    iget-boolean v14, v13, Landroidx/gridlayout/widget/GridLayout$Arc;->valid:Z

    if-nez v14, :cond_2

    :cond_1
    const/4 v13, 0x0

    goto :goto_4

    :cond_2
    iget-object v14, v13, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v15, v14, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    iget-object v13, v13, Landroidx/gridlayout/widget/GridLayout$Arc;->value:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iget v13, v13, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    aget v15, v2, v15

    add-int/2addr v15, v13

    iget v13, v14, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    aget v14, v2, v13

    if-le v15, v14, :cond_1

    aput v15, v2, v13

    const/4 v13, 0x1

    :goto_4
    or-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    if-nez v12, :cond_8

    if-eqz v7, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    array-length v8, v1

    if-ge v6, v8, :cond_6

    aget-object v8, v1, v6

    aget-boolean v9, v7, v6

    if-eqz v9, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v9, v8, Landroidx/gridlayout/widget/GridLayout$Arc;->valid:Z

    if-nez v9, :cond_5

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    iget-object v1, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->this$0:Landroidx/gridlayout/widget/GridLayout;

    iget-object v1, v1, Landroidx/gridlayout/widget/GridLayout;->mPrinter:Landroid/util/LogPrinter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " constraints: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " are inconsistent; permanently removing: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Landroidx/gridlayout/widget/GridLayout$Axis;->arcsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    :cond_7
    return v5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    if-nez p3, :cond_a

    return v6

    :cond_a
    array-length v9, v1

    new-array v9, v9, [Z

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v4, :cond_e

    array-length v11, v1

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_d

    aget-boolean v13, v9, v12

    aget-object v14, v1, v12

    iget-boolean v15, v14, Landroidx/gridlayout/widget/GridLayout$Arc;->valid:Z

    if-nez v15, :cond_c

    :cond_b
    const/4 v5, 0x0

    goto :goto_8

    :cond_c
    iget-object v15, v14, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v5, v15, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    iget-object v14, v14, Landroidx/gridlayout/widget/GridLayout$Arc;->value:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iget v14, v14, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    aget v5, v2, v5

    add-int/2addr v5, v14

    iget v14, v15, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    aget v15, v2, v14

    if-le v5, v15, :cond_b

    aput v5, v2, v14

    const/4 v5, 0x1

    :goto_8
    or-int/2addr v5, v13

    aput-boolean v5, v9, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    if-nez v8, :cond_f

    move-object v7, v9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    array-length v10, v1

    if-ge v5, v10, :cond_12

    aget-boolean v10, v9, v5

    if-eqz v10, :cond_11

    aget-object v10, v1, v5

    iget-object v11, v10, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v12, v11, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    iget v11, v11, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    if-ge v12, v11, :cond_10

    goto :goto_a

    :cond_10
    iput-boolean v6, v10, Landroidx/gridlayout/widget/GridLayout$Arc;->valid:Z

    goto :goto_b

    :cond_11
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    :goto_b
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_13
    return v5
.end method

.method public final topologicalSort(Ljava/util/ArrayList;)[Landroidx/gridlayout/widget/GridLayout$Arc;
    .locals 12

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/gridlayout/widget/GridLayout$Arc;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/gridlayout/widget/GridLayout$Arc;

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Axis$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    array-length v1, p1

    new-array v2, v1, [Landroidx/gridlayout/widget/GridLayout$Arc;

    iput-object v2, v0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->result:[Landroidx/gridlayout/widget/GridLayout$Arc;

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->cursor:I

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [[Landroidx/gridlayout/widget/GridLayout$Arc;

    new-array v3, v1, [I

    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, p1, v6

    iget-object v7, v7, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v7, v7, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget v8, v3, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    aget v6, v3, v4

    new-array v6, v6, [Landroidx/gridlayout/widget/GridLayout$Arc;

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([II)V

    array-length v4, p1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, p1, v6

    iget-object v8, v7, Landroidx/gridlayout/widget/GridLayout$Arc;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v8, v8, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget-object v9, v2, v8

    aget v10, v3, v8

    add-int/lit8 v11, v10, 0x1

    aput v11, v3, v8

    aput-object v7, v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iput-object v2, v0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroidx/gridlayout/widget/GridLayout$Arc;

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, v0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->visited:[I

    :goto_3
    if-ge v5, v1, :cond_3

    invoke-virtual {v0, v5}, Landroidx/gridlayout/widget/GridLayout$Axis$1;->walk(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, v0, Landroidx/gridlayout/widget/GridLayout$Axis$1;->result:[Landroidx/gridlayout/widget/GridLayout$Arc;

    return-object p1
.end method
