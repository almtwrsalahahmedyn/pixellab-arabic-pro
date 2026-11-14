.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;
.super Ljava/lang/Object;


# instance fields
.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x1:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y1:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x2:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y2:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x1:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y1:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x2:F

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y2:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public getX1()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x1:F

    return v0
.end method

.method public getX2()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x2:F

    return v0
.end method

.method public getY1()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y1:F

    return v0
.end method

.method public getY2()F
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y2:F

    return v0
.end method

.method public set(FFFF)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x1:F

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y1:F

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x2:F

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y2:F

    return-void
.end method
