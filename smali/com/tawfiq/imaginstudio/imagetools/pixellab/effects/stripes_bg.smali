.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;
.super Landroid/view/View;


# instance fields
.field effectAlpha:I

.field numberToRepeat:I

.field originalRes:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    const/16 p1, 0x5a

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    const/16 p1, 0x5a

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->init()V

    return-void
.end method

.method private static getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEffectAlpha()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    return v0
.end method

.method public getNumberToRepeat()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    return v0
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "effects/stripe.png"

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->originalRes:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->originalRes:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    new-instance v6, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->originalRes:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setEffectAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNumberToRepeat(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
