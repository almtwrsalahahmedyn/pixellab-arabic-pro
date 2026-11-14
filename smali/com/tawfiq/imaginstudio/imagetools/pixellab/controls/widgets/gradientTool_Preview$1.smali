.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->setDirection(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

.field final synthetic val$direction:[I

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;I[I)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->val$type:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->val$direction:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->val$type:I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->val$direction:[I

    invoke-virtual {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->setV2Direction(I[I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->updatePointsFromGradient()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
