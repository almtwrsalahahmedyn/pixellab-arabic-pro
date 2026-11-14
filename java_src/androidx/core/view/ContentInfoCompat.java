package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ContentInfoCompat {
    public final ClipData mClip;
    public final Bundle mExtras;
    public final int mFlags;
    public final Uri mLinkUri;
    public final int mSource;

    /* loaded from: classes.dex */
    public final class Builder {
        public final ClipData mClip;
        public Bundle mExtras;
        public int mFlags;
        public Uri mLinkUri;
        public final int mSource;

        public Builder(ClipData clipData, int i) {
            this.mClip = clipData;
            this.mSource = i;
        }
    }

    public ContentInfoCompat(Builder builder) {
        ClipData clipData = builder.mClip;
        Objects.requireNonNull(clipData);
        this.mClip = clipData;
        int i = builder.mSource;
        if (i < 0) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", "source", 0, 3));
        }
        if (i > 3) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", "source", 0, 3));
        }
        this.mSource = i;
        int i2 = builder.mFlags;
        if ((i2 & 1) == i2) {
            this.mFlags = i2;
            this.mLinkUri = builder.mLinkUri;
            this.mExtras = builder.mExtras;
        } else {
            throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
        sb.append(this.mClip.getDescription());
        sb.append(", source=");
        int i = this.mSource;
        sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? String.valueOf(i) : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
        sb.append(", flags=");
        int i2 = this.mFlags;
        sb.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
        Uri uri = this.mLinkUri;
        if (uri == null) {
            str = "";
        } else {
            str = ", hasLinkUri(" + uri.toString().length() + ")";
        }
        sb.append(str);
        sb.append(this.mExtras != null ? ", hasExtras" : "");
        sb.append("}");
        return sb.toString();
    }
}
