.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;
.implements Ljava/lang/Runnable;


# instance fields
.field private act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field private bmp:Landroid/graphics/Bitmap;

.field private cleanImgPath:Ljava/lang/String;

.field private pd:Landroid/app/ProgressDialog;

.field private shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field private textItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;Landroid/graphics/Bitmap;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->bmp:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->pd:Landroid/app/ProgressDialog;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->textItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static forceSetText(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$28;

    invoke-direct {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$28;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v0

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;ZZ)V

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1, v3, v1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->applyBundle(Landroid/os/Bundle;ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    :try_start_2
    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    if-ne v7, v1, :cond_8

    aget-object v6, v6, v0

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_8

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_8

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v0

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    return-void

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->textItems:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter;->processImageAndExtract(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->textItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "cleaned_bg"

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

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

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->cleanImgPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->textItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->cleanImgPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->cleanImgPath:Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    const/4 v5, 0x0

    iget v6, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget v7, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    invoke-virtual/range {v2 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->editSrc(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->textItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "t"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "c"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v8, v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v8, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->addNewText(I)Ljava/lang/String;

    invoke-virtual {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v7, v6, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->forceSetText(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Ljava/lang/String;)V

    const-string v5, "x"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v7

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    mul-float v5, v5, v1

    add-float/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v5

    const-string v7, "y"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    mul-float v4, v4, v0

    add-float/2addr v5, v4

    invoke-virtual {v6, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v3, v4

    :goto_1
    invoke-virtual {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->fullRedraw()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const-string v1, "\u062a\u0645 \u0627\u0633\u062a\u062e\u0631\u0627\u062c \u0627\u0644\u0646\u0635\u0648\u0635 \u0648\u0645\u0633\u062d\u0647\u0627 \u0645\u0646 \u0627\u0644\u0635\u0648\u0631\u0629 \u0627\u0644\u0623\u0635\u0644\u064a\u0629 \u0628\u0646\u062c\u0627\u062d!"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiLayerSplitter$Task;->act:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const-string v1, "\u0644\u0645 \u064a\u062a\u0645 \u0627\u0644\u0639\u062b\u0648\u0631 \u0639\u0644\u0649 \u0646\u0635\u0648\u0635 \u0648\u0627\u0636\u062d\u0629\u060c \u062a\u0623\u0643\u062f \u0645\u0646 \u0627\u062a\u0635\u0627\u0644 \u0627\u0644\u0625\u0646\u062a\u0631\u0646\u062a"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
