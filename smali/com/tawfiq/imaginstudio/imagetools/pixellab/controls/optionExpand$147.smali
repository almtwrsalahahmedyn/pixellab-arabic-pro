.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$oldColorOverlayColor:I

.field final synthetic val$oldColorOverlayEnabled:Z

.field final synthetic val$oldColorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final synthetic val$oldColorOverlayType:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayEnabled:Z

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayType:I

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayColor:I

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayEnabled:Z

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayType:I

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayColor:I

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setColorOverlay(ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    return-void
.end method
