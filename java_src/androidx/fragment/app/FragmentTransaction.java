package androidx.fragment.app;

import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class FragmentTransaction {
    public boolean mAddToBackStack;
    public int mBreadCrumbShortTitleRes;
    public CharSequence mBreadCrumbShortTitleText;
    public int mBreadCrumbTitleRes;
    public CharSequence mBreadCrumbTitleText;
    public int mEnterAnim;
    public int mExitAnim;
    public String mName;
    public int mPopEnterAnim;
    public int mPopExitAnim;
    public ArrayList mSharedElementSourceNames;
    public ArrayList mSharedElementTargetNames;
    public int mTransition;
    public ArrayList mOps = new ArrayList();
    public boolean mAllowAddToBackStack = true;
    public boolean mReorderingAllowed = false;

    /* loaded from: classes.dex */
    public final class Op {
        public int mCmd;
        public Lifecycle.State mCurrentMaxState;
        public int mEnterAnim;
        public int mExitAnim;
        public Fragment mFragment;
        public Lifecycle.State mOldMaxState;
        public int mPopEnterAnim;
        public int mPopExitAnim;

        public Op() {
        }

        public Op(Fragment fragment, int i) {
            this.mCmd = i;
            this.mFragment = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.mOldMaxState = state;
            this.mCurrentMaxState = state;
        }
    }

    public final void addOp(Op op) {
        this.mOps.add(op);
        op.mEnterAnim = this.mEnterAnim;
        op.mExitAnim = this.mExitAnim;
        op.mPopEnterAnim = this.mPopEnterAnim;
        op.mPopExitAnim = this.mPopExitAnim;
    }

    public abstract int commit();

    public abstract void commitNowAllowingStateLoss();

    public void detach(Fragment fragment) {
        addOp(new Op(fragment, 6));
    }

    public void doAddOp(int i, Fragment fragment, String str) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i2 = fragment.mFragmentId;
            if (i2 != 0 && i2 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        addOp(new Op(fragment, 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.fragment.app.FragmentTransaction$Op, java.lang.Object] */
    public void setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        ?? obj = new Object();
        obj.mCmd = 10;
        obj.mFragment = fragment;
        obj.mOldMaxState = fragment.mMaxState;
        obj.mCurrentMaxState = state;
        addOp(obj);
    }
}
