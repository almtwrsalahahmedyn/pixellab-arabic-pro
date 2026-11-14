.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->handleSwitchClick(Landroid/content/Context;Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->up:Z

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->up:Z

    return-void
.end method
