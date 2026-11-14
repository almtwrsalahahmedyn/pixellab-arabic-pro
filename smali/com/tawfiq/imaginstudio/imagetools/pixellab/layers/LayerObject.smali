.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;
.super Landroid/view/View;

# interfaces
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;
.implements Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;
    }
.end annotation


# static fields
.field static final autoScrollVelocity:F


# instance fields
.field bmpBorderPaint:Landroid/graphics/Paint;

.field bmpPaint:Landroid/graphics/Paint;

.field bounds:Landroid/graphics/RectF;

.field buttonsActiveColorFilter:Landroid/graphics/ColorFilter;

.field buttonsArea:Landroid/graphics/RectF;

.field buttonsColorFilter:Landroid/graphics/ColorFilter;

.field checkMarkBounds:Landroid/graphics/RectF;

.field checkMarkPath:Landroid/graphics/Path;

.field checked:Z

.field checkers:Landroid/graphics/drawable/Drawable;

.field contentArea:Landroid/graphics/RectF;

.field dY:F

.field deleteButton:Landroid/graphics/RectF;

.field deleteDrawable:Landroid/graphics/drawable/Drawable;

.field dragArea:Landroid/graphics/RectF;

.field private dragCirclesRadii:F

.field drawableBounds:Landroid/graphics/RectF;

.field editButton:Landroid/graphics/RectF;

.field editDrawable:Landroid/graphics/drawable/Drawable;

.field hideButton:Landroid/graphics/RectF;

.field hideDrawable:Landroid/graphics/drawable/Drawable;

.field layerActionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

.field lockButton:Landroid/graphics/RectF;

.field lockDrawable:Landroid/graphics/drawable/Drawable;

.field padding:I

.field paddingBg:I

.field pntBg:Landroid/graphics/Paint;

.field pntButtonsBg:Landroid/graphics/Paint;

.field pntDrag:Landroid/graphics/Paint;

.field pntSelectBg:Landroid/graphics/Paint;

.field pntSelectBorder:Landroid/graphics/Paint;

.field pntSelectCheck:Landroid/graphics/Paint;

.field pntSeparator:Landroid/graphics/Paint;

.field previousY:F

.field public reference:Ljava/lang/String;

.field referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

.field scrollAnimation:Landroid/animation/AnimatorSet;

.field selectButton:Landroid/graphics/RectF;

.field selectButtonCenter:Landroid/graphics/PointF;

.field selectButtonRadius:F

.field selectionMode:Z

.field textView:Landroid/widget/TextView;

.field textViewNeedsRedraw:Z

.field touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->autoScrollVelocity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Z)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->padding:I

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->paddingBg:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntBg:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntDrag:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBg:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "#68768a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "#e37b7b"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsActiveColorFilter:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textViewNeedsRedraw:Z

    new-instance v1, Landroid/graphics/RectF;

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    iput-boolean p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    sget-object p4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p4

    if-eqz p4, :cond_1

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p3, v1, :cond_0

    invoke-virtual {p4, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p2

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setLayersListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p3, v1, :cond_1

    invoke-virtual {p4, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->getTextByRef(Ljava/lang/String;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p2

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p2, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLayersListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    const/16 p3, 0xe6

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    const-string p3, "#aa000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f08010e

    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f0801c8

    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f0801c7

    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f0801cb

    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f0801cc

    invoke-static {p2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntBg:Landroid/graphics/Paint;

    const-string p4, "#f4f4f4"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    const-string p4, "#cfcfcf"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntDrag:Landroid/graphics/Paint;

    const-string p4, "#918d91"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    const-string p4, "#d1d1d1"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    const-string p4, "#6d6d6d"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBg:Landroid/graphics/Paint;

    const-string p4, "#dddddd"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    const-string p4, "#2d939c"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private clickAll()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->selectMe()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->selectMe()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clickDelete()V
    .locals 4

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/textContainer;->removeObjectByReference(Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    invoke-interface {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;->deleteMyView(Landroid/view/View;)V

    return-void
.end method

.method private clickEdit()V
    .locals 4

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickAll()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-interface {v0, p0, v2, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;->clickedEditButton(Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private clickHide()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setHidden(Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setHidden(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private clickLock()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLocked(Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setLocked(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private clickSelect()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private drawDragArea(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    if-eqz v1, :cond_0

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    div-float/2addr v4, v3

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntDrag:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v5

    add-float/2addr v2, v4

    if-eqz v1, :cond_1

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntDrag:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    mul-float v3, v3, v2

    add-float/2addr v0, v3

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawSeparator(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v7, 0x0

    mul-float v0, v0, v7

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v0, v0, v8

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, v7

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, v8

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static pxToDp(F)I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private requestNoIntercept()V
    .locals 2

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getLayerHolderScroll()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getLayerHolderScroll()Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public drawShapeBmp(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->fitRect(IILandroid/graphics/RectF;ZZ)Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkers:Landroid/graphics/drawable/Drawable;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public durationFromDistance(I)J
    .locals 4

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    int-to-float p1, p1

    sget v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->autoScrollVelocity:F

    div-float/2addr p1, v0

    float-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public fitRect(IILandroid/graphics/RectF;ZZ)Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    mul-float p1, p1, v0

    mul-float p2, p2, v0

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    goto :goto_0

    :cond_0
    iget p1, p3, Landroid/graphics/RectF;->left:F

    iget p2, v1, Landroid/graphics/RectF;->left:F

    :goto_0
    sub-float/2addr p1, p2

    if-eqz p5, :cond_1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    goto :goto_1

    :cond_1
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p3, v1, Landroid/graphics/RectF;->top:F

    :goto_1
    sub-float/2addr p2, p3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-object v1
.end method

.method public imageChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public initTextView()V
    .locals 4

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textViewNeedsRedraw:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "empty"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    iput-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textViewNeedsRedraw:Z

    :cond_3
    return-void
.end method

.method public initializeRect()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    :cond_5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    :cond_6
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    :cond_7
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    if-nez v0, :cond_8

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    :cond_8
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_9

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    :cond_9
    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    return v0
.end method

.method public isObjectHidden()Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isHidden()Z

    move-result v0

    return v0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isHidden()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isObjectLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isLocked()Z

    move-result v0

    return v0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isLocked()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isObjectSelected()Z
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected()Z

    move-result v0

    return v0

    :cond_0
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->isObjectSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#2196f3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDragArea(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode:[I

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    :goto_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->isObjectHidden()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsActiveColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->isObjectLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsActiveColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonCenter:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonRadius:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_9
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    :goto_4
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawSeparator(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawShapeBmp(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto :goto_5

    :cond_b
    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/tawfiq/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->initTextView()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    :goto_5
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->initializeRect()V

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->paddingBg:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    sub-float/2addr p2, p4

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const p3, 0x3df5c28f    # 0.12f

    mul-float p2, p2, p3

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget v0, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float p1, p1, p3

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iput p1, p4, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p4

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const p4, 0x3eb33333    # 0.35f

    mul-float p2, p2, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p4

    add-float/2addr p3, v0

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v0, p4, Landroid/graphics/RectF;->left:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p4

    const v1, 0x3f266666    # 0.65f

    mul-float p4, p4, v1

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, v1

    add-float/2addr v0, v2

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonCenter:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const p2, 0x3f8ccccd    # 1.1f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonRadius:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->right:F

    iput p3, p1, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->top:F

    iput p4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iput p3, p4, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iput p2, p4, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->padding:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, p2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/high16 p2, 0x41900000    # 18.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    const/4 p2, 0x2

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const p4, 0x3e0b4396    # 0.136f

    mul-float p2, p2, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    const v0, 0x3ed78d50    # 0.421f

    mul-float p3, p3, v0

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const p4, 0x3ed47ae1    # 0.415f

    mul-float p2, p2, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    const v0, 0x3f31a9fc    # 0.694f

    mul-float p3, p3, v0

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const p4, 0x3f58d4fe    # 0.847f

    mul-float p2, p2, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    const v0, 0x3e86a7f0    # 0.263f

    mul-float p3, p3, v0

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    invoke-static {p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v1, :cond_b

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->requestNoIntercept()V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->previousY:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dY:F

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dY:F

    add-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->setConfinedY(F)V

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->previousY:F

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->cancelAnimation()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;->dragLayerFinish(Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->updateTouchMode(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickDelete()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_hide:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickHide()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_lock:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickLock()V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_edit:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickEdit()V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickSelect()V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickAll()V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->updateTouchMode(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->previousY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dY:F

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_a
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-eq p1, v0, :cond_b

    if-eq p1, v1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    :goto_1
    return v3
.end method

.method public selectionChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setConfinedY(F)V
    .locals 12

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->cancelAnimation()V

    sget-object v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getLayerHolderScroll()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sget v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    sget v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    int-to-float v5, v1

    const/4 v6, 0x2

    const-string v7, "Y"

    const-string v8, "scrollY"

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmpg-float v11, p1, v5

    if-gtz v11, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/View;->setY(F)V

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    filled-new-array {v10}, [I

    move-result-object v3

    invoke-static {v0, v8, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->durationFromDistance(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v9, [F

    int-to-float v2, v2

    aput v2, v1, v10

    invoke-static {p0, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->durationFromDistance(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v10

    aput-object p1, v2, v9

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_0
    int-to-float v1, v4

    cmpl-float v5, p1, v1

    if-ltz v5, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    sub-int v2, v1, v4

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {v0, v8, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->durationFromDistance(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v9, [F

    int-to-float v1, v1

    aput v1, v0, v10

    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->durationFromDistance(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object p1, v2, v10

    aput-object v0, v2, v9

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    :goto_1
    return-void
.end method

.method public setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLayerActionListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public textChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->textViewNeedsRedraw:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public updateTouchMode(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_delete:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_hide:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_lock:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_edit:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    :goto_1
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/tawfiq/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
