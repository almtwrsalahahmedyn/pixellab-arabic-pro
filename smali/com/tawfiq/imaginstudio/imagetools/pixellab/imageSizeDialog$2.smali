.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;-><init>(Landroid/content/Context;ZIILcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;)V
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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->commitValue(Landroid/text/Editable;)I

    move-result p1

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/imageSizeDialog;->updateAspect()V

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
