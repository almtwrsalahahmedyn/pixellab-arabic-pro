.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field pntGradient:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder;)V
    .locals 1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;->pntGradient:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;->pntGradient:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    int-to-float v1, v1

    div-float v3, v1, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const-string v3, "#f6f6f6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v3, "#161616"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;->pntGradient:Landroid/graphics/Paint;

    const/16 v3, 0x9b

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;->pntGradient:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    move v5, v11

    move v6, v0

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
