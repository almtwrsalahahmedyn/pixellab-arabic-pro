.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;
.implements Ljava/io/Serializable;


# static fields
.field public static final transient ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final transient LAST_USED_FONT:Ljava/lang/String; = "last_fonts"

.field public static final transient LAST_USED_USER_FONT:Ljava/lang/String; = "last_userFonts"

.field public static final transient SECTION_FONTS:I = 0x0

.field public static final transient SECTION_RECENT:I = 0x2

.field public static final transient SECTION_USER_FONTS:I = 0x1

.field public static final transient USER_FONT_DIRS:Ljava/lang/String; = "userFontDirs"


# instance fields
.field private transient addFontsButton:Landroid/view/View;

.field private transient changeDirsButton:Landroid/view/View;

.field private transient clearSearch:Landroid/view/View;

.field private transient fontListInvalidated:Z

.field transient listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

.field transient listView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

.field private transient referenceToText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

.field transient rootView:Landroid/view/View;

.field private transient searchBar:Landroid/widget/EditText;

.field transient warningFonts:Landroid/widget/TextView;

.field transient warningUserFonts:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->searchBar:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->clearSearch:Landroid/view/View;

    return-object p0
.end method

.method private copyFontToStorage(Ljava/io/File;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "Cannot create dir "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/fonts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private copyFontsToStorage(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/fonts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    return-void
.end method

.method public static hideKeyboardFrom(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static newInstance(ILcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;
    .locals 2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->setReferenceToText(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "section_number"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const/16 p2, 0x1bc

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->copyFontToStorage(Ljava/io/File;Landroid/net/Uri;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->copyFontToStorage(Ljava/io/File;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0d0040

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0151

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0286

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0285

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->warningFonts:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0206

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->searchBar:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a00ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->changeDirsButton:Landroid/view/View;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a006a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->addFontsButton:Landroid/view/View;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$1;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->changeDirsButton:Landroid/view/View;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a00f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->clearSearch:Landroid/view/View;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$3;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->searchBar:Landroid/widget/EditText;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$4;

    invoke-direct {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0a0118

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "section_number"

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$5;

    invoke-direct {p3, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;)V

    invoke-direct {p1, p2, v0, p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onFontClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->referenceToText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setFontToSelected(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->fontListInvalidated:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "section_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->fontListInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->fontListInvalidated:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    return-void
.end method

.method public reloadFonts()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "section_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->generateContentFor(I)V

    goto :goto_4

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->generateContentFor(I)V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->generateContentFor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getDirsImportFonts(Landroid/content/Context;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->warningUserFonts:Landroid/widget/TextView;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->generateContentFor(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-boolean v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->warningFonts:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->warningFonts:Landroid/widget/TextView;

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public setReferenceToText(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontFragment;->referenceToText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    return-void
.end method
