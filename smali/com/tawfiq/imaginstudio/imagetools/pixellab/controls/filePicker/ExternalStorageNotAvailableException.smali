.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/filePicker/ExternalStorageNotAvailableException;
.super Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "There is no external storage available on this device."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
