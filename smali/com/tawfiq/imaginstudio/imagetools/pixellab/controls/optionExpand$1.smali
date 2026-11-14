.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoStickersJob(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$assetManager:Landroid/content/res/AssetManager;

.field final synthetic val$pathSuffix:Ljava/lang/String;

.field final synthetic val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

.field final synthetic val$stickerType:I


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;ILandroid/content/res/AssetManager;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$assetManager:Landroid/content/res/AssetManager;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$pathSuffix:Ljava/lang/String;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 19

    move-object/from16 v8, p0

    const/4 v9, 0x0

    new-array v1, v9, [Ljava/lang/String;

    :try_start_0
    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v2, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v0, v2, :cond_0

    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$assetManager:Landroid/content/res/AssetManager;

    iget-object v2, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$pathSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    move-object v10, v1

    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v1, :cond_8

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v0, v1, :cond_8

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    aget-object v0, v10, v12

    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_7

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v2, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v1, v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$pathSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v9, [Ljava/lang/String;

    :try_start_1
    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v3, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v0, v3, :cond_1

    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    array-length v0, v1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    if-ge v4, v0, :cond_3

    aget-object v13, v1, v4

    iget-object v14, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v15, v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v15, :cond_2

    iget-object v14, v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_2

    iget v14, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v15, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v15, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v14, v15, :cond_2

    if-nez v6, :cond_2

    const-string v14, "thumb"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    if-nez v6, :cond_5

    array-length v0, v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_5

    aget-object v13, v1, v4

    iget-object v14, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v15, v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v15, :cond_4

    iget-object v14, v14, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_4

    iget v14, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v15, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v15, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v14, v15, :cond_4

    if-nez v6, :cond_4

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v1, :cond_7

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v15

    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v16

    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v17

    const/16 v18, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;IIIZ)V

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$1;

    invoke-direct {v1, v8, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :try_start_2
    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_6

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v2, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v1, v2, :cond_6

    iget-object v1, v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$2;

    invoke-direct {v1, v8, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :cond_6
    const/4 v1, 0x0

    :goto_5
    move-object v4, v1

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v7, v1

    new-instance v13, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Landroid/graphics/Bitmap;Ljava/lang/String;FF)V

    invoke-static {v13}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;

    invoke-direct {v0, v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$1;)V

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void
.end method
