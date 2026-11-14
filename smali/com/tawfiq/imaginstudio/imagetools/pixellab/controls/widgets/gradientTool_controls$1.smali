.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1$1;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
