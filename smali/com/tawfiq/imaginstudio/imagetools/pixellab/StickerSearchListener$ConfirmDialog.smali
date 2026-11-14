.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener$ConfirmDialog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

.field private imageUrl:Ljava/lang/String;

.field private parentListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener;Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener$ConfirmDialog;->parentListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener$ConfirmDialog;->activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener$ConfirmDialog;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener$ConfirmDialog;->parentListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener;->getSearchDialog()Landroid/app/AlertDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener$ConfirmDialog;->activity:Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;

    const-string v0, "\u062c\u0627\u0631\u064a \u0641\u062d\u0635 \u0627\u0644\u0635\u0648\u0631\u0629 \u0648\u062a\u062d\u0645\u064a\u0644\u0647\u0627..."

    invoke-virtual {p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerSearchListener$ConfirmDialog;->imageUrl:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/StickerDownloader;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
