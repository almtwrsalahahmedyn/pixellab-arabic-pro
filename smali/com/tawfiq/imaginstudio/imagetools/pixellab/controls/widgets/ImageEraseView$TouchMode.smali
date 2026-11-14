.class final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

.field public static final enum drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

.field public static final enum none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    const-string v1, "drag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    const-string v3, "none"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    return-object v0
.end method
