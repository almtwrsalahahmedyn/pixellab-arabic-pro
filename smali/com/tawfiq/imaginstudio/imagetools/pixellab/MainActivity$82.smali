.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->showExportDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->strToInt(Ljava/lang/String;I)I

    move-result v2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->strToInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;->getSelectedFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->exportImage(IILandroid/graphics/Bitmap$CompressFormat;Lcom/tawfiq/imaginstudio/imagetools/pixellab/export_image_dialog;ZLjava/lang/String;)V

    return-void
.end method
