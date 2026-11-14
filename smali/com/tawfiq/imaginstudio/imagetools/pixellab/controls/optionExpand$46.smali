.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$46;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;


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

.field final synthetic val$beginSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$46;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$46;->val$beginSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$46;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$46;->val$beginSelector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-virtual {v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->getArrowHeadFromId(I)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setStartArrowHead(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    return-void
.end method
