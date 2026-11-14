.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->imgShow:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currColor:I

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;->colorPicked(I)V

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
