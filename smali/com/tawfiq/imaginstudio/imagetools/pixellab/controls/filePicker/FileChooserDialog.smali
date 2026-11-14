.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;
.super Landroidx/appcompat/app/AlertDialog;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;
    }
.end annotation


# instance fields
.field allCurrentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;",
            ">;"
        }
    .end annotation
.end field

.field private btnPrevDir:Landroid/widget/ImageButton;

.field btnSelectDir:Landroid/widget/Button;

.field checkedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private chooserListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

.field private chooserType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

.field private currentDirPath:Ljava/lang/String;

.field private directoryIconId:I

.field private doneText:Ljava/lang/String;

.field private drawableDir:Landroid/graphics/drawable/Drawable;

.field private drawableFile:Landroid/graphics/drawable/Drawable;

.field private fileFormats:[Ljava/lang/String;

.field private fileIconId:I

.field private initDir:Ljava/lang/String;

.field private itemsAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

.field private rvItems:Landroidx/recyclerview/widget/RecyclerView;

.field private title:Ljava/lang/String;

.field private tvCurrentDir:Landroid/widget/TextView;

.field private tvSelectedCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f080199

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileIconId:I

    const p1, 0x7f08019a

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->directoryIconId:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->title:Ljava/lang/String;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileFormats:[Ljava/lang/String;

    iput p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileIconId:I

    iput p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->directoryIconId:I

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->initDir:Ljava/lang/String;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->doneText:Ljava/lang/String;

    iput-object p9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileFormats:[Ljava/lang/String;

    return-object p0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a01dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnPrevDir:Landroid/widget/ImageButton;

    const v0, 0x7f0a0226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnSelectDir:Landroid/widget/Button;

    const v0, 0x7f0a0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvCurrentDir:Landroid/widget/TextView;

    const v0, 0x7f0a0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    return-void
.end method

.method private loadItems(Ljava/lang/String;)V
    .locals 10

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->currentDirPath:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvCurrentDir:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;

    invoke-direct {p1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableFile:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableDir:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-direct {v6, v7, v8, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->allCurrentItems:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->itemsAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method

.method private searchDirectoryRecursively(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-le p4, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    return-void

    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, p4, 0x1

    invoke-direct {p0, v2, p2, p3, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->searchDirectoryRecursively(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".plp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ".ttf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ".otf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ".psd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_5
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, ".ttf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, ".otf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v6, 0x1

    :goto_2
    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableFile:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_8

    return-void

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_9
    :goto_4
    return-void
.end method

.method private setListeners()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnPrevDir:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnSelectDir:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public filterFiles(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->allCurrentItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->currentDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->searchDirectoryRecursively(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->itemsAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->setItems(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->itemsAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->allCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->setItems(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01dd

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->currentDirPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->loadItems(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const v0, 0x7f0a0226

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    invoke-interface {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;->onFileSelected(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-interface {p1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;->onSelectFiles(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->currentDirPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;->onSelectFiles(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->findViews(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->setListeners()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->doneText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnSelectDir:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnSelectDir:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    invoke-direct {v1, p0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->itemsAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->rvItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->itemsAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimations()V

    :cond_3
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_4
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v7, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/ArrayList;)V

    iget-object v7, v4, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/ArrayList;)V

    iput v2, v4, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_5
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v5, :cond_6

    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v5}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    :cond_6
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz v4, :cond_7

    iget v4, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    :cond_7
    iget v4, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v4, :cond_8

    const/4 v4, 0x0

    :goto_2
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    iget v3, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/2addr v3, p1

    iput v3, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    :cond_9
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iput-boolean p1, v3, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->directoryIconId:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableDir:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileIconId:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableFile:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->initDir:Ljava/lang/String;

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->loadItems(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_b

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_b
    const p1, 0x7f0a0127

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$SearchWatcher;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$SearchWatcher;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$TouchInputListener;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$TouchInputListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    return-void
.end method

.method public onItemCheck(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onItemClick(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->loadItems(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;->onFileSelected(Ljava/io/File;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;->onSelectFiles(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public onItemUnCheck(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldCheckItem(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
