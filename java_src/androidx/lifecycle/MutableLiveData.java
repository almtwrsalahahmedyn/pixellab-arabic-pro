package androidx.lifecycle;

/* loaded from: classes.dex */
public class MutableLiveData extends LiveData {
    public final void setValue(Object obj) {
        LiveData.assertMainThread("setValue");
        this.mVersion++;
        this.mData = obj;
        dispatchingValue(null);
    }
}
