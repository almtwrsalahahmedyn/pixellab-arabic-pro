.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2;->doInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2$1;->this$2:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57$2;->this$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$57;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->redrawAll()V

    return-void
.end method
