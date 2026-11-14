package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator() { // from class: androidx.fragment.app.FragmentManagerState.1
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.fragment.app.FragmentManagerState, java.lang.Object] */
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            ?? obj = new Object();
            obj.mPrimaryNavActiveWho = null;
            obj.mResultKeys = new ArrayList();
            obj.mResults = new ArrayList();
            obj.mActive = parcel.createTypedArrayList(FragmentState.CREATOR);
            obj.mAdded = parcel.createStringArrayList();
            obj.mBackStack = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
            obj.mBackStackIndex = parcel.readInt();
            obj.mPrimaryNavActiveWho = parcel.readString();
            obj.mResultKeys = parcel.createStringArrayList();
            obj.mResults = parcel.createTypedArrayList(Bundle.CREATOR);
            obj.mLaunchedFragments = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
            return obj;
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    };
    public ArrayList mActive;
    public ArrayList mAdded;
    public BackStackState[] mBackStack;
    public int mBackStackIndex;
    public ArrayList mLaunchedFragments;
    public String mPrimaryNavActiveWho = null;
    public ArrayList mResultKeys = new ArrayList();
    public ArrayList mResults = new ArrayList();

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.mActive);
        parcel.writeStringList(this.mAdded);
        parcel.writeTypedArray(this.mBackStack, i);
        parcel.writeInt(this.mBackStackIndex);
        parcel.writeString(this.mPrimaryNavActiveWho);
        parcel.writeStringList(this.mResultKeys);
        parcel.writeTypedList(this.mResults);
        parcel.writeTypedList(this.mLaunchedFragments);
    }
}
