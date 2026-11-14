.class final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

.field public static final enum DRAG:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

.field public static final enum NONE:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

.field public static final enum ZOOM:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const-string v3, "DRAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const-string v5, "ZOOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->ZOOM:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    return-object v0
.end method
