.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static currentFeature:Ljava/lang/String; = ""


# instance fields
.field final dialog:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

.field final feature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->dialog:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->feature:Ljava/lang/String;

    return-void
.end method

.method private resetAllButtons(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private selectAllButtons(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Landroid/view/View;->setSelected(Z)V

    const p0, -0xde690d

    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->feature:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->resetAllButtons(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->feature:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->feature:Ljava/lang/String;

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->selectAllButtons(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->feature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->feature:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    const v0, -0xde690d

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->dialog:Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    const v1, 0x7f0a025f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "normal"

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void
.end method
