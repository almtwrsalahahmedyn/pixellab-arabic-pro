package com.tawfiq.imaginstudio.imagetools.pixellab.layers;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;

/* loaded from: classes.dex */
public class LayerObject extends View implements TextComponent.OnTextNotifyLayers, ShapeComponent.OnShapeNotifyLayers {
    static final float autoScrollVelocity = commonFuncs.dpToPxInt(150);
    Paint bmpBorderPaint;
    Paint bmpPaint;
    RectF bounds;
    ColorFilter buttonsActiveColorFilter;
    RectF buttonsArea;
    ColorFilter buttonsColorFilter;
    RectF checkMarkBounds;
    Path checkMarkPath;
    boolean checked;
    Drawable checkers;
    RectF contentArea;
    float dY;
    RectF deleteButton;
    Drawable deleteDrawable;
    RectF dragArea;
    private float dragCirclesRadii;
    RectF drawableBounds;
    RectF editButton;
    Drawable editDrawable;
    RectF hideButton;
    Drawable hideDrawable;
    OnLayerAction layerActionListener;
    RectF lockButton;
    Drawable lockDrawable;
    int padding;
    int paddingBg;
    Paint pntBg;
    Paint pntButtonsBg;
    Paint pntDrag;
    Paint pntSelectBg;
    Paint pntSelectBorder;
    Paint pntSelectCheck;
    Paint pntSeparator;
    float previousY;
    public String reference;
    ShapeComponent referencedShape;
    TextComponent referencedText;
    AnimatorSet scrollAnimation;
    RectF selectButton;
    PointF selectButtonCenter;
    float selectButtonRadius;
    boolean selectionMode;
    TextView textView;
    boolean textViewNeedsRedraw;
    TouchMode touchMode;
    History.ComponentType type;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode;

        static {
            int[] iArr = new int[TouchMode.values().length];
            $SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode = iArr;
            try {
                iArr[TouchMode.click_edit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode[TouchMode.click_hide.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode[TouchMode.click_lock.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode[TouchMode.click_delete.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface OnLayerAction {
        void clickedEditButton(LayerObject layerObject, History.ComponentType componentType, Rect rect);

        void deleteMyView(View view);

        void dragLayerFinish(LayerObject layerObject);
    }

    /* loaded from: classes.dex */
    public enum TouchMode {
        none,
        drag,
        click_all,
        click_delete,
        click_hide,
        click_edit,
        click_lock,
        click_select
    }

    public LayerObject(Context context, String str, History.ComponentType componentType, boolean z) {
        super(context);
        this.bmpPaint = new Paint(1);
        this.bmpBorderPaint = new Paint(1);
        this.referencedText = null;
        this.referencedShape = null;
        this.reference = null;
        this.type = null;
        this.padding = commonFuncs.dpToPxInt(3);
        this.paddingBg = commonFuncs.dpToPxInt(4);
        this.dragCirclesRadii = 1.0f;
        this.touchMode = TouchMode.none;
        this.pntBg = new Paint(1);
        this.pntButtonsBg = new Paint(1);
        this.pntDrag = new Paint(1);
        this.pntSeparator = new Paint(1);
        this.pntSelectBg = new Paint(1);
        this.pntSelectBorder = new Paint(1);
        this.pntSelectCheck = new Paint(1);
        int parseColor = Color.parseColor("#68768a");
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_ATOP;
        this.buttonsColorFilter = new PorterDuffColorFilter(parseColor, mode);
        this.buttonsActiveColorFilter = new PorterDuffColorFilter(Color.parseColor("#e37b7b"), mode);
        this.selectionMode = false;
        this.checked = false;
        this.checkMarkPath = new Path();
        this.textViewNeedsRedraw = true;
        this.drawableBounds = new RectF(0.0f, 0.0f, commonFuncs.dpToPxInt(30), commonFuncs.dpToPxInt(30));
        this.reference = str;
        this.type = componentType;
        this.selectionMode = z;
        textContainer textContain = MainActivity.helperClass.getTextContain();
        if (textContain != null) {
            if (componentType == History.ComponentType.shape) {
                ShapeComponent shapeByRef = textContain.getShapeByRef(str);
                this.referencedShape = shapeByRef;
                shapeByRef.setLayersListener(this);
            } else if (componentType == History.ComponentType.text) {
                TextComponent textByRef = textContain.getTextByRef(str);
                this.referencedText = textByRef;
                textByRef.setLayersListener(this);
            }
        }
        this.bmpPaint.setFilterBitmap(true);
        this.bmpPaint.setDither(true);
        this.bmpPaint.setAlpha(230);
        this.bmpBorderPaint.setColor(Color.parseColor("#aa000000"));
        Paint paint = this.bmpBorderPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.bmpBorderPaint.setStrokeWidth(commonFuncs.dpToPx(1));
        this.checkers = ContextCompat.getDrawable(getContext(), R.drawable.checkered_bg);
        this.editDrawable = ContextCompat.getDrawable(getContext(), R.drawable.layers_edit);
        this.deleteDrawable = ContextCompat.getDrawable(getContext(), R.drawable.layers_delete);
        this.hideDrawable = ContextCompat.getDrawable(getContext(), R.drawable.layers_hide);
        this.lockDrawable = ContextCompat.getDrawable(getContext(), R.drawable.layers_lock);
        this.editDrawable.setColorFilter(this.buttonsColorFilter);
        this.deleteDrawable.setColorFilter(this.buttonsColorFilter);
        this.pntBg.setColor(Color.parseColor("#f4f4f4"));
        this.pntButtonsBg.setColor(Color.parseColor("#cfcfcf"));
        this.pntDrag.setColor(Color.parseColor("#918d91"));
        this.pntSeparator.setColor(Color.parseColor("#d1d1d1"));
        this.pntSeparator.setStrokeWidth(commonFuncs.dpToPx(1));
        this.pntSelectBorder.setStrokeWidth(commonFuncs.dpToPx(3));
        this.pntSelectBorder.setColor(Color.parseColor("#6d6d6d"));
        this.pntSelectBorder.setStyle(style);
        this.pntSelectBg.setColor(Color.parseColor("#dddddd"));
        this.pntSelectCheck.setColor(Color.parseColor("#2d939c"));
        this.pntSelectCheck.setStrokeWidth(commonFuncs.dpToPx(3));
        this.pntSelectCheck.setStyle(style);
    }

    private void clickAll() {
        History.ComponentType componentType = this.type;
        if (componentType == History.ComponentType.text) {
            this.referencedText.selectMe();
        } else if (componentType == History.ComponentType.shape) {
            this.referencedShape.selectMe();
        }
    }

    private void clickDelete() {
        textContainer textContain = MainActivity.helperClass.getTextContain();
        if (textContain != null) {
            textContain.removeObjectByReference(this.type, this.reference, false);
        }
        this.layerActionListener.deleteMyView(this);
    }

    private void clickEdit() {
        clickAll();
        if (this.layerActionListener != null) {
            int[] iArr = {0, 0};
            getLocationInWindow(iArr);
            Rect rect = new Rect();
            this.editButton.round(rect);
            rect.offset(iArr[0], iArr[1]);
            this.layerActionListener.clickedEditButton(this, this.type, rect);
        }
    }

    private void clickHide() {
        History.ComponentType componentType = this.type;
        if (componentType == History.ComponentType.text) {
            this.referencedText.setHidden(!r0.isHidden());
        } else if (componentType == History.ComponentType.shape) {
            this.referencedShape.setHidden(!r0.isHidden());
        }
        invalidate();
    }

    private void clickLock() {
        History.ComponentType componentType = this.type;
        if (componentType == History.ComponentType.text) {
            this.referencedText.setLocked(!r0.isLocked());
        } else if (componentType == History.ComponentType.shape) {
            this.referencedShape.setLocked(!r0.isLocked());
        }
        invalidate();
    }

    private void clickSelect() {
        this.checked = !this.checked;
        invalidate();
    }

    private void drawDragArea(Canvas canvas) {
        float f = this.dragArea.top + this.dragCirclesRadii;
        boolean z = false;
        while (true) {
            RectF rectF = this.dragArea;
            if (f >= rectF.bottom) {
                return;
            }
            float width = (rectF.width() * 0.25f) + rectF.left;
            if (z) {
                canvas.drawCircle(width, f, this.dragCirclesRadii / 1.5f, this.pntDrag);
            }
            RectF rectF2 = this.dragArea;
            float width2 = (rectF2.width() * 0.75f) + rectF2.left;
            if (z) {
                canvas.drawCircle(width2, f, this.dragCirclesRadii / 1.5f, this.pntDrag);
            }
            f += this.dragCirclesRadii * 2.0f;
            z = !z;
        }
    }

    private void drawSeparator(Canvas canvas) {
        float f = this.buttonsArea.left;
        RectF rectF = this.bounds;
        float height = (rectF.height() * 0.0f) + rectF.top;
        float f2 = this.buttonsArea.left;
        RectF rectF2 = this.bounds;
        canvas.drawLine(f, height, f2, (rectF2.height() * 1.0f) + rectF2.top, this.pntSeparator);
        if (this.selectionMode) {
            return;
        }
        float centerX = this.buttonsArea.centerX();
        RectF rectF3 = this.bounds;
        float height2 = (rectF3.height() * 0.0f) + rectF3.top;
        float centerX2 = this.buttonsArea.centerX();
        RectF rectF4 = this.bounds;
        canvas.drawLine(centerX, height2, centerX2, (rectF4.height() * 1.0f) + rectF4.top, this.pntSeparator);
        RectF rectF5 = this.buttonsArea;
        canvas.drawLine(rectF5.left, rectF5.centerY(), this.bounds.right, this.buttonsArea.centerY(), this.pntSeparator);
    }

    public static int pxToDp(float f) {
        return (int) (f / Resources.getSystem().getDisplayMetrics().density);
    }

    private void requestNoIntercept() {
        if (MainActivity.helperClass.getLayerHolderScroll() != null) {
            MainActivity.helperClass.getLayerHolderScroll().requestDisallowInterceptTouchEvent(true);
        }
    }

    public void cancelAnimation() {
        AnimatorSet animatorSet = this.scrollAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public void drawDrawable(Drawable drawable, Canvas canvas) {
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    public void drawShapeBmp(Canvas canvas, Bitmap bitmap, RectF rectF) {
        RectF fitRect = fitRect(bitmap.getWidth(), bitmap.getHeight(), rectF, false, true);
        if (bitmap.hasAlpha()) {
            this.checkers.setBounds((int) Math.ceil(fitRect.left), (int) Math.ceil(fitRect.top), (int) Math.floor(fitRect.right), (int) Math.floor(fitRect.bottom));
            this.checkers.draw(canvas);
        }
        canvas.drawBitmap(bitmap, (Rect) null, fitRect, this.bmpPaint);
        canvas.drawRect(fitRect, this.bmpBorderPaint);
    }

    public long durationFromDistance(int i) {
        if (i < 2) {
            return 0L;
        }
        return Math.max(200L, (i / autoScrollVelocity) * 1000);
    }

    public RectF fitRect(int i, int i2, RectF rectF, boolean z, boolean z2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5 = i;
        float f6 = i2;
        float min = Math.min(rectF.width() / f5, rectF.height() / f6);
        RectF rectF2 = new RectF(0.0f, 0.0f, f5 * min, f6 * min);
        if (z) {
            f = rectF.centerX();
            f2 = rectF2.centerX();
        } else {
            f = rectF.left;
            f2 = rectF2.left;
        }
        float f7 = f - f2;
        if (z2) {
            f3 = rectF.centerY();
            f4 = rectF2.centerY();
        } else {
            f3 = rectF.top;
            f4 = rectF2.top;
        }
        rectF2.offset(f7, f3 - f4);
        return rectF2;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent.OnShapeNotifyLayers
    public void imageChanged(boolean z) {
        if (z) {
            return;
        }
        postInvalidate();
    }

    public void initTextView() {
        if (this.textViewNeedsRedraw || this.textView == null) {
            TextView textView = new TextView(getContext());
            this.textView = textView;
            TextComponent textComponent = this.referencedText;
            textView.setText(textComponent != null ? textComponent.returnText() : "empty");
            RectF rectF = this.contentArea;
            if (rectF != null) {
                this.textView.setMaxWidth((int) rectF.width());
            }
            this.textView.setMaxLines(2);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setTextSize(2, 14.0f);
            this.textView.layout(0, 0, (int) this.contentArea.width(), (int) this.contentArea.height());
            this.textView.measure(0, 0);
            this.textViewNeedsRedraw = false;
        }
    }

    public void initializeRect() {
        if (this.bounds == null) {
            this.bounds = new RectF();
        }
        if (this.dragArea == null) {
            this.dragArea = new RectF();
        }
        if (this.contentArea == null) {
            this.contentArea = new RectF();
        }
        if (this.buttonsArea == null) {
            this.buttonsArea = new RectF();
        }
        if (this.editButton == null) {
            this.editButton = new RectF();
        }
        if (this.deleteButton == null) {
            this.deleteButton = new RectF();
        }
        if (this.hideButton == null) {
            this.hideButton = new RectF();
        }
        if (this.lockButton == null) {
            this.lockButton = new RectF();
        }
        if (this.selectButton == null) {
            this.selectButton = new RectF();
        }
        if (this.checkMarkBounds == null) {
            this.checkMarkBounds = new RectF();
        }
    }

    public boolean isChecked() {
        return this.checked;
    }

    public boolean isObjectHidden() {
        History.ComponentType componentType = this.type;
        if (componentType == History.ComponentType.text) {
            return this.referencedText.isHidden();
        }
        if (componentType == History.ComponentType.shape) {
            return this.referencedShape.isHidden();
        }
        return false;
    }

    public boolean isObjectLocked() {
        History.ComponentType componentType = this.type;
        if (componentType == History.ComponentType.text) {
            return this.referencedText.isLocked();
        }
        if (componentType == History.ComponentType.shape) {
            return this.referencedShape.isLocked();
        }
        return false;
    }

    public boolean isObjectSelected() {
        History.ComponentType componentType = this.type;
        if (componentType == History.ComponentType.text) {
            return this.referencedText.isSelected();
        }
        if (componentType == History.ComponentType.shape) {
            return this.referencedShape.isSelected();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0061  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        initializeRect();
        this.bounds.set(0.0f, 0.0f, i, i2);
        RectF rectF = this.bounds;
        rectF.bottom -= this.paddingBg;
        this.buttonsArea.set(rectF);
        RectF rectF2 = this.buttonsArea;
        RectF rectF3 = this.bounds;
        rectF2.left = (rectF3.width() - this.bounds.height()) + rectF3.left;
        this.contentArea.set(this.bounds);
        RectF rectF4 = this.contentArea;
        rectF4.right = this.buttonsArea.left;
        float width = this.bounds.width() * 0.12f;
        RectF rectF5 = this.bounds;
        rectF4.left = width + rectF5.left;
        this.dragArea.set(rectF5);
        this.dragArea.right = this.contentArea.left;
        this.editButton.set(this.buttonsArea);
        this.deleteButton.set(this.buttonsArea);
        this.lockButton.set(this.buttonsArea);
        this.hideButton.set(this.buttonsArea);
        RectF rectF6 = this.lockButton;
        float width2 = rectF6.width() * 0.5f;
        RectF rectF7 = this.lockButton;
        rectF6.right = width2 + rectF7.left;
        rectF7.bottom = (rectF7.height() * 0.5f) + this.lockButton.top;
        RectF rectF8 = this.deleteButton;
        rectF8.left = rectF8.right - (rectF8.width() * 0.5f);
        RectF rectF9 = this.deleteButton;
        rectF9.top = rectF9.bottom - (rectF9.height() * 0.5f);
        RectF rectF10 = this.selectButton;
        RectF rectF11 = this.buttonsArea;
        float width3 = (rectF11.width() * 0.35f) + rectF11.left;
        RectF rectF12 = this.buttonsArea;
        float height = (rectF12.height() * 0.35f) + rectF12.top;
        RectF rectF13 = this.buttonsArea;
        float width4 = (rectF13.width() * 0.65f) + rectF13.left;
        RectF rectF14 = this.buttonsArea;
        rectF10.set(width3, height, width4, (rectF14.height() * 0.65f) + rectF14.top);
        this.selectButtonCenter = new PointF(this.selectButton.centerX(), this.selectButton.centerY());
        this.selectButtonRadius = this.selectButton.width() * 1.1f;
        RectF rectF15 = this.editButton;
        RectF rectF16 = this.lockButton;
        rectF15.left = rectF16.right;
        RectF rectF17 = this.deleteButton;
        rectF15.bottom = rectF17.top;
        RectF rectF18 = this.hideButton;
        rectF18.right = rectF17.left;
        rectF18.top = rectF16.bottom;
        setDrawableBounds(this.editDrawable, rectF15);
        setDrawableBounds(this.hideDrawable, this.hideButton);
        setDrawableBounds(this.lockDrawable, this.lockButton);
        setDrawableBounds(this.deleteDrawable, this.deleteButton);
        RectF rectF19 = this.dragArea;
        float f = this.padding;
        rectF19.inset(f, f);
        this.dragCirclesRadii = this.dragArea.height() / 18.0f;
        this.checkMarkBounds.set(this.selectButton);
        this.checkMarkBounds.inset(commonFuncs.dpToPx(2), commonFuncs.dpToPx(2));
        this.checkMarkPath.reset();
        Path path = this.checkMarkPath;
        RectF rectF20 = this.checkMarkBounds;
        float width5 = (rectF20.width() * 0.136f) + rectF20.left;
        RectF rectF21 = this.checkMarkBounds;
        path.moveTo(width5, (rectF21.height() * 0.421f) + rectF21.top);
        Path path2 = this.checkMarkPath;
        RectF rectF22 = this.checkMarkBounds;
        float width6 = (rectF22.width() * 0.415f) + rectF22.left;
        RectF rectF23 = this.checkMarkBounds;
        path2.lineTo(width6, (rectF23.height() * 0.694f) + rectF23.top);
        Path path3 = this.checkMarkPath;
        RectF rectF24 = this.checkMarkBounds;
        float width7 = (rectF24.width() * 0.847f) + rectF24.left;
        RectF rectF25 = this.checkMarkBounds;
        path3.lineTo(width7, (rectF25.height() * 0.263f) + rectF25.top);
        this.contentArea.inset(commonFuncs.dpToPx(5), commonFuncs.dpToPx(5));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
    
        if (r1 != 3) goto L46;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            float r0 = r7.getRawY()
            int r1 = r7.getActionMasked()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L9d
            if (r1 == r3) goto L33
            r4 = 2
            if (r1 == r4) goto L16
            r0 = 3
            if (r1 == r0) goto L33
            goto Ld7
        L16:
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r7 = r6.touchMode
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r1 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.drag
            if (r7 != r1) goto Ld7
            r6.requestNoIntercept()
            float r7 = r6.previousY
            float r7 = r0 - r7
            r6.dY = r7
            float r7 = r6.getY()
            float r1 = r6.dY
            float r7 = r7 + r1
            r6.setConfinedY(r7)
            r6.previousY = r0
            goto Ld7
        L33:
            android.view.ViewPropertyAnimator r0 = r6.animate()
            r1 = 1065353216(0x3f800000, float:1.0)
            android.view.ViewPropertyAnimator r0 = r0.alpha(r1)
            android.view.ViewPropertyAnimator r0 = r0.scaleY(r1)
            r4 = 300(0x12c, double:1.48E-321)
            android.view.ViewPropertyAnimator r0 = r0.setDuration(r4)
            android.view.ViewPropertyAnimator r0 = r0.setListener(r2)
            r0.start()
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r0 = r6.touchMode
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r1 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.drag
            if (r0 != r1) goto L5e
            r6.cancelAnimation()
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$OnLayerAction r0 = r6.layerActionListener
            if (r0 == 0) goto L5e
            r0.dragLayerFinish(r6)
        L5e:
            boolean r7 = r6.updateTouchMode(r7)
            if (r7 == 0) goto L95
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r7 = r6.touchMode
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r0 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.click_delete
            if (r7 != r0) goto L6e
            r6.clickDelete()
            goto L95
        L6e:
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r0 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.click_hide
            if (r7 != r0) goto L76
            r6.clickHide()
            goto L95
        L76:
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r0 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.click_lock
            if (r7 != r0) goto L7e
            r6.clickLock()
            goto L95
        L7e:
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r0 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.click_edit
            if (r7 != r0) goto L86
            r6.clickEdit()
            goto L95
        L86:
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r0 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.click_select
            if (r7 != r0) goto L8e
            r6.clickSelect()
            goto L95
        L8e:
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r0 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.click_all
            if (r7 != r0) goto L95
            r6.clickAll()
        L95:
            r6.invalidate()
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r7 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.none
            r6.touchMode = r7
            goto Ld7
        L9d:
            r6.updateTouchMode(r7)
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r7 = r6.touchMode
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r1 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.drag
            if (r7 != r1) goto Lcc
            r6.bringToFront()
            r6.previousY = r0
            r7 = 0
            r6.dY = r7
            android.view.ViewPropertyAnimator r7 = r6.animate()
            r0 = 1060320051(0x3f333333, float:0.7)
            android.view.ViewPropertyAnimator r7 = r7.alpha(r0)
            r4 = 200(0xc8, double:9.9E-322)
            android.view.ViewPropertyAnimator r7 = r7.setDuration(r4)
            r0 = 1061158912(0x3f400000, float:0.75)
            android.view.ViewPropertyAnimator r7 = r7.scaleY(r0)
            android.view.ViewPropertyAnimator r7 = r7.setListener(r2)
            r7.start()
        Lcc:
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r7 = r6.touchMode
            com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject$TouchMode r0 = com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.TouchMode.click_all
            if (r7 == r0) goto Ld7
            if (r7 == r1) goto Ld7
            r6.invalidate()
        Ld7:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayerObject.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent.OnTextNotifyLayers, com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent.OnShapeNotifyLayers
    public void selectionChanged(boolean z) {
        postInvalidate();
    }

    public void setConfinedY(float f) {
        cancelAnimation();
        ScrollView layerHolderScroll = MainActivity.helperClass.getLayerHolderScroll();
        int scrollY = layerHolderScroll.getScrollY();
        int i = LayersHolder.verticalMargin;
        int i2 = scrollY + i;
        int height = layerHolderScroll.getHeight() + layerHolderScroll.getScrollY();
        int i3 = LayersHolder.height;
        int i4 = (height - i3) - i;
        float f2 = i2;
        if (f <= f2) {
            setY(f2);
            int max = Math.max(0, i2 - i);
            ObjectAnimator duration = ObjectAnimator.ofInt(layerHolderScroll, "scrollY", 0).setDuration(durationFromDistance(Math.max(0, layerHolderScroll.getScrollY() - 0)));
            duration.setInterpolator(new LinearInterpolator());
            ObjectAnimator duration2 = ObjectAnimator.ofFloat(this, "Y", i).setDuration(durationFromDistance(max));
            duration2.setInterpolator(new LinearInterpolator());
            AnimatorSet animatorSet = new AnimatorSet();
            this.scrollAnimation = animatorSet;
            animatorSet.playTogether(duration, duration2);
        } else {
            float f3 = i4;
            if (f < f3) {
                setY(f);
                return;
            }
            setY(f3);
            int height2 = ((LayersHolder) getParent()).getHeight() - layerHolderScroll.getHeight();
            int height3 = (((LayersHolder) getParent()).getHeight() - i3) - i;
            int max2 = Math.max(0, height3 - i4);
            ObjectAnimator duration3 = ObjectAnimator.ofInt(layerHolderScroll, "scrollY", height2).setDuration(durationFromDistance(Math.max(0, height2 - layerHolderScroll.getScrollY())));
            duration3.setInterpolator(new LinearInterpolator());
            ObjectAnimator duration4 = ObjectAnimator.ofFloat(this, "Y", height3).setDuration(durationFromDistance(max2));
            duration4.setInterpolator(new LinearInterpolator());
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.scrollAnimation = animatorSet2;
            animatorSet2.playTogether(duration3, duration4);
        }
        this.scrollAnimation.start();
    }

    public void setDrawableBounds(Drawable drawable, RectF rectF) {
        if (drawable == null || rectF == null) {
            return;
        }
        this.drawableBounds.offset(rectF.centerX() - this.drawableBounds.centerX(), rectF.centerY() - this.drawableBounds.centerY());
        RectF rectF2 = this.drawableBounds;
        drawable.setBounds((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
    }

    public void setLayerActionListener(OnLayerAction onLayerAction) {
        this.layerActionListener = onLayerAction;
    }

    public void setSelectionMode(boolean z) {
        this.checked = false;
        this.selectionMode = z;
        invalidate();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent.OnTextNotifyLayers
    public void textChanged() {
        this.textViewNeedsRedraw = true;
        postInvalidate();
    }

    public boolean updateTouchMode(MotionEvent motionEvent) {
        TouchMode touchMode;
        TouchMode touchMode2 = this.touchMode;
        if (!this.bounds.contains(motionEvent.getX(), motionEvent.getY())) {
            touchMode = TouchMode.none;
        } else if (this.selectionMode) {
            RectF rectF = this.dragArea;
            if (rectF == null || !rectF.contains(motionEvent.getX(), motionEvent.getY())) {
                if (this.buttonsArea.contains(motionEvent.getX(), motionEvent.getY())) {
                    touchMode = TouchMode.click_select;
                }
                touchMode = TouchMode.click_all;
            }
            touchMode = TouchMode.drag;
        } else {
            RectF rectF2 = this.dragArea;
            if (rectF2 == null || !rectF2.contains(motionEvent.getX(), motionEvent.getY())) {
                if (this.deleteButton.contains(motionEvent.getX(), motionEvent.getY())) {
                    touchMode = TouchMode.click_delete;
                } else if (this.hideButton.contains(motionEvent.getX(), motionEvent.getY())) {
                    touchMode = TouchMode.click_hide;
                } else if (this.lockButton.contains(motionEvent.getX(), motionEvent.getY())) {
                    touchMode = TouchMode.click_lock;
                } else {
                    if (this.editButton.contains(motionEvent.getX(), motionEvent.getY())) {
                        touchMode = TouchMode.click_edit;
                    }
                    touchMode = TouchMode.click_all;
                }
            }
            touchMode = TouchMode.drag;
        }
        this.touchMode = touchMode;
        return touchMode2 == this.touchMode;
    }
}
