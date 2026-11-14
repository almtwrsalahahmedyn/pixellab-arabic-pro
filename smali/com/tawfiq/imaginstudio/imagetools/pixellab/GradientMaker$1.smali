.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;->addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;

.field final synthetic val$preset:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;I)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$1;->val$preset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$1;->val$preset:I

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->modifyDirectionsWithDefault(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
