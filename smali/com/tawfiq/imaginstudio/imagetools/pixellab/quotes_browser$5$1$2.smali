.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->doInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "text/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->val$quoteText:Ljava/lang/String;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$2;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    const-string v1, "Share the quote : "

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
