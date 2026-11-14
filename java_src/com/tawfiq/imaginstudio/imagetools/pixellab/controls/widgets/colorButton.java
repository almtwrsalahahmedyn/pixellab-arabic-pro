package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatImageButton;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class colorButton extends AppCompatImageButton {
    public static final int TYPE_COLOR = 1;
    public static final int TYPE_GRADIENT = 2;
    Drawable backgroundCheckers;
    Bitmap backgroundCheckersBitmap;
    int displayColor;
    GradientMaker.GradientFill displayGradient;
    public boolean isSquare;
    public colorChangeNotify mColorChangeNotify;
    String numberToViewStr;
    boolean numberView;
    Paint pntCheckers;
    Paint pntText;
    private boolean strokeEnabled;
    int strokeWidth;
    Rect textArea;
    private Rect textBounds;
    int type;

    /* loaded from: classes.dex */
    public interface colorChangeNotify {
        void colorDisplayChanged(int i);
    }

    public colorButton(Context context, int i, int i2, GradientMaker.GradientFill gradientFill, boolean z) {
        super(context, null);
        this.isSquare = false;
        this.strokeWidth = dpToPixels(1);
        this.pntCheckers = null;
        this.pntText = new Paint(1);
        this.textArea = new Rect();
        this.textBounds = new Rect();
        this.strokeEnabled = true;
        this.numberView = false;
        this.numberToViewStr = "1";
        this.type = i;
        this.displayColor = i2;
        this.displayGradient = gradientFill != null ? gradientFill.copy() : null;
        setBackgroundDrawable(null);
        this.isSquare = z;
        if (z) {
            this.backgroundCheckers = getResources().getDrawable(R.drawable.checkered_bg);
        } else {
            this.backgroundCheckersBitmap = BitmapFactory.decodeResource(context.getResources(), R.drawable.checkered);
            Paint paint = new Paint(1);
            this.pntCheckers = paint;
            paint.setFilterBitmap(true);
            this.pntCheckers.setDither(true);
            Paint paint2 = this.pntCheckers;
            Bitmap bitmap = this.backgroundCheckersBitmap;
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            paint2.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        }
        this.pntText.setTextAlign(Paint.Align.CENTER);
    }

    public void disableStroke() {
        this.strokeEnabled = false;
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public int getDisplayColor() {
        return this.displayColor;
    }

    public GradientMaker.GradientFill getDisplayGradient() {
        return this.displayGradient;
    }

    public int getType() {
        return this.type;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        Paint paint = new Paint(1);
        paint.setAlpha(255);
        if (this.isSquare) {
            Rect rect2 = new Rect(rect);
            Paint paint2 = new Paint(1);
            paint2.setColor(-7829368);
            canvas.drawRect(rect, paint2);
            int i = this.strokeWidth;
            rect.inset(i, i);
            paint2.setColor(-3355444);
            canvas.drawRect(rect, paint2);
            int i2 = this.strokeWidth;
            rect.inset(i2, i2);
            int i3 = this.type;
            if (i3 == 1) {
                paint.setColor(!this.numberView ? this.displayColor : commonFuncs.stripAlpha(this.displayColor));
            } else if (i3 == 2) {
                paint.setShader(this.displayGradient.getShader(rect2));
            }
            this.backgroundCheckers.setBounds(rect);
            this.backgroundCheckers.draw(canvas);
            canvas.drawRect(rect, paint);
        } else {
            int i4 = this.type;
            if (i4 == 1) {
                paint.setColor(!this.numberView ? this.displayColor : commonFuncs.stripAlpha(this.displayColor));
            } else if (i4 == 2) {
                paint.setShader(this.displayGradient.getShader(rect));
            }
            if (this.backgroundCheckersBitmap != null && this.pntCheckers != null && this.strokeEnabled) {
                canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, rect.centerX() - (dpToPixels(2) * 2), this.pntCheckers);
            }
            Paint paint3 = new Paint(1);
            paint3.setDither(true);
            paint3.setStyle(Paint.Style.STROKE);
            paint3.setStrokeWidth(dpToPixels(2));
            paint3.setColor(-16777216);
            paint3.setAlpha(100);
            if (this.strokeEnabled) {
                canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, rect.centerX() - dpToPixels(2), paint3);
            }
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, rect.centerX() - dpToPixels(2), paint);
        }
        if (this.numberView) {
            this.pntText.setColor(commonFuncs.getContrastColor(this.displayColor));
            this.textBounds = commonFuncs.fitTextInRect(this.numberToViewStr, this.pntText, this.textArea);
            canvas.drawText(this.numberToViewStr, getWidth() * 0.5f, this.textArea.exactCenterY() - this.textBounds.exactCenterY(), this.pntText);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Rect rect = new Rect(0, 0, i, i2);
        this.textArea = rect;
        rect.inset((int) (rect.width() * 0.3f), (int) (this.textArea.height() * 0.3f));
    }

    public void setDisplayColor(int i) {
        this.displayColor = i;
        invalidate();
        colorChangeNotify colorchangenotify = this.mColorChangeNotify;
        if (colorchangenotify != null) {
            colorchangenotify.colorDisplayChanged(i);
        }
    }

    public void setDisplayGradient(GradientMaker.GradientFill gradientFill) {
        this.displayGradient = gradientFill != null ? gradientFill.copy() : null;
    }

    public void setNumberToView(int i) {
        this.numberToViewStr = String.valueOf(i);
        invalidate();
    }

    public void setOnColorNotifyChange(colorChangeNotify colorchangenotify) {
        this.mColorChangeNotify = colorchangenotify;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void toggleNumberView(boolean z) {
        this.numberView = z;
        invalidate();
    }
}
