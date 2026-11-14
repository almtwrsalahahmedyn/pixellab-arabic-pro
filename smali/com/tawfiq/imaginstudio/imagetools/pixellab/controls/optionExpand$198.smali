.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


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

.field final synthetic val$bgEnableSwitch:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

.field final synthetic val$bottomVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field final synthetic val$leftVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$radiusVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$rightVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$topLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$bgEnableSwitch:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$leftVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$rightVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$bottomVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$radiusVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$topLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 10

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$bgEnableSwitch:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result v1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getFillType()I

    move-result v2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getCurrColor()I

    move-result v3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$color_selector:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getCurrGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$leftVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v5, p1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$rightVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v6, p1

    int-to-float v7, p2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$bottomVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v8, p1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$radiusVal:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateBackground(ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$198;->val$topLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    return-void
.end method

.method public synthetic onStartTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$-CC;->$default$onStartTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void
.end method

.method public synthetic onStopTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$-CC;->$default$onStopTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void
.end method
