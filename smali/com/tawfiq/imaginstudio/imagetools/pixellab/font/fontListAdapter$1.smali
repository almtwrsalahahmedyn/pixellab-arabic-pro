.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;
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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-static {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V

    return-void
.end method
