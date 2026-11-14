.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$defaultDirections;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "defaultDirections"
.end annotation


# static fields
.field public static final LIN_1:I = 0x1

.field public static final LIN_2:I = 0x2

.field public static final LIN_3:I = 0x3

.field public static final RAD_1:I = 0x4

.field public static final RAD_2:I = 0x5

.field public static final RAD_3:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static modifyGradientWith(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-array p1, v1, [I

    fill-array-data p1, :array_0

    goto :goto_0

    :pswitch_1
    new-array p1, v1, [I

    fill-array-data p1, :array_1

    goto :goto_0

    :pswitch_2
    new-array p1, v1, [I

    fill-array-data p1, :array_2

    :goto_0
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_3
    new-array p1, v1, [I

    fill-array-data p1, :array_3

    goto :goto_2

    :pswitch_4
    new-array p1, v1, [I

    fill-array-data p1, :array_4

    goto :goto_2

    :goto_1
    :pswitch_5
    new-array p1, v1, [I

    fill-array-data p1, :array_5

    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->setV2Direction(I[I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x32
        0x64
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x32
        0x0
        0x32
        0x64
    .end array-data

    :array_2
    .array-data 4
        0x32
        0x32
        0x64
        0x64
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x64
        0x64
    .end array-data

    :array_4
    .array-data 4
        0x32
        0x0
        0x32
        0x64
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x32
        0x64
        0x32
    .end array-data
.end method
