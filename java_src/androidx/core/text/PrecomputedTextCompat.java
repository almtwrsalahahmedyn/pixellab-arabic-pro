package androidx.core.text;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class PrecomputedTextCompat implements Spannable {

    /* loaded from: classes.dex */
    public final class Params {
        public final int mBreakStrategy;
        public final int mHyphenationFrequency;
        public final TextPaint mPaint;
        public final TextDirectionHeuristic mTextDir;

        public Params(PrecomputedText.Params params) {
            this.mPaint = params.getTextPaint();
            this.mTextDir = params.getTextDirection();
            this.mBreakStrategy = params.getBreakStrategy();
            this.mHyphenationFrequency = params.getHyphenationFrequency();
        }

        public Params(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.mPaint = textPaint;
            this.mTextDir = textDirectionHeuristic;
            this.mBreakStrategy = i;
            this.mHyphenationFrequency = i2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x001d, code lost:
        
            if (r7.mHyphenationFrequency != r8.mHyphenationFrequency) goto L18;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x00b8 A[ADDED_TO_REGION, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00b9  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r8) {
            /*
                r7 = this;
                r0 = 1
                if (r8 != r7) goto L4
                return r0
            L4:
                boolean r1 = r8 instanceof androidx.core.text.PrecomputedTextCompat.Params
                r2 = 0
                if (r1 != 0) goto La
                return r2
            La:
                androidx.core.text.PrecomputedTextCompat$Params r8 = (androidx.core.text.PrecomputedTextCompat.Params) r8
                int r1 = android.os.Build.VERSION.SDK_INT
                r3 = 23
                if (r1 < r3) goto L20
                int r3 = r8.mBreakStrategy
                int r4 = r7.mBreakStrategy
                if (r4 == r3) goto L19
                goto L30
            L19:
                int r3 = r7.mHyphenationFrequency
                int r4 = r8.mHyphenationFrequency
                if (r3 == r4) goto L20
                goto L30
            L20:
                android.text.TextPaint r3 = r7.mPaint
                float r4 = r3.getTextSize()
                android.text.TextPaint r5 = r8.mPaint
                float r5 = r5.getTextSize()
                int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r4 == 0) goto L33
            L30:
                r1 = 0
                goto Lb6
            L33:
                float r4 = r3.getTextScaleX()
                android.text.TextPaint r5 = r8.mPaint
                float r6 = r5.getTextScaleX()
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 == 0) goto L42
                goto L30
            L42:
                float r4 = r3.getTextSkewX()
                float r6 = r5.getTextSkewX()
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 == 0) goto L4f
                goto L30
            L4f:
                float r4 = r3.getLetterSpacing()
                float r6 = r5.getLetterSpacing()
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 == 0) goto L5c
                goto L30
            L5c:
                java.lang.String r4 = r3.getFontFeatureSettings()
                java.lang.String r6 = r5.getFontFeatureSettings()
                boolean r4 = android.text.TextUtils.equals(r4, r6)
                if (r4 != 0) goto L6b
                goto L30
            L6b:
                int r4 = r3.getFlags()
                int r6 = r5.getFlags()
                if (r4 == r6) goto L76
                goto L30
            L76:
                r4 = 24
                if (r1 < r4) goto L89
                android.os.LocaleList r1 = r3.getTextLocales()
                android.os.LocaleList r4 = r5.getTextLocales()
                boolean r1 = r1.equals(r4)
                if (r1 != 0) goto L98
                goto L30
            L89:
                java.util.Locale r1 = r3.getTextLocale()
                java.util.Locale r4 = r5.getTextLocale()
                boolean r1 = r1.equals(r4)
                if (r1 != 0) goto L98
                goto L30
            L98:
                android.graphics.Typeface r1 = r3.getTypeface()
                if (r1 != 0) goto La5
                android.graphics.Typeface r1 = r5.getTypeface()
                if (r1 == 0) goto Lb5
                goto L30
            La5:
                android.graphics.Typeface r1 = r3.getTypeface()
                android.graphics.Typeface r3 = r5.getTypeface()
                boolean r1 = r1.equals(r3)
                if (r1 != 0) goto Lb5
                goto L30
            Lb5:
                r1 = 1
            Lb6:
                if (r1 != 0) goto Lb9
                return r2
            Lb9:
                android.text.TextDirectionHeuristic r1 = r7.mTextDir
                android.text.TextDirectionHeuristic r8 = r8.mTextDir
                if (r1 == r8) goto Lc0
                return r2
            Lc0:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.text.PrecomputedTextCompat.Params.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int i = Build.VERSION.SDK_INT;
            int i2 = this.mHyphenationFrequency;
            int i3 = this.mBreakStrategy;
            TextDirectionHeuristic textDirectionHeuristic = this.mTextDir;
            TextPaint textPaint = this.mPaint;
            return i >= 24 ? Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocales(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2)) : Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
        }

        public final String toString() {
            StringBuilder sb;
            Object textLocale;
            StringBuilder sb2 = new StringBuilder("{");
            StringBuilder sb3 = new StringBuilder("textSize=");
            TextPaint textPaint = this.mPaint;
            sb3.append(textPaint.getTextSize());
            sb2.append(sb3.toString());
            sb2.append(", textScaleX=" + textPaint.getTextScaleX());
            sb2.append(", textSkewX=" + textPaint.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            sb2.append(", letterSpacing=" + textPaint.getLetterSpacing());
            sb2.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
            if (i >= 24) {
                sb = new StringBuilder(", textLocale=");
                textLocale = textPaint.getTextLocales();
            } else {
                sb = new StringBuilder(", textLocale=");
                textLocale = textPaint.getTextLocale();
            }
            sb.append(textLocale);
            sb2.append(sb.toString());
            sb2.append(", typeface=" + textPaint.getTypeface());
            if (i >= 26) {
                sb2.append(", variationSettings=" + textPaint.getFontVariationSettings());
            }
            sb2.append(", textDir=" + this.mTextDir);
            sb2.append(", breakStrategy=" + this.mBreakStrategy);
            sb2.append(", hyphenationFrequency=" + this.mHyphenationFrequency);
            sb2.append("}");
            return sb2.toString();
        }
    }
}
