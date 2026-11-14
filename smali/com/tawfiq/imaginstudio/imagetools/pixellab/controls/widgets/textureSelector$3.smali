.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;-><init>(Landroid/content/Context;ZLcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

.field final synthetic val$forShape:Z

.field final synthetic val$scaleLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field final synthetic val$selectorInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;ZLcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$forShape:Z

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$scaleLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$selectorInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$forShape:Z

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->textureSizeShape(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->textureSize(I)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$scaleLabel:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$selectorInterface:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    div-int/lit8 p1, p1, 0xa

    invoke-interface {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;->scaleChanged(I)V

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
