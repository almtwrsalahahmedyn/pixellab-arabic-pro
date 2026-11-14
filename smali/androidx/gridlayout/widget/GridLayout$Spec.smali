.class public final Landroidx/gridlayout/widget/GridLayout$Spec;
.super Ljava/lang/Object;


# static fields
.field public static final UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;


# instance fields
.field public final alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field public final span:Landroidx/gridlayout/widget/GridLayout$Interval;

.field public final startDefined:Z

.field public final weight:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$2;

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/gridlayout/widget/GridLayout;->spec(IILandroidx/gridlayout/widget/GridLayout$Alignment;F)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method public constructor <init>(ZLandroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$Alignment;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iput-object p3, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    iput p4, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    iget-object v3, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-virtual {v2, p1}, Landroidx/gridlayout/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;
    .locals 2

    sget-object v0, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$2;

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    if-eq v1, v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/gridlayout/widget/GridLayout;->START:Landroidx/gridlayout/widget/GridLayout$3;

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/gridlayout/widget/GridLayout;->BASELINE:Landroidx/gridlayout/widget/GridLayout$7;

    :goto_0
    return-object p1

    :cond_2
    sget-object p1, Landroidx/gridlayout/widget/GridLayout;->FILL:Landroidx/gridlayout/widget/GridLayout$8;

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
