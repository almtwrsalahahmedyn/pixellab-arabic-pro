package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.ViewModelProvider;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class SavedStateViewModelFactory extends ViewModelProvider.KeyedFactory {
    public static final Class[] ANDROID_VIEWMODEL_SIGNATURE = {Application.class, SavedStateHandle.class};
    public static final Class[] VIEWMODEL_SIGNATURE = {SavedStateHandle.class};
    public final Application mApplication;
    public final Bundle mDefaultArgs;
    public final ViewModelProvider.NewInstanceFactory mFactory;
    public final Lifecycle mLifecycle;
    public final SavedStateRegistry mSavedStateRegistry;

    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner savedStateRegistryOwner, Bundle bundle) {
        this.mSavedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
        this.mLifecycle = savedStateRegistryOwner.getLifecycle();
        this.mDefaultArgs = bundle;
        this.mApplication = application;
        this.mFactory = application != null ? ViewModelProvider.AndroidViewModelFactory.getInstance(application) : ViewModelProvider.NewInstanceFactory.getInstance();
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory, androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel create(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return create(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory
    public final ViewModel create(Class cls, String str) {
        SavedStateHandle savedStateHandle;
        boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(cls);
        Constructor<?> constructor = null;
        Application application = this.mApplication;
        if (!isAssignableFrom || application == null) {
            Class[] clsArr = VIEWMODEL_SIGNATURE;
            for (Constructor<?> constructor2 : cls.getConstructors()) {
                if (Arrays.equals(clsArr, constructor2.getParameterTypes())) {
                    constructor = constructor2;
                    break;
                }
            }
        } else {
            Class[] clsArr2 = ANDROID_VIEWMODEL_SIGNATURE;
            for (Constructor<?> constructor22 : cls.getConstructors()) {
                if (Arrays.equals(clsArr2, constructor22.getParameterTypes())) {
                    constructor = constructor22;
                    break;
                }
            }
        }
        if (constructor == null) {
            return this.mFactory.create(cls);
        }
        SavedStateRegistry savedStateRegistry = this.mSavedStateRegistry;
        Bundle consumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey(str);
        Class[] clsArr3 = SavedStateHandle.ACCEPTABLE_CLASSES;
        Bundle bundle = this.mDefaultArgs;
        if (consumeRestoredStateForKey == null && bundle == null) {
            savedStateHandle = new SavedStateHandle();
        } else {
            HashMap hashMap = new HashMap();
            if (bundle != null) {
                for (String str2 : bundle.keySet()) {
                    hashMap.put(str2, bundle.get(str2));
                }
            }
            if (consumeRestoredStateForKey == null) {
                savedStateHandle = new SavedStateHandle(hashMap);
            } else {
                ArrayList parcelableArrayList = consumeRestoredStateForKey.getParcelableArrayList("keys");
                ArrayList parcelableArrayList2 = consumeRestoredStateForKey.getParcelableArrayList("values");
                if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
                    throw new IllegalStateException("Invalid bundle passed as restored state");
                }
                for (int i = 0; i < parcelableArrayList.size(); i++) {
                    hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
                }
                savedStateHandle = new SavedStateHandle(hashMap);
            }
        }
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, savedStateHandle);
        savedStateHandleController.mIsAttached = true;
        Lifecycle lifecycle = this.mLifecycle;
        lifecycle.addObserver(savedStateHandleController);
        savedStateRegistry.registerSavedStateProvider(str, savedStateHandle.mSavedStateProvider);
        SavedStateHandleController.tryToAddRecreator(lifecycle, savedStateRegistry);
        try {
            ViewModel viewModel = (ViewModel) ((!isAssignableFrom || application == null) ? constructor.newInstance(savedStateHandle) : constructor.newInstance(application, savedStateHandle));
            viewModel.setTagIfAbsent(savedStateHandleController);
            return viewModel;
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Failed to access " + cls, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e3.getCause());
        }
    }

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    public final void onRequery(ViewModel viewModel) {
        SavedStateHandleController.attachHandleIfNeeded(viewModel, this.mSavedStateRegistry, this.mLifecycle);
    }
}
