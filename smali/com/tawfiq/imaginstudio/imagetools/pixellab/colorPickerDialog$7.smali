.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;
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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$7;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$7;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ColorPicker;->getColor()I

    move-result p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$7;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;->onColorSelected(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
