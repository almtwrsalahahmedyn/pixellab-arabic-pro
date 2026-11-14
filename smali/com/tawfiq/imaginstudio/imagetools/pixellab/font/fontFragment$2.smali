.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->DIRECTORY_CHOOSER:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    const v3, 0x7f11003e

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ttf"

    const-string v3, "otf"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;

    invoke-direct {v9, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v7, 0x7f08019b

    const v8, 0x7f08019a

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
