package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontRequestWorker;

/* loaded from: classes.dex */
public final class CallbackWithHandler {
    public final FontsContractCompat$FontRequestCallback mCallback;
    public final Handler mCallbackHandler;

    public CallbackWithHandler(TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter, Handler handler) {
        this.mCallback = resourcesCallbackAdapter;
        this.mCallbackHandler = handler;
    }

    public final void onTypefaceResult(FontRequestWorker.TypefaceResult typefaceResult) {
        final int i = typefaceResult.mResult;
        boolean z = i == 0;
        Handler handler = this.mCallbackHandler;
        final FontsContractCompat$FontRequestCallback fontsContractCompat$FontRequestCallback = this.mCallback;
        if (!z) {
            handler.post(new Runnable() { // from class: androidx.core.provider.CallbackWithHandler.2
                @Override // java.lang.Runnable
                public final void run() {
                    FontsContractCompat$FontRequestCallback.this.onTypefaceRequestFailed(i);
                }
            });
        } else {
            final Typeface typeface = typefaceResult.mTypeface;
            handler.post(new Runnable() { // from class: androidx.core.provider.CallbackWithHandler.1
                @Override // java.lang.Runnable
                public final void run() {
                    FontsContractCompat$FontRequestCallback.this.onTypefaceRetrieved(typeface);
                }
            });
        }
    }
}
