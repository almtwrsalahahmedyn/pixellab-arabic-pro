.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;
    }
.end annotation


# instance fields
.field customHolder:Landroid/view/View;

.field customSpace:Landroidx/gridlayout/widget/GridLayout;

.field defaultHolder:Landroid/view/View;

.field defaultSpace:Landroidx/gridlayout/widget/GridLayout;

.field loadCustom:Landroid/widget/Button;

.field loadDefault:Landroid/widget/Button;

.field loadedCustom:Z

.field loadedDefault:Z

.field param:Landroid/widget/FrameLayout$LayoutParams;

.field styleEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;

.field v:Landroid/view/View;

.field warningText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedCustom:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedDefault:Z

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->styleEvent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustomStyles()V

    return-void
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefaultStyles()V

    return-void
.end method

.method private getDirLists(Ljava/io/File;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private loadCustomStyles()V
    .locals 13

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefault:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustom:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedCustom:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/pixelLab/textstyles"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/textstyles"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->getDirLists(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->getDirLists(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/io/File;

    const-string v7, "deleted"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    const-string v7, "data.plab"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v7, 0x64

    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v9

    const/16 v7, 0x28

    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v10

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v11

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;IIIZ)V

    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->ForStyle()V

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroidx/gridlayout/widget/GridLayout;

    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "thumb"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$5;

    invoke-direct {v8, p0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$5;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/io/File;)V

    invoke-virtual {v6, v7, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setContent(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    invoke-direct {v7, p0, v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$6;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/io/File;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-virtual {v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setDeleteAction(Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedCustom:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private loadDefaultStyles()V
    .locals 15

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefault:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustom:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedDefault:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/String;

    :try_start_0
    const-string v5, "textstyles"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    array-length v5, v4

    if-lez v5, :cond_0

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    new-instance v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v8, 0x64

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v10

    const/16 v8, 0x28

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v11

    const/4 v8, 0x6

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v12

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;IIIZ)V

    invoke-virtual {v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->ForStyle()V

    iget-object v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultSpace:Landroidx/gridlayout/widget/GridLayout;

    iget-object v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "textstyles/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/thumb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_1
    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/4 v8, 0x0

    :goto_2
    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$4;

    invoke-direct {v9, p0, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;Ljava/lang/String;)V

    invoke-virtual {v14, v8, v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setContent(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadedDefault:Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultSpace:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/gridlayout/widget/GridLayout;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultSpace:Landroidx/gridlayout/widget/GridLayout;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a0184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/gridlayout/widget/GridLayout;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroidx/gridlayout/widget/GridLayout;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a024b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$1;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->param:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a0249

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustom:Landroid/widget/Button;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->v:Landroid/view/View;

    const v0, 0x7f0a024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefault:Landroid/widget/Button;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadCustom:Landroid/widget/Button;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$2;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefault:Landroid/widget/Button;

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$3;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser;->loadDefaultStyles()V

    return-void
.end method
