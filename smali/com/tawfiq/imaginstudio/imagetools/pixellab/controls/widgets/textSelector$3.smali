.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->postInvalidate()V

    return-void
.end method
