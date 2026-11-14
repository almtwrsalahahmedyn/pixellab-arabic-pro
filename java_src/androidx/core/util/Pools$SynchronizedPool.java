package androidx.core.util;

/* loaded from: classes.dex */
public final class Pools$SynchronizedPool extends Pools$SimplePool {
    public final Object mLock;

    public Pools$SynchronizedPool() {
        super(12);
        this.mLock = new Object();
    }

    @Override // androidx.core.util.Pools$SimplePool
    public final Object acquire() {
        Object acquire;
        synchronized (this.mLock) {
            acquire = super.acquire();
        }
        return acquire;
    }

    @Override // androidx.core.util.Pools$SimplePool
    public final boolean release(Object obj) {
        boolean release;
        synchronized (this.mLock) {
            release = super.release(obj);
        }
        return release;
    }
}
