.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->addClickListenersTo(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

.field final synthetic val$childOptionUi:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab$1;->val$childOptionUi:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab$1;->val$childOptionUi:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->actionDo:I

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V

    return-void
.end method
