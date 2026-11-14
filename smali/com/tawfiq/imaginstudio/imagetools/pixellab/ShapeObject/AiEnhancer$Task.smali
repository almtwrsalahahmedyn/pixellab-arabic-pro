.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;
.implements Ljava/lang/Runnable;


# instance fields
.field private act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field private bmp:Landroid/graphics/Bitmap;

.field private pd:Landroid/app/ProgressDialog;

.field private resultPath:Ljava/lang/String;

.field private shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;Landroid/graphics/Bitmap;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->bmp:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->pd:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer;->processEnhance(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "hd_img"

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->resultPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->resultPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->resultPath:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    const/4 v4, 0x0

    iget v5, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v6, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-virtual/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->editSrc(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const-string v1, "\u062a\u0645 \u0631\u0641\u0639 \u062c\u0648\u062f\u0629 \u0648\u062f\u0642\u0629 \u0627\u0644\u0635\u0648\u0631\u0629 \u0628\u0646\u062c\u0627\u062d!"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiEnhancer$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const-string v1, "\u062d\u062f\u062b \u062e\u0637\u0623 \u0623\u062b\u0646\u0627\u0621 \u0645\u0639\u0627\u0644\u062c\u0629 \u0627\u0644\u0635\u0648\u0631\u0629"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
