package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class LifecycleRegistry extends Lifecycle {
    public final WeakReference mLifecycleOwner;
    public final FastSafeIterableMap mObserverMap = new FastSafeIterableMap();
    public int mAddingObserverCounter = 0;
    public boolean mHandlingEvent = false;
    public boolean mNewEventOccurred = false;
    public final ArrayList mParentStates = new ArrayList();
    public Lifecycle.State mState = Lifecycle.State.INITIALIZED;
    public final boolean mEnforceMainThread = true;

    /* loaded from: classes.dex */
    public final class ObserverWithState {
        public LifecycleEventObserver mLifecycleObserver;
        public Lifecycle.State mState;

        public final void dispatchEvent(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            Lifecycle.State state = this.mState;
            if (targetState.compareTo(state) < 0) {
                state = targetState;
            }
            this.mState = state;
            this.mLifecycleObserver.onStateChanged(lifecycleOwner, event);
            this.mState = targetState;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner) {
        this.mLifecycleOwner = new WeakReference(lifecycleOwner);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.lifecycle.LifecycleRegistry$ObserverWithState] */
    @Override // androidx.lifecycle.Lifecycle
    public final void addObserver(LifecycleObserver lifecycleObserver) {
        LifecycleEventObserver lifecycleEventObserver;
        LifecycleOwner lifecycleOwner;
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle.State state = this.mState;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ?? obj = new Object();
        HashMap hashMap = Lifecycling.sCallbackCache;
        if (lifecycleObserver instanceof LifecycleEventObserver) {
            lifecycleEventObserver = (LifecycleEventObserver) lifecycleObserver;
        } else {
            Class<?> cls = lifecycleObserver.getClass();
            if (Lifecycling.getObserverConstructorType(cls) == 2) {
                List list = (List) Lifecycling.sClassToAdapters.get(cls);
                if (list.size() == 1) {
                    Lifecycling.createGeneratedAdapter((Constructor) list.get(0), lifecycleObserver);
                    lifecycleEventObserver = new Object();
                } else {
                    GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[list.size()];
                    for (int i = 0; i < list.size(); i++) {
                        Lifecycling.createGeneratedAdapter((Constructor) list.get(i), lifecycleObserver);
                        generatedAdapterArr[i] = null;
                    }
                    lifecycleEventObserver = new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
                }
            } else {
                lifecycleEventObserver = new ReflectiveGenericLifecycleObserver(lifecycleObserver);
            }
        }
        obj.mLifecycleObserver = lifecycleEventObserver;
        obj.mState = state2;
        FastSafeIterableMap fastSafeIterableMap = this.mObserverMap;
        if (((ObserverWithState) fastSafeIterableMap.putIfAbsent(lifecycleObserver, obj)) == null && (lifecycleOwner = (LifecycleOwner) this.mLifecycleOwner.get()) != null) {
            boolean z = this.mAddingObserverCounter != 0 || this.mHandlingEvent;
            Lifecycle.State calculateTargetState = calculateTargetState(lifecycleObserver);
            this.mAddingObserverCounter++;
            while (obj.mState.compareTo(calculateTargetState) < 0 && fastSafeIterableMap.mHashMap.containsKey(lifecycleObserver)) {
                this.mParentStates.add(obj.mState);
                Lifecycle.State state3 = obj.mState;
                Lifecycle.Event[] eventArr = Lifecycle.Event.$VALUES;
                int i2 = Lifecycle.AnonymousClass1.$SwitchMap$androidx$lifecycle$Lifecycle$State[state3.ordinal()];
                Lifecycle.Event event = i2 != 1 ? i2 != 2 ? i2 != 5 ? null : Lifecycle.Event.ON_CREATE : Lifecycle.Event.ON_RESUME : Lifecycle.Event.ON_START;
                if (event == null) {
                    throw new IllegalStateException("no event up from " + obj.mState);
                }
                obj.dispatchEvent(lifecycleOwner, event);
                this.mParentStates.remove(r7.size() - 1);
                calculateTargetState = calculateTargetState(lifecycleObserver);
            }
            if (!z) {
                sync();
            }
            this.mAddingObserverCounter--;
        }
    }

    public final Lifecycle.State calculateTargetState(LifecycleObserver lifecycleObserver) {
        FastSafeIterableMap fastSafeIterableMap = this.mObserverMap;
        SafeIterableMap.Entry entry = fastSafeIterableMap.mHashMap.containsKey(lifecycleObserver) ? ((SafeIterableMap.Entry) fastSafeIterableMap.mHashMap.get(lifecycleObserver)).mPrevious : null;
        Lifecycle.State state = entry != null ? ((ObserverWithState) entry.mValue).mState : null;
        ArrayList arrayList = this.mParentStates;
        Lifecycle.State state2 = arrayList.isEmpty() ? null : (Lifecycle.State) arrayList.get(arrayList.size() - 1);
        Lifecycle.State state3 = this.mState;
        if (state == null || state.compareTo(state3) >= 0) {
            state = state3;
        }
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    public final void enforceMainThreadIfNeeded(String str) {
        if (this.mEnforceMainThread) {
            ArchTaskExecutor.getInstance().mDelegate.getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            throw new IllegalStateException("Method " + str + " must be called on the main thread");
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    public final Lifecycle.State getCurrentState() {
        return this.mState;
    }

    public final void handleLifecycleEvent(Lifecycle.Event event) {
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(event.getTargetState());
    }

    public final void moveToState(Lifecycle.State state) {
        if (this.mState == state) {
            return;
        }
        this.mState = state;
        if (this.mHandlingEvent || this.mAddingObserverCounter != 0) {
            this.mNewEventOccurred = true;
            return;
        }
        this.mHandlingEvent = true;
        sync();
        this.mHandlingEvent = false;
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void removeObserver(LifecycleObserver lifecycleObserver) {
        enforceMainThreadIfNeeded("removeObserver");
        this.mObserverMap.remove(lifecycleObserver);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0052, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00f1, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x016c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sync() {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.LifecycleRegistry.sync():void");
    }
}
