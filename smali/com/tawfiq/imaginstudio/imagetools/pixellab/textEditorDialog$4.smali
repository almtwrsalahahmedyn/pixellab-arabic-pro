.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$4;
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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->up:Z

    return-void
.end method
