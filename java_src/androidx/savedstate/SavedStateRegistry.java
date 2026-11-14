package androidx.savedstate;

import android.os.Bundle;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.SavedStateHandleController;
import androidx.savedstate.Recreator;

/* loaded from: classes.dex */
public final class SavedStateRegistry {
    public Recreator.SavedStateProvider mRecreatorProvider;
    public boolean mRestored;
    public Bundle mRestoredState;
    public final SafeIterableMap mComponents = new SafeIterableMap();
    public boolean mAllowingSavingState = true;

    /* loaded from: classes.dex */
    public interface AutoRecreated {
    }

    /* loaded from: classes.dex */
    public interface SavedStateProvider {
        Bundle saveState();
    }

    public final Bundle consumeRestoredStateForKey(String str) {
        if (!this.mRestored) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.mRestoredState;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        this.mRestoredState.remove(str);
        if (this.mRestoredState.isEmpty()) {
            this.mRestoredState = null;
        }
        return bundle2;
    }

    public final void performRestore(Lifecycle lifecycle, Bundle bundle) {
        if (this.mRestored) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            this.mRestoredState = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        lifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.savedstate.SavedStateRegistry.1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                boolean z;
                if (event == Lifecycle.Event.ON_START) {
                    z = true;
                } else if (event != Lifecycle.Event.ON_STOP) {
                    return;
                } else {
                    z = false;
                }
                SavedStateRegistry.this.mAllowingSavingState = z;
            }
        });
        this.mRestored = true;
    }

    public final void registerSavedStateProvider(String str, SavedStateProvider savedStateProvider) {
        Object obj;
        SafeIterableMap safeIterableMap = this.mComponents;
        SafeIterableMap.Entry entry = safeIterableMap.get(str);
        if (entry != null) {
            obj = entry.mValue;
        } else {
            SafeIterableMap.Entry entry2 = new SafeIterableMap.Entry(str, savedStateProvider);
            safeIterableMap.mSize++;
            SafeIterableMap.Entry entry3 = safeIterableMap.mEnd;
            if (entry3 == null) {
                safeIterableMap.mStart = entry2;
            } else {
                entry3.mNext = entry2;
                entry2.mPrevious = entry3;
            }
            safeIterableMap.mEnd = entry2;
            obj = null;
        }
        if (((SavedStateProvider) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public final void runOnNextRecreation() {
        if (!this.mAllowingSavingState) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.mRecreatorProvider == null) {
            this.mRecreatorProvider = new Recreator.SavedStateProvider(this);
        }
        try {
            SavedStateHandleController.OnRecreation.class.getDeclaredConstructor(new Class[0]);
            this.mRecreatorProvider.mClasses.add(SavedStateHandleController.OnRecreation.class.getName());
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class" + SavedStateHandleController.OnRecreation.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }
}
