.class public Landroidx/gridlayout/widget/GridLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/gridlayout/widget/GridLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final BASELINE:Landroidx/gridlayout/widget/GridLayout$7;

.field public static final BOTTOM:Landroidx/gridlayout/widget/GridLayout$4;

.field public static final CENTER:Landroidx/gridlayout/widget/GridLayout$6;

.field public static final COLUMN_COUNT:I

.field public static final COLUMN_ORDER_PRESERVED:I

.field public static final END:Landroidx/gridlayout/widget/GridLayout$4;

.field public static final FILL:Landroidx/gridlayout/widget/GridLayout$8;

.field public static final LEFT:Landroidx/gridlayout/widget/GridLayout$5;

.field public static final LOG_PRINTER:Landroid/util/LogPrinter;

.field public static final ORIENTATION:I

.field public static final RIGHT:Landroidx/gridlayout/widget/GridLayout$5;

.field public static final ROW_COUNT:I

.field public static final ROW_ORDER_PRESERVED:I

.field public static final START:Landroidx/gridlayout/widget/GridLayout$3;

.field public static final TOP:Landroidx/gridlayout/widget/GridLayout$3;

.field public static final UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$2;

.field public static final USE_DEFAULT_MARGINS:I


# instance fields
.field public final mAlignmentMode:I

.field public final mDefaultGap:I

.field public final mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

.field public mLastLayoutParamsHashCode:I

.field public final mOrientation:I

.field public final mPrinter:Landroid/util/LogPrinter;

.field public final mUseDefaultMargins:Z

.field public final mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->LOG_PRINTER:Landroid/util/LogPrinter;

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$1;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$1;-><init>()V

    sput v2, Landroidx/gridlayout/widget/GridLayout;->ORIENTATION:I

    const/4 v0, 0x4

    sput v0, Landroidx/gridlayout/widget/GridLayout;->ROW_COUNT:I

    const/4 v0, 0x1

    sput v0, Landroidx/gridlayout/widget/GridLayout;->COLUMN_COUNT:I

    const/4 v0, 0x6

    sput v0, Landroidx/gridlayout/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    const/4 v0, 0x5

    sput v0, Landroidx/gridlayout/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    const/4 v0, 0x2

    sput v0, Landroidx/gridlayout/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$2;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$2;

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$3;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$3;-><init>()V

    new-instance v1, Landroidx/gridlayout/widget/GridLayout$4;

    invoke-direct {v1}, Landroidx/gridlayout/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->TOP:Landroidx/gridlayout/widget/GridLayout$3;

    sput-object v1, Landroidx/gridlayout/widget/GridLayout;->BOTTOM:Landroidx/gridlayout/widget/GridLayout$4;

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->START:Landroidx/gridlayout/widget/GridLayout$3;

    sput-object v1, Landroidx/gridlayout/widget/GridLayout;->END:Landroidx/gridlayout/widget/GridLayout$4;

    new-instance v2, Landroidx/gridlayout/widget/GridLayout$5;

    invoke-direct {v2, v0, v1}, Landroidx/gridlayout/widget/GridLayout$5;-><init>(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)V

    sput-object v2, Landroidx/gridlayout/widget/GridLayout;->LEFT:Landroidx/gridlayout/widget/GridLayout$5;

    new-instance v2, Landroidx/gridlayout/widget/GridLayout$5;

    invoke-direct {v2, v1, v0}, Landroidx/gridlayout/widget/GridLayout$5;-><init>(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)V

    sput-object v2, Landroidx/gridlayout/widget/GridLayout;->RIGHT:Landroidx/gridlayout/widget/GridLayout$5;

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$6;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->CENTER:Landroidx/gridlayout/widget/GridLayout$6;

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$7;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->BASELINE:Landroidx/gridlayout/widget/GridLayout$7;

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$8;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->FILL:Landroidx/gridlayout/widget/GridLayout$8;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/gridlayout/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/gridlayout/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroidx/gridlayout/widget/GridLayout$Axis;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;-><init>(Landroidx/gridlayout/widget/GridLayout;Z)V

    iput-object p3, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    new-instance v1, Landroidx/gridlayout/widget/GridLayout$Axis;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;-><init>(Landroidx/gridlayout/widget/GridLayout;Z)V

    iput-object v1, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    iput v2, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout;->mUseDefaultMargins:Z

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout;->mAlignmentMode:I

    iput v2, p0, Landroidx/gridlayout/widget/GridLayout;->mLastLayoutParamsHashCode:I

    sget-object v3, Landroidx/gridlayout/widget/GridLayout;->LOG_PRINTER:Landroid/util/LogPrinter;

    iput-object v3, p0, Landroidx/gridlayout/widget/GridLayout;->mPrinter:Landroid/util/LogPrinter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroidx/gridlayout/widget/GridLayout;->mDefaultGap:I

    sget-object v3, Landroidx/gridlayout/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Landroidx/gridlayout/widget/GridLayout;->ROW_COUNT:I

    const/high16 v3, -0x80000000

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/gridlayout/widget/GridLayout$Axis;->setCount(I)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    sget p2, Landroidx/gridlayout/widget/GridLayout;->COLUMN_COUNT:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/gridlayout/widget/GridLayout$Axis;->setCount(I)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    sget p2, Landroidx/gridlayout/widget/GridLayout;->ORIENTATION:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iget v3, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    if-eq v3, p2, :cond_0

    iput p2, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    :cond_0
    sget p2, Landroidx/gridlayout/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/gridlayout/widget/GridLayout;->mUseDefaultMargins:Z

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/gridlayout/widget/GridLayout;->mAlignmentMode:I

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    sget p2, Landroidx/gridlayout/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v1, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateStructure()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    sget p2, Landroidx/gridlayout/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p3, Landroidx/gridlayout/widget/GridLayout$Axis;->orderPreserved:Z

    invoke-virtual {p3}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateStructure()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public static getAlignment(IZ)Landroidx/gridlayout/widget/GridLayout$Alignment;
    .locals 3

    const/4 v0, 0x7

    if-eqz p1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    and-int/2addr p0, v1

    shr-int/2addr p0, v2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v1, 0x3

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    const p1, 0x800003

    if-eq p0, p1, :cond_3

    const p1, 0x800005

    if-eq p0, p1, :cond_2

    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$2;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->END:Landroidx/gridlayout/widget/GridLayout$4;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->START:Landroidx/gridlayout/widget/GridLayout$3;

    return-object p0

    :cond_4
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->FILL:Landroidx/gridlayout/widget/GridLayout$8;

    return-object p0

    :cond_5
    if-eqz p1, :cond_6

    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->RIGHT:Landroidx/gridlayout/widget/GridLayout$5;

    goto :goto_2

    :cond_6
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->BOTTOM:Landroidx/gridlayout/widget/GridLayout$4;

    :goto_2
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->LEFT:Landroidx/gridlayout/widget/GridLayout$5;

    goto :goto_3

    :cond_8
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->TOP:Landroidx/gridlayout/widget/GridLayout$3;

    :goto_3
    return-object p0

    :cond_9
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->CENTER:Landroidx/gridlayout/widget/GridLayout$6;

    return-object p0
.end method

.method public static handleInvalidParams(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCellGroup(Landroidx/gridlayout/widget/GridLayout$LayoutParams;IIII)V
    .locals 3

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Interval;

    add-int/2addr p2, p1

    invoke-direct {v0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    iget-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    new-instance p2, Landroidx/gridlayout/widget/GridLayout$Spec;

    iget v1, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    iget-boolean v2, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-direct {p2, v2, v0, p1, v1}, Landroidx/gridlayout/widget/GridLayout$Spec;-><init>(ZLandroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$Alignment;F)V

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    new-instance p1, Landroidx/gridlayout/widget/GridLayout$Interval;

    add-int/2addr p4, p3

    invoke-direct {p1, p3, p4}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    iget-object p2, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    new-instance p3, Landroidx/gridlayout/widget/GridLayout$Spec;

    iget p4, p2, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    iget-boolean v0, p2, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    iget-object p2, p2, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-direct {p3, v0, p1, p2, p4}, Landroidx/gridlayout/widget/GridLayout$Spec;-><init>(ZLandroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$Alignment;F)V

    iput-object p3, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method public static spec(IILandroidx/gridlayout/widget/GridLayout$Alignment;F)Landroidx/gridlayout/widget/GridLayout$Spec;
    .locals 3

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Spec;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroidx/gridlayout/widget/GridLayout$Interval;

    add-int/2addr p1, p0

    invoke-direct {v2, p0, p1}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {v0, v1, v2, p2, p3}, Landroidx/gridlayout/widget/GridLayout$Spec;-><init>(ZLandroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$Alignment;F)V

    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroidx/gridlayout/widget/GridLayout$LayoutParams;Z)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string v0, "row"

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_1
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v1, p1, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_3

    if-ltz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p1, " indices must be positive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/gridlayout/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object p2, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    :goto_3
    iget p2, p2, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    if-eq p2, v3, :cond_7

    iget p1, p1, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    const-string v3, " count"

    if-gt p1, p2, :cond_6

    sub-int/2addr p1, v1

    if-gt p1, p2, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " span mustn\'t exceed the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/gridlayout/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/gridlayout/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_4
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    instance-of v0, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/gridlayout/widget/GridLayout;->checkLayoutParams(Landroidx/gridlayout/widget/GridLayout$LayoutParams;Z)V

    invoke-virtual {p0, p1, v1}, Landroidx/gridlayout/widget/GridLayout;->checkLayoutParams(Landroidx/gridlayout/widget/GridLayout$LayoutParams;Z)V

    return v0
.end method

.method public final computeLayoutParamsHashCode()I
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    move v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final consistencyCheck()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/gridlayout/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v1, :cond_13

    iget v1, v0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, v0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v4, v0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    :goto_1
    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    new-array v5, v4, [I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v7, v6, :cond_12

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz v1, :cond_3

    iget-object v11, v10, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_4

    :cond_3
    iget-object v11, v10, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_4
    iget-object v12, v11, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v13, v12, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    iget v12, v12, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    sub-int/2addr v13, v12

    iget-boolean v11, v11, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    if-eqz v11, :cond_4

    move v8, v12

    :cond_4
    if-eqz v1, :cond_5

    iget-object v12, v10, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_5

    :cond_5
    iget-object v12, v10, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_5
    iget-object v14, v12, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v15, v14, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    iget v14, v14, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    sub-int/2addr v15, v14

    iget-boolean v12, v12, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    if-nez v4, :cond_6

    goto :goto_7

    :cond_6
    if-eqz v12, :cond_7

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    sub-int v2, v4, v16

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_7
    if-eqz v12, :cond_8

    move v9, v14

    :cond_8
    if-eqz v4, :cond_10

    if-eqz v11, :cond_9

    if-nez v12, :cond_f

    :cond_9
    :goto_8
    add-int v2, v9, v15

    if-le v2, v4, :cond_a

    goto :goto_a

    :cond_a
    move v11, v9

    :goto_9
    if-ge v11, v2, :cond_c

    aget v14, v5, v11

    if-le v14, v8, :cond_b

    :goto_a
    const/4 v11, 0x0

    goto :goto_b

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_c
    const/4 v11, 0x1

    :goto_b
    if-nez v11, :cond_f

    if-eqz v12, :cond_d

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    if-gt v2, v4, :cond_e

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_8

    :cond_f
    add-int v2, v9, v15

    add-int v11, v8, v13

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v12, v2, v11}, Ljava/util/Arrays;->fill([IIII)V

    :cond_10
    if-eqz v1, :cond_11

    invoke-static {v10, v8, v13, v9, v15}, Landroidx/gridlayout/widget/GridLayout;->setCellGroup(Landroidx/gridlayout/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_c

    :cond_11
    invoke-static {v10, v9, v15, v8, v13}, Landroidx/gridlayout/widget/GridLayout;->setCellGroup(Landroidx/gridlayout/widget/GridLayout$LayoutParams;IIII)V

    :goto_c
    add-int/2addr v9, v15

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/gridlayout/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    iput v1, v0, Landroidx/gridlayout/widget/GridLayout;->mLastLayoutParamsHashCode:I

    goto :goto_d

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/gridlayout/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v2

    if-eq v1, v2, :cond_14

    iget-object v1, v0, Landroidx/gridlayout/widget/GridLayout;->mPrinter:Landroid/util/LogPrinter;

    const-string v2, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-virtual {v1, v2}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    invoke-virtual/range {p0 .. p0}, Landroidx/gridlayout/widget/GridLayout;->consistencyCheck()V

    :cond_14
    :goto_d
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    instance-of v0, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    check-cast p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    sget-object v1, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object v1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object v1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-object v1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object v1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    sget-object p1, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iput-object p1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_0
    return-object v0
.end method

.method public final getMargin(Landroid/view/View;ZZ)I
    .locals 3

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/gridlayout/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    :goto_0
    if-eqz p3, :cond_4

    iget-object v2, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [I

    iput-object v2, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    :cond_2
    iget-boolean v2, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeMargins(Z)V

    iput-boolean v1, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMarginsValid:Z

    :cond_3
    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->leadingMargins:[I

    goto :goto_1

    :cond_4
    iget-object v2, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [I

    iput-object v2, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    :cond_5
    iget-boolean v2, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->computeMargins(Z)V

    iput-boolean v1, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMarginsValid:Z

    :cond_6
    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$Axis;->trailingMargins:[I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz p2, :cond_7

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_2

    :cond_7
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_2
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    if-eqz p3, :cond_8

    iget p1, p1, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_8
    iget p1, p1, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    :goto_3
    aget p1, v0, p1

    return p1
.end method

.method public final getMargin1(Landroid/view/View;ZZ)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_c

    iget-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout;->mUseDefaultMargins:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_7

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_2

    :cond_5
    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_2
    if-eqz p2, :cond_6

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    :goto_3
    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    if-eqz p2, :cond_9

    sget-object p2, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$1;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_9

    if-nez p3, :cond_8

    const/4 p3, 0x1

    goto :goto_5

    :cond_8
    const/4 p3, 0x0

    :cond_9
    :goto_5
    if-eqz p3, :cond_a

    iget p2, v0, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    goto :goto_6

    :cond_a
    iget p2, v0, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Landroidx/legacy/widget/Space;

    if-eq p2, p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/widget/Space;

    if-ne p1, p2, :cond_b

    goto :goto_1

    :cond_b
    iget p1, p0, Landroidx/gridlayout/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 p1, p1, 0x2

    move v1, p1

    :cond_c
    :goto_7
    return v1
.end method

.method public final invalidateStructure()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout;->mLastLayoutParamsHashCode:I

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateStructure()V

    :cond_0
    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateStructure()V

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    :cond_2
    return-void
.end method

.method public final measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {p2, v3, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0, p1, v2, v0}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result p4

    invoke-virtual {p0, p1, v2, v2}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    add-int/2addr v0, p4

    invoke-static {p3, v0, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final measureChildrenWithMargins(IIZ)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    goto :goto_6

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz p3, :cond_1

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_4

    :cond_1
    iget v5, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    iget-object v7, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v7, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_2
    invoke-virtual {v7, v5}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v8

    sget-object v9, Landroidx/gridlayout/widget/GridLayout;->FILL:Landroidx/gridlayout/widget/GridLayout$8;

    if-ne v8, v9, :cond_6

    if-eqz v5, :cond_4

    iget-object v8, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object v8, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    :goto_3
    invoke-virtual {v8}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v8

    iget-object v7, v7, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget v9, v7, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    aget v9, v8, v9

    iget v7, v7, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget v7, v8, v7

    sub-int/2addr v9, v7

    invoke-virtual {p0, v4, v5, v6}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v6

    invoke-virtual {p0, v4, v5, v1}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v7

    add-int/2addr v7, v6

    sub-int v6, v9, v7

    if-eqz v5, :cond_5

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move v8, v3

    move v7, v6

    goto :goto_5

    :cond_5
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move v3, v6

    :goto_4
    move v8, v3

    move v7, v5

    :goto_5
    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/gridlayout/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 32

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/gridlayout/widget/GridLayout;->consistencyCheck()V

    sub-int v7, p4, p2

    sub-int v0, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int v2, v7, v8

    sub-int/2addr v2, v10

    iget-object v11, v6, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    iget-object v3, v11, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iput v2, v3, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iget-object v3, v11, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    neg-int v2, v2

    iput v2, v3, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    invoke-virtual {v11}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    sub-int/2addr v0, v9

    sub-int/2addr v0, v1

    iget-object v13, v6, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    iget-object v1, v13, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMin:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    iput v0, v1, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iget-object v1, v13, Landroidx/gridlayout/widget/GridLayout$Axis;->parentMax:Landroidx/gridlayout/widget/GridLayout$MutableInt;

    neg-int v0, v0

    iput v0, v1, Landroidx/gridlayout/widget/GridLayout$MutableInt;->value:I

    iput-boolean v12, v13, Landroidx/gridlayout/widget/GridLayout$Axis;->locationsValid:Z

    invoke-virtual {v13}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    invoke-virtual {v11}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v14

    invoke-virtual {v13}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_5

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move/from16 v21, v4

    move/from16 v27, v5

    move-object/from16 v19, v11

    move-object/from16 p3, v14

    const/16 v31, 0x0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    iget-object v1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-object v2, v1, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget-object v12, v0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    move/from16 p2, v5

    iget v5, v2, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget v16, v14, v5

    iget v5, v12, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget v17, v15, v5

    iget v2, v2, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    aget v2, v14, v2

    iget v5, v12, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    aget v5, v15, v5

    sub-int v12, v2, v16

    sub-int v18, v5, v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 p3, v14

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v0

    invoke-virtual {v11}, Landroidx/gridlayout/widget/GridLayout$Axis;->getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v14

    move/from16 p5, v2

    iget-object v2, v14, Landroidx/gridlayout/widget/GridLayout$PackedMap;->index:[I

    aget v2, v2, v4

    iget-object v14, v14, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    aget-object v2, v14, v2

    check-cast v2, Landroidx/gridlayout/widget/GridLayout$Bounds;

    invoke-virtual {v13}, Landroidx/gridlayout/widget/GridLayout$Axis;->getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v14

    move-object/from16 v19, v11

    iget-object v11, v14, Landroidx/gridlayout/widget/GridLayout$PackedMap;->index:[I

    aget v11, v11, v4

    iget-object v14, v14, Landroidx/gridlayout/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    aget-object v11, v14, v11

    check-cast v11, Landroidx/gridlayout/widget/GridLayout$Bounds;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroidx/gridlayout/widget/GridLayout$Bounds;->size(Z)I

    move-result v20

    move/from16 v21, v4

    sub-int v4, v12, v20

    invoke-virtual {v1, v3, v4}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v20

    invoke-virtual {v11, v14}, Landroidx/gridlayout/widget/GridLayout$Bounds;->size(Z)I

    move-result v4

    sub-int v4, v18, v4

    invoke-virtual {v0, v3, v4}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v22

    invoke-virtual {v6, v3, v14, v14}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v23

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4, v14}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v24

    invoke-virtual {v6, v3, v14, v4}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v25

    invoke-virtual {v6, v3, v4, v4}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v14

    add-int v26, v23, v25

    add-int v14, v24, v14

    add-int v27, v5, v26

    const/16 v28, 0x1

    move-object/from16 p1, v0

    move-object v0, v2

    move-object v2, v1

    move-object/from16 v1, p0

    move/from16 v30, p5

    move-object/from16 v29, v2

    move-object v2, v3

    move-object/from16 p5, v3

    move-object/from16 v3, v29

    const/16 v31, 0x0

    move/from16 v4, v27

    move/from16 v27, p2

    move v6, v5

    move/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Landroidx/gridlayout/widget/GridLayout$Bounds;->getOffset(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$Alignment;IZ)I

    move-result v28

    move/from16 v5, v30

    add-int v4, v5, v14

    const/16 v30, 0x0

    move-object v0, v11

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move v11, v5

    move/from16 v5, v30

    invoke-virtual/range {v0 .. v5}, Landroidx/gridlayout/widget/GridLayout$Bounds;->getOffset(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$Alignment;IZ)I

    move-result v0

    sub-int v12, v12, v26

    move-object/from16 v1, v29

    invoke-virtual {v1, v6, v12}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getSizeInCell(II)I

    move-result v1

    sub-int v2, v18, v14

    invoke-virtual {v3, v11, v2}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getSizeInCell(II)I

    move-result v2

    add-int v16, v16, v20

    add-int v16, v16, v28

    sget-object v3, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/ViewCompat$1;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-nez v14, :cond_2

    add-int v23, v8, v23

    add-int v23, v23, v16

    goto :goto_2

    :cond_2
    sub-int v3, v7, v1

    sub-int/2addr v3, v10

    sub-int v3, v3, v25

    sub-int v23, v3, v16

    :goto_2
    move/from16 v3, v23

    add-int v17, v9, v17

    add-int v17, v17, v22

    add-int v17, v17, v0

    add-int v0, v17, v24

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-ne v1, v4, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eq v2, v4, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    goto :goto_4

    :cond_4
    :goto_3
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v6, p5

    invoke-virtual {v6, v5, v4}, Landroid/view/View;->measure(II)V

    :goto_4
    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-virtual {v6, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/lit8 v4, v21, 0x1

    move-object/from16 v6, p0

    move-object/from16 v14, p3

    move-object/from16 v11, v19

    move/from16 v5, v27

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->consistencyCheck()V

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v2

    neg-int v2, v3

    add-int/2addr v2, p1

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    neg-int v5, v4

    add-int/2addr v5, p2

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v2, v5, v6}, Landroidx/gridlayout/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget v6, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    const/4 v7, 0x0

    if-nez v6, :cond_1

    invoke-virtual {v1, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    invoke-virtual {p0, v2, v5, v7}, Landroidx/gridlayout/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    invoke-virtual {v0, v5}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v0

    invoke-virtual {p0, v2, v5, v7}, Landroidx/gridlayout/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    invoke-virtual {v1, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    :goto_0
    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    return-void
.end method
