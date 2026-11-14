package com.tawfiq.imaginstudio.imagetools.pixellab.TextObject;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.EmbossMaskFilter;
import android.graphics.MaskFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import android.text.style.ScaleXSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import android.widget.TextView;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.interval;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.functions.spansIntervals;
import com.tawfiq.imaginstudio.imagetools.pixellab.font.CustomTypefaceSpan;
import com.tawfiq.imaginstudio.imagetools.pixellab.font.fontDialogFragment;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class CustomTextView extends TextView {
    public static final int FILL_TYPE_COLOR = 1;
    public static final int FILL_TYPE_GRADIENT = 2;
    int additionalHeightSpace;
    int additionalWidthSpace;
    float arcChord;
    float arcHeight;
    spansIntervals boldIds;
    private WeakHashMap<String, Pair<Canvas, Bitmap>> canvasStore;
    spansIntervals colorIds;
    PointF curveCenter;
    public int curveDegree;
    TextPaint curvePaint;
    double curveRadian;
    float curveRadius;
    private CurveText curveText;
    int defaultColor;
    public onFinishDraw drawMaskListener;
    spansIntervals fontsIds;
    private boolean frozen;
    Rect gradient_bounds;
    int inPaddingLeft;
    int inPaddingRight;
    private boolean includeEmbossInStroke;
    public int inner_color;
    public float inner_dx;
    public float inner_dy;
    boolean inner_enabled;
    public float inner_r;
    public boolean isCurved;
    spansIntervals italicIds;
    private boolean justifyAlign;
    private int letterSpacing;
    private int maxDim;
    public String myFontFeature;
    int offsetY;
    private String originalText;
    Path path;
    Path.Direction pathDirection;
    public int spacing;
    public int strokeColor;
    public int strokeFillType;
    public GradientMaker.GradientFill strokeGradient;
    public float strokeWidth;
    public boolean stroke_enabled;
    private Bitmap tempBitmap;
    private Canvas tempCanvas;
    float textWidthLength;
    private BitmapShader textureShader;
    int tmpBottom;
    int tmpLeft;
    int tmpRight;
    int tmpTop;
    public boolean tmp_drawing3DDepth;
    String unCurvedText;
    spansIntervals underIds;
    public double userMaxWidth;
    public float userTextSize;
    private boolean wordSpacing;

    /* loaded from: classes.dex */
    public class CurveText {
        int curveSpacing;
        String spacedText;
        String unspacedText;

        private CurveText() {
        }

        public void applySpacing() {
            String replaceAll;
            int i = this.curveSpacing;
            if (i > 0) {
                StringBuilder sb = new StringBuilder("$0");
                for (int i2 = 0; i2 < this.curveSpacing / 10; i2++) {
                    sb.append("\u200a");
                }
                replaceAll = this.unspacedText.replaceAll(CustomTextView.this.wordSpacing ? ".(?=\\s)" : ".(?=.)", sb.toString());
            } else {
                replaceAll = i == 0 ? this.unspacedText : this.unspacedText.replaceAll("\\s", "");
            }
            this.spacedText = replaceAll;
        }

        public String getSpacedText() {
            return this.spacedText;
        }

        public void setText(String str, int i) {
            if (str.equals(this.unspacedText) && this.curveSpacing == i) {
                return;
            }
            this.unspacedText = str;
            this.curveSpacing = i;
            applySpacing();
        }
    }

    /* loaded from: classes.dex */
    public interface onFinishDraw {
        void done(Canvas canvas);
    }

    public CustomTextView(Context context, int i) {
        super(context);
        this.inPaddingLeft = 0;
        this.inPaddingRight = 0;
        this.tmpLeft = 0;
        this.tmpTop = 0;
        this.tmpRight = 0;
        this.tmpBottom = 0;
        this.drawMaskListener = null;
        this.maxDim = 100;
        this.justifyAlign = false;
        this.defaultColor = -16777216;
        this.fontsIds = new spansIntervals();
        this.colorIds = new spansIntervals();
        this.boldIds = new spansIntervals();
        this.italicIds = new spansIntervals();
        this.underIds = new spansIntervals();
        this.frozen = false;
        this.userTextSize = 20.0f;
        this.userMaxWidth = -1.0d;
        this.spacing = 0;
        this.strokeWidth = 4.0f;
        this.strokeColor = -16777216;
        this.strokeGradient = new GradientMaker.GradientFill();
        this.strokeFillType = 1;
        this.gradient_bounds = null;
        this.inner_r = 3.0f;
        this.inner_dx = 0.0f;
        this.inner_dy = 0.0f;
        this.inner_color = -16777216;
        this.curveDegree = 0;
        this.isCurved = false;
        this.letterSpacing = 0;
        this.originalText = "";
        this.curveText = new CurveText();
        this.includeEmbossInStroke = false;
        this.textureShader = null;
        this.wordSpacing = false;
        this.tmp_drawing3DDepth = false;
        this.maxDim = i;
        if (this.canvasStore == null) {
            this.canvasStore = new WeakHashMap<>();
        }
        setMinWidth(1);
        updateTextSize(context.getResources().getDisplayMetrics().scaledDensity * this.userTextSize);
        updateText(getContext().getString(R.string.new_text));
        setLayerType(1, null);
        setIncludeFontPadding(true);
        getPaint().setFontFeatureSettings("normal");
    }

    private void applyColorToCurve() {
        if (this.tmp_drawing3DDepth) {
            this.curvePaint.setColor(getTextColors().getDefaultColor());
            return;
        }
        interval lastAttr = this.colorIds.getLastAttr();
        if (lastAttr != null) {
            this.curvePaint.setColor(lastAttr.getColor());
        }
    }

    private void applyFontToCurve() {
        boolean isCoverAll = this.boldIds.isCoverAll(getTextLength());
        boolean isCoverAll2 = this.italicIds.isCoverAll(getTextLength());
        this.curvePaint.setFakeBoldText(isCoverAll);
        this.curvePaint.setTextSkewX(isCoverAll2 ? -0.25f : 0.0f);
        interval lastAttr = this.fontsIds.getLastAttr();
        if (lastAttr != null) {
            this.curvePaint.setTypeface(lastAttr.getFont().getTypeface());
        }
        TextPaint textPaint = this.curvePaint;
        if (textPaint != null) {
            textPaint.setFontFeatureSettings("normal");
        }
    }

    private void drawCurvedText(Canvas canvas) {
        String spacedText;
        this.curvePaint.setTextAlign(Paint.Align.CENTER);
        this.curvePaint.setShader(getPaint().getShader());
        this.curvePaint.setSubpixelText(true);
        this.curvePaint.setLinearText(true);
        if (this.letterSpacing == 0) {
            this.curvePaint.setLetterSpacing(-0.0052083335f);
            spacedText = this.originalText;
        } else {
            spacedText = this.curveText.getSpacedText();
        }
        canvas.drawTextOnPath(spacedText, this.path, 0.0f, this.curveDegree > 0 ? this.curvePaint.getTextSize() * (-0.08f) : 0.0f, this.curvePaint);
    }

    private void drawStuff(Canvas canvas) {
        getPaint().clearShadowLayer();
        if (this.isCurved) {
            drawCurvedText(canvas);
        } else {
            super.onDraw(canvas);
        }
    }

    private void generateTempCanvas(float f, float f2) {
        String format = String.format("%dx%d", Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
        Pair<Canvas, Bitmap> pair = this.canvasStore.get(format);
        if (pair != null) {
            this.tempCanvas = (Canvas) pair.first;
            this.tempBitmap = (Bitmap) pair.second;
            return;
        }
        this.tempCanvas = new Canvas();
        Bitmap createBitmap = Bitmap.createBitmap((int) (getWidth() * f), (int) (getHeight() * f2), Bitmap.Config.ARGB_8888);
        this.tempBitmap = createBitmap;
        this.tempCanvas.setBitmap(createBitmap);
        this.tempCanvas.scale(f, f2);
        this.canvasStore.put(format, new Pair<>(this.tempCanvas, this.tempBitmap));
    }

    public static int maxList(float... fArr) {
        float f = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            float f2 = fArr[i];
            if (f2 > f) {
                f = f2;
            }
        }
        return (int) f;
    }

    private void removeSpans(SpannableString spannableString) {
        for (CustomTypefaceSpan customTypefaceSpan : (CustomTypefaceSpan[]) spannableString.getSpans(0, getText().length(), CustomTypefaceSpan.class)) {
            spannableString.removeSpan(customTypefaceSpan);
        }
        for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) spannableString.getSpans(0, getText().length(), ForegroundColorSpan.class)) {
            spannableString.removeSpan(foregroundColorSpan);
        }
        for (StyleSpan styleSpan : (StyleSpan[]) spannableString.getSpans(0, getText().length(), StyleSpan.class)) {
            spannableString.removeSpan(styleSpan);
        }
        for (UnderlineSpan underlineSpan : (UnderlineSpan[]) spannableString.getSpans(0, getText().length(), UnderlineSpan.class)) {
            spannableString.removeSpan(underlineSpan);
        }
    }

    public static boolean useNewLetterSpacing() {
        return true;
    }

    public void applyJustifyAlign() {
        applyJustifyAlign((SpannableString) getText());
    }

    public void applyJustifyAlign(SpannableString spannableString) {
        int i;
        for (ScaleXSpan scaleXSpan : (ScaleXSpan[]) spannableString.getSpans(0, getText().length(), ScaleXSpan.class)) {
            spannableString.removeSpan(scaleXSpan);
        }
        if (this.justifyAlign) {
            try {
                Layout layout = getLayout();
                int i2 = 0;
                int i3 = 0;
                while (i2 < getLineCount() - 1) {
                    int lineEnd = layout.getLineEnd(i2);
                    int i4 = i3 + 1;
                    int i5 = i4;
                    int i6 = 0;
                    while (true) {
                        i = lineEnd - 1;
                        if (i5 >= i) {
                            break;
                        }
                        if (getText().charAt(i5) == ' ') {
                            i6++;
                        }
                        i5++;
                    }
                    float measuredWidth = ((((getMeasuredWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight()) - Layout.getDesiredWidth(getText(), i3, lineEnd, getLayout().getPaint())) / (i6 * getPaint().measureText(" "))) + 1.0f;
                    if (measuredWidth > 1.0f) {
                        while (i4 < i) {
                            if (getText().charAt(i4) == ' ') {
                                spannableString.setSpan(new ScaleXSpan(measuredWidth), i4, i4 + 1, 33);
                            }
                            i4++;
                        }
                    }
                    i2++;
                    i3 = lineEnd;
                }
            } catch (Exception e) {
                for (ScaleXSpan scaleXSpan2 : (ScaleXSpan[]) spannableString.getSpans(0, getText().length(), ScaleXSpan.class)) {
                    spannableString.removeSpan(scaleXSpan2);
                }
                e.printStackTrace();
            }
        }
        invalidate();
    }

    public void applySpacing() {
        applySpacing((SpannableString) getText());
    }

    public void applySpacing(SpannableString spannableString) {
        int i;
        for (ScaleXSpan scaleXSpan : (ScaleXSpan[]) spannableString.getSpans(0, getText().length(), ScaleXSpan.class)) {
            spannableString.removeSpan(scaleXSpan);
        }
        int i2 = 1;
        if (getText().length() > 1 && (i = this.letterSpacing) != 0) {
            if (this.wordSpacing) {
                float f = (i / 10.0f) + 1.0f;
                while (i2 < getText().length()) {
                    char charAt = getText().charAt(i2);
                    if (Character.isSpaceChar(charAt) || Character.isWhitespace(charAt)) {
                        spannableString.setSpan(new ScaleXSpan(f), i2, i2 + 1, 33);
                    }
                    i2++;
                }
            } else if (useNewLetterSpacing()) {
                setLetterSpacing(this.letterSpacing / 100.0f);
            } else {
                float f2 = this.letterSpacing / 10.0f;
                while (i2 < getText().length()) {
                    spannableString.setSpan(new ScaleXSpan(f2), i2, i2 + 1, 33);
                    i2 += 2;
                }
            }
        }
        textUpdated();
    }

    public void applySpans() {
        SpannableString spannableString = (SpannableString) getText();
        applySpacing(spannableString);
        removeSpans(spannableString);
        for (interval intervalVar : this.fontsIds.getIntervals()) {
            int max = Math.max(0, offsetStart(intervalVar.getStart()));
            int min = Math.min(offsetEnd(intervalVar.getStart(), intervalVar.getEnd(), max), getText().length());
            if (max < getText().length() && min >= max) {
                spannableString.setSpan(new CustomTypefaceSpan(intervalVar.getFont().getTypeface()), max, min, 34);
            }
        }
        for (interval intervalVar2 : this.colorIds.getIntervals()) {
            int max2 = Math.max(0, offsetStart(intervalVar2.getStart()));
            int min2 = Math.min(offsetEnd(intervalVar2.getStart(), intervalVar2.getEnd(), max2), getText().length());
            if (max2 < getText().length() && min2 >= max2) {
                spannableString.setSpan(new ForegroundColorSpan(intervalVar2.getColor()), max2, min2, 33);
            }
        }
        for (interval intervalVar3 : this.boldIds.getIntervals()) {
            int max3 = Math.max(0, offsetStart(intervalVar3.getStart()));
            int min3 = Math.min(offsetEnd(intervalVar3.getStart(), intervalVar3.getEnd(), max3), getText().length());
            if (max3 < getText().length() && min3 >= max3) {
                spannableString.setSpan(new StyleSpan(1), max3, min3, 33);
            }
        }
        for (interval intervalVar4 : this.italicIds.getIntervals()) {
            int max4 = Math.max(0, offsetStart(intervalVar4.getStart()));
            int min4 = Math.min(offsetEnd(intervalVar4.getStart(), intervalVar4.getEnd(), max4), getText().length());
            if (max4 < getText().length() && min4 >= max4) {
                spannableString.setSpan(new StyleSpan(2), max4, min4, 33);
            }
        }
        for (interval intervalVar5 : this.underIds.getIntervals()) {
            int max5 = Math.max(0, offsetStart(intervalVar5.getStart()));
            int min5 = Math.min(offsetEnd(intervalVar5.getStart(), intervalVar5.getEnd(), max5), getText().length());
            if (max5 < getText().length() && min5 >= max5) {
                spannableString.setSpan(new UnderlineSpan(), max5, min5, 33);
            }
        }
    }

    public void clearStroke() {
        this.stroke_enabled = false;
        textUpdated();
    }

    public void clearStyles(int i, int i2) {
        this.boldIds.removeInterval(i, i2);
        this.italicIds.removeInterval(i, i2);
        this.underIds.removeInterval(i, i2);
        applySpans();
    }

    public Typeface createFontFromPath(String str) {
        Typeface typeface = Typeface.DEFAULT;
        try {
            try {
                return Typeface.createFromAsset(getContext().getAssets(), str);
            } catch (Exception unused) {
                return Typeface.createFromFile(str);
            }
        } catch (Exception unused2) {
            return typeface;
        }
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        onFinishDraw onfinishdraw = this.drawMaskListener;
        if (onfinishdraw != null) {
            onfinishdraw.done(canvas);
        }
    }

    public void freeze() {
        this.frozen = true;
    }

    public int getLetterSpace() {
        return this.letterSpacing;
    }

    public int getTextLength() {
        String str = this.originalText;
        if (str != null) {
            return str.length();
        }
        return 0;
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.frozen) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        if (this.frozen) {
            return;
        }
        super.invalidate(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        if (this.frozen) {
            return;
        }
        super.invalidate(rect);
    }

    public boolean isJustifyAlign() {
        return this.justifyAlign;
    }

    public boolean isWordSpacing() {
        return this.wordSpacing;
    }

    public float negativePart(float f) {
        if (f >= 0.0f) {
            return 0.0f;
        }
        return Math.abs(f);
    }

    public int offsetEnd(int i, int i2, int i3) {
        return (this.letterSpacing == 0 || this.wordSpacing || useNewLetterSpacing()) ? i2 : ((i2 - i) * 2) + i3;
    }

    public int offsetStart(int i) {
        return (this.letterSpacing == 0 || this.wordSpacing || useNewLetterSpacing()) ? i : (i * 2) - 1;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.letterSpacing == 0) {
            applyJustifyAlign();
        }
        float[] fArr = new float[9];
        canvas.getMatrix().getValues(fArr);
        float max = Math.max(1.0f, fArr[0]);
        float max2 = Math.max(1.0f, fArr[4]);
        getPaint().setAntiAlias(true);
        getPaint().setDither(true);
        String str = fontDialogFragment.OtClickListener.currentFeature;
        if (str == null || str.isEmpty()) {
            getPaint().setFontFeatureSettings("normal");
        } else {
            getPaint().setFontFeatureSettings(str);
        }
        if (this.stroke_enabled) {
            MaskFilter maskFilter = getPaint().getMaskFilter();
            if (!this.includeEmbossInStroke) {
                getPaint().setMaskFilter(null);
            }
            freeze();
            removeColorSpans();
            int currentTextColor = getCurrentTextColor();
            TextPaint textPaint = new TextPaint();
            textPaint.setAntiAlias(true);
            textPaint.setDither(true);
            textPaint.setFilterBitmap(true);
            TextPaint textPaint2 = new TextPaint();
            textPaint2.set(getPaint());
            textPaint.set(getPaint());
            textPaint.setStyle(Paint.Style.STROKE);
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeCap(Paint.Cap.ROUND);
            int i = (this.strokeFillType != 2 || this.gradient_bounds == null) ? this.strokeColor : -16777216;
            setTextColor(i);
            textPaint.setStrokeWidth(this.strokeWidth);
            textPaint.setColor(i);
            superCanvas supercanvas = new superCanvas();
            Bitmap createBitmap = Bitmap.createBitmap((int) (getMeasuredWidth() * max), (int) (getMeasuredHeight() * max2), Bitmap.Config.ARGB_8888);
            supercanvas.setBitmap(createBitmap);
            supercanvas.scale(max, max2);
            textPaint.setShader(null);
            if (this.strokeFillType == 2 && this.gradient_bounds != null) {
                textPaint.setAlpha(255);
                textPaint.setShader(this.strokeGradient.getShader(this.gradient_bounds));
            }
            getPaint().set(textPaint);
            if (this.isCurved) {
                this.curvePaint = new TextPaint(getPaint());
                applyFontToCurve();
            }
            drawStuff(supercanvas);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setDither(true);
            paint.setFilterBitmap(true);
            canvas.drawBitmap(createBitmap, (Rect) null, new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight()), paint);
            createBitmap.recycle();
            getPaint().set(textPaint2);
            setTextColor(currentTextColor);
            restoreColorSpans();
            if (!this.includeEmbossInStroke) {
                getPaint().setMaskFilter(maskFilter);
            }
            unfreeze();
            super.invalidate();
            super.requestLayout();
        }
        if (this.isCurved) {
            this.curvePaint = new TextPaint(getPaint());
            applyFontToCurve();
            applyColorToCurve();
        }
        TextPaint textPaint3 = new TextPaint();
        if (this.textureShader != null) {
            textPaint3.set(getPaint());
            getPaint().setShader(this.textureShader);
        }
        drawStuff(canvas);
        if (this.textureShader != null) {
            getPaint().set(textPaint3);
        }
        if (this.inner_enabled) {
            freeze();
            removeColorSpans();
            int currentTextColor2 = getCurrentTextColor();
            TextPaint textPaint4 = new TextPaint();
            textPaint4.setAntiAlias(true);
            textPaint4.setDither(true);
            textPaint4.setFilterBitmap(true);
            TextPaint textPaint5 = new TextPaint();
            textPaint5.set(getPaint());
            textPaint4.set(getPaint());
            textPaint4.setShader(null);
            generateTempCanvas(max, max2);
            setTextColor(this.inner_color);
            textPaint4.setColor(this.inner_color);
            textPaint4.setShader(null);
            getPaint().set(textPaint4);
            if (this.isCurved) {
                this.curvePaint = new TextPaint(getPaint());
                applyFontToCurve();
            }
            drawStuff(this.tempCanvas);
            setTextColor(-16777216);
            textPaint4.setColor(-16777216);
            textPaint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            textPaint4.setMaskFilter(new BlurMaskFilter(this.inner_r, BlurMaskFilter.Blur.NORMAL));
            this.tempCanvas.save();
            this.tempCanvas.translate(this.inner_dx, this.inner_dy);
            getPaint().set(textPaint4);
            if (this.isCurved) {
                this.curvePaint = new TextPaint(getPaint());
                applyFontToCurve();
            }
            drawStuff(this.tempCanvas);
            try {
                this.tempCanvas.restore();
            } catch (IllegalStateException unused) {
            }
            Paint paint2 = new Paint();
            paint2.setFilterBitmap(true);
            paint2.setDither(true);
            paint2.setAntiAlias(true);
            canvas.drawBitmap(this.tempBitmap, (Rect) null, new Rect(0, 0, getWidth(), getHeight()), paint2);
            this.tempCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
            getPaint().set(textPaint5);
            setTextColor(currentTextColor2);
            restoreColorSpans();
            unfreeze();
            invalidate();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int measuredWidth;
        int measuredHeight;
        super.onMeasure(i, i2);
        if (this.isCurved) {
            measuredWidth = getPaddingRight() + getPaddingLeft() + ((int) this.arcChord) + this.additionalWidthSpace;
            measuredHeight = getPaddingBottom() + getPaddingTop() + ((int) this.arcHeight) + this.additionalHeightSpace;
        } else {
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public void postInvalidate() {
        if (this.frozen) {
            return;
        }
        super.postInvalidate();
    }

    @Override // android.view.View
    public void postInvalidate(int i, int i2, int i3, int i4) {
        if (this.frozen) {
            return;
        }
        super.postInvalidate(i, i2, i3, i4);
    }

    public void printRect(Rect rect, int i) {
        int i2 = rect.left;
    }

    public void removeColorSpans() {
        SpannableString spannableString = (SpannableString) getText();
        for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) spannableString.getSpans(0, getText().length(), ForegroundColorSpan.class)) {
            spannableString.removeSpan(foregroundColorSpan);
        }
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.frozen) {
            return;
        }
        super.requestLayout();
    }

    public void restoreColorSpans() {
        SpannableString spannableString = (SpannableString) getText();
        for (interval intervalVar : this.colorIds.getIntervals()) {
            int max = Math.max(0, offsetStart(intervalVar.getStart()));
            int min = Math.min(offsetEnd(intervalVar.getStart(), intervalVar.getEnd(), max), getText().length());
            if (max < getText().length()) {
                spannableString.setSpan(new ForegroundColorSpan(intervalVar.getColor()), max, min, 33);
            }
        }
    }

    public String returnActualText() {
        return this.originalText;
    }

    public void setBlack() {
        ((SpannableString) getText()).setSpan(new ForegroundColorSpan(-16777216), 0, getTextLength(), 33);
    }

    public void setBoldToSelection(int i, int i2) {
        this.boldIds.addInterval(new interval(i, i2));
        applySpans();
    }

    public void setColorToSelection(int i, int i2, int i3) {
        this.colorIds.addInterval(new interval(i2, i3, i));
        applySpans();
    }

    public void setCurve(int i) {
        String spacedText;
        int i2;
        this.isCurved = i != 0;
        if (useNewLetterSpacing() && !this.wordSpacing) {
            if (this.isCurved) {
                setLetterSpacing(0.0f);
            } else {
                setLetterSpacing(this.letterSpacing / 100.0f);
            }
        }
        this.curveDegree = i;
        if (i != 0) {
            this.userMaxWidth = -1.0d;
            setMaxWidth(Integer.MAX_VALUE);
        }
        if (this.isCurved) {
            this.curvePaint = new TextPaint(getPaint());
            applyFontToCurve();
            CurveText curveText = this.curveText;
            String str = this.originalText;
            int i3 = this.letterSpacing;
            curveText.setText(str, i3);
            if (i3 == 0) {
                this.curvePaint.setLetterSpacing(-0.0052083335f);
                spacedText = this.originalText;
            } else {
                spacedText = this.curveText.getSpacedText();
            }
            this.unCurvedText = spacedText;
            this.curvePaint.getFontMetricsInt(new Paint.FontMetricsInt());
            this.path = new Path();
            this.pathDirection = Path.Direction.CW;
            this.textWidthLength = this.curvePaint.measureText(this.unCurvedText);
            double radians = Math.toRadians(Math.abs(this.curveDegree) * 0.65f);
            this.curveRadian = radians;
            float f = (float) (this.textWidthLength / radians);
            this.curveRadius = f;
            this.arcChord = f * 2.0f * ((float) Math.sin(radians / 2.0d));
            this.arcHeight = (1.0f - ((float) Math.cos(this.curveRadian / 2.0d))) * (this.curveRadius + 0.0f);
            int i4 = this.curveDegree > 0 ? -(this.curvePaint.getFontMetricsInt().top * 2) : ((-this.curvePaint.getFontMetricsInt().top) + this.curvePaint.getFontMetricsInt().bottom) * 2;
            this.additionalWidthSpace = i4;
            this.additionalWidthSpace = (int) (i4 * ((float) Math.sin(this.curveRadian / 2.0d)));
            this.additionalHeightSpace = (int) ((this.curvePaint.getFontMetricsInt().bottom - this.curvePaint.getFontMetricsInt().top) + (this.curveDegree < 0 ? this.curvePaint.getFontMetricsInt().bottom * (1.0f - ((float) Math.cos(this.curveRadian / 2.0d))) : 0.0f));
            this.offsetY = getPaddingTop() + ((int) (this.curveRadius - r9.top));
            if (this.curveDegree < 0) {
                this.pathDirection = Path.Direction.CCW;
                float abs = this.curveRadius + (Math.abs(this.curvePaint.getFontMetricsInt().top) * 0.6f);
                this.curveRadius = abs;
                int i5 = (int) (-abs);
                this.offsetY = i5;
                this.offsetY = (int) (((1.0f - ((float) Math.cos(this.curveRadian / 2.0d))) * this.curvePaint.getFontMetricsInt().bottom) + getPaddingTop() + ((int) this.arcHeight) + i5 + Math.abs(this.curvePaint.getFontMetricsInt().top));
                i2 = -90;
            } else {
                i2 = 90;
            }
            float paddingRight = this.arcChord + getPaddingRight() + getPaddingLeft() + this.additionalWidthSpace;
            float f2 = this.inPaddingLeft;
            PointF pointF = new PointF((((paddingRight - f2) - this.inPaddingRight) * 0.5f) + f2, this.offsetY);
            this.curveCenter = pointF;
            this.path.addCircle(pointF.x, pointF.y, this.curveRadius, this.pathDirection);
            Matrix matrix = new Matrix();
            PointF pointF2 = this.curveCenter;
            matrix.setRotate(i2, pointF2.x, pointF2.y);
            this.path.transform(matrix);
        }
        requestLayout();
        postInvalidate();
    }

    public void setFontFeatureSettingValue(String str) {
        this.myFontFeature = str;
        getPaint().setFontFeatureSettings(str);
        if (21 <= Build.VERSION.SDK_INT) {
            setFontFeatureSettings(str);
        }
        invalidate();
    }

    public void setFonts(spansIntervals spansintervals) {
        this.fontsIds = spansintervals;
        applySpans();
    }

    public void setIncludeEmbossInStroke(boolean z) {
        this.includeEmbossInStroke = z;
    }

    public void setInnerShadow(boolean z, float f, float f2, float f3, int i) {
        this.inner_enabled = z;
        if (z) {
            this.inner_r = Math.max(f, 0.1f);
            this.inner_dx = f2;
            this.inner_dy = f3;
            this.inner_color = i;
        }
        invalidate();
    }

    public void setItalicToSelection(int i, int i2) {
        this.italicIds.addInterval(new interval(i, i2));
        applySpans();
    }

    public void setJustifyAlign(boolean z) {
        this.justifyAlign = z;
        if (z) {
            setLetterSpace(0);
        }
    }

    public void setLetterSpace(int i) {
        if (i != 0) {
            this.justifyAlign = false;
        }
        int i2 = this.letterSpacing;
        if ((i2 == 0 || i == 0) && i2 != i) {
            this.letterSpacing = i;
            updateText(this.originalText);
        } else {
            this.letterSpacing = i;
            applySpacing();
        }
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f, float f2) {
        super.setLineSpacing(f, f2);
        updatePaddings();
    }

    public void setMaskFilter(EmbossMaskFilter embossMaskFilter) {
        getPaint().setMaskFilter(embossMaskFilter);
    }

    public void setStrokeFill(boolean z, float f, int i, int i2, GradientMaker.GradientFill gradientFill) {
        this.stroke_enabled = z;
        if (z) {
            if (f == 0.0f) {
                f = 0.1f;
            }
            this.strokeWidth = f;
            this.strokeColor = i2;
            this.strokeFillType = i;
            this.strokeGradient = gradientFill;
        }
        updatePaddings();
    }

    public void setTextureShader(BitmapShader bitmapShader) {
        this.textureShader = bitmapShader;
    }

    public void setUnderToSelection(int i, int i2) {
        this.underIds.addInterval(new interval(i, i2));
        applySpans();
    }

    public void setWordSpacing(boolean z) {
        this.wordSpacing = z;
        updateText(this.originalText);
    }

    public void textUpdated() {
        if (this.isCurved) {
            setCurve(this.curveDegree);
        }
        requestLayout();
        postInvalidate();
    }

    public void unfreeze() {
        this.frozen = false;
    }

    public void updateEnds(int i, int i2) {
        this.fontsIds.updateEnds(i, i2);
        this.colorIds.updateEnds(i, i2);
        this.boldIds.updateEnds(i, i2);
        this.italicIds.updateEnds(i, i2);
        this.underIds.updateEnds(i, i2);
    }

    public void updatePaddings() {
        int paddingLeft = getPaddingLeft() - this.tmpLeft;
        float[] fArr = new float[2];
        fArr[0] = this.stroke_enabled ? this.strokeWidth * 0.5f : 0.0f;
        fArr[1] = 5.0f;
        int maxList = maxList(fArr) + paddingLeft + this.inPaddingLeft;
        int paddingRight = getPaddingRight() - this.tmpRight;
        float[] fArr2 = new float[2];
        fArr2[0] = this.stroke_enabled ? this.strokeWidth * 0.5f : 0.0f;
        fArr2[1] = 5.0f;
        int maxList2 = maxList(fArr2) + paddingRight + this.inPaddingRight;
        int paddingTop = getPaddingTop() - this.tmpTop;
        float[] fArr3 = new float[1];
        fArr3[0] = this.stroke_enabled ? this.strokeWidth * 0.5f : 0.0f;
        int maxList3 = maxList(fArr3) + paddingTop;
        int paddingBottom = getPaddingBottom() - this.tmpBottom;
        float[] fArr4 = new float[2];
        fArr4[0] = this.stroke_enabled ? this.strokeWidth * 0.5f : 0.0f;
        fArr4[1] = negativePart(this.spacing);
        int maxList4 = maxList(fArr4) + paddingBottom;
        this.tmpLeft = maxList;
        this.tmpTop = maxList3;
        this.tmpRight = maxList2;
        this.tmpBottom = maxList4;
        setShadowLayer(this.inPaddingLeft > 0 ? 1.0f : 0.0f, -maxList, 0.0f, Color.argb(0, 0, 0, 0));
        setPadding(maxList, maxList3, maxList2, maxList4);
        textUpdated();
    }

    public void updateText(String str) {
        updateText(str, this.originalText.length());
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        if (useNewLetterSpacing() != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateText(java.lang.String r2, int r3) {
        /*
            r1 = this;
            r0 = -1
            if (r3 == r0) goto L4
            goto La
        L4:
            java.lang.String r3 = r1.originalText
            int r3 = r3.length()
        La:
            int r0 = r2.length()
            r1.updateEnds(r3, r0)
            r1.originalText = r2
            int r3 = r1.letterSpacing
            if (r3 == 0) goto L34
            boolean r3 = r1.wordSpacing
            if (r3 == 0) goto L1c
            goto L34
        L1c:
            boolean r3 = useNewLetterSpacing()
            if (r3 != 0) goto L2d
            java.lang.String r2 = r1.originalText
            java.lang.String r3 = ".(?=.)"
            java.lang.String r0 = "$0\u200a"
            java.lang.String r2 = r2.replaceAll(r3, r0)
            goto L3e
        L2d:
            boolean r3 = useNewLetterSpacing()
            if (r3 == 0) goto L43
            goto L3e
        L34:
            boolean r3 = useNewLetterSpacing()
            if (r3 == 0) goto L3e
            r3 = 0
            r1.setLetterSpacing(r3)
        L3e:
            android.widget.TextView$BufferType r3 = android.widget.TextView.BufferType.SPANNABLE
            r1.setText(r2, r3)
        L43:
            r1.applySpans()
            r1.textUpdated()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.CustomTextView.updateText(java.lang.String, int):void");
    }

    public void updateTextSize(float f) {
        double d = this.userTextSize;
        setTextSize(0, f);
        this.userTextSize = f;
        double d2 = this.userMaxWidth;
        if (d2 != -1.0d) {
            double d3 = (f / d) * d2;
            this.userMaxWidth = d3;
            setMaxWidth((int) d3);
        }
        textUpdated();
    }
}
