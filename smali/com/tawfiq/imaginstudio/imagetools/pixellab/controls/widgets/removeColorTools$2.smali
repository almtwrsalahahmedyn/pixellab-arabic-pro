.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayColor()I

    move-result v1

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
