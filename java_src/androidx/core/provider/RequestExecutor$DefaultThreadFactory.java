package androidx.core.provider;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class RequestExecutor$DefaultThreadFactory implements ThreadFactory {
    public int mPriority;
    public String mThreadName;

    /* loaded from: classes.dex */
    public final class ProcessPriorityThread extends Thread {
        public final int mPriority;

        public ProcessPriorityThread(Runnable runnable, String str, int i) {
            super(runnable, str);
            this.mPriority = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(this.mPriority);
            super.run();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new ProcessPriorityThread(runnable, this.mThreadName, this.mPriority);
    }
}
