.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;->setAlphaVal(I)V

    return-void
.end method
