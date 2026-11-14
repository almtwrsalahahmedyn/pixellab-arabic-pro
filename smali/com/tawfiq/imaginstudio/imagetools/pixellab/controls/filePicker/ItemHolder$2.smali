.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->bind(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

.field final synthetic val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-interface {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;->onItemCheck(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-interface {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;->onItemUnCheck(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    :goto_0
    return-void
.end method
