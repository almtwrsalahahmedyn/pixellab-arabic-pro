.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;
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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-boolean p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->justifiedEdit:Z

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->acceptHex:Landroid/widget/ImageButton;

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iput-boolean p3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->justifiedEdit:Z

    :goto_0
    return-void
.end method
