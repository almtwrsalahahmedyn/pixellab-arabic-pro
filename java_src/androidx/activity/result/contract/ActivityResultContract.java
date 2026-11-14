package androidx.activity.result.contract;

import android.content.Intent;
import androidx.activity.ComponentActivity;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ActivityResultContract {

    /* loaded from: classes.dex */
    public final class SynchronousResult {
        public final Object mValue;

        public SynchronousResult(Map map) {
            this.mValue = map;
        }
    }

    public abstract Intent createIntent(Object obj);

    public SynchronousResult getSynchronousResult(ComponentActivity componentActivity, Object obj) {
        return null;
    }

    public abstract Object parseResult(Intent intent, int i);
}
