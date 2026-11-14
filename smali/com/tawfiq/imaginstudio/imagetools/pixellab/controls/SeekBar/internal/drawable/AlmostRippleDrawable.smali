.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;
.super Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ACTIVE_SCALE:F = 1.0f

.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final FRAME_DURATION:J = 0x10L

.field private static final INACTIVE_SCALE:F


# instance fields
.field private mAnimationInitialValue:F

.field private mCurrentScale:F

.field private mDisabledColor:I

.field private mDuration:I

.field private mFocusedColor:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPressedColor:I

.field private mReverse:Z

.field private mRippleBgColor:I

.field private mRippleColor:I

.field private mRunning:Z

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable$1;

    invoke-direct {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable$1;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    return-void
.end method

.method public static synthetic access$000(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)J
    .locals 2

    iget-wide v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)I
    .locals 0

    iget p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    return p0
.end method

.method public static synthetic access$200(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->updateAnimation(F)V

    return-void
.end method

.method public static synthetic access$502(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    return p1
.end method

.method private decreasedAlpha(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    shr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method private updateAnimation(F)V
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    iget-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public animateToNormal()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public animateToPressed()V
    .locals 5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    const/4 v2, 0x0

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v5, v1, v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->decreasedAlpha(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->modulateAlpha(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    return v0
.end method

.method public setState([I)Z
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    const v6, 0x10100a7

    if-ge v3, v1, :cond_1

    aget v7, v0, v3

    if-ne v7, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->setState([I)Z

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget v9, p1, v1

    const v10, 0x101009c

    if-ne v9, v10, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    if-ne v9, v6, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const v10, 0x101009e

    if-ne v9, v10, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/high16 p1, 0x3f000000    # 0.5f

    :goto_3
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->animateToPressed()V

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->animateToNormal()V

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_9

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_9
    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/4 p1, 0x0

    goto :goto_3

    :goto_4
    return v5
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
