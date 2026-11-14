.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;
    }
.end annotation


# static fields
.field static final SORT_DATE_ASC:I = 0x1

.field static final SORT_DATE_DESC:I = 0x0

.field static final SORT_NAME_ASC:I = 0x3

.field static final SORT_NAME_DESC:I = 0x2


# instance fields
.field adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

.field currentSort:I

.field holder:Landroid/widget/ListView;

.field private final pickPLP:Z

.field projectEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroidx/fragment/app/FragmentManager;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->currentSort:I

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->pickPLP:Z

    return-void
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->showPLPPicker()V

    return-void
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;Ljava/io/File;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->openPLP(Ljava/io/File;Z)V

    return-void
.end method

.method private getDirLists(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private openPLP(Ljava/io/File;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".psd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-static {v0, p1, v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter;->importPsdFile(Landroid/content/Context;Ljava/io/File;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;Z)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pixelLab/presets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->returnAvailableFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->unzipFile(Ljava/io/File;Ljava/io/File;)Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;->loadProject(Ljava/lang/String;)V

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;->removeProject(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private showPLPPicker()V
    .locals 11

    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILE_CHOOSER:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f110154

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v0, "plp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$5;

    invoke-direct {v9, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    const/4 v4, 0x0

    const v7, 0x7f0801c1

    const v8, 0x7f08019a

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;)V

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateUserPresets(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/pixelLab/presets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->getDirLists(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/presets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->getDirLists(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    const-string v3, "deleted"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    const-string v3, "data.plab"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    invoke-direct {v2, p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;Ljava/io/File;)V

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0076

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->holder:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->holder:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a01bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$1;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a01bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$3;

    invoke-direct {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-direct {p1, p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->updateUserPresets(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->holder:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->adapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a01bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$4;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a02ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$SearchTextWatcher;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$SearchTextWatcher;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "theme_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_color"

    const v2, -0xff8d8e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->v:Landroid/view/View;

    if-eqz v1, :cond_7

    const v2, 0x7f0a01bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    const v2, 0x7f0a01bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    const v2, 0x7f0a01bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->pickPLP:Z

    if-eqz p1, :cond_8

    :try_start_0
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->showPLPPicker()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_0
    return-void
.end method
