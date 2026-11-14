package androidx.arch.core.executor;

import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ArchTaskExecutor extends TaskExecutor {
    public static volatile ArchTaskExecutor sInstance;
    public final DefaultTaskExecutor mDelegate = new DefaultTaskExecutor();

    static {
        new Executor() { // from class: androidx.arch.core.executor.ArchTaskExecutor.1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                DefaultTaskExecutor defaultTaskExecutor = ArchTaskExecutor.getInstance().mDelegate;
                if (defaultTaskExecutor.mMainHandler == null) {
                    synchronized (defaultTaskExecutor.mLock) {
                        if (defaultTaskExecutor.mMainHandler == null) {
                            defaultTaskExecutor.mMainHandler = DefaultTaskExecutor.createAsync(Looper.getMainLooper());
                        }
                    }
                }
                defaultTaskExecutor.mMainHandler.post(runnable);
            }
        };
        new Executor() { // from class: androidx.arch.core.executor.ArchTaskExecutor.2
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                ArchTaskExecutor.getInstance().executeOnDiskIO(runnable);
            }
        };
    }

    private ArchTaskExecutor() {
    }

    public static ArchTaskExecutor getInstance() {
        if (sInstance != null) {
            return sInstance;
        }
        synchronized (ArchTaskExecutor.class) {
            if (sInstance == null) {
                sInstance = new ArchTaskExecutor();
            }
        }
        return sInstance;
    }

    public final void executeOnDiskIO(Runnable runnable) {
        this.mDelegate.executeOnDiskIO(runnable);
    }
}
