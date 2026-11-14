package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class SavedStateHandleController implements LifecycleEventObserver {
    public final SavedStateHandle mHandle;
    public boolean mIsAttached = false;
    public final String mKey;

    /* loaded from: classes.dex */
    public final class OnRecreation implements SavedStateRegistry.AutoRecreated {
        public final void onRecreated(SavedStateRegistryOwner savedStateRegistryOwner) {
            if (!(savedStateRegistryOwner instanceof ViewModelStoreOwner)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
            }
            ViewModelStore viewModelStore = ((ViewModelStoreOwner) savedStateRegistryOwner).getViewModelStore();
            SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
            Iterator it = viewModelStore.keys().iterator();
            while (it.hasNext()) {
                SavedStateHandleController.attachHandleIfNeeded(viewModelStore.get((String) it.next()), savedStateRegistry, savedStateRegistryOwner.getLifecycle());
            }
            if (viewModelStore.keys().isEmpty()) {
                return;
            }
            savedStateRegistry.runOnNextRecreation();
        }
    }

    public SavedStateHandleController(String str, SavedStateHandle savedStateHandle) {
        this.mKey = str;
        this.mHandle = savedStateHandle;
    }

    public static void attachHandleIfNeeded(ViewModel viewModel, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        Object obj;
        boolean z;
        HashMap hashMap = viewModel.mBagOfTags;
        if (hashMap == null) {
            obj = null;
        } else {
            synchronized (hashMap) {
                obj = viewModel.mBagOfTags.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController == null || (z = savedStateHandleController.mIsAttached)) {
            return;
        }
        if (z) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        savedStateHandleController.mIsAttached = true;
        lifecycle.addObserver(savedStateHandleController);
        savedStateRegistry.registerSavedStateProvider(savedStateHandleController.mKey, savedStateHandleController.mHandle.mSavedStateProvider);
        tryToAddRecreator(lifecycle, savedStateRegistry);
    }

    public static void tryToAddRecreator(final Lifecycle lifecycle, final SavedStateRegistry savedStateRegistry) {
        Lifecycle.State currentState = lifecycle.getCurrentState();
        if (currentState == Lifecycle.State.INITIALIZED || currentState.isAtLeast(Lifecycle.State.STARTED)) {
            savedStateRegistry.runOnNextRecreation();
        } else {
            lifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        Lifecycle.this.removeObserver(this);
                        savedStateRegistry.runOnNextRecreation();
                    }
                }
            });
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.mIsAttached = false;
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }
}
