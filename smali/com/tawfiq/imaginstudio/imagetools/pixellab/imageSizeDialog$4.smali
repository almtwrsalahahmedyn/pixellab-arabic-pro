.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

    iget-object p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

    if-eqz p2, :cond_2

    iget v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    iget v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->keepCropSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-interface {p2, v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;->onSizePicked(IIZ)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
