.class final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EraserMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

.field public static final enum erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

.field public static final enum select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    const-string v1, "erase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    const-string v3, "select"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    return-object v0
.end method
