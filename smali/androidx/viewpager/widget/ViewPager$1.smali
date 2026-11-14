.class public final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget p2, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method
