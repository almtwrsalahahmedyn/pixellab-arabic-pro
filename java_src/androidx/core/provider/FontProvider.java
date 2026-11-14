package androidx.core.provider;

import java.util.Comparator;

/* loaded from: classes.dex */
public final class FontProvider {
    public static final AnonymousClass1 sByteArrayComparator = new Comparator() { // from class: androidx.core.provider.FontProvider.1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int i;
            int i2;
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = (byte[]) obj2;
            if (bArr.length == bArr2.length) {
                for (int i3 = 0; i3 < bArr.length; i3++) {
                    byte b = bArr[i3];
                    byte b2 = bArr2[i3];
                    if (b != b2) {
                        i = b;
                        i2 = b2;
                    }
                }
                return 0;
            }
            i = bArr.length;
            i2 = bArr2.length;
            return i - i2;
        }
    };

    private FontProvider() {
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008f A[LOOP:1: B:14:0x004c->B:28:0x008f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0093 A[EDGE_INSN: B:29:0x0093->B:30:0x0093 BREAK  A[LOOP:1: B:14:0x004c->B:28:0x008f], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.provider.FontsContractCompat$FontFamilyResult getFontFamilyResult(android.content.Context r20, androidx.core.provider.FontRequest r21) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.provider.FontProvider.getFontFamilyResult(android.content.Context, androidx.core.provider.FontRequest):androidx.core.provider.FontsContractCompat$FontFamilyResult");
    }
}
