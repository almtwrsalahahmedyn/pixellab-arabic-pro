package androidx.appcompat.widget;

import android.content.ClipData;
import android.content.ClipDescription;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputContentInfo;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.InputConnectionCompat$OnCommitContentListener;
import androidx.core.view.inputmethod.InputContentInfoCompat;

/* loaded from: classes.dex */
public final class AppCompatReceiveContentHelper$1 implements InputConnectionCompat$OnCommitContentListener {
    public final /* synthetic */ View val$view;

    public AppCompatReceiveContentHelper$1(View view) {
        this.val$view = view;
    }

    public final boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 25 && (i & 1) != 0) {
            try {
                inputContentInfoCompat.mImpl.requestPermission();
                InputContentInfo inputContentInfo = (InputContentInfo) inputContentInfoCompat.mImpl.getInputContentInfo();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo);
            } catch (Exception unused) {
                return false;
            }
        }
        ClipDescription description = inputContentInfoCompat.mImpl.getDescription();
        InputContentInfoCompat.InputContentInfoCompatImpl inputContentInfoCompatImpl = inputContentInfoCompat.mImpl;
        ContentInfoCompat.Builder builder = new ContentInfoCompat.Builder(new ClipData(description, new ClipData.Item(inputContentInfoCompatImpl.getContentUri())), 2);
        builder.mLinkUri = inputContentInfoCompatImpl.getLinkUri();
        builder.mExtras = bundle;
        return ViewCompat.performReceiveContent(this.val$view, new ContentInfoCompat(builder)) == null;
    }
}
