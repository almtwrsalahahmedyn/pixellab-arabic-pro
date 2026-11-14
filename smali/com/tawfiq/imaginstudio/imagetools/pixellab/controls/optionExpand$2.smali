.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoBgImagesJob(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$assetManager:Landroid/content/res/AssetManager;

.field final synthetic val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/content/res/AssetManager;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$assetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$presetsHolder:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    :try_start_0
    iget-object v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v4, :cond_0

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$assetManager:Landroid/content/res/AssetManager;

    const-string v4, "bg"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v4, :cond_9

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_9

    aget-object v0, v3, v5

    iget-object v6, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v7, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v7, :cond_8

    iget-object v6, v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bg/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/String;

    :try_start_1
    iget-object v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v8, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v8, :cond_1

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    array-length v0, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x1

    const-string v14, "/"

    if-ge v9, v0, :cond_4

    aget-object v15, v7, v9

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v8, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v8, :cond_3

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "thumb"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    goto :goto_4

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    if-nez v10, :cond_6

    array-length v0, v7

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_6

    aget-object v8, v7, v2

    iget-object v9, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v15, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v15, :cond_5

    iget-object v9, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    iget-object v0, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v2, :cond_8

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;

    invoke-direct {v2, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-static {v2}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :try_start_2
    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v6, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v6, :cond_7

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$2;

    invoke-direct {v2, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$2;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-static {v2}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :cond_7
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;

    invoke-direct {v2, v1, v0, v8, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$4;

    invoke-direct {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2$4;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/optionExpand$2;)V

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void
.end method
