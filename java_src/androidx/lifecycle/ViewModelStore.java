package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class ViewModelStore {
    public final HashMap mMap = new HashMap();

    public final void clear() {
        for (ViewModel viewModel : this.mMap.values()) {
            viewModel.mCleared = true;
            HashMap hashMap = viewModel.mBagOfTags;
            if (hashMap != null) {
                synchronized (hashMap) {
                    for (Object obj : viewModel.mBagOfTags.values()) {
                        if (obj instanceof Closeable) {
                            try {
                                ((Closeable) obj).close();
                            } catch (IOException e) {
                                throw new RuntimeException(e);
                            }
                        }
                    }
                }
            }
            viewModel.onCleared();
        }
        this.mMap.clear();
    }

    public final ViewModel get(String str) {
        return (ViewModel) this.mMap.get(str);
    }

    public final HashSet keys() {
        return new HashSet(this.mMap.keySet());
    }
}
