package androidx.fragment.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

/* loaded from: classes.dex */
public final class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {
    public final FragmentManager mFragmentManager;

    public FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0166, code lost:
    
        if (androidx.fragment.app.FragmentManager.isLoggingEnabled(2) != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0186, code lost:
    
        r1.toString();
        java.lang.Integer.toHexString(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0184, code lost:
    
        if (androidx.fragment.app.FragmentManager.isLoggingEnabled(2) != false) goto L70;
     */
    /* JADX WARN: Type inference failed for: r11v11, types: [android.widget.FrameLayout, android.view.View, androidx.fragment.app.FragmentContainerView, android.view.ViewGroup] */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r11, java.lang.String r12, android.content.Context r13, android.util.AttributeSet r14) {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentLayoutInflaterFactory.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
