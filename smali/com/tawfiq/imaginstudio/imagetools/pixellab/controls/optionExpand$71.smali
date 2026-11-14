.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$71;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;


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


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$71;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    sget v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$71;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsColor(I)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$71;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsGradient(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$71;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    return-void
.end method
