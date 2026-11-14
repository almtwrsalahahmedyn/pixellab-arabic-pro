.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

.field final synthetic val$currColorIndicator:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;->val$currColorIndicator:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->currColor:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;->val$currColorIndicator:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    return-void
.end method
