.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurveText"
.end annotation


# instance fields
.field curveSpacing:I

.field spacedText:Ljava/lang/String;

.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

.field unspacedText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;)V

    return-void
.end method


# virtual methods
.method public applySpacing()V
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    div-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_0

    const-string v2, "\u200a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ".(?=\\s)"

    goto :goto_1

    :cond_1
    const-string v2, ".(?=.)"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->spacedText:Ljava/lang/String;

    return-void
.end method

.method public getSpacedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->spacedText:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->unspacedText:Ljava/lang/String;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->curveSpacing:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->applySpacing()V

    :cond_1
    return-void
.end method
