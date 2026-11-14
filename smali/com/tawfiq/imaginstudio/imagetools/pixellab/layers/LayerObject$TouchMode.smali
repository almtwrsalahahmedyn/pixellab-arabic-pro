.class final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_all:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_edit:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_hide:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_lock:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v3, "drag"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v5, "click_all"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v7, "click_delete"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v9, "click_hide"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_hide:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v11, "click_edit"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_edit:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v13, "click_lock"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_lock:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v15, "click_select"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    return-object v0
.end method
