.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    }
.end annotation


# instance fields
.field assetFolder:Z

.field path:Ljava/lang/String;

.field sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setAssetsPath(Ljava/lang/String;Z)V

    return-void
.end method

.method private fromBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "imgSrcAssetFolder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    const-string v0, "imgSrcPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const-string v0, "imgSrcSourceType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->valueOf(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-void
.end method


# virtual methods
.method public checkValid()Z
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public compare(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    iget-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->compareStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    iget-boolean p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copy()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    .locals 4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->set(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-object v0
.end method

.method public isAssetFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    return v0
.end method

.method public set(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    return-void
.end method

.method public setAssetsPath(Ljava/lang/String;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    return-void
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    const-string v2, "imgSrcAssetFolder"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imgSrcSourceType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imgSrcPath"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
