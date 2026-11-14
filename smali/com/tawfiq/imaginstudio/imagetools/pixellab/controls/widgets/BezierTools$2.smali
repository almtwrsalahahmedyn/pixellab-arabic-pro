.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;->val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->primaryOptions:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->secondaryOptions:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;->val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->commitTransform(Z)V

    :cond_0
    return-void
.end method
