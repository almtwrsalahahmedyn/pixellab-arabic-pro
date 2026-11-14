.class public abstract Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(FFLcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;
    .locals 1

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompatV11;

    invoke-direct {v0, p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompatV11;-><init>(FFLcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract isRunning()Z
.end method

.method public abstract setDuration(I)V
.end method

.method public abstract start()V
.end method
