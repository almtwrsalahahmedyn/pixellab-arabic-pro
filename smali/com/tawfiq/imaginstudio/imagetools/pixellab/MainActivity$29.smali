.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$29;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOkButton(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$29;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrTextState(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$29;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextFont(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$29;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->fontApplied()V

    :cond_0
    return-void
.end method
