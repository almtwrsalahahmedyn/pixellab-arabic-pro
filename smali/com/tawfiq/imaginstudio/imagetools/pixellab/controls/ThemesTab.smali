.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;
.super Landroidx/fragment/app/Fragment;


# instance fields
.field private callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field cancelled:Z

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->cancelled:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    return-object p0
.end method

.method private getDirIsEmpty(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
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

.method private getPresetsIsEmpty(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    const-string v5, "deleted"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/File;

    const-string v5, "data.plab"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private updateAssetPresets(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;Landroid/content/res/AssetManager;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void
.end method


# virtual methods
.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->cancelled:Z

    const v0, 0x7f0d0044

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    const p2, 0x7f0a00de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    new-instance p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;

    invoke-direct {p2, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    const p2, 0x7f0a00b8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, 0x5

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->dpToPixels(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->dpToPixels(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->dpToPixels(I)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->dpToPixels(I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->updateAssetPresets(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->updateCustomProjectsVisibility()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->cancelled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->callback:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public updateCustomProjectsVisibility()V
    .locals 4

    :try_start_0
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

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/presets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->getPresetsIsEmpty(Ljava/io/File;)Z

    move-result v1

    const v2, 0x7f0a01d9

    const v3, 0x7f0a00de

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->getPresetsIsEmpty(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
