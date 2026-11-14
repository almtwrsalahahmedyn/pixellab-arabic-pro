.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

.field final synthetic val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;->val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;->val$listener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->freeSelCountChanged(I)V

    return-void
.end method
