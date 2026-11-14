package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class LocusIdCompat {
    private final String mId;
    private final LocusId mWrapped;

    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static LocusId create(String str) {
            return new LocusId(str);
        }

        public static String getId(LocusId locusId) {
            return locusId.getId();
        }
    }

    public LocusIdCompat(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("id cannot be empty");
        }
        this.mId = str;
        this.mWrapped = Build.VERSION.SDK_INT >= 29 ? Api29Impl.create(str) : null;
    }

    private String getSanitizedId() {
        return this.mId.length() + "_chars";
    }

    public static LocusIdCompat toLocusIdCompat(LocusId locusId) {
        if (locusId == null) {
            throw new NullPointerException("locusId cannot be null");
        }
        String id = Api29Impl.getId(locusId);
        if (TextUtils.isEmpty(id)) {
            throw new IllegalArgumentException("id cannot be empty");
        }
        return new LocusIdCompat(id);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocusIdCompat.class != obj.getClass()) {
            return false;
        }
        String str = this.mId;
        String str2 = ((LocusIdCompat) obj).mId;
        return str == null ? str2 == null : str.equals(str2);
    }

    public String getId() {
        return this.mId;
    }

    public int hashCode() {
        String str = this.mId;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public LocusId toLocusId() {
        return this.mWrapped;
    }

    public String toString() {
        return "LocusIdCompat[" + getSanitizedId() + "]";
    }
}
