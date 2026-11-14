.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$message:I

.field final synthetic val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

.field final synthetic val$typeChoice:Linfo/hoang8f/android/segmented/SegmentedGroup;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Linfo/hoang8f/android/segmented/SegmentedGroup;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$typeChoice:Linfo/hoang8f/android/segmented/SegmentedGroup;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$message:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    if-eqz p1, :cond_1

    const v0, 0x7f099999

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    sput-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->currentFolderPath:Ljava/lang/String;

    sput-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;->currentTabListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/CustomFolderTabClick;

    const p1, 0x7f0a0247

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const p1, 0x7f0a012a

    if-ne p2, p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    :goto_1
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$76;->val$message:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoStickersJob(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;II)V

    return-void
.end method
