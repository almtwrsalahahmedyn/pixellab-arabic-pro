.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->addAfterSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBezier(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addPointAfterSelected()V

    return-void
.end method
