package androidx.core.widget;

import android.graphics.Paint;
import android.os.Build;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class TextViewCompat {

    /* loaded from: classes.dex */
    public final class OreoCallback implements ActionMode.Callback {
        public final ActionMode.Callback mCallback;
        public boolean mCanUseMenuBuilderReferences;
        public boolean mInitializedMenuBuilderReferences = false;
        public Class mMenuBuilderClass;
        public Method mMenuBuilderRemoveItemAtMethod;
        public final TextView mTextView;

        public OreoCallback(ActionMode.Callback callback, TextView textView) {
            this.mCallback = callback;
            this.mTextView = textView;
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mCallback.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mCallback.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            this.mCallback.onDestroyActionMode(actionMode);
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x00d1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x009f A[SYNTHETIC] */
        @Override // android.view.ActionMode.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onPrepareActionMode(android.view.ActionMode r14, android.view.Menu r15) {
            /*
                Method dump skipped, instructions count: 302
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.TextViewCompat.OreoCallback.onPrepareActionMode(android.view.ActionMode, android.view.Menu):boolean");
        }
    }

    private TextViewCompat() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
    
        if (r6 != 2) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
    
        if (r4 != false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.text.PrecomputedTextCompat.Params getTextMetricsParams(android.widget.TextView r6) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            if (r0 < r1) goto L10
            androidx.core.text.PrecomputedTextCompat$Params r0 = new androidx.core.text.PrecomputedTextCompat$Params
            android.text.PrecomputedText$Params r6 = r6.getTextMetricsParams()
            r0.<init>(r6)
            return r0
        L10:
            androidx.core.view.NestedScrollingParentHelper r2 = new androidx.core.view.NestedScrollingParentHelper
            android.text.TextPaint r3 = new android.text.TextPaint
            android.text.TextPaint r4 = r6.getPaint()
            r3.<init>(r4)
            r2.<init>(r3)
            r4 = 23
            if (r0 < r4) goto L2e
            int r4 = r6.getBreakStrategy()
            r2.mNestedScrollAxesNonTouch = r4
            int r4 = r6.getHyphenationFrequency()
            r2.mNestedScrollAxesTouch = r4
        L2e:
            android.text.method.TransformationMethod r4 = r6.getTransformationMethod()
            boolean r4 = r4 instanceof android.text.method.PasswordTransformationMethod
            if (r4 == 0) goto L37
            goto L78
        L37:
            r4 = 1
            r5 = 0
            if (r0 < r1) goto L60
            int r0 = r6.getInputType()
            r0 = r0 & 15
            r1 = 3
            if (r0 != r1) goto L60
            java.util.Locale r6 = r6.getTextLocale()
            android.icu.text.DecimalFormatSymbols r6 = android.icu.text.DecimalFormatSymbols.getInstance(r6)
            java.lang.String[] r6 = r6.getDigitStrings()
            r6 = r6[r5]
            int r6 = r6.codePointAt(r5)
            byte r6 = java.lang.Character.getDirectionality(r6)
            if (r6 == r4) goto L75
            r0 = 2
            if (r6 != r0) goto L78
            goto L75
        L60:
            int r0 = r6.getLayoutDirection()
            if (r0 != r4) goto L67
            goto L68
        L67:
            r4 = 0
        L68:
            int r6 = r6.getTextDirection()
            switch(r6) {
                case 2: goto L7b;
                case 3: goto L78;
                case 4: goto L75;
                case 5: goto L72;
                case 6: goto L81;
                case 7: goto L7e;
                default: goto L6f;
            }
        L6f:
            if (r4 == 0) goto L81
            goto L7e
        L72:
            android.text.TextDirectionHeuristic r6 = android.text.TextDirectionHeuristics.LOCALE
            goto L83
        L75:
            android.text.TextDirectionHeuristic r6 = android.text.TextDirectionHeuristics.RTL
            goto L83
        L78:
            android.text.TextDirectionHeuristic r6 = android.text.TextDirectionHeuristics.LTR
            goto L83
        L7b:
            android.text.TextDirectionHeuristic r6 = android.text.TextDirectionHeuristics.ANYRTL_LTR
            goto L83
        L7e:
            android.text.TextDirectionHeuristic r6 = android.text.TextDirectionHeuristics.FIRSTSTRONG_RTL
            goto L83
        L81:
            android.text.TextDirectionHeuristic r6 = android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR
        L83:
            androidx.core.text.PrecomputedTextCompat$Params r0 = new androidx.core.text.PrecomputedTextCompat$Params
            int r1 = r2.mNestedScrollAxesNonTouch
            int r2 = r2.mNestedScrollAxesTouch
            r0.<init>(r3, r6, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.TextViewCompat.getTextMetricsParams(android.widget.TextView):androidx.core.text.PrecomputedTextCompat$Params");
    }

    public static void setFirstBaselineToTopHeight(TextView textView, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void setLastBaselineToBottomHeight(TextView textView, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static void setTextAppearance(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    public static ActionMode.Callback wrapCustomSelectionActionModeCallback(ActionMode.Callback callback, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof OreoCallback) || callback == null) ? callback : new OreoCallback(callback, textView);
    }
}
