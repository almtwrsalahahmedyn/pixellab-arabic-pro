.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->doInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->val$finalSubBgPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsBitmapAssets(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    const v1, 0x7f1100f9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method
