package androidx.lifecycle;

import android.os.Looper;
import android.view.View;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class LiveData {
    public static final Object NOT_SET = new Object();
    public boolean mChangingActiveState;
    public volatile Object mData;
    public boolean mDispatchInvalidated;
    public boolean mDispatchingValue;
    public volatile Object mPendingData;
    public int mVersion;
    public final Object mDataLock = new Object();
    public final SafeIterableMap mObservers = new SafeIterableMap();
    public int mActiveCount = 0;

    /* loaded from: classes.dex */
    public final class AlwaysActiveObserver extends ObserverWrapper {
    }

    /* loaded from: classes.dex */
    public abstract class ObserverWrapper {
        public boolean mActive;
        public int mLastVersion = -1;
        public final Observer mObserver;

        public ObserverWrapper(Observer observer) {
            this.mObserver = observer;
        }

        public final void activeStateChanged(boolean z) {
            if (z == this.mActive) {
                return;
            }
            this.mActive = z;
            int i = z ? 1 : -1;
            LiveData liveData = LiveData.this;
            int i2 = liveData.mActiveCount;
            liveData.mActiveCount = i + i2;
            if (!liveData.mChangingActiveState) {
                liveData.mChangingActiveState = true;
                while (true) {
                    try {
                        int i3 = liveData.mActiveCount;
                        if (i2 == i3) {
                            break;
                        } else {
                            i2 = i3;
                        }
                    } finally {
                        liveData.mChangingActiveState = false;
                    }
                }
            }
            if (this.mActive) {
                liveData.dispatchingValue(this);
            }
        }
    }

    public LiveData() {
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mData = obj;
        this.mVersion = -1;
    }

    public static void assertMainThread(String str) {
        ArchTaskExecutor.getInstance().mDelegate.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    public final void considerNotify(ObserverWrapper observerWrapper) {
        boolean z;
        if (observerWrapper.mActive) {
            int i = observerWrapper.mLastVersion;
            int i2 = this.mVersion;
            if (i >= i2) {
                return;
            }
            observerWrapper.mLastVersion = i2;
            Observer observer = observerWrapper.mObserver;
            Object obj = this.mData;
            DialogFragment.AnonymousClass4 anonymousClass4 = (DialogFragment.AnonymousClass4) observer;
            anonymousClass4.getClass();
            if (((LifecycleOwner) obj) != null) {
                DialogFragment dialogFragment = DialogFragment.this;
                z = dialogFragment.mShowsDialog;
                if (z) {
                    View requireView = dialogFragment.requireView();
                    if (requireView.getParent() != null) {
                        throw new IllegalStateException("DialogFragment can not be attached to a container view");
                    }
                    if (dialogFragment.mDialog != null) {
                        if (FragmentManager.isLoggingEnabled(3)) {
                            anonymousClass4.toString();
                            Objects.toString(dialogFragment.mDialog);
                        }
                        dialogFragment.mDialog.setContentView(requireView);
                    }
                }
            }
        }
    }

    public final void dispatchingValue(ObserverWrapper observerWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (observerWrapper != null) {
                considerNotify(observerWrapper);
                observerWrapper = null;
            } else {
                SafeIterableMap safeIterableMap = this.mObservers;
                safeIterableMap.getClass();
                SafeIterableMap.IteratorWithAdditions iteratorWithAdditions = new SafeIterableMap.IteratorWithAdditions();
                safeIterableMap.mIterators.put(iteratorWithAdditions, Boolean.FALSE);
                while (iteratorWithAdditions.hasNext()) {
                    considerNotify((ObserverWrapper) ((Map.Entry) iteratorWithAdditions.next()).getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }
}
