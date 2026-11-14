.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$FavoriteClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

.field final synthetic val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;


# direct methods
.method constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$FavoriteClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$FavoriteClickListener;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$FavoriteClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v0, "favorite_fonts"

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$FavoriteClickListener;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v2, "\u062a\u0645 \u0627\u0644\u062d\u0630\u0641 \u0645\u0646 \u0627\u0644\u0645\u0641\u0636\u0644\u0629"

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "\u062a\u0645 \u0627\u0644\u0627\u0636\u0627\u0641\u0629 \u0644\u0644\u0645\u0641\u0636\u0644\u0629"

    :goto_0
    invoke-virtual {p1, v0, v1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$FavoriteClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
