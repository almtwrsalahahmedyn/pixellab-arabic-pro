.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;
    }
.end annotation


# static fields
.field public static final FILL_TYPE_COLOR:I = 0x1

.field public static final FILL_TYPE_GRADIENT:I = 0x2


# instance fields
.field additionalHeightSpace:I

.field additionalWidthSpace:I

.field arcChord:F

.field arcHeight:F

.field boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field private canvasStore:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field curveCenter:Landroid/graphics/PointF;

.field public curveDegree:I

.field curvePaint:Landroid/text/TextPaint;

.field curveRadian:D

.field curveRadius:F

.field private curveText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;

.field defaultColor:I

.field public drawMaskListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

.field fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field private frozen:Z

.field gradient_bounds:Landroid/graphics/Rect;

.field inPaddingLeft:I

.field inPaddingRight:I

.field private includeEmbossInStroke:Z

.field public inner_color:I

.field public inner_dx:F

.field public inner_dy:F

.field inner_enabled:Z

.field public inner_r:F

.field public isCurved:Z

.field italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field private justifyAlign:Z

.field private letterSpacing:I

.field private maxDim:I

.field public myFontFeature:Ljava/lang/String;

.field offsetY:I

.field private originalText:Ljava/lang/String;

.field path:Landroid/graphics/Path;

.field pathDirection:Landroid/graphics/Path$Direction;

.field public spacing:I

.field public strokeColor:I

.field public strokeFillType:I

.field public strokeGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field public strokeWidth:F

.field public stroke_enabled:Z

.field private tempBitmap:Landroid/graphics/Bitmap;

.field private tempCanvas:Landroid/graphics/Canvas;

.field textWidthLength:F

.field private textureShader:Landroid/graphics/BitmapShader;

.field tmpBottom:I

.field tmpLeft:I

.field tmpRight:I

.field tmpTop:I

.field public tmp_drawing3DDepth:Z

.field unCurvedText:Ljava/lang/String;

.field underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field public userMaxWidth:D

.field public userTextSize:F

.field private wordSpacing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpLeft:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpTop:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpRight:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpBottom:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

    const/16 v2, 0x64

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxDim:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z

    const/high16 v2, -0x1000000

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->defaultColor:I

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    const/high16 v3, 0x41a00000    # 20.0f

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    iput-wide v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->spacing:I

    const/high16 v3, 0x40800000    # 4.0f

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeColor:I

    new-instance v3, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/4 v3, 0x1

    iput v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;

    const/high16 v4, 0x40400000    # 3.0f

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F

    const/4 v4, 0x0

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F

    iput v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    const-string v2, ""

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;

    invoke-direct {v2, p0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$1;)V

    iput-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->includeEmbossInStroke:Z

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmp_drawing3DDepth:Z

    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxDim:I

    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->canvasStore:Ljava/util/WeakHashMap;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->canvasStore:Ljava/util/WeakHashMap;

    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110143

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    return p0
.end method

.method private applyColorToCurve()V
    .locals 2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmp_drawing3DDepth:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyFontToCurve()V
    .locals 3

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->isCoverAll(I)Z

    move-result v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->isCoverAll(I)Z

    move-result v1

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    if-eqz v1, :cond_0

    const/high16 v1, -0x41800000    # -0.25f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_2

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private drawCurvedText(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    const v1, -0x44555555

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;

    invoke-virtual {v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->getSpacedText()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->path:Landroid/graphics/Path;

    const/4 v4, 0x0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    const v1, -0x425c28f6    # -0.08f

    mul-float v5, v0, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawStuff(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawCurvedText(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private generateTempCanvas(FF)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%dx%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->canvasStore:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_0

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->canvasStore:Ljava/util/WeakHashMap;

    new-instance p2, Landroid/util/Pair;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static varargs maxList([F)I
    .locals 4

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    float-to-int p0, v0

    return p0
.end method

.method private removeSpans(Landroid/text/SpannableString;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const-class v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/StyleSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/UnderlineSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/UnderlineSpan;

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static useNewLetterSpacing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public applyJustifyAlign()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyJustifyAlign(Landroid/text/SpannableString;)V

    return-void
.end method

.method public applyJustifyAlign(Landroid/text/SpannableString;)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const-class v2, Landroid/text/style/ScaleXSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ScaleXSpan;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_6

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    move v7, v6

    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v9, v5, -0x1

    const/16 v10, 0x20

    if-ge v7, v9, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-static {v7, v4, v5, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v7, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    sub-int/2addr v7, v11

    int-to-float v7, v7

    sub-float/2addr v7, v4

    int-to-float v4, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    const-string v11, " "

    invoke-virtual {v8, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    mul-float v4, v4, v8

    div-float/2addr v7, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v7, v4

    cmpl-float v4, v7, v4

    if-lez v4, :cond_4

    :goto_3
    if-ge v6, v9, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_3

    new-instance v4, Landroid/text/style/ScaleXSpan;

    invoke-direct {v4, v7}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v8, v6, 0x1

    const/16 v11, 0x21

    invoke-virtual {p1, v4, v6, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ScaleXSpan;

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    return-void
.end method

.method public applySpacing()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpacing(Landroid/text/SpannableString;)V

    return-void
.end method

.method public applySpacing(Landroid/text/SpannableString;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const-class v2, Landroid/text/style/ScaleXSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ScaleXSpan;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    const/16 v3, 0x21

    const/high16 v4, 0x41200000    # 10.0f

    if-nez v2, :cond_2

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_3

    :cond_1
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    new-instance v2, Landroid/text/style/ScaleXSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v2, v1, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    div-float/2addr v0, v4

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Landroid/text/style/ScaleXSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v2, v1, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    return-void
.end method

.method public applySpans()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpacing(Landroid/text/SpannableString;)V

    invoke-direct {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeSpans(Landroid/text/SpannableString;)V

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v4

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    if-lt v4, v3, :cond_0

    new-instance v5, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/customTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v2, 0x22

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v4, 0x21

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v6

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v7

    invoke-virtual {p0, v6, v7, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    if-lt v6, v5, :cond_2

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v2

    invoke-direct {v7, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v6

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v2

    invoke-virtual {p0, v6, v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    if-lt v2, v5, :cond_4

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v6

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v2

    invoke-virtual {p0, v6, v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    if-lt v2, v5, :cond_6

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v6

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v2

    invoke-virtual {p0, v6, v2, v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    if-lt v2, v5, :cond_8

    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public clearStroke()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    return-void
.end method

.method public clearStyles(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->removeInterval(II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->removeInterval(II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->removeInterval(II)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    return-void
.end method

.method public createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-object v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;->done(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public freeze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    return-void
.end method

.method public getLetterSpace()I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    return v0
.end method

.method public getTextLength()I
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public isJustifyAlign()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z

    return v0
.end method

.method public isWordSpacing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    return v0
.end method

.method public negativePart(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method public offsetEnd(III)I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z

    move-result v0

    if-nez v0, :cond_0

    sub-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    :cond_0
    return p2
.end method

.method public offsetStart(I)I
    .locals 1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z

    move-result v0

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyJustifyAlign()V

    :cond_0
    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v6, 0x4

    aget v2, v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setDither(Z)V

    sget-object v8, Lcom/tawfiq/imaginstudio/imagetools/pixellab/font/fontDialogFragment$OtClickListener;->currentFeature:Ljava/lang/String;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const-string v8, "normal"

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :goto_0
    iget-boolean v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    const/high16 v7, -0x1000000

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v5

    iget-boolean v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->includeEmbossInStroke:Z

    if-nez v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->freeze()V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeColorSpans()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v9

    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setDither(Z)V

    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    iget-object v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;

    if-eqz v12, :cond_3

    const/high16 v12, -0x1000000

    goto :goto_1

    :cond_3
    iget v12, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeColor:I

    :goto_1
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v12, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/superCanvas;

    invoke-direct {v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/superCanvas;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v4

    float-to-int v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v2

    float-to-int v15, v15

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v10, v8}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    if-ne v14, v13, :cond_4

    iget-object v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;

    if-eqz v13, :cond_4

    const/16 v13, 0xff

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v13, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget-object v14, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-boolean v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-eqz v10, :cond_5

    new-instance v10, Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v10, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V

    :cond_5
    invoke-direct {v0, v12}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawStuff(Landroid/graphics/Canvas;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v12, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v12, v15, v15, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v3, v8, v12, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->restoreColorSpans()V

    iget-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->includeEmbossInStroke:Z

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->unfreeze()V

    invoke-super/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    invoke-super/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    iget-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-eqz v3, :cond_8

    new-instance v3, Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyColorToCurve()V

    :cond_8
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v9, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawStuff(Landroid/graphics/Canvas;)V

    iget-object v5, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    :cond_a
    iget-boolean v3, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_enabled:Z

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->freeze()V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeColorSpans()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setDither(Z)V

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {v0, v4, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->generateTempCanvas(FF)V

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-boolean v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-eqz v2, :cond_b

    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V

    :cond_b
    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawStuff(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v4, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F

    iget v7, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-boolean v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-eqz v2, :cond_c

    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V

    :cond_c
    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawStuff(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v2, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4, v8, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->restoreColorSpans()V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->unfreeze()V

    invoke-virtual/range {p0 .. p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    :cond_d
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcChord:F

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcHeight:F

    float-to-int p2, p2

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalHeightSpace:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    :cond_0
    return-void
.end method

.method public printRect(Landroid/graphics/Rect;I)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public removeColorSpans()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public restoreColorSpans()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v4

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v2

    invoke-direct {v5, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public returnActualText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    return-object v0
.end method

.method public setBlack()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextLength()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public setBoldToSelection(II)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-direct {v1, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    return-void
.end method

.method public setColorToSelection(III)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-direct {v1, p2, p3, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    return-void
.end method

.method public setCurve(I)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_2
    :goto_1
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    if-eqz p1, :cond_3

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    iget-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-eqz p1, :cond_8

    new-instance p1, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    invoke-virtual {p1, v0, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->setText(Ljava/lang/String;I)V

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    const v0, -0x44555555

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveText:Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;

    invoke-virtual {p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->getSpacedText()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->unCurvedText:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->path:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->pathDirection:Landroid/graphics/Path$Direction;

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->unCurvedText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textWidthLength:F

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f266666    # 0.65f

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textWidthLength:F

    float-to-double v4, v0

    div-double/2addr v4, v2

    double-to-float v0, v4

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v0, v2

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcChord:F

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F

    add-float/2addr v0, v1

    iget-wide v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v2, v2, v0

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcHeight:F

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    :goto_3
    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I

    int-to-float v0, v0

    iget-wide v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    if-gez v2, :cond_6

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v1, v1

    iget-wide v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    sub-float v2, v3, v2

    mul-float v1, v1, v2

    :cond_6
    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalHeightSpace:I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I

    iget p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    if-gez p1, :cond_7

    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->pathDirection:Landroid/graphics/Path$Direction;

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f19999a    # 0.6f

    mul-float p1, p1, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F

    neg-float p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I

    int-to-float p1, p1

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcHeight:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v1, v1

    iget-wide v6, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    add-float/2addr v3, v0

    add-float/2addr v3, p1

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I

    const/16 p1, -0x5a

    goto :goto_4

    :cond_7
    const/16 p1, 0x5a

    :goto_4
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcChord:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->path:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F

    iget-object v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->pathDirection:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    iget-object v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveCenter:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_8
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->postInvalidate()V

    return-void
.end method

.method public setFontFeatureSettingValue(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->myFontFeature:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    return-void
.end method

.method public setFonts(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    return-void
.end method

.method public setIncludeEmbossInStroke(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->includeEmbossInStroke:Z

    return-void
.end method

.method public setInnerShadow(ZFFFI)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_enabled:Z

    if-eqz p1, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F

    iput p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V

    return-void
.end method

.method public setItalicToSelection(II)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-direct {v1, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    return-void
.end method

.method public setJustifyAlign(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLetterSpace(I)V

    :cond_0
    return-void
.end method

.method public setLetterSpace(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z

    :cond_0
    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpacing()V

    :goto_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updatePaddings()V

    return-void
.end method

.method public setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method public setStrokeFill(ZFIILcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    const p2, 0x3dcccccd    # 0.1f

    :cond_0
    iput p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    iput p4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeColor:I

    iput p3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I

    iput-object p5, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeGradient:Lcom/tawfiq/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    :cond_1
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updatePaddings()V

    return-void
.end method

.method public setTextureShader(Landroid/graphics/BitmapShader;)V
    .locals 0

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;

    return-void
.end method

.method public setUnderToSelection(II)V
    .locals 2

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v1, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;

    invoke-direct {v1, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    return-void
.end method

.method public setWordSpacing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;)V

    return-void
.end method

.method public textUpdated()V
    .locals 1

    iget-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I

    invoke-virtual {p0, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setCurve(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->postInvalidate()V

    return-void
.end method

.method public unfreeze()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z

    return-void
.end method

.method public updateEnds(II)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, p1, p2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V

    return-void
.end method

.method public updatePaddings()V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget-boolean v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    mul-float v3, v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x0

    aput v3, v2, v6

    const/4 v3, 0x1

    const/high16 v7, 0x40a00000    # 5.0f

    aput v7, v2, v3

    invoke-static {v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxList([F)I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    iget v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpRight:I

    sub-int/2addr v0, v8

    new-array v8, v1, [F

    iget-boolean v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    mul-float v9, v9, v4

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    aput v9, v8, v6

    aput v7, v8, v3

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxList([F)I

    move-result v7

    add-int/2addr v7, v0

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I

    add-int/2addr v7, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpTop:I

    sub-int/2addr v0, v8

    new-array v8, v3, [F

    iget-boolean v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    mul-float v9, v9, v4

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    aput v9, v8, v6

    invoke-static {v8}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxList([F)I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    iget v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpBottom:I

    sub-int/2addr v0, v9

    new-array v1, v1, [F

    iget-boolean v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F

    mul-float v9, v9, v4

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    aput v9, v1, v6

    iget v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->spacing:I

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->negativePart(F)F

    move-result v4

    aput v4, v1, v3

    invoke-static {v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxList([F)I

    move-result v1

    add-int/2addr v1, v0

    iput v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpLeft:I

    iput v8, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpTop:I

    iput v7, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpRight:I

    iput v1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpBottom:I

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    neg-int v3, v2

    int-to-float v3, v3

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {p0, v0, v3, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {p0, v2, v8, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;I)V

    return-void
.end method

.method public updateText(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateEnds(II)V

    iput-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    iget p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;

    const-string p2, ".(?=.)"

    const-string v0, "$0\u200a"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_4
    :goto_2
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_5
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V

    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    return-void
.end method

.method public updateTextSize(F)V
    .locals 7

    iget v0, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F

    float-to-double v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iput p1, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F

    iget-wide v2, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    float-to-double v4, p1

    div-double/2addr v4, v0

    mul-double v4, v4, v2

    iput-wide v4, p0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D

    double-to-int p1, v4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V

    return-void
.end method
