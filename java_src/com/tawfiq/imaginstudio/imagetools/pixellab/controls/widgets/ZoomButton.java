package com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import androidx.core.content.ContextCompat;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class ZoomButton extends FrameLayout implements View.OnClickListener {
    ZoomLabel label;
    int width;
    ImageButton zoom;
    OnZoomEvent zoomListener;
    boolean zoomOn;

    /* loaded from: classes.dex */
    public interface OnZoomEvent {
        void zoomReset();

        void zoomToggle(boolean z);
    }

    /* loaded from: classes.dex */
    public class ZoomLabel extends View {
        RectF bounds;
        boolean isClicked;
        View.OnClickListener listener;
        Paint pntBg;
        Paint pntText;
        float roundness;
        RectF textArea;
        Rect textBounds;
        String zoomText;

        public ZoomLabel(Context context, View.OnClickListener onClickListener) {
            super(context);
            this.roundness = commonFuncs.dpToPx(5);
            this.zoomText = "100%";
            this.textBounds = new Rect();
            this.isClicked = false;
            Paint paint = new Paint(1);
            this.pntBg = paint;
            paint.setColor(Color.parseColor("#152e59"));
            Paint paint2 = new Paint(1);
            this.pntText = paint2;
            paint2.setTextSize(commonFuncs.spToPx(12));
            this.pntText.setColor(-1);
            this.listener = onClickListener;
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.bounds == null) {
                return;
            }
            this.pntBg.setAlpha(this.isClicked ? 170 : 255);
            RectF rectF = this.bounds;
            float f = this.roundness;
            canvas.drawRoundRect(rectF, f, f, this.pntBg);
            Paint paint = this.pntText;
            String str = this.zoomText;
            paint.getTextBounds(str, 0, str.length(), this.textBounds);
            canvas.drawText(this.zoomText, this.textArea.centerX() - this.textBounds.centerX(), this.textArea.centerY() - this.textBounds.centerY(), this.pntText);
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            setMeasuredDimension(ZoomButton.this.width, getMeasuredHeight());
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            float f = i2;
            this.bounds = new RectF(commonFuncs.dpToPx(20), 0.0f, i, f);
            this.textArea = new RectF(commonFuncs.dpToPx(38), 0.0f, this.bounds.right, f);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.isClicked = true;
                invalidate();
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.isClicked = false;
                invalidate();
                this.listener.onClick(this);
            }
            return true;
        }

        public void setZoom(float f) {
            this.zoomText = ((int) (f * 100.0f)) + "%";
            invalidate();
        }
    }

    public ZoomButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zoomOn = false;
        this.width = commonFuncs.dpToPxInt(76);
        init();
    }

    public void init() {
        ImageButton imageButton = new ImageButton(getContext());
        this.zoom = imageButton;
        imageButton.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), R.drawable.top_bar_button1));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(commonFuncs.dpToPxInt(38), commonFuncs.dpToPxInt(38));
        layoutParams.gravity = 17;
        this.zoom.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.action_zoom));
        ((BitmapDrawable) this.zoom.getDrawable()).setAntiAlias(true);
        this.label = new ZoomLabel(getContext(), new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnZoomEvent onZoomEvent = ZoomButton.this.zoomListener;
                if (onZoomEvent != null) {
                    onZoomEvent.zoomReset();
                }
            }
        });
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, commonFuncs.dpToPxInt(30));
        layoutParams2.gravity = 17;
        this.label.setVisibility(8);
        this.zoom.setOnClickListener(this);
        addView(this.label, layoutParams2);
        addView(this.zoom, layoutParams);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        setZoomOn(!this.zoomOn);
    }

    public void setZoomListener(OnZoomEvent onZoomEvent) {
        this.zoomListener = onZoomEvent;
    }

    public void setZoomOn(boolean z) {
        boolean z2 = this.zoomOn;
        this.zoomOn = z;
        if (z2 != z) {
            updateButtons();
        }
    }

    public void updateButtons() {
        ViewPropertyAnimator duration;
        Animator.AnimatorListener animatorListener;
        this.zoom.setSelected(this.zoomOn);
        OnZoomEvent onZoomEvent = this.zoomListener;
        if (onZoomEvent != null) {
            onZoomEvent.zoomToggle(this.zoomOn);
        }
        if (this.zoomOn) {
            this.zoom.animate().x(0.0f).setDuration(100L).start();
            this.label.setAlpha(0.0f);
            this.label.setVisibility(0);
            duration = this.label.animate().alpha(1.0f).scaleX(1.0f).setDuration(150L);
            animatorListener = null;
        } else {
            this.zoom.animate().x((getWidth() / 2.0f) - (this.zoom.getWidth() / 2.0f)).setDuration(100L).start();
            duration = this.label.animate().alpha(0.0f).scaleX(0.6f).setDuration(150L);
            animatorListener = new Animator.AnimatorListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ZoomButton.this.label.setVisibility(8);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            };
        }
        duration.setListener(animatorListener).start();
    }

    public void updateZoom(float f) {
        this.label.setZoom(f);
    }
}
