package androidx.fragment.app;

import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.ControlsHolder;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class BackStackRecord extends FragmentTransaction implements FragmentManager.OpGenerator {
    public boolean mCommitted;
    public int mIndex;
    public final FragmentManager mManager;

    public BackStackRecord(FragmentManager fragmentManager) {
        fragmentManager.getFragmentFactory();
        FragmentHostCallback fragmentHostCallback = fragmentManager.mHost;
        if (fragmentHostCallback != null) {
            fragmentHostCallback.mContext.getClassLoader();
        }
        this.mOps = new ArrayList();
        this.mAllowAddToBackStack = true;
        this.mReorderingAllowed = false;
        this.mIndex = -1;
        this.mManager = fragmentManager;
    }

    public final void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManager.isLoggingEnabled(2)) {
                toString();
            }
            ArrayList arrayList = this.mOps;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(i2);
                Fragment fragment = op.mFragment;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(op.mFragment);
                        int i3 = op.mFragment.mBackStackNesting;
                    }
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final int commit() {
        return commitInternal(false);
    }

    public final int commitInternal(boolean z) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            toString();
            PrintWriter printWriter = new PrintWriter(new LogWriter());
            dump("  ", printWriter, true);
            printWriter.close();
        }
        this.mCommitted = true;
        boolean z2 = this.mAddToBackStack;
        FragmentManager fragmentManager = this.mManager;
        this.mIndex = z2 ? fragmentManager.mBackStackIndex.getAndIncrement() : -1;
        fragmentManager.enqueueAction(this, z);
        return this.mIndex;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void commitNowAllowingStateLoss() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        this.mManager.execSingleAction(this, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void detach(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            super.detach(fragment);
            return;
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void doAddOp(int i, Fragment fragment, String str) {
        super.doAddOp(i, fragment, str);
        fragment.mFragmentManager = this.mManager;
    }

    public final void dump(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        ArrayList arrayList = this.mOps;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(i);
            switch (op.mCmd) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + op.mCmd;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(op.mFragment);
            if (z) {
                if (op.mEnterAnim != 0 || op.mExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(op.mEnterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(op.mExitAnim));
                }
                if (op.mPopEnterAnim != 0 || op.mPopExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(op.mPopEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(op.mPopExitAnim));
                }
            }
        }
    }

    public final void executeOps() {
        ArrayList arrayList = this.mOps;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(i);
            Fragment fragment = op.mFragment;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.mTransition);
                fragment.setSharedElementNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames);
            }
            int i2 = op.mCmd;
            FragmentManager fragmentManager = this.mManager;
            switch (i2) {
                case 1:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.setExitAnimationOrder(fragment, false);
                    fragmentManager.addFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.mCmd);
                case 3:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.removeFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.getClass();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(fragment);
                    }
                    if (fragment.mHidden) {
                        break;
                    } else {
                        fragment.mHidden = true;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        fragmentManager.setVisibleRemovingFragment(fragment);
                        break;
                    }
                case 5:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.setExitAnimationOrder(fragment, false);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(fragment);
                    }
                    if (fragment.mHidden) {
                        fragment.mHidden = false;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.detachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.setExitAnimationOrder(fragment, false);
                    fragmentManager.attachFragment(fragment);
                    break;
                case 8:
                    fragmentManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 9:
                    fragmentManager.setPrimaryNavigationFragment(null);
                    break;
                case 10:
                    fragmentManager.setMaxLifecycle(fragment, op.mCurrentMaxState);
                    break;
            }
        }
    }

    public final void executePopOps() {
        ArrayList arrayList = this.mOps;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(size);
            Fragment fragment = op.mFragment;
            if (fragment != null) {
                fragment.setPopDirection(true);
                int i = this.mTransition;
                fragment.setNextTransition(i != 4097 ? i != 4099 ? i != 8194 ? 0 : 4097 : 4099 : 8194);
                fragment.setSharedElementNames(this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
            int i2 = op.mCmd;
            FragmentManager fragmentManager = this.mManager;
            switch (i2) {
                case 1:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.setExitAnimationOrder(fragment, true);
                    fragmentManager.removeFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.mCmd);
                case 3:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.addFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.getClass();
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(fragment);
                    }
                    if (fragment.mHidden) {
                        fragment.mHidden = false;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.setExitAnimationOrder(fragment, true);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Objects.toString(fragment);
                    }
                    if (fragment.mHidden) {
                        break;
                    } else {
                        fragment.mHidden = true;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        fragmentManager.setVisibleRemovingFragment(fragment);
                        break;
                    }
                case 6:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.attachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(op.mEnterAnim, op.mExitAnim, op.mPopEnterAnim, op.mPopExitAnim);
                    fragmentManager.setExitAnimationOrder(fragment, true);
                    fragmentManager.detachFragment(fragment);
                    break;
                case 8:
                    fragmentManager.setPrimaryNavigationFragment(null);
                    break;
                case 9:
                    fragmentManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 10:
                    fragmentManager.setMaxLifecycle(fragment, op.mOldMaxState);
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public final boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            toString();
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.mAddToBackStack) {
            return true;
        }
        FragmentManager fragmentManager = this.mManager;
        if (fragmentManager.mBackStack == null) {
            fragmentManager.mBackStack = new ArrayList();
        }
        fragmentManager.mBackStack.add(this);
        return true;
    }

    public final void hide(ControlsHolder controlsHolder) {
        FragmentManager fragmentManager = controlsHolder.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            addOp(new FragmentTransaction.Op(controlsHolder, 4));
            return;
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + controlsHolder.toString() + " is already attached to a FragmentManager.");
    }

    public final void remove(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            addOp(new FragmentTransaction.Op(fragment, 3));
            return;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        FragmentManager fragmentManager2 = this.mManager;
        if (fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + fragmentManager2);
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
        }
        if (state != Lifecycle.State.DESTROYED) {
            super.setMaxLifecycle(fragment, state);
            return;
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    public final void show(ControlsHolder controlsHolder) {
        FragmentManager fragmentManager = controlsHolder.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            addOp(new FragmentTransaction.Op(controlsHolder, 5));
            return;
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + controlsHolder.toString() + " is already attached to a FragmentManager.");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }
}
