.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "#"

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)I

    move-result p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110135

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->setRGBFields(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->acceptHex:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-static {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;I)V

    return-void
.end method
