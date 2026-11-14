.class public abstract Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;
    }
.end annotation


# static fields
.field static final snapNear:[I


# instance fields
.field protected resizeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

.field protected rotationListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->snapNear:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb4
        -0xb4
        -0x5a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract OnCustomTouchEvent(Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z
.end method

.method public clearListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->resizeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->rotationListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    return-void
.end method

.method public setResizeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->resizeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;

    return-void
.end method

.method public setRotationListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->rotationListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;

    return-void
.end method

.method public snapAngle(I)I
    .locals 6

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->snapNear:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    sub-int v4, p1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method
