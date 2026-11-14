.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

.field final synthetic val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-boolean v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :goto_0
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    :goto_1
    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->setCurrMode(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    :cond_3
    return-void
.end method
