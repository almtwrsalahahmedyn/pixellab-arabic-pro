package androidx.core.view;

import android.os.Build;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;

/* loaded from: classes.dex */
public final class NestedScrollingParentHelper {
    public int mNestedScrollAxesNonTouch;
    public int mNestedScrollAxesTouch;

    public NestedScrollingParentHelper(TextPaint textPaint) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.mNestedScrollAxesNonTouch = 1;
            this.mNestedScrollAxesTouch = 1;
        } else {
            this.mNestedScrollAxesTouch = 0;
            this.mNestedScrollAxesNonTouch = 0;
        }
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
    }
}
