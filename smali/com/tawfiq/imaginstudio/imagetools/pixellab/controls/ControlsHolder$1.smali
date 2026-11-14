.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->initTabsLogic(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->underLineTab(Landroid/widget/ImageButton;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq p1, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ShapesTab;->togglePanels(ZI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    iget p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-eq p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/TextTab;->togglePanels(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->hasBitmapBg()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/BgTab;->toggleCropButton(Z)V

    :cond_4
    :goto_0
    return-void
.end method
