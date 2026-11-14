.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isInScrollingContainer(Landroid/view/ViewParent;)Z
    .locals 0

    invoke-static {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->isInScrollingContainer(Landroid/view/ViewParent;)Z

    move-result p0

    return p0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1

    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public static setOutlineProvider(Landroid/view/View;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->setOutlineProvider(Landroid/view/View;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V

    return-void
.end method

.method public static setTextDirection(Landroid/widget/TextView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->setTextDirection(Landroid/widget/TextView;I)V

    return-void
.end method
