.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;
.super Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionCircle"
.end annotation


# instance fields
.field public rad:F

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->x:F

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->y:F

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->rad:F

    return-void
.end method


# virtual methods
.method public addToArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->x:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->y:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->rad:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
    .locals 5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->x:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->y:F

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->rad:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFF)V

    return-object v0
.end method
