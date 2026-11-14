.class synthetic Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->values()[Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode:[I

    :try_start_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_edit:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode:[I

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_hide:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode:[I

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_lock:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode:[I

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
