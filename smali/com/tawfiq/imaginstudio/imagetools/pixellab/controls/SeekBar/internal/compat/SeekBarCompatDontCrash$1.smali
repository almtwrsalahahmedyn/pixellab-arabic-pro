.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash$1;
.super Landroid/view/ViewOutlineProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->setOutlineProvider(Landroid/view/View;Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$markerDrawable:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;


# direct methods
.method public constructor <init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash$1;->val$markerDrawable:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash$1;->val$markerDrawable:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->getPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method
