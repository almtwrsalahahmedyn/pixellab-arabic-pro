.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProjectListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;

    return-void
.end method

.method private getFolderSize(Ljava/io/File;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0075

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_5

    const p3, 0x7f0a01e1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a1800

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    div-double/2addr v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%.2f MB"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%.1f KB"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance p3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a01e2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a01e0

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a1802

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShareExternalClickListener;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShareExternalClickListener;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const p3, 0x7f0a1801

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;

    invoke-direct {v0, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/RenameProjectDialog;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance p3, Ljava/io/File;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    const-string v0, "thumb"

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    if-lez p3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    if-lez p3, :cond_5

    const p3, 0x7f0a01e3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    return-object p2
.end method
