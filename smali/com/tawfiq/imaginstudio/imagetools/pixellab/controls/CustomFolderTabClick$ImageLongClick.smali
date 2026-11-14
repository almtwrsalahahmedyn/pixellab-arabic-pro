.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$ImageLongClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final imageFile:Ljava/io/File;

.field public final tabClick:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$ImageLongClick;->tabClick:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$ImageLongClick;->imageFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$ImageLongClick;->imageFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick$ImageLongClick;->tabClick:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u062d\u0630\u0641 \u0627\u0644\u0645\u0644\u0635\u0642"

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u0647\u0644 \u062a\u0631\u064a\u062f \u062d\u0630\u0641 \u0647\u0630\u0627 \u0627\u0644\u0645\u0644\u0635\u0642 \u0646\u0647\u0627\u0626\u064a\u0627\u064b \u0645\u0646 \u0627\u0644\u0645\u062c\u0644\u062f\u061f"

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u062d\u0630\u0641"

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
