package com.arasthel.asyncjob;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public final class AsyncJob {
    public static final Handler uiHandler = new Handler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    public interface OnBackgroundJob {
        void doOnBackground();
    }

    /* loaded from: classes.dex */
    public interface OnMainThreadJob {
        void doInUIThread();
    }

    public static void doInBackground(final OnBackgroundJob onBackgroundJob) {
        new Thread(new Runnable() { // from class: com.arasthel.asyncjob.AsyncJob.2
            @Override // java.lang.Runnable
            public final void run() {
                OnBackgroundJob.this.doOnBackground();
            }
        }).start();
    }

    public static void doOnMainThread(final OnMainThreadJob onMainThreadJob) {
        uiHandler.post(new Runnable() { // from class: com.arasthel.asyncjob.AsyncJob.1
            @Override // java.lang.Runnable
            public final void run() {
                OnMainThreadJob.this.doInUIThread();
            }
        });
    }
}
