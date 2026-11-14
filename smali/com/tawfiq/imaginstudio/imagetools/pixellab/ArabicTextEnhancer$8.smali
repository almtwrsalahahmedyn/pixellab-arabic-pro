.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;
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

.field final synthetic val$currentSliderPercent:[I

.field final synthetic val$mReturnText:Ljava/lang/reflect/Method;

.field final synthetic val$mSetText:Ljava/lang/reflect/Method;

.field final synthetic val$statusBadge:Landroid/widget/TextView;

.field final synthetic val$textComp:Ljava/lang/Object;

.field final synthetic val$wordOverrides:[I


# direct methods
.method constructor <init>([I[ILjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/reflect/Method;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1087
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$wordOverrides:[I

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$currentSliderPercent:[I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$baseCleanText:Ljava/lang/String;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$mReturnText:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$mSetText:Ljava/lang/reflect/Method;

    iput-object p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$statusBadge:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1091
    :try_start_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$wordOverrides:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1092
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$currentSliderPercent:[I

    aput v0, p1, v0

    .line 1093
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$baseCleanText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1095
    :try_start_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$mReturnText:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1097
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1098
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$mSetText:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

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

    .line 1100
    :try_start_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "setJustify"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1101
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1102
    :catchall_1
    move-exception p1

    :goto_1
    nop

    .line 1104
    :try_start_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "requestLayout"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1105
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "fullRedraw"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1107
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$textComp:Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 1108
    :catchall_2
    move-exception p1

    :goto_2
    nop

    .line 1109
    :try_start_5
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$statusBadge:Landroid/widget/TextView;

    const-string v1, "\u0646\u0635 \u062e\u0627\u0645"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$statusBadge:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1111
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$8;->val$context:Landroid/content/Context;

    const-string v1, "\u062a\u0645\u062a \u0625\u0632\u0627\u0644\u0629 \u062c\u0645\u064a\u0639 \u0627\u0644\u0645\u062f\u0648\u062f"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1114
    goto :goto_3

    .line 1112
    :catchall_3
    move-exception p1

    .line 1113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1115
    :goto_3
    return-void
.end method
