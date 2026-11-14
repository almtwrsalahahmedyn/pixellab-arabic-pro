.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    return-void
.end method
