.class public final enum Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

.field public static final enum assets:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

.field public static final enum local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const-string v1, "local_file"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const-string v3, "assets"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    .locals 1

    const-class v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-object p0
.end method

.method public static values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->$VALUES:[Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    invoke-virtual {v0}, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-object v0
.end method
