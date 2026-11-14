package androidx.collection;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class MapCollections {
    public EntrySet mEntrySet;
    public KeySet mKeySet;
    public ValuesCollection mValues;

    /* loaded from: classes.dex */
    public final class ArrayIterator implements Iterator {
        public boolean mCanRemove = false;
        public int mIndex;
        public final int mOffset;
        public int mSize;

        public ArrayIterator(int i) {
            this.mOffset = i;
            this.mSize = MapCollections.this.colGetSize();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.mIndex < this.mSize;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object colGetEntry = MapCollections.this.colGetEntry(this.mIndex, this.mOffset);
            this.mIndex++;
            this.mCanRemove = true;
            return colGetEntry;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.mCanRemove) {
                throw new IllegalStateException();
            }
            int i = this.mIndex - 1;
            this.mIndex = i;
            this.mSize--;
            this.mCanRemove = false;
            MapCollections.this.colRemoveAt(i);
        }
    }

    /* loaded from: classes.dex */
    public final class EntrySet implements Set {
        public EntrySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection collection) {
            MapCollections mapCollections = MapCollections.this;
            int colGetSize = mapCollections.colGetSize();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                mapCollections.colPut(entry.getKey(), entry.getValue());
            }
            return colGetSize != mapCollections.colGetSize();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            MapCollections.this.colClear();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            MapCollections mapCollections = MapCollections.this;
            int colIndexOfKey = mapCollections.colIndexOfKey(key);
            if (colIndexOfKey < 0) {
                return false;
            }
            return ContainerHelpers.equal(mapCollections.colGetEntry(colIndexOfKey, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return MapCollections.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            MapCollections mapCollections = MapCollections.this;
            int i = 0;
            for (int colGetSize = mapCollections.colGetSize() - 1; colGetSize >= 0; colGetSize--) {
                Object colGetEntry = mapCollections.colGetEntry(colGetSize, 0);
                Object colGetEntry2 = mapCollections.colGetEntry(colGetSize, 1);
                i += (colGetEntry == null ? 0 : colGetEntry.hashCode()) ^ (colGetEntry2 == null ? 0 : colGetEntry2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return MapCollections.this.colGetSize() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new MapIterator();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return MapCollections.this.colGetSize();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes.dex */
    public final class KeySet implements Set {
        public KeySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            MapCollections.this.colClear();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return MapCollections.this.colIndexOfKey(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection collection) {
            Map colGetMap = MapCollections.this.colGetMap();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!colGetMap.containsKey(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return MapCollections.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            MapCollections mapCollections = MapCollections.this;
            int i = 0;
            for (int colGetSize = mapCollections.colGetSize() - 1; colGetSize >= 0; colGetSize--) {
                Object colGetEntry = mapCollections.colGetEntry(colGetSize, 0);
                i += colGetEntry == null ? 0 : colGetEntry.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return MapCollections.this.colGetSize() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new ArrayIterator(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            MapCollections mapCollections = MapCollections.this;
            int colIndexOfKey = mapCollections.colIndexOfKey(obj);
            if (colIndexOfKey < 0) {
                return false;
            }
            mapCollections.colRemoveAt(colIndexOfKey);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection collection) {
            Map colGetMap = MapCollections.this.colGetMap();
            int size = colGetMap.size();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                colGetMap.remove(it.next());
            }
            return size != colGetMap.size();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection collection) {
            return MapCollections.retainAllHelper(MapCollections.this.colGetMap(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return MapCollections.this.colGetSize();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            MapCollections mapCollections = MapCollections.this;
            int colGetSize = mapCollections.colGetSize();
            Object[] objArr = new Object[colGetSize];
            for (int i = 0; i < colGetSize; i++) {
                objArr[i] = mapCollections.colGetEntry(i, 0);
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            return MapCollections.this.toArrayHelper(objArr, 0);
        }
    }

    /* loaded from: classes.dex */
    public final class MapIterator implements Iterator, Map.Entry {
        public int mEnd;
        public boolean mEntryValid = false;
        public int mIndex = -1;

        public MapIterator() {
            this.mEnd = MapCollections.this.colGetSize() - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            int i = this.mIndex;
            MapCollections mapCollections = MapCollections.this;
            return ContainerHelpers.equal(key, mapCollections.colGetEntry(i, 0)) && ContainerHelpers.equal(entry.getValue(), mapCollections.colGetEntry(this.mIndex, 1));
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return MapCollections.this.colGetEntry(this.mIndex, 0);
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return MapCollections.this.colGetEntry(this.mIndex, 1);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.mIndex < this.mEnd;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            int i = this.mIndex;
            MapCollections mapCollections = MapCollections.this;
            Object colGetEntry = mapCollections.colGetEntry(i, 0);
            Object colGetEntry2 = mapCollections.colGetEntry(this.mIndex, 1);
            return (colGetEntry == null ? 0 : colGetEntry.hashCode()) ^ (colGetEntry2 != null ? colGetEntry2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.mIndex++;
            this.mEntryValid = true;
            return this;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.mEntryValid) {
                throw new IllegalStateException();
            }
            MapCollections.this.colRemoveAt(this.mIndex);
            this.mIndex--;
            this.mEnd--;
            this.mEntryValid = false;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (this.mEntryValid) {
                return MapCollections.this.colSetValue(this.mIndex, obj);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* loaded from: classes.dex */
    public final class ValuesCollection implements Collection {
        public ValuesCollection() {
        }

        @Override // java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            MapCollections.this.colClear();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return MapCollections.this.colIndexOfValue(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return MapCollections.this.colGetSize() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new ArrayIterator(1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            MapCollections mapCollections = MapCollections.this;
            int colIndexOfValue = mapCollections.colIndexOfValue(obj);
            if (colIndexOfValue < 0) {
                return false;
            }
            mapCollections.colRemoveAt(colIndexOfValue);
            return true;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection collection) {
            MapCollections mapCollections = MapCollections.this;
            int colGetSize = mapCollections.colGetSize();
            int i = 0;
            boolean z = false;
            while (i < colGetSize) {
                if (collection.contains(mapCollections.colGetEntry(i, 1))) {
                    mapCollections.colRemoveAt(i);
                    i--;
                    colGetSize--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection collection) {
            MapCollections mapCollections = MapCollections.this;
            int colGetSize = mapCollections.colGetSize();
            int i = 0;
            boolean z = false;
            while (i < colGetSize) {
                if (!collection.contains(mapCollections.colGetEntry(i, 1))) {
                    mapCollections.colRemoveAt(i);
                    i--;
                    colGetSize--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return MapCollections.this.colGetSize();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            MapCollections mapCollections = MapCollections.this;
            int colGetSize = mapCollections.colGetSize();
            Object[] objArr = new Object[colGetSize];
            for (int i = 0; i < colGetSize; i++) {
                objArr[i] = mapCollections.colGetEntry(i, 1);
            }
            return objArr;
        }

        @Override // java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            return MapCollections.this.toArrayHelper(objArr, 1);
        }
    }

    public static boolean equalsSetHelper(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean retainAllHelper(Map map, Collection collection) {
        int size = map.size();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public abstract void colClear();

    public abstract Object colGetEntry(int i, int i2);

    public abstract Map colGetMap();

    public abstract int colGetSize();

    public abstract int colIndexOfKey(Object obj);

    public abstract int colIndexOfValue(Object obj);

    public abstract void colPut(Object obj, Object obj2);

    public abstract void colRemoveAt(int i);

    public abstract Object colSetValue(int i, Object obj);

    public final Object[] toArrayHelper(Object[] objArr, int i) {
        int colGetSize = colGetSize();
        if (objArr.length < colGetSize) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), colGetSize);
        }
        for (int i2 = 0; i2 < colGetSize; i2++) {
            objArr[i2] = colGetEntry(i2, i);
        }
        if (objArr.length > colGetSize) {
            objArr[colGetSize] = null;
        }
        return objArr;
    }
}
