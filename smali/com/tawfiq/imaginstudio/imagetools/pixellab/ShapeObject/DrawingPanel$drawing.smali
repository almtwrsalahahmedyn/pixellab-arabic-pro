.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "drawing"
.end annotation


# instance fields
.field blur:I

.field color:I

.field dashed:Z

.field fill:Z

.field private initX:F

.field private initY:F

.field neon:Z

.field path:Landroid/graphics/Path;

.field public stillDrawing:Z

.field strokeWidth:I

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

.field type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;IIZZZLandroid/graphics/Path;ILcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;FF)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->initY:F

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->initX:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->stillDrawing:Z

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->blur:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->color:I

    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->dashed:Z

    iput-boolean p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->fill:Z

    iput-boolean p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->neon:Z

    iput-object p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->path:Landroid/graphics/Path;

    iput p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->strokeWidth:I

    iput-object p9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    iput p10, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->initX:F

    iput p11, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->initY:F

    return-void
.end method


# virtual methods
.method public doneDrawing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->stillDrawing:Z

    return-void
.end method

.method public getBlur()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->blur:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->color:I

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->strokeWidth:I

    return v0
.end method

.method public isDashed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->dashed:Z

    return v0
.end method

.method public isFill()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->fill:Z

    return v0
.end method

.method public isNeon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->neon:Z

    return v0
.end method
