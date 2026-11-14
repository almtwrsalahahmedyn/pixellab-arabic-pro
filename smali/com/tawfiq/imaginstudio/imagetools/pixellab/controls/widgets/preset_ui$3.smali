.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->ForStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field bgGrad:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field pnt:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V
    .locals 3

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v0, "#b5bb7b"

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->fromHex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#3a6367"

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->fromHex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p1, v2, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->bgGrad:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->pnt:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->pnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->bgGrad:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(FFFF)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->pnt:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

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
