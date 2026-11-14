.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->showKashidaDialog(Landroid/content/Context;Landroid/widget/EditText;)V

    const/4 v0, 0x1

    return v0
.end method
