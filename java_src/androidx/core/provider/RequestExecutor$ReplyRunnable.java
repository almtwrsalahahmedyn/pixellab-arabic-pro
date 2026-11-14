package androidx.core.provider;

import android.os.Handler;
import androidx.core.util.Consumer;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class RequestExecutor$ReplyRunnable implements Runnable {
    public Callable mCallable;
    public Consumer mConsumer;
    public Handler mHandler;

    @Override // java.lang.Runnable
    public final void run() {
        final Object obj;
        try {
            obj = this.mCallable.call();
        } catch (Exception unused) {
            obj = null;
        }
        final Consumer consumer = this.mConsumer;
        this.mHandler.post(new Runnable() { // from class: androidx.core.provider.RequestExecutor$ReplyRunnable.1
            @Override // java.lang.Runnable
            public final void run() {
                Consumer.this.accept(obj);
            }
        });
    }
}
