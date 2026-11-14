.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$aStyle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

.field final synthetic val$style:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/io/File;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->val$style:Ljava/io/File;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->val$aStyle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110183

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
