.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$11;
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
.field final synthetic val$currentSliderPercent:[I

.field final synthetic val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;


# direct methods
.method constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1298
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$11;->val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$11;->val$currentSliderPercent:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1301
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$11;->val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$11;->val$currentSliderPercent:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->apply(I)V

    .line 1302
    return-void
.end method
