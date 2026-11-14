package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.RelativeLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorHandle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public class gradientTool_slider extends RelativeLayout implements colorHandle.OnHandleTouchListener {
    static final int handleHDp = 15;
    static final int handleWDp = 26;
    Drawable backgroundCheckers;
    backgroundDrawableHolder bgGradient;
    private ArrayList<colorHandle> colorHandles;
    int[] colors;
    private gradientTool_Preview gradientPreview;
    final int gridSquare;
    final int handleH;
    final int handleW;
    colorHandle lastSelectedHandle;
    Paint pnGridBlack;
    Paint pnGridWhite;
    float[] positions;
    private gradientTool_controls sliderControls;

    /* loaded from: classes.dex */
    public class backgroundDrawableHolder extends Drawable {
        float[] positions = null;
        int[] colors = null;
        LinearGradient linGrad = null;
        Paint pnGradient = new Paint(1);

        public backgroundDrawableHolder() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int dpToPixels = gradientTool_slider.this.dpToPixels(2);
            int width = gradientTool_slider.this.getWidth();
            gradientTool_slider gradienttool_slider = gradientTool_slider.this;
            Rect rect = new Rect(new Rect(0, dpToPixels, width - gradienttool_slider.handleW, gradienttool_slider.getHeight() - gradientTool_slider.this.handleH));
            canvas.save();
            canvas.translate(gradientTool_slider.this.handleW / 2, 0.0f);
            Paint paint = new Paint(1);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(-12303292);
            canvas.drawRect(rect, paint);
            rect.inset(gradientTool_slider.this.dpToPixels(1), gradientTool_slider.this.dpToPixels(1));
            paint.setColor(-3355444);
            canvas.drawRect(rect, paint);
            rect.inset(gradientTool_slider.this.dpToPixels(1), gradientTool_slider.this.dpToPixels(1));
            gradientTool_slider.this.backgroundCheckers.setBounds(rect);
            gradientTool_slider.this.backgroundCheckers.draw(canvas);
            if (this.positions != null && this.colors != null) {
                LinearGradient linearGradient = new LinearGradient(r0.left, r0.top, r0.right, 0.0f, this.colors, this.positions, Shader.TileMode.CLAMP);
                this.linGrad = linearGradient;
                this.pnGradient.setShader(linearGradient);
                canvas.drawRect(rect, this.pnGradient);
            }
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public void updateGradient(int[] iArr, float[] fArr) {
            this.colors = iArr;
            this.positions = fArr;
            gradientTool_slider.this.invalidate();
        }
    }

    public gradientTool_slider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.handleW = dpToPixels(26);
        this.handleH = dpToPixels(15);
        this.gridSquare = dpToPixels(5);
        this.lastSelectedHandle = null;
        this.colorHandles = new ArrayList<>();
        this.gradientPreview = null;
        Paint paint = new Paint(1);
        this.pnGridBlack = paint;
        paint.setColor(Color.parseColor("#bdbdbd"));
        Paint paint2 = new Paint(1);
        this.pnGridWhite = paint2;
        paint2.setColor(-1);
        backgroundDrawableHolder backgrounddrawableholder = new backgroundDrawableHolder();
        this.bgGradient = backgrounddrawableholder;
        setBackgroundDrawable(backgrounddrawableholder);
        this.backgroundCheckers = getResources().getDrawable(R.drawable.checkered_bg);
    }

    public void addNewColor() {
        boolean z;
        int i;
        int i2;
        colorHandle colorhandle = this.lastSelectedHandle;
        if (colorhandle != null) {
            int position = colorhandle.getPosition();
            int color = this.lastSelectedHandle.getColor();
            int i3 = 0;
            boolean z2 = position <= 500;
            int i4 = z2 ? 1000 : 0;
            int abs = Math.abs(i4 - position);
            int childCount = getChildCount();
            int i5 = abs;
            if (z2) {
                z = false;
                i = i4;
                i2 = 0;
                while (i3 < childCount) {
                    colorHandle colorhandle2 = (colorHandle) getChildAt(i3);
                    if (colorhandle2.getPosition() > position && Math.abs(colorhandle2.getPosition() - position) <= i5) {
                        int position2 = colorhandle2.getPosition();
                        i5 = Math.abs(colorhandle2.getPosition() - position);
                        i2 = colorhandle2.getColor();
                        i = position2;
                        z = true;
                    }
                    i3++;
                }
            } else {
                z = false;
                i = i4;
                i2 = 0;
                while (i3 < childCount) {
                    colorHandle colorhandle3 = (colorHandle) getChildAt(i3);
                    if (colorhandle3.getPosition() < position && Math.abs(colorhandle3.getPosition() - position) <= i5) {
                        int position3 = colorhandle3.getPosition();
                        i5 = Math.abs(colorhandle3.getPosition() - position);
                        i2 = colorhandle3.getColor();
                        i = position3;
                        z = true;
                    }
                    i3++;
                }
            }
            int i6 = (i + position) / 2;
            if (z) {
                color = averageTwoColors(color, i2);
            }
            addNewColor(color, i6);
        }
    }

    public void addNewColor(int i, int i2) {
        colorHandle colorhandle = new colorHandle(getContext(), i, i2, getWidth(), getHeight(), this.backgroundCheckers);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = 0;
        layoutParams.leftMargin = (int) (((getWidth() - this.handleW) * i2) / 1000.0f);
        layoutParams.rightMargin = -250;
        layoutParams.bottomMargin = -250;
        colorHandle colorhandle2 = this.lastSelectedHandle;
        if (colorhandle2 != null) {
            colorhandle2.toggleSelect(false);
        }
        this.lastSelectedHandle = colorhandle;
        colorhandle.setTouchListener(this);
        this.colorHandles.add(colorhandle);
        addView(colorhandle, layoutParams);
        gradientChanged();
    }

    public int averageTwoColors(int i, int i2) {
        return Color.argb((Color.alpha(i2) + Color.alpha(i)) / 2, (Color.red(i2) + Color.red(i)) / 2, (Color.green(i2) + Color.green(i)) / 2, (Color.blue(i2) + Color.blue(i)) / 2);
    }

    public void connectControls(gradientTool_controls gradienttool_controls) {
        this.sliderControls = gradienttool_controls;
    }

    public void connectPreview(gradientTool_Preview gradienttool_preview) {
        this.gradientPreview = gradienttool_preview;
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void drawGrid(Rect rect, Canvas canvas) {
        for (int i = 0; this.gridSquare * i < rect.height(); i++) {
            for (int i2 = 0; this.gridSquare * i2 < rect.width(); i2++) {
                int i3 = this.gridSquare;
                int i4 = i2 * i3;
                int i5 = i * i3;
                canvas.drawRect(new Rect(i4, i5, Math.min(i3 + i4, rect.right), Math.min(this.gridSquare + i5, rect.bottom)), (i2 % 2 == 0) == (i % 2 == 0) ? this.pnGridBlack : this.pnGridWhite);
            }
        }
    }

    public void flipPositions() {
        if (this.lastSelectedHandle != null) {
            Iterator<colorHandle> it = this.colorHandles.iterator();
            while (it.hasNext()) {
                colorHandle next = it.next();
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) next.getLayoutParams();
                next.setPosition(1000 - next.getPosition());
                layoutParams.leftMargin = (int) (((getWidth() - this.handleW) * r3) / 1000.0f);
                layoutParams.rightMargin = -250;
                next.setLayoutParams(layoutParams);
            }
            requestLayout();
            gradientChanged();
        }
    }

    public void gradientChanged() {
        Collections.sort(this.colorHandles);
        this.colors = new int[this.colorHandles.size()];
        this.positions = new float[this.colorHandles.size()];
        Iterator<colorHandle> it = this.colorHandles.iterator();
        int i = 0;
        while (it.hasNext()) {
            this.colors[i] = it.next().getColor();
            this.positions[i] = r2.getPosition() / 1000.0f;
            i++;
        }
        this.bgGradient.updateGradient(this.colors, this.positions);
        gradientTool_controls gradienttool_controls = this.sliderControls;
        if (gradienttool_controls != null) {
            gradienttool_controls.selectionChanged();
        }
        gradientDoneEditing();
    }

    public void gradientColorsChanged() {
        this.colors = new int[this.colorHandles.size()];
        this.positions = new float[this.colorHandles.size()];
        Iterator<colorHandle> it = this.colorHandles.iterator();
        int i = 0;
        while (it.hasNext()) {
            this.colors[i] = it.next().getColor();
            this.positions[i] = r2.getPosition() / 1000.0f;
            i++;
        }
        this.bgGradient.updateGradient(this.colors, this.positions);
        gradientDoneEditing();
    }

    public void gradientDoneEditing() {
        gradientTool_Preview gradienttool_preview = this.gradientPreview;
        if (gradienttool_preview != null) {
            gradienttool_preview.setColors(this.colors, this.positions);
            this.gradientPreview.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_slider.1
                @Override // java.lang.Runnable
                public void run() {
                    gradientTool_slider.this.gradientPreview.invalidate();
                }
            });
        }
    }

    public void initializeColors(final int[] iArr, final float[] fArr) {
        post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_slider.2
            @Override // java.lang.Runnable
            public void run() {
                if (iArr.length != fArr.length) {
                    return;
                }
                int i = 0;
                while (true) {
                    int[] iArr2 = iArr;
                    if (i >= iArr2.length) {
                        return;
                    }
                    gradientTool_slider.this.addNewColor(iArr2[i], (int) (fArr[i] * 1000.0f));
                    i++;
                }
            }
        });
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorHandle.OnHandleTouchListener
    public void onHandleDoneEvent() {
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorHandle.OnHandleTouchListener
    public void onHandleMoveEvent() {
        gradientChanged();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorHandle.OnHandleTouchListener
    public void onHandleTouchEvent(colorHandle colorhandle) {
        if (colorhandle != null) {
            colorHandle colorhandle2 = this.lastSelectedHandle;
            if (colorhandle2 != null) {
                colorhandle2.toggleSelect(false);
            }
            colorhandle.toggleSelect(true);
            this.lastSelectedHandle = colorhandle;
            colorhandle.bringToFront();
            requestLayout();
            gradientTool_controls gradienttool_controls = this.sliderControls;
            if (gradienttool_controls != null) {
                gradienttool_controls.selectionChanged();
            }
        }
    }

    public void removeCurrentColor() {
        if (getChildCount() > 2) {
            this.colorHandles.remove(this.lastSelectedHandle);
            removeView(this.lastSelectedHandle);
            colorHandle colorhandle = (colorHandle) getChildAt(getChildCount() - 1);
            this.lastSelectedHandle = colorhandle;
            colorhandle.toggleSelect(true);
            this.lastSelectedHandle.bringToFront();
            requestLayout();
            gradientChanged();
        }
    }

    public void selectLeft() {
        colorHandle colorhandle = this.lastSelectedHandle;
        if (colorhandle != null) {
            int position = colorhandle.getPosition();
            Iterator<colorHandle> it = this.colorHandles.iterator();
            int i = 1001;
            colorHandle colorhandle2 = null;
            while (it.hasNext()) {
                colorHandle next = it.next();
                if (next.getPosition() < position && Math.abs(next.getPosition() - position) <= i && next != this.lastSelectedHandle) {
                    i = Math.abs(next.getPosition() - position);
                    colorhandle2 = next;
                }
            }
            if (colorhandle2 != null) {
                this.lastSelectedHandle.toggleSelect(false);
                colorhandle2.toggleSelect(true);
                this.lastSelectedHandle = colorhandle2;
                colorhandle2.bringToFront();
                requestLayout();
                gradientTool_controls gradienttool_controls = this.sliderControls;
                if (gradienttool_controls != null) {
                    gradienttool_controls.selectionChanged();
                }
            }
        }
    }

    public void selectRight() {
        colorHandle colorhandle = this.lastSelectedHandle;
        if (colorhandle != null) {
            int position = colorhandle.getPosition();
            Iterator<colorHandle> it = this.colorHandles.iterator();
            int i = 1001;
            colorHandle colorhandle2 = null;
            while (it.hasNext()) {
                colorHandle next = it.next();
                if (next.getPosition() > position && Math.abs(next.getPosition() - position) <= i && next != this.lastSelectedHandle) {
                    i = Math.abs(next.getPosition() - position);
                    colorhandle2 = next;
                }
            }
            if (colorhandle2 != null) {
                this.lastSelectedHandle.toggleSelect(false);
                colorhandle2.toggleSelect(true);
                this.lastSelectedHandle = colorhandle2;
                colorhandle2.bringToFront();
                requestLayout();
                gradientTool_controls gradienttool_controls = this.sliderControls;
                if (gradienttool_controls != null) {
                    gradienttool_controls.selectionChanged();
                }
            }
        }
    }

    public void setCurrentColorPosition(int i) {
        colorHandle colorhandle = this.lastSelectedHandle;
        if (colorhandle != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) colorhandle.getLayoutParams();
            this.lastSelectedHandle.setPosition(i);
            layoutParams.leftMargin = (int) (((getWidth() - this.handleW) * i) / 1000.0f);
            layoutParams.rightMargin = -250;
            this.lastSelectedHandle.setLayoutParams(layoutParams);
            requestLayout();
        }
    }
}
