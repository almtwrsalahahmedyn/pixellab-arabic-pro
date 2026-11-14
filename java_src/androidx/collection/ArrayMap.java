package androidx.collection;

import androidx.collection.MapCollections;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class ArrayMap extends SimpleArrayMap implements Map {
    public AnonymousClass1 mCollections;

    /* renamed from: androidx.collection.ArrayMap$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends MapCollections {
        public AnonymousClass1() {
        }

        @Override // androidx.collection.MapCollections
        public final void colClear() {
            ArrayMap.this.clear();
        }

        @Override // androidx.collection.MapCollections
        public final Object colGetEntry(int i, int i2) {
            return ArrayMap.this.mArray[(i << 1) + i2];
        }

        @Override // androidx.collection.MapCollections
        public final Map colGetMap() {
            return ArrayMap.this;
        }

        @Override // androidx.collection.MapCollections
        public final int colGetSize() {
            return ArrayMap.this.mSize;
        }

        @Override // androidx.collection.MapCollections
        public final int colIndexOfKey(Object obj) {
            return ArrayMap.this.indexOfKey(obj);
        }

        @Override // androidx.collection.MapCollections
        public final int colIndexOfValue(Object obj) {
            return ArrayMap.this.indexOfValue(obj);
        }

        @Override // androidx.collection.MapCollections
        public final void colPut(Object obj, Object obj2) {
            ArrayMap.this.put(obj, obj2);
        }

        @Override // androidx.collection.MapCollections
        public final void colRemoveAt(int i) {
            ArrayMap.this.removeAt(i);
        }

        @Override // androidx.collection.MapCollections
        public final Object colSetValue(int i, Object obj) {
            int i2 = (i << 1) + 1;
            Object[] objArr = ArrayMap.this.mArray;
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
            return obj2;
        }
    }

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.mCollections == null) {
            this.mCollections = new AnonymousClass1();
        }
        AnonymousClass1 anonymousClass1 = this.mCollections;
        if (anonymousClass1.mEntrySet == null) {
            anonymousClass1.mEntrySet = new MapCollections.EntrySet();
        }
        return anonymousClass1.mEntrySet;
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.mCollections == null) {
            this.mCollections = new AnonymousClass1();
        }
        AnonymousClass1 anonymousClass1 = this.mCollections;
        if (anonymousClass1.mKeySet == null) {
            anonymousClass1.mKeySet = new MapCollections.KeySet();
        }
        return anonymousClass1.mKeySet;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        ensureCapacity(map.size() + this.mSize);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.mCollections == null) {
            this.mCollections = new AnonymousClass1();
        }
        AnonymousClass1 anonymousClass1 = this.mCollections;
        if (anonymousClass1.mValues == null) {
            anonymousClass1.mValues = new MapCollections.ValuesCollection();
        }
        return anonymousClass1.mValues;
    }
}
