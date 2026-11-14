.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$12;
.super Ljava/lang/Object;
.source "ArabicTextEnhancer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer;->buildJustifyPanel(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$track:Landroid/widget/FrameLayout;

.field final synthetic val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1326
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$12;->val$track:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$12;->val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 1330
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    return v0

    .line 1331
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 1332
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$12;->val$track:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    .line 1333
    if-lez p2, :cond_4

    .line 1334
    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1335
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1336
    :cond_2
    const/16 p2, 0x64

    if-le p1, p2, :cond_3

    const/16 p1, 0x64

    .line 1337
    :cond_3
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$12;->val$updater:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;

    invoke-virtual {p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ArabicTextEnhancer$1SliderUpdater;->apply(I)V

    .line 1339
    :cond_4
    return v0
.end method
