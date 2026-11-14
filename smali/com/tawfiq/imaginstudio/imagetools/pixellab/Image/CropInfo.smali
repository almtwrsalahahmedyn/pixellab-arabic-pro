.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;
.super Ljava/lang/Object;


# static fields
.field static final floatInvPrecision:F = 0.001f

.field static final floatPrecision:I = 0x3e8


# instance fields
.field circular:Z

.field flipH:Z

.field flipV:Z

.field portion:Landroid/graphics/RectF;

.field rot:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->portion:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->rot:I

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->circular:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipH:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipV:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "cropInfoPorLeft"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    mul-float v1, v1, v2

    const-string v3, "cropInfoPorTop"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    const-string v4, "cropInfoPorRight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    const-string v5, "cropInfoPorBottom"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v0, "cropInfRot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->rot:I

    const-string v0, "cropInfCirc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->circular:Z

    const-string v0, "n7gV4v"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipH:Z

    const-string v0, "mHbGHc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipV:Z

    return-void
.end method

.method public static makeBundle(Landroid/graphics/RectF;IZZZ)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "cropInfoPorLeft"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/graphics/RectF;->top:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "cropInfoPorTop"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/graphics/RectF;->right:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v3, "cropInfoPorRight"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float p0, p0, v2

    float-to-int p0, p0

    const-string v1, "cropInfoPorBottom"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "cropInfRot"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "cropInfCirc"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "mHbGHc"

    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "n7gV4v"

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public getPortion()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->portion:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRot()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->rot:I

    return v0
.end method

.method public isCircular()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->circular:Z

    return v0
.end method

.method public isFlipH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipH:Z

    return v0
.end method

.method public isFlipV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipV:Z

    return v0
.end method
