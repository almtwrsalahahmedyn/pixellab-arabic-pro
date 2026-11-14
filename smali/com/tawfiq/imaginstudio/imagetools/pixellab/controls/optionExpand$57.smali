.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;


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

.field final synthetic val$tools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;->val$tools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pathChanged(IZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;->val$tools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->updateActionsVisibility(IZZZ)V

    return-void
.end method

.method public selectionChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;->val$tools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->updateFor(ILjava/util/ArrayList;)V

    return-void
.end method

.method public updateMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$57;->val$tools:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->setMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    return-void
.end method
