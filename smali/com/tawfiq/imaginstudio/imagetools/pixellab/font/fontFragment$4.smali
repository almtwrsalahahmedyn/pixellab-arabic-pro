.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
