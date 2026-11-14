.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

.field final synthetic val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I

    move-result p1

    if-ne p1, v0, :cond_4

    :cond_0
    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I

    move-result v1

    const-string v2, "last_fonts"

    const-string v3, "last_userFonts"

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {p1, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;->onFontClicked(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
