.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;
    }
.end annotation


# static fields
.field public static final AB:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

.field static final abLength:I

.field static rnd:Ljava/security/SecureRandom;


# instance fields
.field public curr_id:I

.field public curr_id_shape:I

.field lastInserted:I

.field lastInserted_shape:I

.field layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

.field mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

.field public shapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;",
            ">;"
        }
    .end annotation
.end field

.field public texts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;",
            ">;"
        }
    .end annotation
.end field

.field touchDownId:I

.field public willResize:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->rnd:Ljava/security/SecureRandom;

    const/16 v0, 0x3e

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->abLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method private clickedNothing()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    return-void
.end method

.method private getCurrentOrFirstShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private getCurrentOrFirstText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private getObjectsBoundingBox(Ljava/util/ArrayList;)Landroid/graphics/RectF;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, -0x31000000

    const/high16 v2, 0x4f000000

    const/high16 v2, -0x31000000

    const/high16 v3, 0x4f000000

    const/high16 v4, 0x4f000000

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    cmpg-float v6, v6, v3

    if-gez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v3

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v4

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    iget v7, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    add-float/2addr v6, v7

    cmpl-float v6, v6, v1

    if-lez v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v1

    iget v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    add-float/2addr v1, v6

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    iget v7, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    add-float/2addr v6, v7

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v2

    iget v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    add-float/2addr v2, v5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    cmpg-float v6, v6, v3

    if-gez v6, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v3

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v4

    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    iget v7, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v6, v6, v1

    if-lez v6, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v1

    iget v6, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    iget v7, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v6, v6, v2

    if-lez v6, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v2

    iget v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    goto :goto_1

    :cond_9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->rnd:Ljava/security/SecureRandom;

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->abLength:I

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private msg(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private passEventTo(Landroid/view/MotionEvent;I)V
    .locals 2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

    invoke-virtual {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->OnCustomTouchEvent(Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z

    :cond_0
    return-void
.end method

.method private passEventToAll(Landroid/view/MotionEvent;)I
    .locals 4

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;

    invoke-direct {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;->updateWith(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

    invoke-virtual {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;->OnCustomTouchEvent(Lcom/tawfiq/imaginstudio/imagetools/pixellab/CustomMotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private removeCurrent()V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeText(IZ)V

    return-void
.end method

.method private removeCurrentShape()V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeShape(IZ)V

    return-void
.end method

.method private removeShape(IZ)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeDelete(Landroid/os/Bundle;ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-ne p1, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    :cond_1
    return-void
.end method

.method private removeText(IZ)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextDelete(Landroid/os/Bundle;ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-ne p1, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addNewShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    iget v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v9

    move v4, p1

    move-object v5, p2

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;FFLjava/lang/String;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    iput v2, v9, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    invoke-virtual {v9, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V

    if-eqz p3, :cond_0

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getViewOrigin()Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9, v3}, Landroid/view/View;->setX(F)V

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_0
    move v2, p4

    invoke-virtual {v9, p4}, Landroid/view/View;->setX(F)V

    move v2, p5

    invoke-virtual {v9, p5}, Landroid/view/View;->setY(F)V

    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeCreate(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public addNewText(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    iput p1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    invoke-virtual {v1, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getViewOrigin()Landroid/graphics/PointF;

    move-result-object p1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextCreate(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectCountChanged()V

    :cond_0
    return-void
.end method

.method public bundleObjects(Landroid/os/Bundle;)V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "text"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shape"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "objectsSkipEmpty"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const-string v2, "objectsBundle"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "objectsIds"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public bundleSelectedObjects(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v5, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "text"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v5, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shape"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "objectsBundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "objectsIds"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public computeObjectsCenter(Ljava/util/ArrayList;)Landroid/graphics/PointF;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr v6, v5

    add-float/2addr v1, v6

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5}, Landroid/view/View;->getPivotY()F

    move-result v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v5, v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr v6, v5

    add-float/2addr v1, v6

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v5}, Landroid/view/View;->getPivotY()F

    move-result v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    int-to-float p1, v3

    div-float/2addr v1, p1

    div-float/2addr v2, p1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public copyCurrentShape()V
    .locals 6

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    iput v1, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    invoke-virtual {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getViewOrigin()Landroid/graphics/PointF;

    move-result-object v1

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeCreate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public copyCurrentText()V
    .locals 6

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    iput v1, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    invoke-virtual {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getViewOrigin()Landroid/graphics/PointF;

    move-result-object v1

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextCreate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public editCurrShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZII)V
    .locals 7

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    const/4 p5, 0x1

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->resetCropPortion()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    int-to-float v5, p4

    int-to-float v6, p5

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->editSrc(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V

    :cond_2
    return-void
.end method

.method public editCurrentText(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public getCurrentSelectedType()Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentText()Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result p1

    add-float/2addr p1, v1

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getObjectByRef(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getTextByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSelectedComponent()Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/AbstractComponent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSelectedReference()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "0"

    return-object v0
.end method

.method public getShapeByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->compareStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->compareStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hideAllBut(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hideTemp()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->unhideTemp()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz p1, :cond_5

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->hideTemp()V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->unhideTemp()V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public hideLockObjects(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isHidden()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setHidden(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isLocked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setLocked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isHidden()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setHidden(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isLocked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLocked(Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public mergeObjects(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->setRenderMode(ZF)V

    invoke-virtual {p0, p1, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->hideAllBut(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Rect;->right:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-eq v5, v6, :cond_1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-eq v5, v6, :cond_1

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v6, :cond_1

    invoke-static {v1, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v5, "drawingMerged"

    invoke-static {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;I)V

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->bundleSelectedObjects(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeObjectsByReferences(Ljava/util/ArrayList;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->setRenderMode(ZF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->unHideAll()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget p1, v3, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    div-float v10, p1, v2

    iget p1, v3, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    div-float v11, p1, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float v12, p1, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float v13, p1, v2

    sget v7, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_DRAWING:I

    new-instance v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object v1, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mergedDataBundle:Landroid/os/Bundle;

    :cond_0
    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1100fc

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public moveCurrShapeToBack()V
    .locals 5

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V

    :cond_0
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->detachViewFromParent(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/widget/RelativeLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public moveCurrShapeToFront()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public moveCurrTextToBack()V
    .locals 5

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V

    :cond_0
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->detachViewFromParent(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/widget/RelativeLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public moveCurrTextToFront()V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onEvent_SelectShape(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->objectTouch()V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    return-void
.end method

.method public onEvent_SelectText(I)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->objectTouch()V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    return-void
.end method

.method public onEvent_ShapeGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEvent_TextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextGeometryChanged(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEvent_doubleTapText()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextDoubleTap()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->willResize:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rearrange(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rearrange(IIII)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->willResize:Z

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->passEventToAll(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I

    invoke-direct {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->passEventTo(Landroid/view/MotionEvent;I)V

    goto :goto_2

    :cond_2
    :goto_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->clickedNothing()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->passEventTo(Landroid/view/MotionEvent;I)V

    :goto_1
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->touchDownId:I

    :goto_2
    return v1
.end method

.method public positionObjects(Ljava/util/ArrayList;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;FF)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v2, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public recreateObjects(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "shape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v6, v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    iput v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I

    invoke-virtual {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V

    :goto_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getRandomString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v6, v4, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    iput v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    invoke-virtual {v2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public redrawAll()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->postInvalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->postInvalidate()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public relativePosObjects(Ljava/util/ArrayList;Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$floatObject;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getObjectsBoundingBox(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$textContainer$floatObject:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_3

    :pswitch_0
    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    goto :goto_2

    :pswitch_2
    iget p2, v0, Landroid/graphics/RectF;->top:F

    mul-float p2, p2, v2

    goto :goto_1

    :pswitch_3
    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    sub-float/2addr p2, v0

    :goto_1
    move v0, p2

    const/4 p2, 0x0

    goto :goto_4

    :pswitch_4
    sget-object p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_2
    sub-float/2addr p2, v0

    goto :goto_3

    :pswitch_5
    iget p2, v0, Landroid/graphics/RectF;->left:F

    mul-float p2, p2, v2

    :goto_3
    const/4 v0, 0x0

    :goto_4
    cmpl-float v1, p2, v3

    if-nez v1, :cond_0

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    goto :goto_5

    :cond_2
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    goto :goto_6

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeCurrentObject()V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeCurrent()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeCurrentShape()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeObjectByReference(Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeText(IZ)V

    return-void

    :cond_2
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p1, v0, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeShape(IZ)V

    :cond_5
    return-void
.end method

.method public removeObjectsByReferences(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeObjectByReference(Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectCountChanged()V

    :cond_1
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectCountChanged()V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public resetAll()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    return-void
.end method

.method public rotateObjects(Ljava/util/ArrayList;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->computeObjectsCenter(Ljava/util/ArrayList;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(I)V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v6, v4

    double-to-float v4, v6

    invoke-static {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    iget v5, v0, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    float-to-double v7, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, v7

    add-double/2addr v9, v5

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v9, v5

    double-to-float v5, v9

    invoke-virtual {v2, v5}, Landroid/view/View;->setX(F)V

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v7

    add-double/2addr v3, v5

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v6, v4

    double-to-float v4, v6

    invoke-static {v3, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    iget v5, v0, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    float-to-double v7, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, v7

    add-double/2addr v9, v5

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v9, v5

    double-to-float v5, v9

    invoke-virtual {v2, v5}, Landroid/view/View;->setX(F)V

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v7

    add-double/2addr v3, v5

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public scaleObjects(Ljava/util/ArrayList;F)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->computeObjectsCenter(Ljava/util/ArrayList;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float v4, v4, p2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v6

    mul-float v3, v3, p2

    add-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v4

    sub-float/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->setX(F)V

    iget v4, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v3

    sub-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setY(F)V

    invoke-virtual {v2, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->relativeScale(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->relativeScale(F)V

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getGlobalCenter(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float v4, v4, p2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v6

    mul-float v3, v3, p2

    add-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v4

    sub-float/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->setX(F)V

    iget v4, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v3

    sub-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public selectByReference(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v3, v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v4, v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget v2, p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I

    :cond_3
    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    return-void
.end method

.method public selectShapeId(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->toggleSelect(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected()Z

    move-result v5

    if-eq v4, p1, :cond_2

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->toggleSelect(Z)V

    goto :goto_1

    :cond_2
    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->toggleSelect(Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    goto :goto_2

    :cond_4
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    :goto_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-ne p1, v2, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result p1

    :goto_3
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq v4, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    invoke-interface {v3, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onShapeSelectionChanged(ZI)V

    :cond_7
    return-void
.end method

.method public selectTextId(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->toggleSelect(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected()Z

    move-result v5

    if-eq v4, p1, :cond_2

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v4, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->toggleSelect(Z)V

    goto :goto_1

    :cond_2
    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v4, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->toggleSelect(Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    goto :goto_2

    :cond_4
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    :goto_2
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz p1, :cond_6

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-eq v3, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onTextSelectionChanged(Z)V

    :cond_6
    return-void
.end method

.method public setLayersListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    return-void
.end method

.method public setObjectIdInLayout(Ljava/lang/String;Landroid/view/View;IZ)V
    .locals 1

    if-ltz p3, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result p4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;->onObjectZChanged(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Landroid/widget/RelativeLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectZChange()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRenderMode(ZF)V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setRenderMode(ZF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setRenderMode(ZF)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setSelectionListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->mSelectionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnSelectionChangedListener;

    return-void
.end method

.method public unHideAll()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->hideAllBut(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public undoCreateShape(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-ne v1, p1, :cond_1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    :cond_1
    return-void
.end method

.method public undoCreateText(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget v0, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-ne v1, p1, :cond_1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    :cond_1
    return-void
.end method

.method public undoDeleteShape(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->assigned_id_shape:I

    invoke-virtual {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnSelectEventListener_shape;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted_shape:I

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    if-eq p2, p1, :cond_0

    invoke-virtual {p0, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public undoDeleteText(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    iput p1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->assigned_id:I

    invoke-virtual {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTouchEventListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnSelectEventListener;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectShapeId(I)V

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->lastInserted:I

    invoke-virtual {p0, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->selectTextId(I)V

    if-eq p2, p1, :cond_0

    invoke-virtual {p0, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public undoObjectZChange(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getObjectByRef(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->setObjectIdInLayout(Ljava/lang/String;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public unmergeCurrentShape()Z
    .locals 4

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->mergedDataBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v1, "objectsBundle"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "objectsIds"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeCurrentObject()V

    invoke-virtual {p0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->recreateObjects(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->layersListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer$OnLayersListener;->objectCountChanged()V

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
