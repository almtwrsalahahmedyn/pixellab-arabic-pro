.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;
    }
.end annotation


# static fields
.field public static final TYPE_COLOR:I = 0x1

.field public static final TYPE_GRADIENT:I = 0x2

.field public static final TYPE_PHOTO:I = 0x4


# instance fields
.field private actualHeight:I

.field private actualWidth:I

.field private bitmapPortion:Landroid/graphics/RectF;

.field changeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;

.field private circular:Z

.field private currColor:I

.field private currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field private flipH:Z

.field private flipV:Z

.field public forcedDims:Z

.field private height:I

.field private imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

.field private rotation:I

.field public shouldUnloadBitmap:Z

.field private type:I

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->type:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->circular:Z

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x42be0000    # 95.0f

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->type:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->circular:Z

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x42be0000    # 95.0f

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currColor:I

    return-void
.end method

.method private requestUnloadBitmap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    return-void
.end method

.method private setImageSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->compare(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->requestUnloadBitmap()V

    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currColor:I

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currColor:I

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    iput-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->type:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->circular:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->circular:Z

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipH:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipH:Z

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipV:Z

    iput-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipV:Z

    return-object v0
.end method

.method public getActualHeight()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    return v0
.end method

.method public getActualWidth()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    return v0
.end method

.method public getBitmapPortion()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion(Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapPortion(Z)Landroid/graphics/RectF;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    :goto_0
    return-object p1
.end method

.method public getCurrBitmapDimensions(Landroid/content/Context;)[I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromAssets(Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method public getCurrColor()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currColor:I

    return v0
.end method

.method public getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    return v0
.end method

.method public getImageSource()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    return v0
.end method

.method public isCircular()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->circular:Z

    return v0
.end method

.method public isFlipH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipH:Z

    return v0
.end method

.method public isFlipV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipV:Z

    return v0
.end method

.method public rotate90()V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    return-void
.end method

.method public setAsBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->requestUnloadBitmap()V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    invoke-virtual {p0, p3, p4, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->updateBitmapPortion(Landroid/graphics/RectF;ILandroid/content/Context;)V

    return-void
.end method

.method public setAsBitmapAssets(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setAssetsPath(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->requestUnloadBitmap()V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p2, v0, v0, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p2, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->updateBitmapPortion(Landroid/graphics/RectF;ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->updatePortionFromAspect(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public setAsColor(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currColor:I

    return-void
.end method

.method public setAsGradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-void
.end method

.method public setAspect(IIZZLandroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    mul-int v1, p4, p1

    int-to-float v1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    mul-int p4, p4, p2

    int-to-float p4, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p4, p1

    float-to-double p1, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    :cond_1
    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0, p5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->updatePortionFromAspect(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public setChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->changeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;

    return-void
.end method

.method public setCircular(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->circular:Z

    return-void
.end method

.method public setFillOptionsNoUpdate(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currColor:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->requestUnloadBitmap()V

    return-void
.end method

.method public setFlipH(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipH:Z

    return-void
.end method

.method public setFlipV(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipV:Z

    return-void
.end method

.method public setForcedDims(IIZLandroid/content/Context;)V
    .locals 7

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    const/4 v0, 0x1

    xor-int/lit8 v4, p3, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAspect(IIZZLandroid/content/Context;)V

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    return-void
.end method

.method public setOptions(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IIIIIZILandroid/graphics/RectF;ZZZ)V
    .locals 0

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currColor:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {p0, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    iput p10, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    iput-object p11, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    iput-boolean p12, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->circular:Z

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iput p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    iput p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    iput p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    iput-boolean p9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    iput-boolean p13, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipH:Z

    iput-boolean p14, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->flipV:Z

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setImageSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    return-void
.end method

.method public setOptions(Ljava/lang/String;ILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IIII)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p4, v0, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, p4

    :goto_0
    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    iput p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    iput p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currColor:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->currGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setType(I)V

    new-instance p2, Landroid/graphics/RectF;

    const/4 p3, 0x0

    const/high16 p5, 0x42c80000    # 100.0f

    invoke-direct {p2, p3, p3, p5, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->circular:Z

    const/4 p3, 0x1

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualWidth:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->actualHeight:I

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->forcedDims:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    if-ne p4, v1, :cond_1

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setImageSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    goto :goto_1

    :cond_1
    if-ne p4, v0, :cond_3

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p3, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setImageSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setImageSrc(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    return-void
.end method

.method public setType(I)V
    .locals 1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->type:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->changeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;->typeChanged(I)V

    :cond_0
    return-void
.end method

.method public updateBitmapPortion(Landroid/graphics/RectF;ILandroid/content/Context;)V
    .locals 9

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrBitmapDimensions(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    div-int/lit8 v4, p2, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v4

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-eqz v1, :cond_1

    move v4, p1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v1, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, p1

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p0

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAspect(IIZZLandroid/content/Context;)V

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->rotation:I

    :cond_3
    return-void
.end method

.method public updatePortionFromAspect(Landroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->imgSource:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrBitmapDimensions(Landroid/content/Context;)[I

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x42c80000    # 100.0f

    sub-float v3, v2, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aget v4, p1, v3

    int-to-float v4, v4

    mul-float v1, v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v1, v1, v4

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float v6, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v2

    const/4 v6, 0x1

    aget v7, p1, v6

    int-to-float v7, v7

    mul-float v5, v5, v7

    mul-float v5, v5, v4

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->width:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    mul-float v5, v5, v2

    aget v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->height:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    mul-float v3, v3, v2

    aget p1, p1, v6

    int-to-float p1, p1

    div-float/2addr v3, p1

    const/4 p1, 0x0

    invoke-virtual {v4, p1, p1, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {v1, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->bitmapPortion:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_0
    return-void
.end method
