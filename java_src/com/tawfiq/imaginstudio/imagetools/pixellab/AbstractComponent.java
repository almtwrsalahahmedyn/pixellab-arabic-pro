package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
public abstract class AbstractComponent extends View {
    static final int[] snapNear = {0, 90, 180, -180, -90};
    protected OnHandleResize resizeListener;
    protected OnHandleRotate rotationListener;

    /* loaded from: classes.dex */
    public interface OnHandleResize {
        void resized();
    }

    /* loaded from: classes.dex */
    public interface OnHandleRotate {
        void rotated(int i);
    }

    public AbstractComponent(Context context) {
        super(context);
    }

    public abstract boolean OnCustomTouchEvent(CustomMotionEvent customMotionEvent);

    public void clearListeners() {
        this.resizeListener = null;
        this.rotationListener = null;
    }

    public void setResizeListener(OnHandleResize onHandleResize) {
        this.resizeListener = onHandleResize;
    }

    public void setRotationListener(OnHandleRotate onHandleRotate) {
        this.rotationListener = onHandleRotate;
    }

    public int snapAngle(int i) {
        for (int i2 : snapNear) {
            if (Math.abs(i - i2) <= 3) {
                return i2;
            }
        }
        return i;
    }
}
