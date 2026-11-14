.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;


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


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zoomReset()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V

    return-void
.end method

.method public zoomToggle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomWidget:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ZoomWidget;->toggleZoom(Z)V

    return-void
.end method
