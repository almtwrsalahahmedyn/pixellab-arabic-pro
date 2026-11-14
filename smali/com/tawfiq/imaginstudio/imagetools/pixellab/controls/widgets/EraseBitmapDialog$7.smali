.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;-><init>(Landroid/content/Context;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/Bitmap;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$7;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$7;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setCurrStrokeBlur(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$7;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0a0137

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;

    invoke-virtual {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->setBlur(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
