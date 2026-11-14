package androidx.activity;

import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class OnBackPressedCallback {
    public CopyOnWriteArrayList mCancellables;
    public boolean mEnabled;
}
