.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;
.super Ljava/lang/Object;
.source "ArabicTextEnhancer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->showKashidaDialog(Landroid/content/Context;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentText:Ljava/lang/String;

.field final synthetic val$dialogContext:Landroid/content/Context;

.field final synthetic val$editArea:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 567
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$editArea:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$currentText:Ljava/lang/String;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$dialogContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 570
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$currentText:Ljava/lang/String;

    .line 571
    :goto_0
    nop

    .line 572
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 590
    :pswitch_0
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 591
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$dialogContext:Landroid/content/Context;

    const-string v1, "\u062a\u0645\u062a \u0625\u0632\u0627\u0644\u0629 \u062c\u0645\u064a\u0639 \u0627\u0644\u0645\u062f\u0648\u062f"

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 586
    :pswitch_1
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->addKashidaFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 587
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$dialogContext:Landroid/content/Context;

    const-string v1, "\u062a\u0645 \u062a\u0637\u0628\u064a\u0642 \u0645\u062f \u0639\u0631\u064a\u0636 \u0645\u062a\u0648\u0627\u0632\u0646"

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 588
    goto :goto_1

    .line 582
    :pswitch_2
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->addKashidaFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 583
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$dialogContext:Landroid/content/Context;

    const-string v1, "\u062a\u0645 \u062a\u0637\u0628\u064a\u0642 \u0645\u062f \u0645\u062a\u0648\u0633\u0637 \u0645\u062a\u0648\u0627\u0632\u0646"

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 584
    goto :goto_1

    .line 578
    :pswitch_3
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->cleanTatweel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->addKashidaFixed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 579
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$dialogContext:Landroid/content/Context;

    const-string v1, "\u062a\u0645 \u062a\u0637\u0628\u064a\u0642 \u0645\u062f \u062e\u0641\u064a\u0641 \u0645\u062a\u0648\u0627\u0632\u0646"

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 580
    goto :goto_1

    .line 574
    :pswitch_4
    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->justifyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 575
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$dialogContext:Landroid/content/Context;

    const-string v1, "\u2728 \u062a\u0645 \u062a\u0633\u0648\u064a\u0629 \u0627\u0644\u0623\u0633\u0637\u0631 \u0628\u0627\u0644\u0645\u0644\u064a"

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 576
    nop

    .line 594
    :goto_1
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$editArea:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 596
    :try_start_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1;->val$editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 597
    :catch_0
    move-exception p1

    :goto_2
    nop

    .line 598
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
