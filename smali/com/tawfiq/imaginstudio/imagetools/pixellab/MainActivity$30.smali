.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$30;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;


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

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$30;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadStyle(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$30;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->applyStyle(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeStyle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity$30;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->removePreset(Ljava/lang/String;)V

    return-void
.end method
