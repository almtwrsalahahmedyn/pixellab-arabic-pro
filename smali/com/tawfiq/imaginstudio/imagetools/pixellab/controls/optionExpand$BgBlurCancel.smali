.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurCancel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field private final prevBlur:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurCancel;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurCancel;->prevBlur:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurCancel;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$BgBlurCancel;->prevBlur:I

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setBlurRadius(I)V

    :cond_0
    return-void
.end method
