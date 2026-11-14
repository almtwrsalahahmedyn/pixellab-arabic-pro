.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;
.super Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionRect"
.end annotation


# instance fields
.field public bottom:F

.field public direction:Landroid/graphics/Path$Direction;

.field public left:F

.field public right:F

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field public top:F


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFLandroid/graphics/Path$Direction;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->left:F

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->top:F

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->right:F

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->bottom:F

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->direction:Landroid/graphics/Path$Direction;

    return-void
.end method


# virtual methods
.method public addToArrayList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "r"

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->direction:Landroid/graphics/Path$Direction;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->directionToString(Landroid/graphics/Path$Direction;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->left:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->top:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->right:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->bottom:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
    .locals 8

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->left:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->top:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->right:F

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->bottom:F

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->direction:Landroid/graphics/Path$Direction;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFLandroid/graphics/Path$Direction;)V

    return-object v7
.end method
