.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;
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

.field final synthetic val$mReturnText:Ljava/lang/reflect/Method;

.field final synthetic val$mSetText:Ljava/lang/reflect/Method;

.field final synthetic val$statusBadge:Landroid/widget/TextView;

.field final synthetic val$textComp:Ljava/lang/Object;

.field final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Landroid/text/TextPaint;Ljava/lang/reflect/Method;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1054
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$baseCleanText:Ljava/lang/String;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$mReturnText:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textComp:Ljava/lang/Object;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textPaint:Landroid/text/TextPaint;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$mSetText:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$statusBadge:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1058
    :try_start_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$baseCleanText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1060
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$mReturnText:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textComp:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1062
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1063
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->applyAutoKashida(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1064
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p1

    .line 1065
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$mSetText:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textComp:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v1, v4

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1068
    :try_start_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "requestLayout"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1069
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textComp:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "fullRedraw"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1071
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$textComp:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1072
    :catchall_1
    move-exception p1

    :goto_1
    nop

    .line 1074
    :try_start_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$statusBadge:Landroid/widget/TextView;

    const-string v0, "\u0645\u062f \u0643\u0634\u064a\u062f\u0629"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$7;->val$statusBadge:Landroid/widget/TextView;

    const-string v0, "#FAB852"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1078
    goto :goto_2

    .line 1076
    :catchall_2
    move-exception p1

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1079
    :goto_2
    return-void
.end method
