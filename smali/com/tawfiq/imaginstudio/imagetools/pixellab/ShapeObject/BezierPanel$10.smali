.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setStrokeOpacity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

.field final synthetic val$opacity:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;->val$opacity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBezier(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;->val$opacity:I

    iput v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
