.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSelected(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public onSelectFiles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/fonts"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v0, "userFontDirs"

    invoke-virtual {p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    return-void
.end method
