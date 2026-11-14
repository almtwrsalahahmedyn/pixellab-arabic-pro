.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$SectionClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

.field final synthetic val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;


# direct methods
.method constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$SectionClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$SectionClickListener;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$SectionClickListener;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter$SectionClickListener;->val$item:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontListAdapter;->toggleSection(I)V

    return-void
.end method
