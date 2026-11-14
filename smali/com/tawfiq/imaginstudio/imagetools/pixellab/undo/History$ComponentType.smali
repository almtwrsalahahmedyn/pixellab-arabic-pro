.class public final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComponentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum bg:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum multiple:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum unspecified:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v1, "text"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v3, "shape"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v5, "multiple"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v7, "bg"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v9, "unspecified"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object v0
.end method
