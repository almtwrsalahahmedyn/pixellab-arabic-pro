package androidx.core.provider;

import android.util.Base64;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class FontRequest {
    public final List mCertificates;
    public final String mIdentifier;
    public final String mProviderAuthority;
    public final String mProviderPackage;
    public final String mQuery;

    public FontRequest(String str, String str2, String str3, List list) {
        this.mProviderAuthority = str;
        this.mProviderPackage = str2;
        this.mQuery = str3;
        Objects.requireNonNull(list);
        this.mCertificates = list;
        this.mIdentifier = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.mProviderAuthority + ", mProviderPackage: " + this.mProviderPackage + ", mQuery: " + this.mQuery + ", mCertificates:");
        int i = 0;
        while (true) {
            List list = this.mCertificates;
            if (i >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i);
            for (int i2 = 0; i2 < list2.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i++;
        }
    }
}
