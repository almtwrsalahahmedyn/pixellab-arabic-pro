.class public final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum bg_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum shape_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum shape_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum text_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum text_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v1, "text_action"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v3, "text_create"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v5, "text_delete"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v7, "shape_action"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v9, "shape_create"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_create:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v11, "shape_delete"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v13, "bg_action"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->bg_action:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/HistoryType;

    return-object v0
.end method
