.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$1;
.super Lcom/google/android/gms/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

.field final synthetic val$adContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$1;->this$0:Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$1;->val$adContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/quotes_browser$1;->val$adContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
