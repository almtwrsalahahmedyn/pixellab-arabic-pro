package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat;

import android.animation.ValueAnimator;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat;

/* loaded from: classes.dex */
public class AnimatorCompatV11 extends AnimatorCompat {
    ValueAnimator animator;

    public AnimatorCompatV11(float f, float f2, final AnimatorCompat.AnimationFrameUpdateListener animationFrameUpdateListener) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        this.animator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompatV11.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                animationFrameUpdateListener.onAnimationFrame(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat
    public void cancel() {
        this.animator.cancel();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat
    public boolean isRunning() {
        return this.animator.isRunning();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat
    public void setDuration(int i) {
        this.animator.setDuration(i);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat
    public void start() {
        this.animator.start();
    }
}
