package androidx.loader.app;

import androidx.collection.SparseArrayCompat;
import androidx.fragment.app.Fragment$$ExternalSyntheticOutline0;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public final class LoaderManagerImpl extends LoaderManager {
    public final LifecycleOwner mLifecycleOwner;
    public final LoaderViewModel mLoaderViewModel;

    /* loaded from: classes.dex */
    public final class LoaderViewModel extends ViewModel {
        public static final AnonymousClass1 FACTORY = new ViewModelProvider.Factory() { // from class: androidx.loader.app.LoaderManagerImpl.LoaderViewModel.1
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public final ViewModel create(Class cls) {
                return new LoaderViewModel();
            }
        };
        public final SparseArrayCompat mLoaders = new SparseArrayCompat();

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            SparseArrayCompat sparseArrayCompat = this.mLoaders;
            int i = sparseArrayCompat.mSize;
            if (i > 0) {
                Fragment$$ExternalSyntheticOutline0.m(sparseArrayCompat.mValues[0]);
                throw null;
            }
            Object[] objArr = sparseArrayCompat.mValues;
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = null;
            }
            sparseArrayCompat.mSize = 0;
        }
    }

    public LoaderManagerImpl(LifecycleOwner lifecycleOwner, ViewModelStore viewModelStore) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mLoaderViewModel = (LoaderViewModel) new ViewModelProvider(viewModelStore, LoaderViewModel.FACTORY).get(LoaderViewModel.class);
    }

    public final void dump(String str, PrintWriter printWriter) {
        SparseArrayCompat sparseArrayCompat = this.mLoaderViewModel.mLoaders;
        if (sparseArrayCompat.mSize > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (sparseArrayCompat.mSize <= 0) {
                return;
            }
            Fragment$$ExternalSyntheticOutline0.m(sparseArrayCompat.mValues[0]);
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(sparseArrayCompat.mKeys[0]);
            printWriter.print(": ");
            throw null;
        }
    }

    public final String toString() {
        String hexString;
        int lastIndexOf;
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
        if (lifecycleOwner == null) {
            hexString = "null";
        } else {
            String simpleName = lifecycleOwner.getClass().getSimpleName();
            if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = lifecycleOwner.getClass().getName()).lastIndexOf(46)) > 0) {
                simpleName = simpleName.substring(lastIndexOf + 1);
            }
            sb.append(simpleName);
            sb.append('{');
            hexString = Integer.toHexString(System.identityHashCode(lifecycleOwner));
        }
        sb.append(hexString);
        sb.append("}}");
        return sb.toString();
    }
}
