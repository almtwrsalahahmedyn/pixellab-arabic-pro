.class Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;
.super Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorCompatBase"
.end annotation


# instance fields
.field private final mEndValue:F

.field private final mListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;


# direct methods
.method public constructor <init>(FFLcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;-><init>()V

    iput-object p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mEndValue:F

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mEndValue:F

    invoke-interface {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;->onAnimationFrame(F)V

    return-void
.end method
