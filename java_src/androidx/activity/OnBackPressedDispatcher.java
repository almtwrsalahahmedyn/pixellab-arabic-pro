package androidx.activity;

import androidx.activity.ComponentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayDeque;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    public final Runnable mFallbackOnBackPressed;
    public final ArrayDeque mOnBackPressedCallbacks;

    /* loaded from: classes.dex */
    public final class LifecycleOnBackPressedCancellable implements LifecycleEventObserver, Cancellable {
        public OnBackPressedCancellable mCurrentCancellable;
        public final Lifecycle mLifecycle;
        public final OnBackPressedCallback mOnBackPressedCallback;

        public LifecycleOnBackPressedCancellable(Lifecycle lifecycle, FragmentManager.AnonymousClass1 anonymousClass1) {
            this.mLifecycle = lifecycle;
            this.mOnBackPressedCallback = anonymousClass1;
            lifecycle.addObserver(this);
        }

        @Override // androidx.activity.Cancellable
        public final void cancel() {
            this.mLifecycle.removeObserver(this);
            this.mOnBackPressedCallback.mCancellables.remove(this);
            OnBackPressedCancellable onBackPressedCancellable = this.mCurrentCancellable;
            if (onBackPressedCancellable != null) {
                onBackPressedCancellable.cancel();
                this.mCurrentCancellable = null;
            }
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                ArrayDeque arrayDeque = onBackPressedDispatcher.mOnBackPressedCallbacks;
                OnBackPressedCallback onBackPressedCallback = this.mOnBackPressedCallback;
                arrayDeque.add(onBackPressedCallback);
                OnBackPressedCancellable onBackPressedCancellable = new OnBackPressedCancellable(onBackPressedCallback);
                onBackPressedCallback.mCancellables.add(onBackPressedCancellable);
                this.mCurrentCancellable = onBackPressedCancellable;
                return;
            }
            if (event != Lifecycle.Event.ON_STOP) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    cancel();
                }
            } else {
                OnBackPressedCancellable onBackPressedCancellable2 = this.mCurrentCancellable;
                if (onBackPressedCancellable2 != null) {
                    onBackPressedCancellable2.cancel();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class OnBackPressedCancellable implements Cancellable {
        public final OnBackPressedCallback mOnBackPressedCallback;

        public OnBackPressedCancellable(OnBackPressedCallback onBackPressedCallback) {
            this.mOnBackPressedCallback = onBackPressedCallback;
        }

        @Override // androidx.activity.Cancellable
        public final void cancel() {
            ArrayDeque arrayDeque = OnBackPressedDispatcher.this.mOnBackPressedCallbacks;
            OnBackPressedCallback onBackPressedCallback = this.mOnBackPressedCallback;
            arrayDeque.remove(onBackPressedCallback);
            onBackPressedCallback.mCancellables.remove(this);
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    public OnBackPressedDispatcher(ComponentActivity.AnonymousClass1 anonymousClass1) {
        this.mOnBackPressedCallbacks = new ArrayDeque();
        this.mFallbackOnBackPressed = anonymousClass1;
    }

    public final void onBackPressed() {
        Iterator descendingIterator = this.mOnBackPressedCallbacks.descendingIterator();
        while (descendingIterator.hasNext()) {
            OnBackPressedCallback onBackPressedCallback = (OnBackPressedCallback) descendingIterator.next();
            if (onBackPressedCallback.mEnabled) {
                FragmentManager fragmentManager = FragmentManager.this;
                fragmentManager.execPendingActions(true);
                if (fragmentManager.mOnBackPressedCallback.mEnabled) {
                    fragmentManager.popBackStackImmediate();
                    return;
                } else {
                    fragmentManager.mOnBackPressedDispatcher.onBackPressed();
                    return;
                }
            }
        }
        Runnable runnable = this.mFallbackOnBackPressed;
        if (runnable != null) {
            runnable.run();
        }
    }
}
