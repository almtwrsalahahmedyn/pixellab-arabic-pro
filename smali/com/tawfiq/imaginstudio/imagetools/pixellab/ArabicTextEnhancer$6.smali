.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;
.super Ljava/lang/Object;
.source "ArabicTextEnhancer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->buildJustifyPanel(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$baseCleanText:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mReturnText:Ljava/lang/reflect/Method;

.field final synthetic val$mSetText:Ljava/lang/reflect/Method;

.field final synthetic val$optionExpandFragment:Ljava/lang/Object;

.field final synthetic val$statusBadge:Landroid/widget/TextView;

.field final synthetic val$textComp:Ljava/lang/Object;

.field final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Landroid/text/TextPaint;Ljava/lang/reflect/Method;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 995
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$optionExpandFragment:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$baseCleanText:Ljava/lang/String;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$mReturnText:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textPaint:Landroid/text/TextPaint;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$mSetText:Ljava/lang/reflect/Method;

    iput-object p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$statusBadge:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 999
    nop

    .line 1000
    :try_start_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$optionExpandFragment:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "callback"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1001
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1002
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$optionExpandFragment:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1003
    if-eqz p1, :cond_1

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "textContain"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1005
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1006
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1007
    const v2, 0x3f666666    # 0.9f

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    .line 1008
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    goto :goto_0

    .line 1010
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "displayWidth"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1011
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1012
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    goto :goto_0

    .line 1003
    :cond_1
    const/4 p1, 0x0

    .line 1015
    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    const/high16 p1, 0x44480000    # 800.0f

    .line 1017
    :cond_2
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$baseCleanText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1019
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$mReturnText:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    move-object v1, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 1021
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->fillWidth(Ljava/lang/String;Landroid/text/TextPaint;F)Ljava/lang/String;

    move-result-object p1

    .line 1024
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$mSetText:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1028
    :try_start_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "setJustify"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1029
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1030
    :catchall_1
    move-exception p1

    :goto_2
    nop

    .line 1033
    :try_start_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "requestLayout"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1034
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "fullRedraw"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1036
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$textComp:Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 1037
    :catchall_2
    move-exception p1

    :goto_3
    nop

    .line 1039
    :try_start_5
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$statusBadge:Landroid/widget/TextView;

    const-string v0, "\u0645\u0645\u062a\u0644\u0626 \u0644\u0644\u0639\u0631\u0636 \u0628\u0627\u0644\u0645\u0644\u064a \u2713"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$statusBadge:Landroid/widget/TextView;

    const-string v0, "#64B5F6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1041
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$6;->val$context:Landroid/content/Context;

    const-string v0, "\u2194\ufe0f \u062a\u0645 \u0645\u0644\u0621 \u0627\u0644\u0639\u0631\u0636 \u0648\u0645\u0648\u0627\u0632\u0646\u0629 \u0627\u0644\u062d\u0648\u0627\u0641 \u0628\u062f\u0642\u0629"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1044
    goto :goto_4

    .line 1042
    :catchall_3
    move-exception p1

    .line 1043
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1045
    :goto_4
    return-void
.end method
