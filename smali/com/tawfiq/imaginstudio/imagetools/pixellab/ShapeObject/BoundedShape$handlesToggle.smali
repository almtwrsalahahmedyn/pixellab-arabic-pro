.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "handlesToggle"
.end annotation


# instance fields
.field active_00:Z

.field active_01:Z

.field active_0H:Z

.field active_10:Z

.field active_11:Z

.field active_1H:Z

.field active_H0:Z

.field active_H1:Z

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    return-void
.end method


# virtual methods
.method public applyPreset1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    return-void
.end method

.method public toggleAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    return-void
.end method

.method public toggleMain(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    return-void
.end method

.method public toggleSecondary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    return-void
.end method
