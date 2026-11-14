package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class SavedStateHandle {
    public static final Class[] ACCEPTABLE_CLASSES = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};
    public final HashMap mLiveDatas;
    public final HashMap mRegular;
    public final AnonymousClass1 mSavedStateProvider;
    public final HashMap mSavedStateProviders;

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.SavedStateHandle$1] */
    public SavedStateHandle() {
        this.mSavedStateProviders = new HashMap();
        this.mLiveDatas = new HashMap();
        this.mSavedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.SavedStateHandle.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                SavedStateHandle savedStateHandle = SavedStateHandle.this;
                Iterator it = new HashMap(savedStateHandle.mSavedStateProviders).entrySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    HashMap hashMap = savedStateHandle.mRegular;
                    if (!hasNext) {
                        Set<String> keySet = hashMap.keySet();
                        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                        for (String str : keySet) {
                            arrayList.add(str);
                            arrayList2.add(hashMap.get(str));
                        }
                        Bundle bundle = new Bundle();
                        bundle.putParcelableArrayList("keys", arrayList);
                        bundle.putParcelableArrayList("values", arrayList2);
                        return bundle;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    Bundle saveState = ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState();
                    String str2 = (String) entry.getKey();
                    if (saveState != null) {
                        for (Class cls : SavedStateHandle.ACCEPTABLE_CLASSES) {
                            if (!cls.isInstance(saveState)) {
                            }
                        }
                        throw new IllegalArgumentException("Can't put value with type " + saveState.getClass() + " into saved state");
                    }
                    MutableLiveData mutableLiveData = (MutableLiveData) savedStateHandle.mLiveDatas.get(str2);
                    if (mutableLiveData != null) {
                        mutableLiveData.setValue(saveState);
                    } else {
                        hashMap.put(str2, saveState);
                    }
                }
            }
        };
        this.mRegular = new HashMap();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.SavedStateHandle$1] */
    public SavedStateHandle(HashMap hashMap) {
        this.mSavedStateProviders = new HashMap();
        this.mLiveDatas = new HashMap();
        this.mSavedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.SavedStateHandle.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                SavedStateHandle savedStateHandle = SavedStateHandle.this;
                Iterator it = new HashMap(savedStateHandle.mSavedStateProviders).entrySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    HashMap hashMap2 = savedStateHandle.mRegular;
                    if (!hasNext) {
                        Set<String> keySet = hashMap2.keySet();
                        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
                        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
                        for (String str : keySet) {
                            arrayList.add(str);
                            arrayList2.add(hashMap2.get(str));
                        }
                        Bundle bundle = new Bundle();
                        bundle.putParcelableArrayList("keys", arrayList);
                        bundle.putParcelableArrayList("values", arrayList2);
                        return bundle;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    Bundle saveState = ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState();
                    String str2 = (String) entry.getKey();
                    if (saveState != null) {
                        for (Class cls : SavedStateHandle.ACCEPTABLE_CLASSES) {
                            if (!cls.isInstance(saveState)) {
                            }
                        }
                        throw new IllegalArgumentException("Can't put value with type " + saveState.getClass() + " into saved state");
                    }
                    MutableLiveData mutableLiveData = (MutableLiveData) savedStateHandle.mLiveDatas.get(str2);
                    if (mutableLiveData != null) {
                        mutableLiveData.setValue(saveState);
                    } else {
                        hashMap2.put(str2, saveState);
                    }
                }
            }
        };
        this.mRegular = new HashMap(hashMap);
    }
}
