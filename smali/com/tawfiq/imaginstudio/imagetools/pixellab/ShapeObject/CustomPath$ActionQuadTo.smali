.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;
.super Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionQuadTo"
.end annotation


# instance fields
.field public first:Z

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFZ)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x1:F

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y1:F

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x2:F

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y2:F

    iput-boolean p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->first:Z

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

    const-string v0, "q"

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->first:Z

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->boolToString(Z)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x1:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y1:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x2:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y2:F

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

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x1:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y1:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x2:F

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y2:F

    iget-boolean v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->first:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFZ)V

    return-object v7
.end method
