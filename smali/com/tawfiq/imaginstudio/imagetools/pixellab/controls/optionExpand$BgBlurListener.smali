.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


# instance fields
.field private final callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field private final label:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurListener;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurListener;->label:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurListener;->label:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurListener;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setBlurRadius(I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method
