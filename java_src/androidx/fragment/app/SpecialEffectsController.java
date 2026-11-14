package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentManager;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class SpecialEffectsController {
    public final ViewGroup mContainer;
    public final ArrayList mPendingOperations = new ArrayList();
    public final ArrayList mRunningOperations = new ArrayList();
    public boolean mOperationDirectionIsPop = false;
    public boolean mIsContainerPostponed = false;

    /* renamed from: androidx.fragment.app.SpecialEffectsController$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact;
        public static final /* synthetic */ int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact = iArr;
            try {
                Operation.LifecycleImpact[] lifecycleImpactArr = Operation.LifecycleImpact.$VALUES;
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact;
                Operation.LifecycleImpact[] lifecycleImpactArr2 = Operation.LifecycleImpact.$VALUES;
                iArr2[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact;
                Operation.LifecycleImpact[] lifecycleImpactArr3 = Operation.LifecycleImpact.$VALUES;
                iArr3[0] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr4 = new int[Operation.State.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State = iArr4;
            try {
                Operation.State[] stateArr = Operation.State.$VALUES;
                iArr4[0] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;
                Operation.State[] stateArr2 = Operation.State.$VALUES;
                iArr5[1] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;
                Operation.State[] stateArr3 = Operation.State.$VALUES;
                iArr6[2] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;
                Operation.State[] stateArr4 = Operation.State.$VALUES;
                iArr7[3] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes.dex */
    public final class FragmentStateManagerOperation extends Operation {
        public final FragmentStateManager mFragmentStateManager;

        public FragmentStateManagerOperation(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager, CancellationSignal cancellationSignal) {
            super(state, lifecycleImpact, fragmentStateManager.mFragment, cancellationSignal);
            this.mFragmentStateManager = fragmentStateManager;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public final void complete() {
            if (!this.mIsComplete) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    toString();
                }
                this.mIsComplete = true;
                Iterator it = this.mCompletionListeners.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
            }
            this.mFragmentStateManager.moveToExpectedState();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public final void onStart() {
            if (this.mLifecycleImpact == Operation.LifecycleImpact.ADDING) {
                FragmentStateManager fragmentStateManager = this.mFragmentStateManager;
                Fragment fragment = fragmentStateManager.mFragment;
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        findFocus.toString();
                        fragment.toString();
                    }
                }
                View requireView = this.mFragment.requireView();
                if (requireView.getParent() == null) {
                    fragmentStateManager.addViewToContainer();
                    requireView.setAlpha(0.0f);
                }
                if (requireView.getAlpha() == 0.0f && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
            }
        }
    }

    /* loaded from: classes.dex */
    public abstract class Operation {
        public State mFinalState;
        public final Fragment mFragment;
        public LifecycleImpact mLifecycleImpact;
        public final ArrayList mCompletionListeners = new ArrayList();
        public final HashSet mSpecialEffectsSignals = new HashSet();
        public boolean mIsCanceled = false;
        public boolean mIsComplete = false;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public final class LifecycleImpact {
            public static final /* synthetic */ LifecycleImpact[] $VALUES;
            public static final LifecycleImpact ADDING;
            public static final LifecycleImpact NONE;
            public static final LifecycleImpact REMOVING;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact] */
            static {
                ?? r0 = new Enum("NONE", 0);
                NONE = r0;
                ?? r1 = new Enum("ADDING", 1);
                ADDING = r1;
                ?? r3 = new Enum("REMOVING", 2);
                REMOVING = r3;
                $VALUES = new LifecycleImpact[]{r0, r1, r3};
            }

            public static LifecycleImpact valueOf(String str) {
                return (LifecycleImpact) Enum.valueOf(LifecycleImpact.class, str);
            }

            public static LifecycleImpact[] values() {
                return (LifecycleImpact[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* loaded from: classes.dex */
        public final class State {
            public static final /* synthetic */ State[] $VALUES;
            public static final State GONE;
            public static final State INVISIBLE;
            public static final State REMOVED;
            public static final State VISIBLE;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$State] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$State] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$State] */
            /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$State] */
            static {
                ?? r0 = new Enum("REMOVED", 0);
                REMOVED = r0;
                ?? r1 = new Enum("VISIBLE", 1);
                VISIBLE = r1;
                ?? r3 = new Enum("GONE", 2);
                GONE = r3;
                ?? r5 = new Enum("INVISIBLE", 3);
                INVISIBLE = r5;
                $VALUES = new State[]{r0, r1, r3, r5};
            }

            public static State from(int i) {
                if (i == 0) {
                    return VISIBLE;
                }
                if (i == 4) {
                    return INVISIBLE;
                }
                if (i == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i);
            }

            public static State from(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            public static State valueOf(String str) {
                return (State) Enum.valueOf(State.class, str);
            }

            public static State[] values() {
                return (State[]) $VALUES.clone();
            }

            public final void applyState(View view) {
                int i;
                int i2 = AnonymousClass3.$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[ordinal()];
                if (i2 == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            view.toString();
                            viewGroup.toString();
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i2 == 2) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(view);
                    }
                    i = 0;
                } else {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return;
                        }
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Objects.toString(view);
                        }
                        view.setVisibility(4);
                        return;
                    }
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(view);
                    }
                    i = 8;
                }
                view.setVisibility(i);
            }
        }

        public Operation(State state, LifecycleImpact lifecycleImpact, Fragment fragment, CancellationSignal cancellationSignal) {
            this.mFinalState = state;
            this.mLifecycleImpact = lifecycleImpact;
            this.mFragment = fragment;
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.SpecialEffectsController.Operation.1
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public final void onCancel() {
                    Operation.this.cancel();
                }
            });
        }

        public final void cancel() {
            if (this.mIsCanceled) {
                return;
            }
            this.mIsCanceled = true;
            HashSet hashSet = this.mSpecialEffectsSignals;
            if (hashSet.isEmpty()) {
                complete();
                return;
            }
            Iterator it = new ArrayList(hashSet).iterator();
            while (it.hasNext()) {
                ((CancellationSignal) it.next()).cancel();
            }
        }

        public abstract void complete();

        public final void mergeWith(State state, LifecycleImpact lifecycleImpact) {
            LifecycleImpact lifecycleImpact2;
            int i = AnonymousClass3.$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact[lifecycleImpact.ordinal()];
            Fragment fragment = this.mFragment;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 && this.mFinalState != State.REMOVED) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Objects.toString(fragment);
                            Objects.toString(this.mFinalState);
                            Objects.toString(state);
                        }
                        this.mFinalState = state;
                        return;
                    }
                    return;
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Objects.toString(fragment);
                    Objects.toString(this.mFinalState);
                    Objects.toString(this.mLifecycleImpact);
                }
                this.mFinalState = State.REMOVED;
                lifecycleImpact2 = LifecycleImpact.REMOVING;
            } else {
                if (this.mFinalState != State.REMOVED) {
                    return;
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Objects.toString(fragment);
                    Objects.toString(this.mLifecycleImpact);
                }
                this.mFinalState = State.VISIBLE;
                lifecycleImpact2 = LifecycleImpact.ADDING;
            }
            this.mLifecycleImpact = lifecycleImpact2;
        }

        public abstract void onStart();

        public final String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.mFinalState + "} {mLifecycleImpact = " + this.mLifecycleImpact + "} {mFragment = " + this.mFragment + "}";
        }
    }

    public SpecialEffectsController(ViewGroup viewGroup) {
        this.mContainer = viewGroup;
    }

    public static SpecialEffectsController getOrCreateController(ViewGroup viewGroup, SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        ((FragmentManager.AnonymousClass2) specialEffectsControllerFactory).getClass();
        SpecialEffectsController specialEffectsController = new SpecialEffectsController(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, specialEffectsController);
        return specialEffectsController;
    }

    public final void enqueue(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.mPendingOperations) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            Operation findPendingOperation = findPendingOperation(fragmentStateManager.mFragment);
            if (findPendingOperation != null) {
                findPendingOperation.mergeWith(state, lifecycleImpact);
                return;
            }
            final FragmentStateManagerOperation fragmentStateManagerOperation = new FragmentStateManagerOperation(state, lifecycleImpact, fragmentStateManager, cancellationSignal);
            this.mPendingOperations.add(fragmentStateManagerOperation);
            fragmentStateManagerOperation.mCompletionListeners.add(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.1
                @Override // java.lang.Runnable
                public final void run() {
                    ArrayList arrayList = SpecialEffectsController.this.mPendingOperations;
                    FragmentStateManagerOperation fragmentStateManagerOperation2 = fragmentStateManagerOperation;
                    if (arrayList.contains(fragmentStateManagerOperation2)) {
                        fragmentStateManagerOperation2.mFinalState.applyState(fragmentStateManagerOperation2.mFragment.mView);
                    }
                }
            });
            fragmentStateManagerOperation.mCompletionListeners.add(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.2
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialEffectsController specialEffectsController = SpecialEffectsController.this;
                    ArrayList arrayList = specialEffectsController.mPendingOperations;
                    FragmentStateManagerOperation fragmentStateManagerOperation2 = fragmentStateManagerOperation;
                    arrayList.remove(fragmentStateManagerOperation2);
                    specialEffectsController.mRunningOperations.remove(fragmentStateManagerOperation2);
                }
            });
        }
    }

    public abstract void executeOperations(ArrayList arrayList, boolean z);

    public final void executePendingOperations() {
        if (this.mIsContainerPostponed) {
            return;
        }
        ViewGroup viewGroup = this.mContainer;
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        if (!viewGroup.isAttachedToWindow()) {
            forceCompleteAllOperations();
            this.mOperationDirectionIsPop = false;
            return;
        }
        synchronized (this.mPendingOperations) {
            if (!this.mPendingOperations.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.mRunningOperations);
                this.mRunningOperations.clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Operation operation = (Operation) it.next();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(operation);
                    }
                    operation.cancel();
                    if (!operation.mIsComplete) {
                        this.mRunningOperations.add(operation);
                    }
                }
                updateFinalState();
                ArrayList arrayList2 = new ArrayList(this.mPendingOperations);
                this.mPendingOperations.clear();
                this.mRunningOperations.addAll(arrayList2);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((Operation) it2.next()).onStart();
                }
                executeOperations(arrayList2, this.mOperationDirectionIsPop);
                this.mOperationDirectionIsPop = false;
            }
        }
    }

    public final Operation findPendingOperation(Fragment fragment) {
        Iterator it = this.mPendingOperations.iterator();
        while (it.hasNext()) {
            Operation operation = (Operation) it.next();
            if (operation.mFragment.equals(fragment) && !operation.mIsCanceled) {
                return operation;
            }
        }
        return null;
    }

    public final void forceCompleteAllOperations() {
        ViewGroup viewGroup = this.mContainer;
        ViewCompat.AnonymousClass1 anonymousClass1 = ViewCompat.NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
        boolean isAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.mPendingOperations) {
            updateFinalState();
            Iterator it = this.mPendingOperations.iterator();
            while (it.hasNext()) {
                ((Operation) it.next()).onStart();
            }
            Iterator it2 = new ArrayList(this.mRunningOperations).iterator();
            while (it2.hasNext()) {
                Operation operation = (Operation) it2.next();
                if (FragmentManager.isLoggingEnabled(2)) {
                    if (!isAttachedToWindow) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Container ");
                        sb.append(this.mContainer);
                        sb.append(" is not attached to window. ");
                    }
                    Objects.toString(operation);
                }
                operation.cancel();
            }
            Iterator it3 = new ArrayList(this.mPendingOperations).iterator();
            while (it3.hasNext()) {
                Operation operation2 = (Operation) it3.next();
                if (FragmentManager.isLoggingEnabled(2)) {
                    if (!isAttachedToWindow) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Container ");
                        sb2.append(this.mContainer);
                        sb2.append(" is not attached to window. ");
                    }
                    Objects.toString(operation2);
                }
                operation2.cancel();
            }
        }
    }

    public final void markPostponedState() {
        synchronized (this.mPendingOperations) {
            updateFinalState();
            this.mIsContainerPostponed = false;
            int size = this.mPendingOperations.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                Operation operation = (Operation) this.mPendingOperations.get(size);
                Operation.State from = Operation.State.from(operation.mFragment.mView);
                Operation.State state = operation.mFinalState;
                Operation.State state2 = Operation.State.VISIBLE;
                if (state == state2 && from != state2) {
                    this.mIsContainerPostponed = operation.mFragment.isPostponed();
                    break;
                }
            }
        }
    }

    public final void updateFinalState() {
        Iterator it = this.mPendingOperations.iterator();
        while (it.hasNext()) {
            Operation operation = (Operation) it.next();
            if (operation.mLifecycleImpact == Operation.LifecycleImpact.ADDING) {
                operation.mergeWith(Operation.State.from(operation.mFragment.requireView().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }
}
