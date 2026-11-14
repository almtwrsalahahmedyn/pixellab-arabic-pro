.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustomStyles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

.field final synthetic val$style:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$5;->val$style:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->styleEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$5;->val$style:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;->loadStyle(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
