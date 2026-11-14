.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field private isNotPngError:Z

.field private savedPath:Ljava/lang/String;

.field private searchDialog:Landroid/app/AlertDialog;

.field private urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->urlStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->searchDialog:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->isNotPngError:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->isNotPngError:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const-string v1, "\u0646\u0631\u062c\u0648 \u0627\u0644\u0627\u0646\u062a\u0638\u0627\u0631 \u062d\u062a\u0649 \u064a\u062a\u0645 \u062a\u0641\u0631\u064a\u063a\u0647\u0627 \u0623\u0648 \u0642\u0648\u0645 \u0628\u062a\u063a\u064a\u064a\u0631\u0647\u0627"

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->savedPath:Ljava/lang/String;

    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->urlStr:Ljava/lang/String;

    const-string v3, "data:image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "data:image/jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "data:image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v4, "User-Agent"

    const-string v5, "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Referer"

    const-string v5, "https://www.google.com/"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Accept"

    const-string v5, "image/png,image/webp,image/*,*/*;q=0.8"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->isNotPngError:Z

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    const-string v1, "sticker_imported"

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->savedPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->isNotPngError:Z

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->searchDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;->activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    new-instance v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-virtual {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x43fa0000    # 500.0f

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-virtual/range {v2 .. v9}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    return-void
.end method
