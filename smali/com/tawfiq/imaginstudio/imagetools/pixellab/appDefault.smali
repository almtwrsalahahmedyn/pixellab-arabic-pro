.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;
.super Ljava/lang/Object;


# static fields
.field public static DIM_PRESET_DEFAULT:I = 0x500

.field public static DIM_PRESET_HIGH:I = 0x780

.field public static DIM_PRESET_LOW:I = 0x1e0

.field public static DIM_PRESET_ULTRA:I = 0xcc0

.field public static DIM_PRESET_VERY_HIGH:I = 0xa00

.field static HOR:I = 0x0

.field static RAD:I = 0x0

.field public static final TAG:Ljava/lang/String; = "mydebug"

.field static VER:I = 0x0

.field public static blueHighlightColor:I = 0x0

.field public static darkBlue:I = 0x0

.field public static defaultColors:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static defaultGradients:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;",
            ">;"
        }
    .end annotation
.end field

.field public static maxTextSizePx:I = 0x0

.field public static minTextSizePx:I = 0x0

.field public static final newShapeSizeDp:I = 0x3c

.field static packageName_dropbox:Ljava/lang/String;

.field static packageName_facebook:Ljava/lang/String;

.field static packageName_gplus:Ljava/lang/String;

.field static packageName_instagram:Ljava/lang/String;

.field static packageName_tumblr:Ljava/lang/String;

.field static packageName_twitter:Ljava/lang/String;

.field static packageName_whatsapp:Ljava/lang/String;

.field public static panelBgColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    const-string v0, "#FFFF3FFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    const-string v0, "#f6f6f6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->panelBgColor:I

    const-string v0, "#8a96a7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->darkBlue:I

    const/4 v0, 0x1

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const/4 v1, 0x0

    sput v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->HOR:I

    const/4 v2, 0x2

    sput v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "#000000"

    const-string v5, "#ffffff"

    const-string v6, "#f44336"

    const-string v7, "#ffcdd2"

    const-string v8, "#b71c1c"

    const-string v9, "#e91e63"

    const-string v10, "#f8bbd0"

    const-string v11, "#880e4f"

    const-string v12, "#9c27b0"

    const-string v13, "#673ab7"

    const-string v14, "#3f51b5"

    const-string v15, "#2196f3"

    const-string v16, "#bbdefb"

    const-string v17, "#0d47a1"

    const-string v18, "#03a9f4"

    const-string v19, "#00bcd4"

    const-string v20, "#009688"

    const-string v21, "#4caf50"

    const-string v22, "#c8e6c9"

    const-string v23, "#1b5e20"

    const-string v24, "#8bc34a"

    const-string v25, "#cddc39"

    const-string v26, "#ffeb3b"

    const-string v27, "#fff9c4"

    const-string v28, "#f57f17"

    const-string v29, "#ffc107"

    const-string v30, "#ff9800"

    const-string v31, "#ff5722"

    const-string v32, "#795548"

    const-string v33, "#9e9e9e"

    const-string v34, "#f5f5f5"

    const-string v35, "#e0e0e0"

    const-string v36, "#bdbdbd"

    const-string v37, "#757575"

    const-string v38, "#212121"

    const-string v39, "#607d8b"

    filled-new-array/range {v4 .. v39}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->defaultColors:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x13

    new-array v4, v4, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const/high16 v7, -0x1000000

    const/4 v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v5, v4, v1

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->HOR:I

    invoke-direct {v1, v5, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v1, v4, v0

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v5, "#99daff"

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "#008080"

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v1, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v0, v4, v2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v5, "#aec320"

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "#80940f"

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v1, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/4 v1, 0x3

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v5, "#d4a883"

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "#9c8fa1"

    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v0, v1, v6, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/4 v1, 0x4

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->HOR:I

    const-string v6, "#239eca"

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "#036082"

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v0, v1, v8, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/4 v1, 0x5

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->HOR:I

    const-string v8, "#9e9e9e"

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v8

    const-string v10, "#2196f3"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v0, v1, v8, v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/4 v1, 0x6

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v8, "#b3c9bc"

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "#4b696b"

    invoke-static {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v10, "#ffc107"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v12, "#00bcd4"

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v10, "#ffffff"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v12, "#b6b6b6"

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0x9

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v10, "#2f93c7"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v12, "#1f5e8a"

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0xa

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v10, "#fffde6"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v12, "#9a6696"

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0xb

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v10, "#800080"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v12, "#000000"

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0xc

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v10, "#f0f0f0"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v12, "#cfcfcf"

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0xd

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v10, "#b5bb7b"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v12, "#3a6367"

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0xe

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v10, "#fba939"

    invoke-static {v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v10

    const-string v12, "#ba2b60"

    invoke-static {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v1, v10, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0xf

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v0, v1, v5, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0x10

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v1, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0x11

    aput-object v0, v4, v1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-static {v11}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v1, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v1, 0x12

    aput-object v0, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->defaultGradients:Ljava/util/ArrayList;

    sput v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->minTextSizePx:I

    const/16 v0, 0x96

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->spToPx(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->maxTextSizePx:I

    const-string v0, "com.facebook.katana"

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_facebook:Ljava/lang/String;

    const-string v0, "com.twitter.android"

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_twitter:Ljava/lang/String;

    const-string v0, "com.google.android.apps.plus"

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_gplus:Ljava/lang/String;

    const-string v0, "com.whatsapp"

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_whatsapp:Ljava/lang/String;

    const-string v0, "com.instagram.android"

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_instagram:Ljava/lang/String;

    const-string v0, "com.dropbox.android"

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_dropbox:Ljava/lang/String;

    const-string v0, "com.tumblr"

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/appDefault;->packageName_tumblr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromHex(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
