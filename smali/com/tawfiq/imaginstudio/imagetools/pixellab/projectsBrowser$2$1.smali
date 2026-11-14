.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    iput p1, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->currentSort:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$1;)V

    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
