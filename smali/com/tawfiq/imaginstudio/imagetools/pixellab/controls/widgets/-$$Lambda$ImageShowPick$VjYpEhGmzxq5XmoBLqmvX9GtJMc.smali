.class public final synthetic Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImageShowPick$VjYpEhGmzxq5XmoBLqmvX9GtJMc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

.field public final synthetic f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;


# direct methods
.method public synthetic constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImageShowPick$VjYpEhGmzxq5XmoBLqmvX9GtJMc;->f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImageShowPick$VjYpEhGmzxq5XmoBLqmvX9GtJMc;->f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImageShowPick$VjYpEhGmzxq5XmoBLqmvX9GtJMc;->f$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/-$$Lambda$ImageShowPick$VjYpEhGmzxq5XmoBLqmvX9GtJMc;->f$1:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->lambda$selected$0$ImageShowPick(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    return-void
.end method
