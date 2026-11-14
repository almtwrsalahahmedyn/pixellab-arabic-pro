.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->styleEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->val$style:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;->removeStyle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroidx/gridlayout/widget/GridLayout;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->val$aStyle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
