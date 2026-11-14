package com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat;

/* loaded from: classes.dex */
public abstract class AnimatorCompat {

    /* loaded from: classes.dex */
    public interface AnimationFrameUpdateListener {
        void onAnimationFrame(float f);
    }

    /* loaded from: classes.dex */
    public static class AnimatorCompatBase extends AnimatorCompat {
        private final float mEndValue;
        private final AnimationFrameUpdateListener mListener;

        public AnimatorCompatBase(float f, float f2, AnimationFrameUpdateListener animationFrameUpdateListener) {
            this.mListener = animationFrameUpdateListener;
            this.mEndValue = f2;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat
        public void cancel() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat
        public boolean isRunning() {
            return false;
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat
        public void setDuration(int i) {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.internal.compat.AnimatorCompat
        public void start() {
            this.mListener.onAnimationFrame(this.mEndValue);
        }
    }

    public static final AnimatorCompat create(float f, float f2, AnimationFrameUpdateListener animationFrameUpdateListener) {
        return new AnimatorCompatV11(f, f2, animationFrameUpdateListener);
    }

    public abstract void cancel();

    public abstract boolean isRunning();

    public abstract void setDuration(int i);

    public abstract void start();
}
