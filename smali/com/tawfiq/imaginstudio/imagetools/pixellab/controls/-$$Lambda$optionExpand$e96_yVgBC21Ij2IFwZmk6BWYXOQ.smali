.class public final synthetic Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field public final synthetic f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field public final synthetic f$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field public final synthetic f$3:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field public final synthetic f$4:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field public final synthetic f$5:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method public synthetic constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$3:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$4:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$5:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 9

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$3:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$4:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/-$$Lambda$optionExpand$e96_yVgBC21Ij2IFwZmk6BWYXOQ;->f$5:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->lambda$addControlsForMessage$11$optionExpand(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V

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
