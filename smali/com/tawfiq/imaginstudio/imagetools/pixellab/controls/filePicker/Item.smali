.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;
.super Ljava/io/File;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/io/File;"
    }
.end annotation


# instance fields
.field private checkable:Z

.field private icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->icon:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->checkable:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/io/File;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isCheckable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->checkable:Z

    return v0
.end method
