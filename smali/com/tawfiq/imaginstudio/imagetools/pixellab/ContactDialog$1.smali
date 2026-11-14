.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Message below required length !"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
