package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.Cancellable;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.appcompat.app.ActionBarDrawerToggle$Delegate;
import androidx.core.graphics.TypefaceCompatBaseImpl;
import androidx.core.provider.FontsContractCompat$FontInfo;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import com.tawfiq.imaginstudio.imagetools.pixellab.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class FragmentManager {
    public ArrayList mBackStack;
    public FragmentContainer mContainer;
    public ArrayList mCreatedMenus;
    public int mCurState;
    public final AnonymousClass2 mDefaultSpecialEffectsControllerFactory;
    public boolean mDestroyed;
    public final AnonymousClass5 mExecCommit;
    public boolean mExecutingActions;
    public boolean mHavePendingDeferredStart;
    public FragmentHostCallback mHost;
    public final AnonymousClass3 mHostFragmentFactory;
    public ArrayDeque mLaunchedFragments;
    public final FragmentLifecycleCallbacksDispatcher mLifecycleCallbacksDispatcher;
    public boolean mNeedMenuInvalidate;
    public FragmentManagerViewModel mNonConfig;
    public final CopyOnWriteArrayList mOnAttachListeners;
    public OnBackPressedDispatcher mOnBackPressedDispatcher;
    public Fragment mParent;
    public Fragment mPrimaryNav;
    public ActivityResultRegistry.AnonymousClass3 mRequestPermissions;
    public ActivityResultRegistry.AnonymousClass3 mStartActivityForResult;
    public ActivityResultRegistry.AnonymousClass3 mStartIntentSenderForResult;
    public boolean mStateSaved;
    public boolean mStopped;
    public ArrayList mTmpAddedFragments;
    public ArrayList mTmpIsPop;
    public ArrayList mTmpRecords;
    public final ArrayList mPendingActions = new ArrayList();
    public final FragmentStore mFragmentStore = new FragmentStore();
    public final FragmentLayoutInflaterFactory mLayoutInflaterFactory = new FragmentLayoutInflaterFactory(this);
    public final AnonymousClass1 mOnBackPressedCallback = new AnonymousClass1();
    public final AtomicInteger mBackStackIndex = new AtomicInteger();
    public final Map mResults = Collections.synchronizedMap(new HashMap());

    /* renamed from: androidx.fragment.app.FragmentManager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends OnBackPressedCallback {
        public AnonymousClass1() {
            this.mCancellables = new CopyOnWriteArrayList();
            this.mEnabled = false;
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements ActionBarDrawerToggle$Delegate, TypefaceCompatBaseImpl.StyleExtractor, SpecialEffectsControllerFactory {
        public AnonymousClass2(FragmentManager fragmentManager) {
        }

        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public int getWeight(Object obj) {
            return ((FontsContractCompat$FontInfo) obj).mWeight;
        }

        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public boolean isItalic(Object obj) {
            return ((FontsContractCompat$FontInfo) obj).mItalic;
        }
    }

    /* loaded from: classes.dex */
    public final class FragmentIntentSenderContract extends ActivityResultContract {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Intent createIntent(Object obj) {
            Bundle bundleExtra;
            IntentSenderRequest intentSenderRequest = (IntentSenderRequest) obj;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intent2 = intentSenderRequest.mFillInIntent;
            if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    IntentSenderRequest.Builder builder = new IntentSenderRequest.Builder(intentSenderRequest.mIntentSender);
                    builder.mFillInIntent = null;
                    builder.mFlagsValues = intentSenderRequest.mFlagsValues;
                    builder.mFlagsMask = intentSenderRequest.mFlagsMask;
                    intentSenderRequest = new IntentSenderRequest(builder.mIntentSender, builder.mFillInIntent, builder.mFlagsMask, builder.mFlagsValues);
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
            if (FragmentManager.isLoggingEnabled(2)) {
                intent.toString();
            }
            return intent;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Object parseResult(Intent intent, int i) {
            return new ActivityResult(intent, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new Parcelable.Creator() { // from class: androidx.fragment.app.FragmentManager.LaunchedFragmentInfo.1
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.fragment.app.FragmentManager$LaunchedFragmentInfo, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                ?? obj = new Object();
                obj.mWho = parcel.readString();
                obj.mRequestCode = parcel.readInt();
                return obj;
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        };
        public int mRequestCode;
        public String mWho;

        public LaunchedFragmentInfo(String str, int i) {
            this.mWho = str;
            this.mRequestCode = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mWho);
            parcel.writeInt(this.mRequestCode);
        }
    }

    /* loaded from: classes.dex */
    public interface OpGenerator {
        boolean generateOps(ArrayList arrayList, ArrayList arrayList2);
    }

    /* loaded from: classes.dex */
    public final class PopBackStackState implements OpGenerator {
        public final int mFlags = 1;
        public final int mId;

        public PopBackStackState(int i) {
            this.mId = i;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
            Fragment fragment = FragmentManager.this.mPrimaryNav;
            if (fragment == null || this.mId >= 0 || !fragment.getChildFragmentManager().popBackStackImmediate()) {
                return FragmentManager.this.popBackStackState(arrayList, arrayList2, null, this.mId, this.mFlags);
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public abstract class StartEnterTransitionListener implements Fragment.OnStartEnterTransitionListener {
        public int mNumPostponed;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.fragment.app.FragmentManager$3] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object, androidx.fragment.app.FragmentManager$2] */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.fragment.app.FragmentManager$5] */
    public FragmentManager() {
        Collections.synchronizedMap(new HashMap());
        Collections.synchronizedMap(new HashMap());
        new AnonymousClass2(this);
        this.mLifecycleCallbacksDispatcher = new FragmentLifecycleCallbacksDispatcher(this);
        this.mOnAttachListeners = new CopyOnWriteArrayList();
        this.mCurState = -1;
        this.mHostFragmentFactory = new FragmentFactory() { // from class: androidx.fragment.app.FragmentManager.3
            @Override // androidx.fragment.app.FragmentFactory
            public final Fragment instantiate(ClassLoader classLoader, String str) {
                FragmentHostCallback fragmentHostCallback = FragmentManager.this.mHost;
                Context context = fragmentHostCallback.mContext;
                fragmentHostCallback.getClass();
                return Fragment.instantiate(context, str, null);
            }
        };
        this.mDefaultSpecialEffectsControllerFactory = new Object();
        this.mLaunchedFragments = new ArrayDeque();
        this.mExecCommit = new Runnable() { // from class: androidx.fragment.app.FragmentManager.5
            @Override // java.lang.Runnable
            public final void run() {
                FragmentManager.this.execPendingActions(true);
            }
        };
    }

    public static boolean isLoggingEnabled(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    public static boolean isMenuAvailable(Fragment fragment) {
        boolean z;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            return true;
        }
        Iterator it = fragment.mChildFragmentManager.mFragmentStore.getActiveFragments().iterator();
        boolean z2 = false;
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Fragment fragment2 = (Fragment) it.next();
            if (fragment2 != null) {
                z2 = isMenuAvailable(fragment2);
            }
            if (z2) {
                z = true;
                break;
            }
        }
        return z;
    }

    public static boolean isPrimaryNavigation(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.mPrimaryNav) && isPrimaryNavigation(fragmentManager.mParent);
    }

    public final FragmentStateManager addFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Objects.toString(fragment);
        }
        FragmentStateManager createOrGetFragmentStateManager = createOrGetFragmentStateManager(fragment);
        fragment.mFragmentManager = this;
        FragmentStore fragmentStore = this.mFragmentStore;
        fragmentStore.makeActive(createOrGetFragmentStateManager);
        if (!fragment.mDetached) {
            fragmentStore.addFragment(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
        return createOrGetFragmentStateManager;
    }

    public final void addFragmentOnAttachListener(FragmentOnAttachListener fragmentOnAttachListener) {
        this.mOnAttachListeners.add(fragmentOnAttachListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void attachController(androidx.fragment.app.FragmentHostCallback r4, androidx.fragment.app.FragmentContainer r5, final androidx.fragment.app.Fragment r6) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.attachController(androidx.fragment.app.FragmentHostCallback, androidx.fragment.app.FragmentContainer, androidx.fragment.app.Fragment):void");
    }

    public final void attachFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.mFragmentStore.addFragment(fragment);
            if (isLoggingEnabled(2)) {
                fragment.toString();
            }
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
        }
    }

    public final void cleanupExec() {
        this.mExecutingActions = false;
        this.mTmpIsPop.clear();
        this.mTmpRecords.clear();
    }

    public final HashSet collectAllSpecialEffectsController() {
        HashSet hashSet = new HashSet();
        Iterator it = this.mFragmentStore.getActiveFragmentStateManagers().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((FragmentStateManager) it.next()).mFragment.mContainer;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.getOrCreateController(viewGroup, getSpecialEffectsControllerFactory()));
            }
        }
        return hashSet;
    }

    public final FragmentStateManager createOrGetFragmentStateManager(Fragment fragment) {
        String str = fragment.mWho;
        FragmentStore fragmentStore = this.mFragmentStore;
        FragmentStateManager fragmentStateManager = (FragmentStateManager) fragmentStore.mActive.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager;
        }
        FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, fragmentStore, fragment);
        fragmentStateManager2.restoreState(this.mHost.mContext.getClassLoader());
        fragmentStateManager2.mFragmentManagerState = this.mCurState;
        return fragmentStateManager2;
    }

    public final void detachFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (isLoggingEnabled(2)) {
                fragment.toString();
            }
            FragmentStore fragmentStore = this.mFragmentStore;
            synchronized (fragmentStore.mAdded) {
                fragmentStore.mAdded.remove(fragment);
            }
            fragment.mAdded = false;
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            setVisibleRemovingFragment(fragment);
        }
    }

    public final void dispatchConfigurationChanged(Configuration configuration) {
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public final boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.mCurState < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.mCreatedMenus != null) {
            for (int i = 0; i < this.mCreatedMenus.size(); i++) {
                Fragment fragment2 = (Fragment) this.mCreatedMenus.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = arrayList;
        return z;
    }

    public final void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions(true);
        Iterator it = collectAllSpecialEffectsController().iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).forceCompleteAllOperations();
        }
        dispatchStateChange(-1);
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
        if (this.mOnBackPressedDispatcher != null) {
            Iterator it2 = this.mOnBackPressedCallback.mCancellables.iterator();
            while (it2.hasNext()) {
                ((Cancellable) it2.next()).cancel();
            }
            this.mOnBackPressedDispatcher = null;
        }
        ActivityResultRegistry.AnonymousClass3 anonymousClass3 = this.mStartActivityForResult;
        if (anonymousClass3 != null) {
            anonymousClass3.unregister();
            this.mStartIntentSenderForResult.unregister();
            this.mRequestPermissions.unregister();
        }
    }

    public final void dispatchLowMemory() {
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    public final void dispatchMultiWindowModeChanged(boolean z) {
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    public final boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mCurState < 1) {
            return;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void dispatchParentPrimaryNavigationFragmentChanged(Fragment fragment) {
        if (fragment == null || !fragment.equals(findActiveFragment(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    public final void dispatchPictureInPictureModeChanged(boolean z) {
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    public final boolean dispatchPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mCurState < 1) {
            return false;
        }
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void dispatchStateChange(int i) {
        try {
            this.mExecutingActions = true;
            for (FragmentStateManager fragmentStateManager : this.mFragmentStore.mActive.values()) {
                if (fragmentStateManager != null) {
                    fragmentStateManager.mFragmentManagerState = i;
                }
            }
            moveToState(i, false);
            Iterator it = collectAllSpecialEffectsController().iterator();
            while (it.hasNext()) {
                ((SpecialEffectsController) it.next()).forceCompleteAllOperations();
            }
            this.mExecutingActions = false;
            execPendingActions(true);
        } catch (Throwable th) {
            this.mExecutingActions = false;
            throw th;
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        FragmentStore fragmentStore = this.mFragmentStore;
        fragmentStore.getClass();
        String str3 = str + "    ";
        HashMap hashMap = fragmentStore.mActive;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : hashMap.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.mFragment;
                    printWriter.println(fragment);
                    fragment.dump(str3, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = fragmentStore.mAdded;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                Fragment fragment2 = (Fragment) arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.mCreatedMenus;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                Fragment fragment3 = (Fragment) this.mCreatedMenus.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList arrayList3 = this.mBackStack;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.dump(str2, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.mBackStackIndex.get());
        synchronized (this.mPendingActions) {
            int size4 = this.mPendingActions.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size4; i4++) {
                    Object obj = (OpGenerator) this.mPendingActions.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.mHost);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
    }

    public final void enqueueAction(OpGenerator opGenerator, boolean z) {
        if (!z) {
            if (this.mHost == null) {
                if (!this.mDestroyed) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.mStateSaved || this.mStopped) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.mPendingActions) {
            if (this.mHost == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.mPendingActions.add(opGenerator);
                scheduleCommit();
            }
        }
    }

    public final void ensureExecReady(boolean z) {
        if (this.mExecutingActions) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.mHost == null) {
            if (!this.mDestroyed) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.mHost.mHandler.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            if (this.mStateSaved || this.mStopped) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        if (this.mTmpRecords == null) {
            this.mTmpRecords = new ArrayList();
            this.mTmpIsPop = new ArrayList();
        }
        this.mExecutingActions = false;
    }

    public final boolean execPendingActions(boolean z) {
        boolean z2;
        ensureExecReady(z);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.mTmpRecords;
            ArrayList arrayList2 = this.mTmpIsPop;
            synchronized (this.mPendingActions) {
                if (this.mPendingActions.isEmpty()) {
                    z2 = false;
                } else {
                    int size = this.mPendingActions.size();
                    z2 = false;
                    for (int i = 0; i < size; i++) {
                        z2 |= ((OpGenerator) this.mPendingActions.get(i)).generateOps(arrayList, arrayList2);
                    }
                    this.mPendingActions.clear();
                    this.mHost.mHandler.removeCallbacks(this.mExecCommit);
                }
            }
            if (!z2) {
                break;
            }
            z3 = true;
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        if (this.mHavePendingDeferredStart) {
            this.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
        }
        this.mFragmentStore.mActive.values().removeAll(Collections.singleton(null));
        return z3;
    }

    public final void execSingleAction(OpGenerator opGenerator, boolean z) {
        if (z && (this.mHost == null || this.mDestroyed)) {
            return;
        }
        ensureExecReady(z);
        if (opGenerator.generateOps(this.mTmpRecords, this.mTmpIsPop)) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        if (this.mHavePendingDeferredStart) {
            this.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
        }
        this.mFragmentStore.mActive.values().removeAll(Collections.singleton(null));
    }

    public final void executeOpsTogether(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        FragmentStore fragmentStore;
        FragmentStore fragmentStore2;
        int i3;
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        boolean z = ((BackStackRecord) arrayList3.get(i)).mReorderingAllowed;
        ArrayList arrayList5 = this.mTmpAddedFragments;
        if (arrayList5 == null) {
            this.mTmpAddedFragments = new ArrayList();
        } else {
            arrayList5.clear();
        }
        ArrayList arrayList6 = this.mTmpAddedFragments;
        FragmentStore fragmentStore3 = this.mFragmentStore;
        arrayList6.addAll(fragmentStore3.getFragments());
        Fragment fragment = this.mPrimaryNav;
        int i4 = i;
        boolean z2 = false;
        while (true) {
            int i5 = 1;
            if (i4 >= i2) {
                FragmentStore fragmentStore4 = fragmentStore3;
                this.mTmpAddedFragments.clear();
                if (!z && this.mCurState >= 1) {
                    for (int i6 = i; i6 < i2; i6++) {
                        Iterator it = ((BackStackRecord) arrayList.get(i6)).mOps.iterator();
                        while (it.hasNext()) {
                            Fragment fragment2 = ((FragmentTransaction.Op) it.next()).mFragment;
                            if (fragment2 != null && fragment2.mFragmentManager != null) {
                                fragmentStore4.makeActive(createOrGetFragmentStateManager(fragment2));
                            }
                        }
                    }
                }
                for (int i7 = i; i7 < i2; i7++) {
                    BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i7);
                    if (((Boolean) arrayList2.get(i7)).booleanValue()) {
                        backStackRecord.bumpBackStackNesting(-1);
                        backStackRecord.executePopOps();
                    } else {
                        backStackRecord.bumpBackStackNesting(1);
                        backStackRecord.executeOps();
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                for (int i8 = i; i8 < i2; i8++) {
                    BackStackRecord backStackRecord2 = (BackStackRecord) arrayList.get(i8);
                    if (booleanValue) {
                        for (int size = backStackRecord2.mOps.size() - 1; size >= 0; size--) {
                            Fragment fragment3 = ((FragmentTransaction.Op) backStackRecord2.mOps.get(size)).mFragment;
                            if (fragment3 != null) {
                                createOrGetFragmentStateManager(fragment3).moveToExpectedState();
                            }
                        }
                    } else {
                        Iterator it2 = backStackRecord2.mOps.iterator();
                        while (it2.hasNext()) {
                            Fragment fragment4 = ((FragmentTransaction.Op) it2.next()).mFragment;
                            if (fragment4 != null) {
                                createOrGetFragmentStateManager(fragment4).moveToExpectedState();
                            }
                        }
                    }
                }
                moveToState(this.mCurState, true);
                HashSet hashSet = new HashSet();
                for (int i9 = i; i9 < i2; i9++) {
                    Iterator it3 = ((BackStackRecord) arrayList.get(i9)).mOps.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment5 = ((FragmentTransaction.Op) it3.next()).mFragment;
                        if (fragment5 != null && (viewGroup = fragment5.mContainer) != null) {
                            hashSet.add(SpecialEffectsController.getOrCreateController(viewGroup, getSpecialEffectsControllerFactory()));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    SpecialEffectsController specialEffectsController = (SpecialEffectsController) it4.next();
                    specialEffectsController.mOperationDirectionIsPop = booleanValue;
                    specialEffectsController.markPostponedState();
                    specialEffectsController.executePendingOperations();
                }
                for (int i10 = i; i10 < i2; i10++) {
                    BackStackRecord backStackRecord3 = (BackStackRecord) arrayList.get(i10);
                    if (((Boolean) arrayList2.get(i10)).booleanValue() && backStackRecord3.mIndex >= 0) {
                        backStackRecord3.mIndex = -1;
                    }
                    backStackRecord3.getClass();
                }
                return;
            }
            BackStackRecord backStackRecord4 = (BackStackRecord) arrayList3.get(i4);
            if (((Boolean) arrayList4.get(i4)).booleanValue()) {
                fragmentStore = fragmentStore3;
                int i11 = 1;
                ArrayList arrayList7 = this.mTmpAddedFragments;
                ArrayList arrayList8 = backStackRecord4.mOps;
                int size2 = arrayList8.size() - 1;
                while (size2 >= 0) {
                    FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList8.get(size2);
                    int i12 = op.mCmd;
                    if (i12 != i11) {
                        if (i12 != 3) {
                            switch (i12) {
                                case 8:
                                    fragment = null;
                                    break;
                                case 9:
                                    fragment = op.mFragment;
                                    break;
                                case 10:
                                    op.mCurrentMaxState = op.mOldMaxState;
                                    break;
                            }
                            size2--;
                            i11 = 1;
                        }
                        arrayList7.add(op.mFragment);
                        size2--;
                        i11 = 1;
                    }
                    arrayList7.remove(op.mFragment);
                    size2--;
                    i11 = 1;
                }
            } else {
                ArrayList arrayList9 = this.mTmpAddedFragments;
                int i13 = 0;
                while (true) {
                    ArrayList arrayList10 = backStackRecord4.mOps;
                    if (i13 < arrayList10.size()) {
                        FragmentTransaction.Op op2 = (FragmentTransaction.Op) arrayList10.get(i13);
                        int i14 = op2.mCmd;
                        if (i14 != i5) {
                            if (i14 != 2) {
                                if (i14 == 3 || i14 == 6) {
                                    arrayList9.remove(op2.mFragment);
                                    Fragment fragment6 = op2.mFragment;
                                    if (fragment6 == fragment) {
                                        arrayList10.add(i13, new FragmentTransaction.Op(fragment6, 9));
                                        i13++;
                                        fragmentStore2 = fragmentStore3;
                                        i3 = 1;
                                        fragment = null;
                                    }
                                } else if (i14 != 7) {
                                    if (i14 == 8) {
                                        arrayList10.add(i13, new FragmentTransaction.Op(fragment, 9));
                                        i13++;
                                        fragment = op2.mFragment;
                                    }
                                }
                                fragmentStore2 = fragmentStore3;
                                i3 = 1;
                            } else {
                                Fragment fragment7 = op2.mFragment;
                                int i15 = fragment7.mContainerId;
                                int size3 = arrayList9.size() - 1;
                                boolean z3 = false;
                                while (size3 >= 0) {
                                    FragmentStore fragmentStore5 = fragmentStore3;
                                    Fragment fragment8 = (Fragment) arrayList9.get(size3);
                                    if (fragment8.mContainerId == i15) {
                                        if (fragment8 == fragment7) {
                                            z3 = true;
                                        } else {
                                            if (fragment8 == fragment) {
                                                arrayList10.add(i13, new FragmentTransaction.Op(fragment8, 9));
                                                i13++;
                                                fragment = null;
                                            }
                                            FragmentTransaction.Op op3 = new FragmentTransaction.Op(fragment8, 3);
                                            op3.mEnterAnim = op2.mEnterAnim;
                                            op3.mPopEnterAnim = op2.mPopEnterAnim;
                                            op3.mExitAnim = op2.mExitAnim;
                                            op3.mPopExitAnim = op2.mPopExitAnim;
                                            arrayList10.add(i13, op3);
                                            arrayList9.remove(fragment8);
                                            i13++;
                                            fragment = fragment;
                                        }
                                    }
                                    size3--;
                                    fragmentStore3 = fragmentStore5;
                                }
                                fragmentStore2 = fragmentStore3;
                                i3 = 1;
                                if (z3) {
                                    arrayList10.remove(i13);
                                    i13--;
                                } else {
                                    op2.mCmd = 1;
                                    arrayList9.add(fragment7);
                                }
                            }
                            i13 += i3;
                            fragmentStore3 = fragmentStore2;
                            i5 = 1;
                        }
                        fragmentStore2 = fragmentStore3;
                        i3 = 1;
                        arrayList9.add(op2.mFragment);
                        i13 += i3;
                        fragmentStore3 = fragmentStore2;
                        i5 = 1;
                    } else {
                        fragmentStore = fragmentStore3;
                    }
                }
            }
            z2 = z2 || backStackRecord4.mAddToBackStack;
            i4++;
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
            fragmentStore3 = fragmentStore;
        }
    }

    public final Fragment findActiveFragment(String str) {
        return this.mFragmentStore.findActiveFragment(str);
    }

    public final Fragment findFragmentById(int i) {
        FragmentStore fragmentStore = this.mFragmentStore;
        ArrayList arrayList = fragmentStore.mAdded;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                for (FragmentStateManager fragmentStateManager : fragmentStore.mActive.values()) {
                    if (fragmentStateManager != null) {
                        Fragment fragment = fragmentStateManager.mFragment;
                        if (fragment.mFragmentId == i) {
                            return fragment;
                        }
                    }
                }
                return null;
            }
            Fragment fragment2 = (Fragment) arrayList.get(size);
            if (fragment2 != null && fragment2.mFragmentId == i) {
                return fragment2;
            }
        }
    }

    public final Fragment findFragmentByTag(String str) {
        FragmentStore fragmentStore = this.mFragmentStore;
        if (str != null) {
            ArrayList arrayList = fragmentStore.mAdded;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                Fragment fragment = (Fragment) arrayList.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (FragmentStateManager fragmentStateManager : fragmentStore.mActive.values()) {
                if (fragmentStateManager != null) {
                    Fragment fragment2 = fragmentStateManager.mFragment;
                    if (str.equals(fragment2.mTag)) {
                        return fragment2;
                    }
                }
            }
        } else {
            fragmentStore.getClass();
        }
        return null;
    }

    public final void forcePostponedTransactions() {
        Iterator it = collectAllSpecialEffectsController().iterator();
        while (it.hasNext()) {
            SpecialEffectsController specialEffectsController = (SpecialEffectsController) it.next();
            if (specialEffectsController.mIsContainerPostponed) {
                specialEffectsController.mIsContainerPostponed = false;
                specialEffectsController.executePendingOperations();
            }
        }
    }

    public final ViewGroup getFragmentContainer(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.mContainer.onHasView()) {
            View onFindViewById = this.mContainer.onFindViewById(fragment.mContainerId);
            if (onFindViewById instanceof ViewGroup) {
                return (ViewGroup) onFindViewById;
            }
        }
        return null;
    }

    public final FragmentFactory getFragmentFactory() {
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.getFragmentFactory() : this.mHostFragmentFactory;
    }

    public final SpecialEffectsControllerFactory getSpecialEffectsControllerFactory() {
        Fragment fragment = this.mParent;
        return fragment != null ? fragment.mFragmentManager.getSpecialEffectsControllerFactory() : this.mDefaultSpecialEffectsControllerFactory;
    }

    public final void moveToState(int i, boolean z) {
        HashMap hashMap;
        FragmentHostCallback fragmentHostCallback;
        if (this.mHost == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.mCurState) {
            this.mCurState = i;
            FragmentStore fragmentStore = this.mFragmentStore;
            Iterator it = fragmentStore.mAdded.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                hashMap = fragmentStore.mActive;
                if (!hasNext) {
                    break;
                }
                FragmentStateManager fragmentStateManager = (FragmentStateManager) hashMap.get(((Fragment) it.next()).mWho);
                if (fragmentStateManager != null) {
                    fragmentStateManager.moveToExpectedState();
                }
            }
            Iterator it2 = hashMap.values().iterator();
            while (true) {
                boolean z2 = false;
                if (!it2.hasNext()) {
                    break;
                }
                FragmentStateManager fragmentStateManager2 = (FragmentStateManager) it2.next();
                if (fragmentStateManager2 != null) {
                    fragmentStateManager2.moveToExpectedState();
                    Fragment fragment = fragmentStateManager2.mFragment;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        z2 = true;
                    }
                    if (z2) {
                        fragmentStore.makeInactive(fragmentStateManager2);
                    }
                }
            }
            startPendingDeferredFragments();
            if (this.mNeedMenuInvalidate && (fragmentHostCallback = this.mHost) != null && this.mCurState == 7) {
                FragmentActivity.this.supportInvalidateOptionsMenu();
                this.mNeedMenuInvalidate = false;
            }
        }
    }

    public final void noteStateNotSaved() {
        if (this.mHost == null) {
            return;
        }
        this.mStateSaved = false;
        this.mStopped = false;
        this.mNonConfig.mIsStateSaved = false;
        for (Fragment fragment : this.mFragmentStore.getFragments()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public final boolean popBackStackImmediate() {
        execPendingActions(false);
        ensureExecReady(true);
        Fragment fragment = this.mPrimaryNav;
        if (fragment != null && fragment.getChildFragmentManager().popBackStackImmediate()) {
            return true;
        }
        boolean popBackStackState = popBackStackState(this.mTmpRecords, this.mTmpIsPop, null, -1, 0);
        if (popBackStackState) {
            this.mExecutingActions = true;
            try {
                removeRedundantOperationsAndExecute(this.mTmpRecords, this.mTmpIsPop);
            } finally {
                cleanupExec();
            }
        }
        updateOnBackPressedCallbackEnabled();
        if (this.mHavePendingDeferredStart) {
            this.mHavePendingDeferredStart = false;
            startPendingDeferredFragments();
        }
        this.mFragmentStore.mActive.values().removeAll(Collections.singleton(null));
        return popBackStackState;
    }

    public final boolean popBackStackState(ArrayList arrayList, ArrayList arrayList2, String str, int i, int i2) {
        ArrayList arrayList3 = this.mBackStack;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.mBackStack.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            int i3 = -1;
            if (str != null || i >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    BackStackRecord backStackRecord = (BackStackRecord) this.mBackStack.get(size2);
                    if ((str != null && str.equals(backStackRecord.mName)) || (i >= 0 && i == backStackRecord.mIndex)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        BackStackRecord backStackRecord2 = (BackStackRecord) this.mBackStack.get(size2);
                        if (str == null || !str.equals(backStackRecord2.mName)) {
                            if (i < 0 || i != backStackRecord2.mIndex) {
                                break;
                            }
                        }
                    }
                }
                i3 = size2;
            }
            if (i3 == this.mBackStack.size() - 1) {
                return false;
            }
            for (int size3 = this.mBackStack.size() - 1; size3 > i3; size3--) {
                arrayList.add(this.mBackStack.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    public final void removeFragment(Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Objects.toString(fragment);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            FragmentStore fragmentStore = this.mFragmentStore;
            synchronized (fragmentStore.mAdded) {
                fragmentStore.mAdded.remove(fragment);
            }
            fragment.mAdded = false;
            if (isMenuAvailable(fragment)) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mRemoving = true;
            setVisibleRemovingFragment(fragment);
        }
    }

    public final void removeRedundantOperationsAndExecute(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((BackStackRecord) arrayList.get(i)).mReorderingAllowed) {
                if (i2 != i) {
                    executeOpsTogether(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((BackStackRecord) arrayList.get(i2)).mReorderingAllowed) {
                        i2++;
                    }
                }
                executeOpsTogether(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            executeOpsTogether(arrayList, arrayList2, i2, size);
        }
    }

    public final void restoreSaveState(Parcelable parcelable) {
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher;
        int i;
        FragmentStateManager fragmentStateManager;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.mActive == null) {
            return;
        }
        FragmentStore fragmentStore = this.mFragmentStore;
        fragmentStore.mActive.clear();
        Iterator it = fragmentManagerState.mActive.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            fragmentLifecycleCallbacksDispatcher = this.mLifecycleCallbacksDispatcher;
            if (!hasNext) {
                break;
            }
            FragmentState fragmentState = (FragmentState) it.next();
            if (fragmentState != null) {
                Fragment fragment = (Fragment) this.mNonConfig.mRetainedFragments.get(fragmentState.mWho);
                if (fragment != null) {
                    if (isLoggingEnabled(2)) {
                        fragment.toString();
                    }
                    fragmentStateManager = new FragmentStateManager(fragmentLifecycleCallbacksDispatcher, fragmentStore, fragment, fragmentState);
                } else {
                    fragmentStateManager = new FragmentStateManager(this.mLifecycleCallbacksDispatcher, this.mFragmentStore, this.mHost.mContext.getClassLoader(), getFragmentFactory(), fragmentState);
                }
                Fragment fragment2 = fragmentStateManager.mFragment;
                fragment2.mFragmentManager = this;
                if (isLoggingEnabled(2)) {
                    fragment2.toString();
                }
                fragmentStateManager.restoreState(this.mHost.mContext.getClassLoader());
                fragmentStore.makeActive(fragmentStateManager);
                fragmentStateManager.mFragmentManagerState = this.mCurState;
            }
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.mNonConfig;
        fragmentManagerViewModel.getClass();
        Iterator it2 = new ArrayList(fragmentManagerViewModel.mRetainedFragments.values()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Fragment fragment3 = (Fragment) it2.next();
            if ((fragmentStore.mActive.get(fragment3.mWho) != null ? 1 : 0) == 0) {
                if (isLoggingEnabled(2)) {
                    fragment3.toString();
                    Objects.toString(fragmentManagerState.mActive);
                }
                this.mNonConfig.removeRetainedFragment(fragment3);
                fragment3.mFragmentManager = this;
                FragmentStateManager fragmentStateManager2 = new FragmentStateManager(fragmentLifecycleCallbacksDispatcher, fragmentStore, fragment3);
                fragmentStateManager2.mFragmentManagerState = 1;
                fragmentStateManager2.moveToExpectedState();
                fragment3.mRemoving = true;
                fragmentStateManager2.moveToExpectedState();
            }
        }
        ArrayList<String> arrayList = fragmentManagerState.mAdded;
        fragmentStore.mAdded.clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                Fragment findActiveFragment = fragmentStore.findActiveFragment(str);
                if (findActiveFragment == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (isLoggingEnabled(2)) {
                    findActiveFragment.toString();
                }
                fragmentStore.addFragment(findActiveFragment);
            }
        }
        if (fragmentManagerState.mBackStack != null) {
            this.mBackStack = new ArrayList(fragmentManagerState.mBackStack.length);
            int i2 = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.mBackStack;
                if (i2 >= backStackStateArr.length) {
                    break;
                }
                BackStackState backStackState = backStackStateArr[i2];
                backStackState.getClass();
                BackStackRecord backStackRecord = new BackStackRecord(this);
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    int[] iArr = backStackState.mOps;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    FragmentTransaction.Op op = new FragmentTransaction.Op();
                    int i5 = i3 + 1;
                    op.mCmd = iArr[i3];
                    if (isLoggingEnabled(2)) {
                        backStackRecord.toString();
                        int i6 = iArr[i5];
                    }
                    String str2 = (String) backStackState.mFragmentWhos.get(i4);
                    op.mFragment = str2 != null ? findActiveFragment(str2) : null;
                    op.mOldMaxState = Lifecycle.State.values()[backStackState.mOldMaxLifecycleStates[i4]];
                    op.mCurrentMaxState = Lifecycle.State.values()[backStackState.mCurrentMaxLifecycleStates[i4]];
                    int i7 = i5 + 1;
                    int i8 = iArr[i5];
                    op.mEnterAnim = i8;
                    int i9 = i7 + 1;
                    int i10 = iArr[i7];
                    op.mExitAnim = i10;
                    int i11 = i9 + 1;
                    int i12 = iArr[i9];
                    op.mPopEnterAnim = i12;
                    int i13 = iArr[i11];
                    op.mPopExitAnim = i13;
                    backStackRecord.mEnterAnim = i8;
                    backStackRecord.mExitAnim = i10;
                    backStackRecord.mPopEnterAnim = i12;
                    backStackRecord.mPopExitAnim = i13;
                    backStackRecord.addOp(op);
                    i4++;
                    i3 = i11 + 1;
                }
                backStackRecord.mTransition = backStackState.mTransition;
                backStackRecord.mName = backStackState.mName;
                backStackRecord.mIndex = backStackState.mIndex;
                backStackRecord.mAddToBackStack = true;
                backStackRecord.mBreadCrumbTitleRes = backStackState.mBreadCrumbTitleRes;
                backStackRecord.mBreadCrumbTitleText = backStackState.mBreadCrumbTitleText;
                backStackRecord.mBreadCrumbShortTitleRes = backStackState.mBreadCrumbShortTitleRes;
                backStackRecord.mBreadCrumbShortTitleText = backStackState.mBreadCrumbShortTitleText;
                backStackRecord.mSharedElementSourceNames = backStackState.mSharedElementSourceNames;
                backStackRecord.mSharedElementTargetNames = backStackState.mSharedElementTargetNames;
                backStackRecord.mReorderingAllowed = backStackState.mReorderingAllowed;
                backStackRecord.bumpBackStackNesting(1);
                if (isLoggingEnabled(2)) {
                    backStackRecord.toString();
                    PrintWriter printWriter = new PrintWriter(new LogWriter());
                    backStackRecord.dump("  ", printWriter, false);
                    printWriter.close();
                }
                this.mBackStack.add(backStackRecord);
                i2++;
            }
        } else {
            this.mBackStack = null;
        }
        this.mBackStackIndex.set(fragmentManagerState.mBackStackIndex);
        String str3 = fragmentManagerState.mPrimaryNavActiveWho;
        if (str3 != null) {
            Fragment findActiveFragment2 = findActiveFragment(str3);
            this.mPrimaryNav = findActiveFragment2;
            dispatchParentPrimaryNavigationFragmentChanged(findActiveFragment2);
        }
        ArrayList arrayList2 = fragmentManagerState.mResultKeys;
        if (arrayList2 != null) {
            while (i < arrayList2.size()) {
                Bundle bundle = (Bundle) fragmentManagerState.mResults.get(i);
                bundle.setClassLoader(this.mHost.mContext.getClassLoader());
                this.mResults.put(arrayList2.get(i), bundle);
                i++;
            }
        }
        this.mLaunchedFragments = new ArrayDeque(fragmentManagerState.mLaunchedFragments);
    }

    public final Parcelable saveAllState() {
        int i;
        BackStackState[] backStackStateArr;
        ArrayList arrayList;
        int size;
        forcePostponedTransactions();
        Iterator it = collectAllSpecialEffectsController().iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).forceCompleteAllOperations();
        }
        execPendingActions(true);
        this.mStateSaved = true;
        this.mNonConfig.mIsStateSaved = true;
        FragmentStore fragmentStore = this.mFragmentStore;
        fragmentStore.getClass();
        HashMap hashMap = fragmentStore.mActive;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        Iterator it2 = hashMap.values().iterator();
        while (true) {
            backStackStateArr = null;
            backStackStateArr = null;
            if (!it2.hasNext()) {
                break;
            }
            FragmentStateManager fragmentStateManager = (FragmentStateManager) it2.next();
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.mFragment;
                FragmentState fragmentState = new FragmentState(fragment);
                if (fragment.mState <= -1 || fragmentState.mSavedFragmentState != null) {
                    fragmentState.mSavedFragmentState = fragment.mSavedFragmentState;
                } else {
                    Bundle bundle = new Bundle();
                    fragment.performSaveInstanceState(bundle);
                    fragmentStateManager.mDispatcher.dispatchOnFragmentSaveInstanceState(false);
                    Bundle bundle2 = bundle.isEmpty() ? null : bundle;
                    if (fragment.mView != null) {
                        fragmentStateManager.saveViewState();
                    }
                    if (fragment.mSavedViewState != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
                    }
                    if (fragment.mSavedViewRegistryState != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBundle("android:view_registry_state", fragment.mSavedViewRegistryState);
                    }
                    if (!fragment.mUserVisibleHint) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
                    }
                    fragmentState.mSavedFragmentState = bundle2;
                    if (fragment.mTargetWho != null) {
                        if (bundle2 == null) {
                            fragmentState.mSavedFragmentState = new Bundle();
                        }
                        fragmentState.mSavedFragmentState.putString("android:target_state", fragment.mTargetWho);
                        int i2 = fragment.mTargetRequestCode;
                        if (i2 != 0) {
                            fragmentState.mSavedFragmentState.putInt("android:target_req_state", i2);
                        }
                    }
                }
                arrayList2.add(fragmentState);
                if (isLoggingEnabled(2)) {
                    Objects.toString(fragment);
                    Objects.toString(fragmentState.mSavedFragmentState);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        FragmentStore fragmentStore2 = this.mFragmentStore;
        synchronized (fragmentStore2.mAdded) {
            if (fragmentStore2.mAdded.isEmpty()) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(fragmentStore2.mAdded.size());
                Iterator it3 = fragmentStore2.mAdded.iterator();
                while (it3.hasNext()) {
                    Fragment fragment2 = (Fragment) it3.next();
                    arrayList.add(fragment2.mWho);
                    if (isLoggingEnabled(2)) {
                        fragment2.toString();
                    }
                }
            }
        }
        ArrayList arrayList3 = this.mBackStack;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (i = 0; i < size; i++) {
                backStackStateArr[i] = new BackStackState((BackStackRecord) this.mBackStack.get(i));
                if (isLoggingEnabled(2)) {
                    Objects.toString(this.mBackStack.get(i));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = arrayList2;
        fragmentManagerState.mAdded = arrayList;
        fragmentManagerState.mBackStack = backStackStateArr;
        fragmentManagerState.mBackStackIndex = this.mBackStackIndex.get();
        Fragment fragment3 = this.mPrimaryNav;
        if (fragment3 != null) {
            fragmentManagerState.mPrimaryNavActiveWho = fragment3.mWho;
        }
        fragmentManagerState.mResultKeys.addAll(this.mResults.keySet());
        fragmentManagerState.mResults.addAll(this.mResults.values());
        fragmentManagerState.mLaunchedFragments = new ArrayList(this.mLaunchedFragments);
        return fragmentManagerState;
    }

    public final void scheduleCommit() {
        synchronized (this.mPendingActions) {
            boolean z = true;
            if (this.mPendingActions.size() != 1) {
                z = false;
            }
            if (z) {
                this.mHost.mHandler.removeCallbacks(this.mExecCommit);
                this.mHost.mHandler.post(this.mExecCommit);
                updateOnBackPressedCallbackEnabled();
            }
        }
    }

    public final void setExitAnimationOrder(Fragment fragment, boolean z) {
        ViewGroup fragmentContainer = getFragmentContainer(fragment);
        if (fragmentContainer == null || !(fragmentContainer instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) fragmentContainer).mDrawDisappearingViewsFirst = !z;
    }

    public final void setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(findActiveFragment(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void setPrimaryNavigationFragment(Fragment fragment) {
        if (fragment == null || (fragment.equals(findActiveFragment(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.mPrimaryNav;
            this.mPrimaryNav = fragment;
            dispatchParentPrimaryNavigationFragmentChanged(fragment2);
            dispatchParentPrimaryNavigationFragmentChanged(this.mPrimaryNav);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void setVisibleRemovingFragment(Fragment fragment) {
        ViewGroup fragmentContainer = getFragmentContainer(fragment);
        if (fragmentContainer != null) {
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + fragment.getExitAnim() + fragment.getEnterAnim() > 0) {
                if (fragmentContainer.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    fragmentContainer.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                ((Fragment) fragmentContainer.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
            }
        }
    }

    public final void startPendingDeferredFragments() {
        Iterator it = this.mFragmentStore.getActiveFragmentStateManagers().iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = (FragmentStateManager) it.next();
            Fragment fragment = fragmentStateManager.mFragment;
            if (fragment.mDeferStart) {
                if (this.mExecutingActions) {
                    this.mHavePendingDeferredStart = true;
                } else {
                    fragment.mDeferStart = false;
                    fragmentStateManager.moveToExpectedState();
                }
            }
        }
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.mParent;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            obj = this.mParent;
        } else {
            FragmentHostCallback fragmentHostCallback = this.mHost;
            if (fragmentHostCallback == null) {
                sb.append("null");
                sb.append("}}");
                return sb.toString();
            }
            sb.append(fragmentHostCallback.getClass().getSimpleName());
            sb.append("{");
            obj = this.mHost;
        }
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
        sb.append("}");
        sb.append("}}");
        return sb.toString();
    }

    public final void updateOnBackPressedCallbackEnabled() {
        synchronized (this.mPendingActions) {
            if (!this.mPendingActions.isEmpty()) {
                this.mOnBackPressedCallback.mEnabled = true;
                return;
            }
            AnonymousClass1 anonymousClass1 = this.mOnBackPressedCallback;
            ArrayList arrayList = this.mBackStack;
            anonymousClass1.mEnabled = (arrayList != null ? arrayList.size() : 0) > 0 && isPrimaryNavigation(this.mParent);
        }
    }
}
