.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->addClickListenersTo(Landroid/view/ViewGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$childOptionUi:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

.field final synthetic val$type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->val$type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->val$childOptionUi:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->quickMultipleMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textStylesMenu:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->val$type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getSelectedReferences()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->val$childOptionUi:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->actionDo:I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$80;->val$type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V

    return-void
.end method
