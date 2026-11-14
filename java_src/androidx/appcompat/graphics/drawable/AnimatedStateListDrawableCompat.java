package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import androidx.appcompat.graphics.drawable.DrawableContainer;
import androidx.appcompat.graphics.drawable.StateListDrawable;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;

/* loaded from: classes.dex */
public final class AnimatedStateListDrawableCompat extends StateListDrawable implements TintAwareDrawable {
    public boolean mMutated;
    public AnimatedStateListState mState;
    public Transition mTransition;
    public int mTransitionFromIndex;
    public int mTransitionToIndex;

    /* loaded from: classes.dex */
    public final class AnimatableTransition extends Transition {
        public final Animatable mA;

        public AnimatableTransition(Animatable animatable) {
            super(0);
            this.mA = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void start() {
            this.mA.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void stop() {
            this.mA.stop();
        }
    }

    /* loaded from: classes.dex */
    public final class AnimatedStateListState extends StateListDrawable.StateListState {
        public SparseArrayCompat mStateIds;
        public LongSparseArray mTransitions;

        public AnimatedStateListState(AnimatedStateListState animatedStateListState, AnimatedStateListDrawableCompat animatedStateListDrawableCompat, Resources resources) {
            super(animatedStateListState, animatedStateListDrawableCompat, resources);
            SparseArrayCompat sparseArrayCompat;
            if (animatedStateListState != null) {
                this.mTransitions = animatedStateListState.mTransitions;
                sparseArrayCompat = animatedStateListState.mStateIds;
            } else {
                this.mTransitions = new LongSparseArray();
                sparseArrayCompat = new SparseArrayCompat();
            }
            this.mStateIds = sparseArrayCompat;
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, androidx.appcompat.graphics.drawable.DrawableContainer.DrawableContainerState
        public final void mutate() {
            this.mTransitions = this.mTransitions.m241clone();
            this.mStateIds = this.mStateIds.m242clone();
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new AnimatedStateListDrawableCompat(this, null);
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawable.StateListState, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawableCompat(this, resources);
        }
    }

    /* loaded from: classes.dex */
    public final class AnimatedVectorDrawableTransition extends Transition {
        public final AnimatedVectorDrawableCompat mAvd;

        public AnimatedVectorDrawableTransition(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
            super(0);
            this.mAvd = animatedVectorDrawableCompat;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void start() {
            this.mAvd.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void stop() {
            this.mAvd.stop();
        }
    }

    /* loaded from: classes.dex */
    public final class AnimationDrawableTransition extends Transition {
        public final ObjectAnimator mAnim;
        public final boolean mHasReversibleFlag;

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$FrameInterpolator, android.animation.TimeInterpolator, java.lang.Object] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AnimationDrawableTransition(android.graphics.drawable.AnimationDrawable r10, boolean r11, boolean r12) {
            /*
                r9 = this;
                r0 = 0
                r9.<init>(r0)
                int r1 = r10.getNumberOfFrames()
                if (r11 == 0) goto Ld
                int r2 = r1 + (-1)
                goto Le
            Ld:
                r2 = 0
            Le:
                r3 = 1
                if (r11 == 0) goto L13
                r1 = 0
                goto L14
            L13:
                int r1 = r1 - r3
            L14:
                androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$FrameInterpolator r4 = new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$FrameInterpolator
                r4.<init>()
                int r5 = r10.getNumberOfFrames()
                r4.mFrames = r5
                int[] r6 = r4.mFrameTimes
                if (r6 == 0) goto L26
                int r6 = r6.length
                if (r6 >= r5) goto L2a
            L26:
                int[] r6 = new int[r5]
                r4.mFrameTimes = r6
            L2a:
                int[] r6 = r4.mFrameTimes
                r7 = 0
            L2d:
                if (r0 >= r5) goto L41
                if (r11 == 0) goto L36
                int r8 = r5 - r0
                int r8 = r8 + (-1)
                goto L37
            L36:
                r8 = r0
            L37:
                int r8 = r10.getDuration(r8)
                r6[r0] = r8
                int r7 = r7 + r8
                int r0 = r0 + 1
                goto L2d
            L41:
                r4.mTotalDuration = r7
                int[] r11 = new int[]{r2, r1}
                java.lang.String r0 = "currentIndex"
                android.animation.ObjectAnimator r10 = android.animation.ObjectAnimator.ofInt(r10, r0, r11)
                r10.setAutoCancel(r3)
                int r11 = r4.mTotalDuration
                long r0 = (long) r11
                r10.setDuration(r0)
                r10.setInterpolator(r4)
                r9.mHasReversibleFlag = r12
                r9.mAnim = r10
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AnimationDrawableTransition.<init>(android.graphics.drawable.AnimationDrawable, boolean, boolean):void");
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final boolean canReverse() {
            return this.mHasReversibleFlag;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void reverse() {
            this.mAnim.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void start() {
            this.mAnim.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.Transition
        public final void stop() {
            this.mAnim.cancel();
        }
    }

    /* loaded from: classes.dex */
    public final class FrameInterpolator implements TimeInterpolator {
        public int[] mFrameTimes;
        public int mFrames;
        public int mTotalDuration;

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            int i = (int) ((f * this.mTotalDuration) + 0.5f);
            int i2 = this.mFrames;
            int[] iArr = this.mFrameTimes;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.mTotalDuration : 0.0f);
        }
    }

    /* loaded from: classes.dex */
    public abstract class Transition {
        private Transition() {
        }

        public /* synthetic */ Transition(int i) {
            this();
        }

        public boolean canReverse() {
            return false;
        }

        public void reverse() {
        }

        public abstract void start();

        public abstract void stop();
    }

    public AnimatedStateListDrawableCompat() {
        this(null, null);
    }

    public AnimatedStateListDrawableCompat(AnimatedStateListState animatedStateListState, Resources resources) {
        this.mTransitionToIndex = -1;
        this.mTransitionFromIndex = -1;
        setConstantState(new AnimatedStateListState(animatedStateListState, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0269, code lost:
    
        r4.onStateChange(r4.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0270, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f8, code lost:
    
        if (r14 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00fa, code lost:
    
        r10 = r27.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ff, code lost:
    
        if (r10 != 4) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0103, code lost:
    
        if (r10 != 2) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x010f, code lost:
    
        if (r27.getName().equals("vector") == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0111, code lost:
    
        r14 = androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.createFromXmlInner(r1, r27, r26, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0116, code lost:
    
        r14 = android.graphics.drawable.Drawable.createFromXmlInner(r1, r27, r26, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0133, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r27.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0134, code lost:
    
        if (r14 == null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0136, code lost:
    
        r9 = r4.mState;
        r10 = r9.addChild(r14);
        r9.mStateSets[r10] = r6;
        r9.mStateIds.put(r10, java.lang.Integer.valueOf(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0165, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r27.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat createFromXmlInner(android.content.Context r23, android.content.res.Resources.Theme r24, android.content.res.Resources r25, android.util.AttributeSet r26, android.content.res.XmlResourceParser r27) {
        /*
            Method dump skipped, instructions count: 655
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.createFromXmlInner(android.content.Context, android.content.res.Resources$Theme, android.content.res.Resources, android.util.AttributeSet, android.content.res.XmlResourceParser):androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat");
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer
    public final DrawableContainer.DrawableContainerState cloneConstantState() {
        return new AnimatedStateListState(this.mState, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer
    public final StateListDrawable.StateListState cloneConstantState() {
        return new AnimatedStateListState(this.mState, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        Transition transition = this.mTransition;
        if (transition != null) {
            transition.stop();
            this.mTransition = null;
            selectDrawable(this.mTransitionToIndex);
            this.mTransitionToIndex = -1;
            this.mTransitionFromIndex = -1;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.mMutated) {
            super.mutate();
            this.mState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0107  */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStateChange(int[] r18) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.onStateChange(int[]):boolean");
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawable, androidx.appcompat.graphics.drawable.DrawableContainer
    public final void setConstantState(DrawableContainer.DrawableContainerState drawableContainerState) {
        super.setConstantState(drawableContainerState);
        if (drawableContainerState instanceof AnimatedStateListState) {
            this.mState = (AnimatedStateListState) drawableContainerState;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Transition transition = this.mTransition;
        if (transition != null && (visible || z2)) {
            if (z) {
                transition.start();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
