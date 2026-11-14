.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->LoadQuotes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

.field final synthetic val$job:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f110101

    :try_start_0
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [C

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v4, v1, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "quotes"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->shuffleJsonArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->currJob:Ljava/lang/String;

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->val$job:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    invoke-direct {v5, p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_2
    return-void
.end method
