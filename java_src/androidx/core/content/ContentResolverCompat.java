package androidx.core.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.OperationCanceledException;
import androidx.core.os.CancellationSignal;

/* loaded from: classes.dex */
public final class ContentResolverCompat {
    private ContentResolverCompat() {
    }

    public static Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        android.os.CancellationSignal cancellationSignal2;
        if (cancellationSignal != null) {
            try {
                synchronized (cancellationSignal) {
                    if (cancellationSignal.mCancellationSignalObj == null) {
                        android.os.CancellationSignal cancellationSignal3 = new android.os.CancellationSignal();
                        cancellationSignal.mCancellationSignalObj = cancellationSignal3;
                        if (cancellationSignal.mIsCanceled) {
                            cancellationSignal3.cancel();
                        }
                    }
                    cancellationSignal2 = cancellationSignal.mCancellationSignalObj;
                }
            } catch (Exception e) {
                if (e instanceof OperationCanceledException) {
                    throw new androidx.core.os.OperationCanceledException();
                }
                throw e;
            }
        } else {
            cancellationSignal2 = null;
        }
        return contentResolver.query(uri, strArr, str, strArr2, str2, cancellationSignal2);
    }
}
