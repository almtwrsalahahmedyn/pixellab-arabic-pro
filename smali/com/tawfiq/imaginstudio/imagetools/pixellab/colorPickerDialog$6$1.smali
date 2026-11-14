.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorPicked(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(I)V

    return-void
.end method
