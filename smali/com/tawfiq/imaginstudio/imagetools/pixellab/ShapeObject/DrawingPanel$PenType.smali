.class public final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

.field public static final enum default_pen:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

.field public static final enum eraser:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const-string v1, "default_pen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const-string v3, "eraser"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->eraser:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-object v0
.end method
