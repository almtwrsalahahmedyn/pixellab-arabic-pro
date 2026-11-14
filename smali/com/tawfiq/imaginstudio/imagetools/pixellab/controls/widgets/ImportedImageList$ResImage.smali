.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResImage"
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private borderRad:F

.field private borderRadSelected:F

.field private final bounds:Landroid/graphics/RectF;

.field private color:I

.field private gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field private gradientCache:Landroid/graphics/Bitmap;

.field private imgArea:Landroid/graphics/Rect;

.field private pnt:Landroid/graphics/Paint;

.field private final pntBorder:Landroid/graphics/Paint;

.field private final pntBorderSelected:Landroid/graphics/Paint;

.field private selected:Z

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

.field private thumbnail:Z

.field private type:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;ILandroid/graphics/RectF;)V
    .locals 3

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/16 p1, 0x64

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildPntImgArea()V

    return-void
.end method

.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 3

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/16 p1, 0x64

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    const/4 p1, 0x4

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isValidImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildPntImgArea()V

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/RectF;)V
    .locals 2

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/16 p1, 0x64

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Landroid/graphics/RectF;)V
    .locals 3

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/16 p1, 0x64

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildPntImgArea()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method private buildGradientCache()V
    .locals 5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x100

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradientCache:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradientCache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private buildPntImgArea()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getGradientColor(FF)I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradientCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildGradientCache()V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradientCache:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImageColor(Landroid/graphics/Bitmap;FF)I

    move-result p1

    return p1
.end method

.method private getImageColor(Landroid/graphics/Bitmap;FF)I
    .locals 4

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isValidImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->clipValue(III)I

    move-result p2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p3, v2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->clipValue(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public copyForDisplay(Landroid/graphics/RectF;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;
    .locals 2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->selected:Z

    iput-boolean p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildPntImgArea()V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isValidImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->selected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->selected:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getColorAt(FF)I
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImageColor(Landroid/graphics/Bitmap;FF)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getGradientColor(FF)I

    move-result p1

    return p1

    :cond_2
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getImgArea()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->selected:Z

    return-void
.end method
