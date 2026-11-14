.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;
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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

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
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)I

    move-result p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;->colorPicked(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
