package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.Random;

/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {
    public Random mRandom = new Random();
    public final HashMap mRcToKey = new HashMap();
    public final HashMap mKeyToRc = new HashMap();
    public final HashMap mKeyToLifecycleContainers = new HashMap();
    public ArrayList mLaunchedKeys = new ArrayList();
    public final transient HashMap mKeyToCallback = new HashMap();
    public final HashMap mParsedPendingResults = new HashMap();
    public final Bundle mPendingResults = new Bundle();

    /* renamed from: androidx.activity.result.ActivityResultRegistry$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends ActivityResultLauncher {
        public final /* synthetic */ ActivityResultContract val$contract;
        public final /* synthetic */ String val$key;
        public final /* synthetic */ int val$requestCode;

        public AnonymousClass3(String str, int i, ActivityResultContract activityResultContract) {
            this.val$key = str;
            this.val$requestCode = i;
            this.val$contract = activityResultContract;
        }

        public final void launch(Object obj) {
            ActivityResultRegistry activityResultRegistry = ActivityResultRegistry.this;
            ArrayList arrayList = activityResultRegistry.mLaunchedKeys;
            String str = this.val$key;
            arrayList.add(str);
            Integer num = (Integer) activityResultRegistry.mKeyToRc.get(str);
            activityResultRegistry.onLaunch(num != null ? num.intValue() : this.val$requestCode, this.val$contract, obj);
        }

        public final void unregister() {
            ActivityResultRegistry.this.unregister(this.val$key);
        }
    }

    /* loaded from: classes.dex */
    public final class CallbackAndContract {
        public final ActivityResultCallback mCallback;
        public final ActivityResultContract mContract;

        public CallbackAndContract(ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
            this.mCallback = activityResultCallback;
            this.mContract = activityResultContract;
        }
    }

    /* loaded from: classes.dex */
    public final class LifecycleContainer {
        public final Lifecycle mLifecycle;
        public final ArrayList mObservers = new ArrayList();

        public LifecycleContainer(Lifecycle lifecycle) {
            this.mLifecycle = lifecycle;
        }
    }

    public final boolean dispatchResult(int i, int i2, Intent intent) {
        ActivityResultCallback activityResultCallback;
        String str = (String) this.mRcToKey.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.mLaunchedKeys.remove(str);
        CallbackAndContract callbackAndContract = (CallbackAndContract) this.mKeyToCallback.get(str);
        if (callbackAndContract != null && (activityResultCallback = callbackAndContract.mCallback) != null) {
            activityResultCallback.onActivityResult(callbackAndContract.mContract.parseResult(intent, i2));
            return true;
        }
        this.mParsedPendingResults.remove(str);
        this.mPendingResults.putParcelable(str, new ActivityResult(intent, i2));
        return true;
    }

    public abstract void onLaunch(int i, ActivityResultContract activityResultContract, Object obj);

    public final AnonymousClass3 register(String str, ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
        int registerKey = registerKey(str);
        this.mKeyToCallback.put(str, new CallbackAndContract(activityResultContract, activityResultCallback));
        HashMap hashMap = this.mParsedPendingResults;
        if (hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            hashMap.remove(str);
            activityResultCallback.onActivityResult(obj);
        }
        Bundle bundle = this.mPendingResults;
        ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str);
        if (activityResult != null) {
            bundle.remove(str);
            activityResultCallback.onActivityResult(activityResultContract.parseResult(activityResult.mData, activityResult.mResultCode));
        }
        return new AnonymousClass3(str, registerKey, activityResultContract);
    }

    public final Fragment.AnonymousClass9 register(final String str, LifecycleOwner lifecycleOwner, final ActivityResultContract activityResultContract, final ActivityResultCallback activityResultCallback) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            throw new IllegalStateException("LifecycleOwner " + lifecycleOwner + " is attempting to register while current state is " + lifecycle.getCurrentState() + ". LifecycleOwners must call register before they are STARTED.");
        }
        int registerKey = registerKey(str);
        HashMap hashMap = this.mKeyToLifecycleContainers;
        LifecycleContainer lifecycleContainer = (LifecycleContainer) hashMap.get(str);
        if (lifecycleContainer == null) {
            lifecycleContainer = new LifecycleContainer(lifecycle);
        }
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.activity.result.ActivityResultRegistry.1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                boolean equals = Lifecycle.Event.ON_START.equals(event);
                String str2 = str;
                ActivityResultRegistry activityResultRegistry = ActivityResultRegistry.this;
                if (!equals) {
                    if (Lifecycle.Event.ON_STOP.equals(event)) {
                        activityResultRegistry.mKeyToCallback.remove(str2);
                        return;
                    } else {
                        if (Lifecycle.Event.ON_DESTROY.equals(event)) {
                            activityResultRegistry.unregister(str2);
                            return;
                        }
                        return;
                    }
                }
                HashMap hashMap2 = activityResultRegistry.mKeyToCallback;
                ActivityResultContract activityResultContract2 = activityResultContract;
                ActivityResultCallback activityResultCallback2 = activityResultCallback;
                hashMap2.put(str2, new CallbackAndContract(activityResultContract2, activityResultCallback2));
                HashMap hashMap3 = activityResultRegistry.mParsedPendingResults;
                if (hashMap3.containsKey(str2)) {
                    Object obj = hashMap3.get(str2);
                    hashMap3.remove(str2);
                    activityResultCallback2.onActivityResult(obj);
                }
                Bundle bundle = activityResultRegistry.mPendingResults;
                ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str2);
                if (activityResult != null) {
                    bundle.remove(str2);
                    activityResultCallback2.onActivityResult(activityResultContract2.parseResult(activityResult.mData, activityResult.mResultCode));
                }
            }
        };
        lifecycleContainer.mLifecycle.addObserver(lifecycleEventObserver);
        lifecycleContainer.mObservers.add(lifecycleEventObserver);
        hashMap.put(str, lifecycleContainer);
        return new Fragment.AnonymousClass9(this, str, registerKey, activityResultContract);
    }

    public final int registerKey(String str) {
        int nextInt;
        HashMap hashMap;
        HashMap hashMap2 = this.mKeyToRc;
        Integer num = (Integer) hashMap2.get(str);
        if (num != null) {
            return num.intValue();
        }
        do {
            nextInt = this.mRandom.nextInt(2147418112) + 65536;
            hashMap = this.mRcToKey;
        } while (hashMap.containsKey(Integer.valueOf(nextInt)));
        hashMap.put(Integer.valueOf(nextInt), str);
        hashMap2.put(str, Integer.valueOf(nextInt));
        return nextInt;
    }

    public final void unregister(String str) {
        Integer num;
        if (!this.mLaunchedKeys.contains(str) && (num = (Integer) this.mKeyToRc.remove(str)) != null) {
            this.mRcToKey.remove(num);
        }
        this.mKeyToCallback.remove(str);
        HashMap hashMap = this.mParsedPendingResults;
        if (hashMap.containsKey(str)) {
            Objects.toString(hashMap.get(str));
            hashMap.remove(str);
        }
        Bundle bundle = this.mPendingResults;
        if (bundle.containsKey(str)) {
            Objects.toString(bundle.getParcelable(str));
            bundle.remove(str);
        }
        HashMap hashMap2 = this.mKeyToLifecycleContainers;
        LifecycleContainer lifecycleContainer = (LifecycleContainer) hashMap2.get(str);
        if (lifecycleContainer != null) {
            ArrayList arrayList = lifecycleContainer.mObservers;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                lifecycleContainer.mLifecycle.removeObserver((LifecycleEventObserver) it.next());
            }
            arrayList.clear();
            hashMap2.remove(str);
        }
    }
}
