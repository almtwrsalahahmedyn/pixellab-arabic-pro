package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager$SavedState implements Parcelable {
    public static final Parcelable.Creator<StaggeredGridLayoutManager$SavedState> CREATOR = new Parcelable.Creator() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState.1
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState, java.lang.Object] */
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            ?? obj = new Object();
            obj.mAnchorPosition = parcel.readInt();
            obj.mVisibleAnchorPosition = parcel.readInt();
            int readInt = parcel.readInt();
            obj.mSpanOffsetsSize = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                obj.mSpanOffsets = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            obj.mSpanLookupSize = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                obj.mSpanLookup = iArr2;
                parcel.readIntArray(iArr2);
            }
            obj.mReverseLayout = parcel.readInt() == 1;
            obj.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            obj.mLastLayoutRTL = parcel.readInt() == 1;
            obj.mFullSpanItems = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class.getClassLoader());
            return obj;
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new StaggeredGridLayoutManager$SavedState[i];
        }
    };
    public boolean mAnchorLayoutFromEnd;
    public int mAnchorPosition;
    public ArrayList mFullSpanItems;
    public boolean mLastLayoutRTL;
    public boolean mReverseLayout;
    public int[] mSpanLookup;
    public int mSpanLookupSize;
    public int[] mSpanOffsets;
    public int mSpanOffsetsSize;
    public int mVisibleAnchorPosition;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mAnchorPosition);
        parcel.writeInt(this.mVisibleAnchorPosition);
        int i2 = this.mSpanOffsetsSize;
        parcel.writeInt(i2);
        if (i2 > 0) {
            parcel.writeIntArray(this.mSpanOffsets);
        }
        int i3 = this.mSpanLookupSize;
        parcel.writeInt(i3);
        if (i3 > 0) {
            parcel.writeIntArray(this.mSpanLookup);
        }
        parcel.writeInt(this.mReverseLayout ? 1 : 0);
        parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
        parcel.writeList(this.mFullSpanItems);
    }
}
