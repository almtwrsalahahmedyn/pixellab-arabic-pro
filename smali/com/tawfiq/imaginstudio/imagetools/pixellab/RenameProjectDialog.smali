.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

.field public item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;->item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;->item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u062a\u0639\u062f\u064a\u0644 \u0627\u0633\u0645 \u0627\u0644\u0645\u0634\u0631\u0648\u0639"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;Landroid/widget/EditText;Landroid/content/Context;)V

    const-string v3, "\u062d\u0641\u0638"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
