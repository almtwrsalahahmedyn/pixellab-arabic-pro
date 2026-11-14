package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class ViewModel {
    public final HashMap mBagOfTags = new HashMap();
    public volatile boolean mCleared = false;

    public void onCleared() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, androidx.lifecycle.SavedStateHandleController] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5 */
    public final void setTagIfAbsent(SavedStateHandleController savedStateHandleController) {
        Object obj;
        synchronized (this.mBagOfTags) {
            obj = this.mBagOfTags.get("androidx.lifecycle.savedstate.vm.tag");
            if (obj == null) {
                this.mBagOfTags.put("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
            }
        }
        if (obj != null) {
            savedStateHandleController = obj;
        }
        if (this.mCleared && (savedStateHandleController instanceof Closeable)) {
            try {
                ((Closeable) savedStateHandleController).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
