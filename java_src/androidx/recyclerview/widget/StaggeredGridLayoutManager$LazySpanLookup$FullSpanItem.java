package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes.dex */
class StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem implements Parcelable {
    public static final Parcelable.Creator<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> CREATOR = new Parcelable.Creator() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.1
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem, java.lang.Object] */
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            ?? obj = new Object();
            obj.mPosition = parcel.readInt();
            obj.mGapDir = parcel.readInt();
            obj.mHasUnwantedGapAfter = parcel.readInt() == 1;
            int readInt = parcel.readInt();
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                obj.mGapPerSpan = iArr;
                parcel.readIntArray(iArr);
            }
            return obj;
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem[i];
        }
    };
    public int mGapDir;
    public int[] mGapPerSpan;
    public boolean mHasUnwantedGapAfter;
    public int mPosition;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mPosition);
        parcel.writeInt(this.mGapDir);
        parcel.writeInt(this.mHasUnwantedGapAfter ? 1 : 0);
        int[] iArr = this.mGapPerSpan;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(iArr);
        }
    }
}
