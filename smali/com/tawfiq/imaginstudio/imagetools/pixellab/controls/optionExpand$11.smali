.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field oldFactor:F

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$scaleLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->val$scaleLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->oldFactor:F

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->scaleObjects(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->val$scaleLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    float-to-int p3, p1

    invoke-virtual {p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p2

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object p3, p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->oldFactor:F

    div-float v0, p1, v0

    invoke-virtual {p2, p3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->scaleObjects(Ljava/util/ArrayList;F)V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->oldFactor:F

    return-void
.end method

.method public synthetic onStartTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$-CC;->$default$onStartTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void
.end method

.method public synthetic onStopTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$-CC;->$default$onStopTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void
.end method
