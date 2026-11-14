package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class ViewModelProvider {
    public final Factory mFactory;
    public final ViewModelStore mViewModelStore;

    /* loaded from: classes.dex */
    public final class AndroidViewModelFactory extends NewInstanceFactory {
        public static AndroidViewModelFactory sInstance;
        public Application mApplication;

        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModelProvider$NewInstanceFactory, androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory] */
        public static AndroidViewModelFactory getInstance(Application application) {
            if (sInstance == null) {
                ?? newInstanceFactory = new NewInstanceFactory();
                newInstanceFactory.mApplication = application;
                sInstance = newInstanceFactory;
            }
            return sInstance;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(Class cls) {
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return super.create(cls);
            }
            try {
                return (ViewModel) cls.getConstructor(Application.class).newInstance(this.mApplication);
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface Factory {
        ViewModel create(Class cls);
    }

    /* loaded from: classes.dex */
    public abstract class KeyedFactory extends OnRequeryFactory implements Factory {
        public ViewModel create(Class cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        public abstract ViewModel create(Class cls, String str);
    }

    /* loaded from: classes.dex */
    public class NewInstanceFactory implements Factory {
        public static NewInstanceFactory sInstance;

        public static NewInstanceFactory getInstance() {
            if (sInstance == null) {
                sInstance = new NewInstanceFactory();
            }
            return sInstance;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(Class cls) {
            try {
                return (ViewModel) cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            }
        }
    }

    /* loaded from: classes.dex */
    public class OnRequeryFactory {
        public void onRequery(ViewModel viewModel) {
        }
    }

    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory) {
        this.mFactory = factory;
        this.mViewModelStore = viewModelStore;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ViewModel get(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
        ViewModelStore viewModelStore = this.mViewModelStore;
        ViewModel viewModel = viewModelStore.get(concat);
        boolean isInstance = cls.isInstance(viewModel);
        Factory factory = this.mFactory;
        if (!isInstance) {
            viewModel = factory instanceof KeyedFactory ? ((KeyedFactory) factory).create(cls, concat) : factory.create(cls);
            ViewModel viewModel2 = (ViewModel) viewModelStore.mMap.put(concat, viewModel);
            if (viewModel2 != null) {
                viewModel2.onCleared();
            }
        } else if (factory instanceof OnRequeryFactory) {
            ((OnRequeryFactory) factory).onRequery(viewModel);
        }
        return viewModel;
    }
}
