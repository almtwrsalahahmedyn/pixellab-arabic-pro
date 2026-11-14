.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;",
        ">;",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;"
    }
.end annotation


# instance fields
.field private adapter_section:I

.field changeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;

.field collapsedSections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field hasActualItems:Z

.field private mAdapterCallback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->mAdapterCallback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->changeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->collapsedSections:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->removeSection(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    return p0
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->mAdapterCallback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;

    return-object p0
.end method

.method public static getDirsImportFonts(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "userFontDirs"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->putDefaultCustomFontDirs(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method private isSectionCollapsed(I)Z
    .locals 2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "collapsed_font_sections"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static putDefaultCustomFontDirs(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/fonts"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "userFontDirs"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private removeSection(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100a7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->category_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    const p1, 0x1040013

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    return-void
.end method

.method public generateContentFor(I)V
    .locals 30

    move-object/from16 v1, p0

    move/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iput v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getDirsImportFonts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    new-instance v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput v2, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    iput v2, v11, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v9, v4, v6

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    const-string v12, "ttf"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "otf"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    new-instance v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object v12, v10

    invoke-direct/range {v12 .. v17}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput v2, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    iput v7, v10, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    add-int/lit8 v7, v7, 0x1

    if-nez v8, :cond_3

    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v8, 0x1

    :cond_3
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iput-boolean v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const-string v7, "{u}-"

    const-string v8, "{t}-"

    const-string v9, "{a}-"

    const-string v10, "{"

    const-string v11, "."

    const-string v12, "/"

    if-nez v0, :cond_c

    iput v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v13, "fonts/\u062a\u0648\u0641\u064a\u0642 \u0627\u0644\u062d\u0636\u0631\u0645\u064a"

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    const-string v13, ";"

    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    if-eqz v13, :cond_14

    array-length v14, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_14

    aget-object v5, v13, v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fonts/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 p1, v0

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v5

    invoke-direct/range {v18 .. v23}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v5, v3, 0x1

    iput v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    iput v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    invoke-direct {v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->isSectionCollapsed(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v3, v5

    goto/16 :goto_6

    :cond_7
    array-length v0, v6

    move v3, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_b

    move/from16 v18, v0

    aget-object v0, v6, v5

    move-object/from16 v19, v6

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x7f11019c

    :goto_4
    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x7f11019d

    goto :goto_4

    :cond_9
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v13, 0x7f11019e

    goto :goto_4

    :cond_a
    :goto_5
    move-object/from16 v27, v6

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/16 v25, 0x0

    const/16 v26, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v24, v6

    invoke-direct/range {v24 .. v29}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput v4, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    add-int/lit8 v0, v3, 0x1

    iput v3, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    move v3, v0

    move/from16 v0, v18

    move-object/from16 v6, v19

    move-object/from16 v13, v20

    goto :goto_3

    :cond_b
    move-object/from16 v20, v13

    :goto_6
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    const/4 v2, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    :cond_c
    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    iput v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v2, "last_fonts"

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "last_userFonts"

    invoke-virtual {v0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v13, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f11019c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f11019d

    goto :goto_8

    :cond_d
    const v5, 0x7f11019c

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f11019d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_8
    move-object/from16 v21, v4

    const v14, 0x7f11019e

    goto :goto_a

    :cond_e
    const v6, 0x7f11019d

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v14, 0x7f11019e

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_f
    const v5, 0x7f11019c

    const v6, 0x7f11019d

    :cond_10
    const v14, 0x7f11019e

    :goto_9
    move-object/from16 v21, v4

    :goto_a
    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v4

    move-object/from16 v22, v3

    invoke-direct/range {v18 .. v23}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    iput v3, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    add-int/lit8 v15, v13, 0x1

    iput v13, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    move v13, v15

    goto/16 :goto_7

    :cond_11
    move v2, v13

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f1101c7

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v4, v2, 0x1

    iput v2, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    const/4 v5, 0x1

    iput v5, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    move v2, v4

    goto :goto_c

    :cond_13
    const/4 v5, 0x1

    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v4

    move-object/from16 v21, v3

    invoke-direct/range {v17 .. v22}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x1

    iput v3, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    add-int/lit8 v5, v2, 0x1

    iput v2, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iput-boolean v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    move v2, v5

    const/4 v5, 0x1

    goto :goto_d

    :cond_14
    goto :goto_f

    :cond_15
    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    iput v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v2, "favorite_fonts"

    invoke-virtual {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const-string v11, "."

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v4

    move-object/from16 v21, v3

    invoke-direct/range {v17 .. v22}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    iput v3, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    add-int/lit8 v5, v2, 0x1

    iput v2, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    move v2, v5

    goto :goto_e

    :goto_f
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d003c

    :goto_0
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d003b

    goto :goto_0

    :cond_1
    :goto_1
    iget p3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    if-ne p3, v0, :cond_3

    const p3, 0x7f0a0216

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->category_name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0121

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-boolean v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->deletable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$SectionClickListener;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$SectionClickListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_3
    if-nez p3, :cond_5

    const p3, 0x7f0a0293

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :try_start_1
    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    :goto_3
    iget-boolean p3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->deletable:Z

    if-eqz p3, :cond_4

    const p3, 0x7f0a0122

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;

    invoke-direct {p3, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;

    invoke-direct {p3, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a9764

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$FavoriteClickListener;

    invoke-direct {v1, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$FavoriteClickListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isItemViewTypePinned(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSectionAdded(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;I)V
    .locals 0

    return-void
.end method

.method public prepareSections(I)V
    .locals 0

    return-void
.end method

.method public toggleSection(I)V
    .locals 4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "collapsed_font_sections"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->changeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;->contentInvalidated()V

    :cond_1
    return-void
.end method
