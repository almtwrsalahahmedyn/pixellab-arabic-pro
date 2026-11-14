.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->val$quoteText:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;Ljava/lang/String;)V

    return-void
.end method
