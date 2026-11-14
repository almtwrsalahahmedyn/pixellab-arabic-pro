.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private itemClickListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->itemClickListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->items:Ljava/util/List;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->parent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->onBindViewHolder(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->parent:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-virtual {v0, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->shouldCheckItem(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->bind(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    const v1, 0x7f0d0039

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->itemClickListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    invoke-direct {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;-><init>(Landroid/view/View;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;)V

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->items:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
