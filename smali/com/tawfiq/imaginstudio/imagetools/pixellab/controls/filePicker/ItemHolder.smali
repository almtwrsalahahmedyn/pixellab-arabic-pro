.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;
    }
.end annotation


# instance fields
.field private cbItemCheck:Landroid/widget/CheckBox;

.field private itemClickListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

.field private ivItemIcon:Landroid/widget/ImageView;

.field private tvItemName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->itemClickListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    const p2, 0x7f0a018b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->ivItemIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a018c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->tvItemName:Landroid/widget/TextView;

    const p2, 0x7f0a018a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->itemClickListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;Z)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->isCheckable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method
