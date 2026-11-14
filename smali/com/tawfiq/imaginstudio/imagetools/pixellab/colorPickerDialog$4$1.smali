.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorPicked(I)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(II)V

    return-void
.end method
