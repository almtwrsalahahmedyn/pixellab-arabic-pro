.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->access$002(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;Z)Z

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->access$102(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;Z)Z

    return-void
.end method
