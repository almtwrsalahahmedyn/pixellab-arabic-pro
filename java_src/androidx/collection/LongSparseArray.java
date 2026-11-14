package androidx.collection;

/* loaded from: classes.dex */
public final class LongSparseArray implements Cloneable {
    public static final Object DELETED = new Object();
    public boolean mGarbage = false;
    public long[] mKeys;
    public int mSize;
    public Object[] mValues;

    public LongSparseArray() {
        int i;
        int i2 = 4;
        while (true) {
            i = 80;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (80 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 8;
        this.mKeys = new long[i4];
        this.mValues = new Object[i4];
    }

    public final void append(long j, Long l) {
        int i = this.mSize;
        if (i != 0 && j <= this.mKeys[i - 1]) {
            put(j, l);
            return;
        }
        if (this.mGarbage && i >= this.mKeys.length) {
            gc();
        }
        int i2 = this.mSize;
        if (i2 >= this.mKeys.length) {
            int i3 = (i2 + 1) * 8;
            int i4 = 4;
            while (true) {
                if (i4 >= 32) {
                    break;
                }
                int i5 = (1 << i4) - 12;
                if (i3 <= i5) {
                    i3 = i5;
                    break;
                }
                i4++;
            }
            int i6 = i3 / 8;
            long[] jArr = new long[i6];
            Object[] objArr = new Object[i6];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = jArr;
            this.mValues = objArr;
        }
        this.mKeys[i2] = j;
        this.mValues[i2] = l;
        this.mSize = i2 + 1;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final LongSparseArray m241clone() {
        try {
            LongSparseArray longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.mKeys = (long[]) this.mKeys.clone();
            longSparseArray.mValues = (Object[]) this.mValues.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final void gc() {
        int i = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != DELETED) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.mGarbage = false;
        this.mSize = i2;
    }

    public final Object get(long j, Long l) {
        Object obj;
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        return (binarySearch < 0 || (obj = this.mValues[binarySearch]) == DELETED) ? l : obj;
    }

    public final void put(long j, Object obj) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = obj;
            return;
        }
        int i = ~binarySearch;
        int i2 = this.mSize;
        if (i < i2) {
            Object[] objArr = this.mValues;
            if (objArr[i] == DELETED) {
                this.mKeys[i] = j;
                objArr[i] = obj;
                return;
            }
        }
        if (this.mGarbage && i2 >= this.mKeys.length) {
            gc();
            i = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        }
        int i3 = this.mSize;
        if (i3 >= this.mKeys.length) {
            int i4 = (i3 + 1) * 8;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 8;
            long[] jArr = new long[i7];
            Object[] objArr2 = new Object[i7];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = jArr;
            this.mValues = objArr2;
        }
        int i8 = this.mSize - i;
        if (i8 != 0) {
            long[] jArr3 = this.mKeys;
            int i9 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i9, i8);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, i, objArr4, i9, this.mSize - i);
        }
        this.mKeys[i] = j;
        this.mValues[i] = obj;
        this.mSize++;
    }

    public final String toString() {
        if (this.mGarbage) {
            gc();
        }
        if (this.mSize <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append('{');
        for (int i = 0; i < this.mSize; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            if (this.mGarbage) {
                gc();
            }
            sb.append(this.mKeys[i]);
            sb.append('=');
            if (this.mGarbage) {
                gc();
            }
            Object obj = this.mValues[i];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
