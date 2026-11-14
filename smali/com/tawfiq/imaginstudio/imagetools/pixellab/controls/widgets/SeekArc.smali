.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;
    }
.end annotation


# static fields
.field private static INVALID_PROGRESS_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SeekArc"


# instance fields
.field private drawMiddle:Z

.field private ignoreTouchFor:Landroid/widget/ScrollView;

.field private final mAngleOffset:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcRadius:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mArcWidth:I

.field private mClockwise:Z

.field private mMax:I

.field private mOnSeekArcChangeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

.field private mProgress:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressShow:Ljava/lang/Boolean;

.field private mProgressSweep:F

.field private mProgressWidth:I

.field private mRotation:I

.field private mRoundedEdges:Z

.field private mStartAngle:I

.field private mSweepAngle:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbXPos:I

.field private mThumbYPos:I

.field private mTouchAngle:D

.field private mTouchIgnoreRadius:F

.field private mTouchInside:Z

.field private mTranslateX:I

.field private mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, -0x5a

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mAngleOffset:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    const/16 v0, 0x64

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    const/16 v1, 0x168

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->drawMiddle:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    const v0, 0x7f040138

    invoke-direct {p0, p1, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, -0x5a

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mAngleOffset:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    const/16 v0, 0x64

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    const/16 v1, 0x168

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->drawMiddle:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    invoke-direct {p0, p1, p2, p3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, -0x5a

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mAngleOffset:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    const/16 v0, 0x64

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    const/16 v1, 0x168

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->drawMiddle:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getProgressForAngle(D)I
    .locals 2

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->valuePerDegree()F

    move-result v0

    float-to-double v0, v0

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    if-gez p2, :cond_0

    sget p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->INVALID_PROGRESS_VALUE:I

    :cond_0
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    if-le p2, p1, :cond_1

    sget p2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->INVALID_PROGRESS_VALUE:I

    :cond_1
    return p2
.end method

.method private getTouchDegrees(FF)D
    .locals 3

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateY:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    float-to-double v0, p2

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p1, v0

    :cond_1
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    int-to-double v0, v0

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method private ignoreTouch(FF)Z
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateY:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchIgnoreRadius:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x7f060085

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x1060012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x7f080231

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    sget-object v4, Lcom/tawfiq/imaginstudio/imagetools/pixellab/R$styleable;->SeekArc:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    const/4 p3, 0x2

    div-int/2addr p2, p3

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, p3

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    neg-int v6, v4

    neg-int v7, p2

    invoke-virtual {v5, v6, v7, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x3

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    const/4 p2, 0x4

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    int-to-float p2, p2

    const/4 v4, 0x6

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    const/16 p2, 0x9

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    const/16 p2, 0xa

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    const/4 p2, 0x7

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    const/16 p2, 0x8

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    const/16 p2, 0xd

    iget-boolean v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    if-le p1, p2, :cond_2

    move p1, p2

    :cond_2
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    const/16 p2, 0x168

    if-le p1, p2, :cond_4

    const/16 p1, 0x168

    :cond_4
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    if-le p1, p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    if-gez p1, :cond_7

    goto :goto_0

    :cond_7
    move v1, p1

    :goto_0
    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_8
    return-void
.end method

.method private onProgressRefresh(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateProgress(IZ)V

    return-void
.end method

.method private onStartTrackingTouch()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;->onStartTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;)V

    :cond_0
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;->onStopTrackingTouch(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;)V

    :cond_0
    return-void
.end method

.method private updateOnTouch(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouch(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getTouchDegrees(FF)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchAngle:D

    invoke-direct {p0, v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getProgressForAngle(D)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->onProgressRefresh(IZ)V

    return-void
.end method

.method private updateProgress(IZ)V
    .locals 1

    sget v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->INVALID_PROGRESS_VALUE:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;->onProgressChanged(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;IZ)V

    :cond_1
    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    if-le p1, p2, :cond_2

    move p1, p2

    :cond_2
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    if-gez v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateThumbPosition()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateThumbPosition()V
    .locals 7

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v1

    double-to-int v0, v5

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbXPos:I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-double v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-int v0, v2

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbYPos:I

    return-void
.end method

.method private valuePerDegree()F
    .locals 2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dpToPixels(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getArcRotation()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    return v0
.end method

.method public getArcWidth()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    return v0
.end method

.method public getProgressWidth()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    return v0
.end method

.method public getStartAngle()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    return v0
.end method

.method public getSweepAngle()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->drawMiddle:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    add-int/lit8 v0, v0, -0x5a

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateX:I

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbXPos:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateY:I

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbYPos:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateX:I

    int-to-float v3, v0

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateY:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    add-float v4, v1, v2

    add-float/2addr v2, v0

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    float-to-int v0, v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5a

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v1

    double-to-int v0, v5

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbXPos:I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-double v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-int v0, v2

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbYPos:I

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setTouchInSide(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateOnTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateOnTouch(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouch(FF)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    :goto_0
    return v1
.end method

.method public setArcRotation(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateThumbPosition()V

    return-void
.end method

.method public setArcWidth(I)V
    .locals 1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setClockwise(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    return-void
.end method

.method public setIgnoreTouchFor(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    return-void
.end method

.method public setOnSeekArcChangeListener(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateProgress(IZ)V

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setRoundedEdges(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public setStartAngle(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateThumbPosition()V

    return-void
.end method

.method public setSweepAngle(I)V
    .locals 0

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateThumbPosition()V

    return-void
.end method

.method public setTouchInSide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchIgnoreRadius:F

    return-void
.end method

.method public setmProgressShow(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    return-void
.end method
