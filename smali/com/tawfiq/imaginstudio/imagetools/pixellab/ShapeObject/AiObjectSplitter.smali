.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;
.super Ljava/lang/Object;


# direct methods
.method public static cleanObjectFromBg(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)V
    .locals 5

    :try_start_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    :goto_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_2

    iget v1, p2, Landroid/graphics/Rect;->left:I

    :goto_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x18

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v1, v0, p3}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static createForegroundMask(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p1, p1, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_2

    invoke-virtual {p0, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x20

    if-le v8, v9, :cond_0

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    sub-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    shr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v8, v7

    const/16 v7, 0x2d

    if-ge v8, v7, :cond_1

    :cond_0
    invoke-virtual {p0, v6, v5, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static detectBgColor(Landroid/graphics/Bitmap;)I
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v1, v1, 0x2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v0, 0x20

    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v4, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    :cond_0
    return v2
.end method

.method public static extractAndEraseObjects(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;->detectBgColor(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiBgRemover;->uploadAndRemoveBg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v2, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v3, :cond_2

    :cond_0
    invoke-static {v5, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;->createForegroundMask(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;->findPreciseRects(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;->createForegroundMask(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;->findPreciseRects(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v5, v3, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v6, "smart_obj"

    invoke-static {v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v3, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v0, v5, v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;->cleanObjectFromBg(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v7, "p"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "x"

    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v6, "y"

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v6, "w"

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v6, "h"

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    return-object v0
.end method

.method public static findPreciseRects(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    :goto_0
    add-int/lit8 v5, v2, -0x4

    if-ge v4, v5, :cond_4

    const/4 v5, 0x4

    :goto_1
    add-int/lit8 v6, v1, -0x4

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x30

    if-le v6, v7, :cond_2

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v5, -0x8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v4, -0x8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v5, 0xc

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v10, v4, 0xc

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-static {v9, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    if-nez v8, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x6

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x6

    goto :goto_0

    :cond_4
    invoke-static {v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter;->mergeAndFilterRects(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static mergeAndFilterRects(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;II)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v7, -0x8

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Rect;->inset(II)V

    invoke-static {v6, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    div-int/lit8 p1, p1, 0x14

    div-int/lit8 p2, p2, 0x14

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v2, p1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, p2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public static splitObjects(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "\u064a\u0631\u062c\u0649 \u062a\u062d\u062f\u064a\u062f \u0635\u0648\u0631\u0629 \u0623\u0648\u0644\u0627\u064b"

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v3, "\u062c\u0627\u0631\u064a \u0627\u0644\u062a\u0639\u0631\u0641 \u0627\u0644\u062f\u0642\u064a\u0642 \u0639\u0644\u0649 \u0627\u0644\u0645\u0644\u062d\u0642\u0627\u062a \u0648\u0641\u0635\u0644\u0647\u0627 \u0625\u0644\u0649 \u0637\u0628\u0642\u0627\u062a \u0634\u0641\u0627\u0641\u0629..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter$Task;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/AiObjectSplitter$Task;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;Landroid/graphics/Bitmap;Landroid/app/ProgressDialog;)V

    invoke-static {v3}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    :cond_1
    return-void
.end method
