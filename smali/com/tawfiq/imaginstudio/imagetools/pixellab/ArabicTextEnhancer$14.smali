.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$14;
.super Ljava/lang/Object;
.source "ArabicTextEnhancer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->buildJustifyPanel(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$stepVal:I

.field final synthetic val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;


# direct methods
.method constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1378
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$14;->val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$14;->val$stepVal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1381
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$14;->val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$14;->val$stepVal:I

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->apply(I)V

    .line 1382
    return-void
.end method
