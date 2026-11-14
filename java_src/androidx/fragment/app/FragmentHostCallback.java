package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;

/* loaded from: classes.dex */
public abstract class FragmentHostCallback extends FragmentContainer {
    public final Activity mActivity;
    public final Context mContext;
    public final FragmentManagerImpl mFragmentManager;
    public final Handler mHandler;

    public FragmentHostCallback(FragmentActivity fragmentActivity) {
        Handler handler = new Handler();
        this.mFragmentManager = new FragmentManagerImpl();
        this.mActivity = fragmentActivity;
        if (fragmentActivity == null) {
            throw new NullPointerException("context == null");
        }
        this.mContext = fragmentActivity;
        this.mHandler = handler;
    }
}
