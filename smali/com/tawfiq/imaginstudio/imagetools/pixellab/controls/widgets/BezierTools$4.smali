.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->restoreScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

.field final synthetic val$finalScroller:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;->val$finalScroller:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;->val$finalScroller:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->oldScroll:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method
