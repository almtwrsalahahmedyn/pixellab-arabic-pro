.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;

.field final synthetic val$quoteText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->val$quoteText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 5

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->val$quoteText:Ljava/lang/String;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;

    invoke-direct {v3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$2;

    invoke-direct {v4, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->quotesHolder:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
