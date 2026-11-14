.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$KeyboardClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final editText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$KeyboardClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$KeyboardClickListener;->editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$KeyboardClickListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$KeyboardClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$KeyboardClickListener;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
