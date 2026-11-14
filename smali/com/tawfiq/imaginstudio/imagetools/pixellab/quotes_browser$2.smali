.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->spinnerArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangDir:Ljava/lang/String;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iput p3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangId:I

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
