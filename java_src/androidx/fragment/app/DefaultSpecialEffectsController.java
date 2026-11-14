package androidx.fragment.app;

import android.content.Context;
import android.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.collection.MapCollections;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$10, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass10 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;

        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State = iArr;
            try {
                SpecialEffectsController.Operation.State[] stateArr = SpecialEffectsController.Operation.State.$VALUES;
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;
                SpecialEffectsController.Operation.State[] stateArr2 = SpecialEffectsController.Operation.State.$VALUES;
                iArr2[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;
                SpecialEffectsController.Operation.State[] stateArr3 = SpecialEffectsController.Operation.State.$VALUES;
                iArr3[0] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;
                SpecialEffectsController.Operation.State[] stateArr4 = SpecialEffectsController.Operation.State.$VALUES;
                iArr4[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    public final class AnimationInfo extends SpecialEffectsInfo {
        public FragmentAnim.AnimationOrAnimator mAnimation;
        public boolean mIsPop;
        public boolean mLoadedAnim;

        public final FragmentAnim.AnimationOrAnimator getAnimation(Context context) {
            if (this.mLoadedAnim) {
                return this.mAnimation;
            }
            SpecialEffectsController.Operation operation = this.mOperation;
            FragmentAnim.AnimationOrAnimator loadAnimation = FragmentAnim.loadAnimation(context, operation.mFragment, operation.mFinalState == SpecialEffectsController.Operation.State.VISIBLE, this.mIsPop);
            this.mAnimation = loadAnimation;
            this.mLoadedAnim = true;
            return loadAnimation;
        }
    }

    /* loaded from: classes.dex */
    public abstract class SpecialEffectsInfo {
        public final SpecialEffectsController.Operation mOperation;
        public final CancellationSignal mSignal;

        public SpecialEffectsInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal) {
            this.mOperation = operation;
            this.mSignal = cancellationSignal;
        }

        public final void completeSpecialEffect() {
            SpecialEffectsController.Operation operation = this.mOperation;
            HashSet hashSet = operation.mSpecialEffectsSignals;
            if (hashSet.remove(this.mSignal) && hashSet.isEmpty()) {
                operation.complete();
            }
        }

        public final boolean isVisibilityUnchanged() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation operation = this.mOperation;
            SpecialEffectsController.Operation.State from = SpecialEffectsController.Operation.State.from(operation.mFragment.mView);
            SpecialEffectsController.Operation.State state2 = operation.mFinalState;
            return from == state2 || !(from == (state = SpecialEffectsController.Operation.State.VISIBLE) || state2 == state);
        }
    }

    /* loaded from: classes.dex */
    public final class TransitionInfo extends SpecialEffectsInfo {
        public final boolean mOverlapAllowed;
        public final Object mSharedElementTransition;
        public final Object mTransition;

        public TransitionInfo(SpecialEffectsController.Operation operation, CancellationSignal cancellationSignal, boolean z, boolean z2) {
            super(operation, cancellationSignal);
            boolean z3;
            SpecialEffectsController.Operation.State state = operation.mFinalState;
            SpecialEffectsController.Operation.State state2 = SpecialEffectsController.Operation.State.VISIBLE;
            Fragment fragment = operation.mFragment;
            if (state == state2) {
                this.mTransition = z ? fragment.getReenterTransition() : fragment.getEnterTransition();
                z3 = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
            } else {
                this.mTransition = z ? fragment.getReturnTransition() : fragment.getExitTransition();
                z3 = true;
            }
            this.mOverlapAllowed = z3;
            this.mSharedElementTransition = z2 ? z ? fragment.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition() : null;
        }

        public final FragmentTransitionImpl getHandlingImpl(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionCompat21 fragmentTransitionCompat21 = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionCompat21 != null && (obj instanceof Transition)) {
                return fragmentTransitionCompat21;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(obj)) {
                return fragmentTransitionImpl;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.mOperation.mFragment + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    public static void captureTransitioningViews(ArrayList arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.isTransitionGroup()) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                captureTransitioningViews(arrayList, childAt);
            }
        }
    }

    public static void findNamedViews(ArrayMap arrayMap, View view) {
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            arrayMap.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    findNamedViews(arrayMap, childAt);
                }
            }
        }
    }

    public static void retainMatchingViews(ArrayMap arrayMap, Collection collection) {
        Iterator it = ((MapCollections.EntrySet) arrayMap.entrySet()).iterator();
        while (true) {
            MapCollections.MapIterator mapIterator = (MapCollections.MapIterator) it;
            if (!mapIterator.hasNext()) {
                return;
            }
            mapIterator.next();
            View view = (View) mapIterator.getValue();
            ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
            if (!collection.contains(view.getTransitionName())) {
                mapIterator.remove();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x05fc, code lost:
    
        if (androidx.fragment.app.FragmentManager.isLoggingEnabled(2) != false) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x05fe, code lost:
    
        java.util.Objects.toString(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0603, code lost:
    
        r4.completeSpecialEffect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x05f2, code lost:
    
        if (androidx.fragment.app.FragmentManager.isLoggingEnabled(2) != false) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x03fb, code lost:
    
        if (r16 == false) goto L147;
     */
    /* JADX WARN: Type inference failed for: r15v42, types: [androidx.fragment.app.DefaultSpecialEffectsController$AnimationInfo, androidx.fragment.app.DefaultSpecialEffectsController$SpecialEffectsInfo, java.lang.Object] */
    @Override // androidx.fragment.app.SpecialEffectsController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void executeOperations(java.util.ArrayList r36, final boolean r37) {
        /*
            Method dump skipped, instructions count: 1630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.executeOperations(java.util.ArrayList, boolean):void");
    }
}
