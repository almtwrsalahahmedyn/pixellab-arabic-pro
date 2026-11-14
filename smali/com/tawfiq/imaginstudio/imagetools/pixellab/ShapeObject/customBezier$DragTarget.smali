.class final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DragTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum currP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum nextP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum prevP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum whole:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v1, "prevP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->prevP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v3, "currP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v5, "nextP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->nextP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v7, "whole"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->whole:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v9, "none"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-object v0
.end method
