.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110119

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110118

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
