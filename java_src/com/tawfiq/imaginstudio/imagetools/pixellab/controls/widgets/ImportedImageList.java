package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.CurrImage;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class ImportedImageList extends View {
    private static final float margin = commonFuncs.dpToPx(8);
    Drawable backgroundCheckers;
    ResImage[] list;
    OnImageListAction listener;
    private boolean orientHorizontal;

    /* loaded from: classes.dex */
    public interface OnImageListAction {
        void selected(ResImage resImage);
    }

    /* loaded from: classes.dex */
    public class ResImage {
        private Bitmap bmp;
        private float borderRad;
        private float borderRadSelected;
        private final RectF bounds;
        private int color;
        private GradientMaker.GradientFill gradient;
        private Bitmap gradientCache;
        private Rect imgArea;
        private Paint pnt;
        private final Paint pntBorder;
        private final Paint pntBorderSelected;
        private boolean selected;
        private boolean thumbnail;
        private int type;

        public ResImage(int i, RectF rectF) {
            Paint paint = new Paint(1);
            this.pntBorderSelected = paint;
            Paint paint2 = new Paint(1);
            this.pntBorder = paint2;
            paint.setColor(-1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(commonFuncs.dpToPx(6));
            paint2.set(paint);
            paint2.setAlpha(100);
            paint2.setStrokeWidth(2.0f);
            this.borderRad = 0.0f;
            this.borderRadSelected = commonFuncs.dpToPx(2);
            this.color = i;
            this.type = 1;
            this.bounds = rectF;
            this.thumbnail = true;
            buildPntImgArea();
        }

        public ResImage(Bitmap bitmap, RectF rectF) {
            Paint paint = new Paint(1);
            this.pntBorderSelected = paint;
            Paint paint2 = new Paint(1);
            this.pntBorder = paint2;
            paint.setColor(-1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(commonFuncs.dpToPx(6));
            paint2.set(paint);
            paint2.setAlpha(100);
            paint2.setStrokeWidth(2.0f);
            this.borderRad = 0.0f;
            this.borderRadSelected = commonFuncs.dpToPx(2);
            this.bmp = bitmap;
            this.bounds = rectF;
            this.type = 4;
            this.thumbnail = true;
            if (commonFuncs.isValidImage(bitmap)) {
                buildPntImgArea();
            }
        }

        private ResImage(RectF rectF) {
            Paint paint = new Paint(1);
            this.pntBorderSelected = paint;
            Paint paint2 = new Paint(1);
            this.pntBorder = paint2;
            paint.setColor(-1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(commonFuncs.dpToPx(6));
            paint2.set(paint);
            paint2.setAlpha(100);
            paint2.setStrokeWidth(2.0f);
            this.borderRad = 0.0f;
            this.borderRadSelected = commonFuncs.dpToPx(2);
            this.bounds = rectF;
        }

        public ResImage(GradientMaker.GradientFill gradientFill, RectF rectF) {
            Paint paint = new Paint(1);
            this.pntBorderSelected = paint;
            Paint paint2 = new Paint(1);
            this.pntBorder = paint2;
            paint.setColor(-1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(commonFuncs.dpToPx(6));
            paint2.set(paint);
            paint2.setAlpha(100);
            paint2.setStrokeWidth(2.0f);
            this.borderRad = 0.0f;
            this.borderRadSelected = commonFuncs.dpToPx(2);
            this.gradient = gradientFill;
            this.type = 2;
            this.bounds = rectF;
            this.thumbnail = true;
            if (gradientFill != null) {
                buildPntImgArea();
            }
        }

        private void buildGradientCache() {
            this.gradientCache = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.gradientCache);
            Paint paint = new Paint(1);
            Rect rect = new Rect(0, 0, 256, 256);
            paint.setShader(this.gradient.getShader(rect));
            canvas.drawRect(rect, paint);
        }

        private void buildPntImgArea() {
            GradientMaker.GradientFill gradientFill;
            float min = Math.min(this.bounds.width() / getIntrinsicWidth(), this.bounds.height() / getIntrinsicHeight());
            Rect rect = new Rect(0, 0, (int) (getIntrinsicWidth() * min), (int) (min * getIntrinsicHeight()));
            this.imgArea = rect;
            rect.offset((int) (this.bounds.centerX() - this.imgArea.centerX()), (int) (this.bounds.centerY() - this.imgArea.centerY()));
            Paint paint = new Paint(1);
            this.pnt = paint;
            paint.setDither(true);
            this.pnt.setFilterBitmap(true);
            int i = this.type;
            if (i == 1) {
                this.pnt.setColor(this.color);
            } else if (i == 2 && (gradientFill = this.gradient) != null) {
                this.pnt.setShader(gradientFill.getShader(this.bounds));
            }
        }

        private int getGradientColor(float f, float f2) {
            if (this.gradient == null) {
                return -1;
            }
            if (this.gradientCache == null) {
                buildGradientCache();
            }
            return getImageColor(this.gradientCache, f, f2);
        }

        private int getImageColor(Bitmap bitmap, float f, float f2) {
            if (!commonFuncs.isValidImage(bitmap)) {
                return -1;
            }
            Rect rect = this.imgArea;
            int clipValue = commonFuncs.clipValue((int) (((f - rect.left) / rect.width()) * bitmap.getWidth()), 0, bitmap.getWidth() - 1);
            Rect rect2 = this.imgArea;
            return bitmap.getPixel(clipValue, commonFuncs.clipValue((int) (((f2 - rect2.top) / rect2.height()) * bitmap.getHeight()), 0, bitmap.getHeight() - 1));
        }

        public ResImage copyForDisplay(RectF rectF) {
            ResImage resImage = new ResImage(rectF);
            resImage.type = this.type;
            resImage.color = this.color;
            resImage.bmp = this.bmp;
            GradientMaker.GradientFill gradientFill = this.gradient;
            resImage.gradient = gradientFill != null ? gradientFill.copy() : null;
            resImage.selected = false;
            resImage.thumbnail = false;
            resImage.buildPntImgArea();
            return resImage;
        }

        public void draw(Canvas canvas) {
            if (this.pnt != null) {
                if ((this.type != 4 || commonFuncs.isValidImage(this.bmp)) && commonFuncs.isValidRect(this.bounds)) {
                    ImportedImageList.this.backgroundCheckers.setBounds(this.imgArea);
                    ImportedImageList.this.backgroundCheckers.draw(canvas);
                    if (this.thumbnail && this.selected) {
                        RectF rectF = this.bounds;
                        float f = this.borderRadSelected;
                        canvas.drawRoundRect(rectF, f, f, this.pntBorderSelected);
                    }
                    if (this.type == 4) {
                        canvas.drawBitmap(this.bmp, (Rect) null, this.imgArea, this.pnt);
                    } else {
                        canvas.drawRect(this.imgArea, this.pnt);
                    }
                    if (!this.thumbnail || this.selected) {
                        return;
                    }
                    RectF rectF2 = this.bounds;
                    float f2 = this.borderRad;
                    canvas.drawRoundRect(rectF2, f2, f2, this.pntBorder);
                }
            }
        }

        public RectF getBounds() {
            return this.bounds;
        }

        public int getColorAt(float f, float f2) {
            if (this.imgArea == null || f < r0.left || f > r0.right || f2 < r0.top || f2 > r0.bottom) {
                return -1;
            }
            int i = this.type;
            if (i == 1) {
                return this.color;
            }
            if (i == 2) {
                return getGradientColor(f, f2);
            }
            if (i != 4) {
                return -1;
            }
            return getImageColor(this.bmp, f, f2);
        }

        public Rect getImgArea() {
            return this.imgArea;
        }

        public int getIntrinsicHeight() {
            Bitmap bitmap;
            if (this.type != 4 || (bitmap = this.bmp) == null) {
                return 1;
            }
            return bitmap.getHeight();
        }

        public int getIntrinsicWidth() {
            Bitmap bitmap;
            if (this.type != 4 || (bitmap = this.bmp) == null) {
                return 1;
            }
            return bitmap.getWidth();
        }

        public void setSelected(boolean z) {
            this.selected = z;
        }
    }

    public ImportedImageList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ImportedImageList);
        this.orientHorizontal = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
        this.backgroundCheckers = getResources().getDrawable(R.drawable.checkered_bg);
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.-$$Lambda$ImportedImageList$K-VnkZPEkDOM7Kr96cdkeOaUnSA
            @Override // java.lang.Runnable
            public final void run() {
                ImportedImageList.this.updateImageList();
            }
        });
    }

    private void clickedAt(float f, float f2) {
        for (ResImage resImage : this.list) {
            if (resImage.bounds.contains(f, f2)) {
                select(resImage);
                return;
            }
        }
    }

    private void select(ResImage resImage) {
        for (ResImage resImage2 : this.list) {
            resImage2.setSelected(false);
        }
        resImage.setSelected(true);
        OnImageListAction onImageListAction = this.listener;
        if (onImageListAction != null) {
            onImageListAction.selected(resImage);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateImageList() {
        float height = this.orientHorizontal ? getHeight() : getWidth();
        textContainer textContain = MainActivity.helperClass.getTextContain();
        if (textContain == null) {
            return;
        }
        int i = 1;
        this.list = new ResImage[textContain.shapes.size() + 1];
        CurrImage usedImageInfoBg = MainActivity.helperClass.getUsedImageInfoBg();
        if (usedImageInfoBg != null) {
            int type = usedImageInfoBg.getType();
            if (type == 1) {
                this.list[0] = new ResImage(usedImageInfoBg.getCurrColor(), getBoundsAt(0, height));
            } else if (type == 2) {
                this.list[0] = new ResImage(usedImageInfoBg.getCurrGradient(), getBoundsAt(0, height));
            } else if (type == 4) {
                this.list[0] = new ResImage(MainActivity.helperClass.getUsedBitmapBg(), getBoundsAt(0, height));
            }
        }
        this.list[0].setSelected(true);
        Iterator<Map.Entry<Integer, ShapeComponent>> it = textContain.shapes.entrySet().iterator();
        while (it.hasNext()) {
            this.list[i] = new ResImage(textContain.shapes.get(Integer.valueOf(it.next().getKey().intValue())).getCurrBitmap(), getBoundsAt(i, height));
            i++;
        }
        requestLayout();
        invalidate();
        selectFirst();
    }

    public RectF getBoundsAt(int i, float f) {
        RectF rectF = new RectF(0.0f, 0.0f, f, f);
        float f2 = i * f;
        boolean z = this.orientHorizontal;
        rectF.offset(z ? f2 : 0.0f, z ? 0.0f : f2);
        float f3 = margin;
        rectF.inset(f3, f3);
        return rectF;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        ResImage[] resImageArr;
        super.onDraw(canvas);
        if (isInEditMode() || (resImageArr = this.list) == null) {
            return;
        }
        for (ResImage resImage : resImageArr) {
            resImage.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.orientHorizontal) {
            ResImage[] resImageArr = this.list;
            setMeasuredDimension(resImageArr != null ? resImageArr.length * i2 : 1, i2);
        } else {
            ResImage[] resImageArr2 = this.list;
            setMeasuredDimension(i, resImageArr2 != null ? resImageArr2.length * i : 1);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1) {
            clickedAt(motionEvent.getX(), motionEvent.getY());
        }
        return true;
    }

    public void selectFirst() {
        ResImage[] resImageArr = this.list;
        if (resImageArr == null || resImageArr.length == 0) {
            return;
        }
        select(resImageArr[0]);
    }

    public void setSelectListener(OnImageListAction onImageListAction) {
        this.listener = onImageListAction;
    }
}
