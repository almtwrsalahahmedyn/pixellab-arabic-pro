.class final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

.field public static final enum circle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

.field public static final enum free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

.field public static final enum square:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const-string v1, "free"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const-string v3, "square"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const-string v5, "circle"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    return-object v0
.end method
