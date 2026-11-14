package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;

/* loaded from: classes.dex */
public final class CompositeGeneratedAdaptersObserver implements LifecycleEventObserver {
    public final GeneratedAdapter[] mGeneratedAdapters;

    public CompositeGeneratedAdaptersObserver(GeneratedAdapter[] generatedAdapterArr) {
        this.mGeneratedAdapters = generatedAdapterArr;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        new MethodCallsLogger();
        GeneratedAdapter[] generatedAdapterArr = this.mGeneratedAdapters;
        if (generatedAdapterArr.length > 0) {
            GeneratedAdapter generatedAdapter = generatedAdapterArr[0];
            throw null;
        }
        if (generatedAdapterArr.length <= 0) {
            return;
        }
        GeneratedAdapter generatedAdapter2 = generatedAdapterArr[0];
        throw null;
    }
}
