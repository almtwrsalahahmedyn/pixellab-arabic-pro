.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProjectsCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;


# direct methods
.method private constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)I
    .locals 8

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser;->currentSort:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    mul-int v1, v1, p1

    return v1

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    iget-object v3, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-object v5, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-object p1, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    mul-int v0, v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    check-cast p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectsCompare;->compare(Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)I

    move-result p1

    return p1
.end method
