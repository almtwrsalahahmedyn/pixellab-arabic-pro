.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->gValue:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->commitEditTextValue(Landroid/widget/EditText;)I

    move-result p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->updateHexField()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
