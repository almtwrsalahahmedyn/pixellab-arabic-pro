.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;->item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;->item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    iput-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->val$context:Landroid/content/Context;

    const-string p2, "\u062a\u0645 \u062a\u0639\u062f\u064a\u0644 \u0627\u0644\u0627\u0633\u0645 \u0628\u0646\u062c\u0627\u062d"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;->val$context:Landroid/content/Context;

    const-string p2, "\u0641\u0634\u0644 \u062a\u0639\u062f\u064a\u0644 \u0627\u0644\u0627\u0633\u0645"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
