.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreatorRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromShape(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int v1, v1, p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    iget p1, p2, Landroid/graphics/Rect;->left:I

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setIsRendering(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setIsRendering(Z)V

    return-object v0
.end method
