package androidx.fragment.app;

import android.content.Context;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class FragmentLifecycleCallbacksDispatcher {
    public final FragmentManager mFragmentManager;
    public final CopyOnWriteArrayList mLifecycleCallbacks = new CopyOnWriteArrayList();

    public FragmentLifecycleCallbacksDispatcher(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    public final void dispatchOnFragmentActivityCreated(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentActivityCreated(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentAttached(boolean z) {
        FragmentManager fragmentManager = this.mFragmentManager;
        Context context = fragmentManager.mHost.mContext;
        Fragment fragment = fragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentAttached(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentCreated(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentCreated(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentDestroyed(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentDestroyed(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentDetached(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentDetached(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentPaused(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPaused(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentPreAttached(boolean z) {
        FragmentManager fragmentManager = this.mFragmentManager;
        Context context = fragmentManager.mHost.mContext;
        Fragment fragment = fragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPreAttached(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentPreCreated(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPreCreated(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentResumed(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentResumed(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentSaveInstanceState(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentSaveInstanceState(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentStarted(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentStarted(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentStopped(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentStopped(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentViewCreated(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }

    public final void dispatchOnFragmentViewDestroyed(boolean z) {
        Fragment fragment = this.mFragmentManager.mParent;
        if (fragment != null) {
            fragment.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentViewDestroyed(true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            Fragment$$ExternalSyntheticOutline0.m(it.next());
            throw null;
        }
    }
}
