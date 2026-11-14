.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;->access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;

    iget-object p2, p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getCurrentGradient()Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;->onGradientSelected(Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
