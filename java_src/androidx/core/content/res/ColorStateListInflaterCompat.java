package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class ColorStateListInflaterCompat {
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();

    private ColorStateListInflaterCompat() {
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    private static TypedValue getTypedValue() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    public static ColorStateList inflate(Resources resources, int i, Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(i), theme);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.res.ColorStateList inflate(android.content.res.Resources r17, org.xmlpull.v1.XmlPullParser r18, android.util.AttributeSet r19, android.content.res.Resources.Theme r20) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r0 = r17
            r1 = r19
            r2 = r20
            int r3 = r18.getDepth()
            r4 = 1
            int r3 = r3 + r4
            r5 = 20
            int[][] r6 = new int[r5]
            int[] r5 = new int[r5]
            r7 = 0
            r8 = 0
        L14:
            int r9 = r18.next()
            if (r9 == r4) goto Lbd
            int r10 = r18.getDepth()
            if (r10 >= r3) goto L23
            r11 = 3
            if (r9 == r11) goto Lbd
        L23:
            r11 = 2
            if (r9 != r11) goto Lba
            if (r10 > r3) goto Lba
            java.lang.String r9 = r18.getName()
            java.lang.String r10 = "item"
            boolean r9 = r9.equals(r10)
            if (r9 != 0) goto L36
            goto Lba
        L36:
            int[] r9 = androidx.core.R$styleable.ColorStateListItem
            android.content.res.TypedArray r9 = obtainAttributes(r0, r2, r1, r9)
            r10 = -1
            int r12 = r9.getResourceId(r7, r10)
            r13 = -65281(0xffffffffffff00ff, float:NaN)
            if (r12 == r10) goto L59
            boolean r10 = isColorInt(r0, r12)
            if (r10 != 0) goto L59
            android.content.res.XmlResourceParser r10 = r0.getXml(r12)     // Catch: java.lang.Exception -> L59
            android.content.res.ColorStateList r10 = createFromXml(r0, r10, r2)     // Catch: java.lang.Exception -> L59
            int r10 = r10.getDefaultColor()     // Catch: java.lang.Exception -> L59
            goto L5d
        L59:
            int r10 = r9.getColor(r7, r13)
        L5d:
            boolean r12 = r9.hasValue(r4)
            r13 = 1065353216(0x3f800000, float:1.0)
            if (r12 == 0) goto L6a
            float r13 = r9.getFloat(r4, r13)
            goto L74
        L6a:
            boolean r12 = r9.hasValue(r11)
            if (r12 == 0) goto L74
            float r13 = r9.getFloat(r11, r13)
        L74:
            r9.recycle()
            int r9 = r19.getAttributeCount()
            int[] r11 = new int[r9]
            r12 = 0
            r14 = 0
        L7f:
            if (r12 >= r9) goto La5
            int r15 = r1.getAttributeNameResource(r12)
            r4 = 16843173(0x10101a5, float:2.3694738E-38)
            if (r15 == r4) goto La1
            r4 = 16843551(0x101031f, float:2.3695797E-38)
            if (r15 == r4) goto La1
            r4 = 2130968660(0x7f040054, float:1.754598E38)
            if (r15 == r4) goto La1
            int r4 = r14 + 1
            boolean r16 = r1.getAttributeBooleanValue(r12, r7)
            if (r16 == 0) goto L9d
            goto L9e
        L9d:
            int r15 = -r15
        L9e:
            r11[r14] = r15
            r14 = r4
        La1:
            int r12 = r12 + 1
            r4 = 1
            goto L7f
        La5:
            int[] r4 = android.util.StateSet.trimStateSet(r11, r14)
            int r9 = modulateColorAlpha(r10, r13)
            int[] r5 = androidx.core.content.res.GrowingArrayUtils.append(r5, r8, r9)
            java.lang.Object[] r4 = androidx.core.content.res.GrowingArrayUtils.append(r6, r8, r4)
            int[][] r4 = (int[][]) r4
            int r8 = r8 + 1
            r6 = r4
        Lba:
            r4 = 1
            goto L14
        Lbd:
            int[] r0 = new int[r8]
            int[][] r1 = new int[r8]
            java.lang.System.arraycopy(r5, r7, r0, r7, r8)
            java.lang.System.arraycopy(r6, r7, r1, r7, r8)
            android.content.res.ColorStateList r2 = new android.content.res.ColorStateList
            r2.<init>(r1, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ColorStateListInflaterCompat.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    private static boolean isColorInt(Resources resources, int i) {
        TypedValue typedValue = getTypedValue();
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        return i2 >= 28 && i2 <= 31;
    }

    private static int modulateColorAlpha(int i, float f) {
        return (i & 16777215) | (Math.round(Color.alpha(i) * f) << 24);
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
