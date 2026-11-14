.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

.field final synthetic val$pntEraser:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->val$pntEraser:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v1, v1

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v2, v2

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-boolean v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskIn:Z

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->val$pntEraser:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-static {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->invertPath(Ljava/util/ArrayList;FFFF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$1;->val$pntEraser:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
