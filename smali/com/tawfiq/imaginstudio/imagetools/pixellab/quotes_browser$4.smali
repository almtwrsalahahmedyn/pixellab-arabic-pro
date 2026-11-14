.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->LoadQuotes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$4;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->quotesHolderScroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
