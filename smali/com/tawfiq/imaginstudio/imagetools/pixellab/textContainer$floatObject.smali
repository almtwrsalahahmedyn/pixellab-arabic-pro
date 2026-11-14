.class public final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "floatObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum bottom:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum center_hor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum center_ver:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum left:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum right:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum top:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v1, "left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->left:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v3, "right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->right:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v5, "bottom"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->bottom:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v7, "top"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->top:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v9, "center_hor"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->center_hor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v11, "center_ver"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->center_ver:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    return-object v0
.end method
