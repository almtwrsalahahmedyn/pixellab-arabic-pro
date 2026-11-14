.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->initializeColors([I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

.field final synthetic val$colors:[I

.field final synthetic val$positions:[F


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;[I[F)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;->val$colors:[I

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;->val$positions:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;->val$colors:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;->val$positions:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;->val$colors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    aget v1, v1, v0

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;->val$positions:[F

    aget v3, v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->addNewColor(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
