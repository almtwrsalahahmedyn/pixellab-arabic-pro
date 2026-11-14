.class final Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;
.super Ljava/lang/Object;
.source "ArabicTextEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->buildJustifyPanel(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SliderUpdater"
.end annotation


# instance fields
.field final synthetic val$baseCleanText:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentSliderPercent:[I

.field final synthetic val$mSetText:Ljava/lang/reflect/Method;

.field final synthetic val$progressFillRef:[Landroid/view/View;

.field final synthetic val$statusBadge:Landroid/widget/TextView;

.field final synthetic val$textComp:Ljava/lang/Object;

.field final synthetic val$textPaint:Landroid/text/TextPaint;

.field final synthetic val$trackLayoutRef:[Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>([ILandroid/widget/TextView;[Landroid/view/View;[Landroid/widget/FrameLayout;Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1240
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$currentSliderPercent:[I

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$statusBadge:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$progressFillRef:[Landroid/view/View;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$trackLayoutRef:[Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$baseCleanText:Ljava/lang/String;

    iput-object p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textPaint:Landroid/text/TextPaint;

    iput-object p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$mSetText:Ljava/lang/reflect/Method;

    iput-object p9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textComp:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method apply(I)V
    .locals 7

    .line 1242
    const/4 v0, 0x0

    .line 1267
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1242
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1243
    :cond_0
    const/16 v2, 0x64

    if-le p1, v2, :cond_1

    const/16 p1, 0x64

    .line 1244
    :cond_1
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$currentSliderPercent:[I

    aput p1, v2, v0

    .line 1245
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$statusBadge:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0645\u062f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$progressFillRef:[Landroid/view/View;

    aget-object v2, v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$trackLayoutRef:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 1248
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    .line 1249
    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$context:Landroid/content/Context;

    const/16 v4, 0xb4

    invoke-static {v2, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v2

    .line 1250
    :cond_2
    int-to-float v2, v2

    int-to-float v4, p1

    div-float/2addr v4, v3

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 1251
    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$progressFillRef:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1252
    if-eqz v4, :cond_3

    .line 1253
    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$context:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1254
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$progressFillRef:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    :cond_3
    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 1261
    :try_start_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$baseCleanText:Ljava/lang/String;

    goto :goto_0

    .line 1263
    :cond_4
    int-to-float p1, p1

    div-float/2addr p1, v3

    const/high16 v3, 0x41000000    # 8.0f

    mul-float p1, p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1264
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$baseCleanText:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->applyAutoKashida(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1265
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p1

    .line 1267
    :goto_0
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$mSetText:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textComp:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1269
    :try_start_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v3, "setJustify"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1270
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textComp:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1271
    :catchall_0
    move-exception p1

    :goto_1
    nop

    .line 1273
    :try_start_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "requestLayout"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1274
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textComp:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "fullRedraw"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1276
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->val$textComp:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1277
    :catchall_1
    move-exception p1

    :goto_2
    nop

    .line 1280
    goto :goto_3

    .line 1278
    :catchall_2
    move-exception p1

    .line 1279
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1281
    :goto_3
    return-void
.end method
