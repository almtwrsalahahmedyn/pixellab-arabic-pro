.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$leftVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$oldPaddingLeft:I

.field final synthetic val$oldPaddingRight:I

.field final synthetic val$rightVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;I)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->val$leftVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->val$oldPaddingLeft:I

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->val$rightVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->val$oldPaddingRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->val$leftVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->val$oldPaddingLeft:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->val$rightVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$186;->val$oldPaddingRight:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void
.end method
