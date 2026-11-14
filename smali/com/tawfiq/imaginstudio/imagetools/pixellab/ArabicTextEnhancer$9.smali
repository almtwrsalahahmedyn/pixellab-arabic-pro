.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;
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

.field final synthetic val$mSetText:Ljava/lang/reflect/Method;

.field final synthetic val$statusBadge:Landroid/widget/TextView;

.field final synthetic val$textComp:Ljava/lang/Object;

.field final synthetic val$wordIndex:I

.field final synthetic val$wordLabels:[Landroid/widget/TextView;

.field final synthetic val$wordOverrides:[I

.field final synthetic val$wordStr:Ljava/lang/String;


# direct methods
.method constructor <init>([IILjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1161
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordOverrides:[I

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordIndex:I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$baseCleanText:Ljava/lang/String;

    iput-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$mSetText:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$textComp:Ljava/lang/Object;

    iput-object p6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordLabels:[Landroid/widget/TextView;

    iput-object p7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordStr:Ljava/lang/String;

    iput-object p8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$statusBadge:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1164
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordOverrides:[I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordIndex:I

    aget v1, p1, v0

    if-lez v1, :cond_1

    .line 1165
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 1166
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$baseCleanText:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->applyWordKashidaOverrides(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    .line 1168
    :try_start_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$mSetText:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$textComp:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1170
    :try_start_1
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "requestLayout"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1171
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$textComp:Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$textComp:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "fullRedraw"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1173
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$textComp:Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1174
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 1175
    :try_start_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordLabels:[Landroid/widget/TextView;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordIndex:I

    aget-object p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordOverrides:[I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordIndex:I

    aget v1, v1, v2

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordOverrides:[I

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$statusBadge:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordOverrides:[I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$9;->val$wordIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1177
    :catchall_1
    move-exception p1

    :goto_2
    nop

    .line 1179
    :cond_1
    return-void
.end method
