package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {
    public final $$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY mDelayedHide;
    public final $$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs mDelayedShow;

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.core.widget.-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.core.widget.-$$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs] */
    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.mDelayedHide = new Runnable() { // from class: androidx.core.widget.-$$Lambda$ContentLoadingProgressBar$9ZVtVfM7MwrgGmJEIZNfuhCC7eY
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: androidx.core.widget.-$$Lambda$ContentLoadingProgressBar$ovrYLeWrClCHhOWg8t_Ay80kDrs
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
                contentLoadingProgressBar.getClass();
                System.currentTimeMillis();
                contentLoadingProgressBar.setVisibility(0);
            }
        };
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(this.mDelayedHide);
        removeCallbacks(this.mDelayedShow);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mDelayedHide);
        removeCallbacks(this.mDelayedShow);
    }
}
