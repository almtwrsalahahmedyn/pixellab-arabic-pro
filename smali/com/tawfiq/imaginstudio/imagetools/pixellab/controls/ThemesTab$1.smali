.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

.field final synthetic val$browseButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;->val$browseButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ThemesTab$1;->val$browseButton:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->actionDo:I

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    return-void
.end method
