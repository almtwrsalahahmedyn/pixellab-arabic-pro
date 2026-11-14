.class public final synthetic Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;


# instance fields
.field public final synthetic f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field public final synthetic f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field public final synthetic f$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method public synthetic constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;->f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;->f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;->f$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    return-void
.end method


# virtual methods
.method public final onShapeChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;->f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;->f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$tjZz7ytCL7BvkrLyjyjG-vZnIN4;->f$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->lambda$addControlsForMessage$1$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    return-void
.end method
