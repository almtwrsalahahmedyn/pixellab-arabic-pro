package androidx.core.app;

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class TaskStackBuilder implements Iterable {
    public final ArrayList mIntents = new ArrayList();
    public final Context mSourceContext;

    /* loaded from: classes.dex */
    public interface SupportParentable {
        Intent getSupportParentActivityIntent();
    }

    public TaskStackBuilder(Context context) {
        this.mSourceContext = context;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.mIntents.iterator();
    }
}
