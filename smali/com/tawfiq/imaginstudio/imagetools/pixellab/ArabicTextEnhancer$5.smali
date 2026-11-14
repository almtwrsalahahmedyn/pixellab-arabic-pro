.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;
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

.field final synthetic val$statusBadge:Landroid/widget/TextView;

.field final synthetic val$textComp:Ljava/lang/Object;

.field final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Landroid/text/TextPaint;Ljava/lang/reflect/Method;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 956
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$baseCleanText:Ljava/lang/String;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$mReturnText:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textPaint:Landroid/text/TextPaint;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$mSetText:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$statusBadge:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 960
    :try_start_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$baseCleanText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 962
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$mReturnText:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 964
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p1

    .line 965
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$mSetText:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 969
    :try_start_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "setJustify"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 970
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 971
    :catchall_1
    move-exception p1

    :goto_1
    nop

    .line 974
    :try_start_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "requestLayout"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 975
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "fullRedraw"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 977
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$textComp:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 978
    :catchall_2
    move-exception p1

    :goto_2
    nop

    .line 980
    :try_start_5
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$statusBadge:Landroid/widget/TextView;

    const-string v1, "\u0645\u062a\u0648\u0627\u0632\u0646 \u0628\u0627\u0644\u0645\u0644\u064a 100% \u2713"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$statusBadge:Landroid/widget/TextView;

    const-string v1, "#4DD0E1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 982
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$5;->val$context:Landroid/content/Context;

    const-string v1, "\u2728 \u062a\u0645 \u0636\u0628\u0637 \u0643\u0627\u0641\u0629 \u0627\u0644\u0623\u0633\u0637\u0631 \u0628\u0645\u064a\u0632\u0627\u0646 \u0623\u0637\u0648\u0644 \u0633\u0637\u0631 \u0628\u0627\u0644\u0645\u0644\u064a\u0645\u062a\u0631"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 985
    goto :goto_3

    .line 983
    :catchall_3
    move-exception p1

    .line 984
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 986
    :goto_3
    return-void
.end method
