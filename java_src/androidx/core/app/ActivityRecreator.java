package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ActivityRecreator {
    public static final Handler mainHandler = new Handler(Looper.getMainLooper());
    public static final Field mainThreadField;
    public static final Method performStopActivity2ParamsMethod;
    public static final Method performStopActivity3ParamsMethod;
    public static final Method requestRelaunchActivityMethod;
    public static final Field tokenField;

    /* loaded from: classes.dex */
    public final class LifecycleCheckCallbacks implements Application.ActivityLifecycleCallbacks {
        public Object currentlyRecreatingToken;
        public Activity mActivity;
        public final int mRecreatingHashCode;
        public boolean mStarted = false;
        public boolean mDestroyed = false;
        public boolean mStopQueued = false;

        public LifecycleCheckCallbacks(Activity activity) {
            this.mActivity = activity;
            this.mRecreatingHashCode = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            if (this.mActivity == activity) {
                this.mActivity = null;
                this.mDestroyed = true;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        @Override // android.app.Application.ActivityLifecycleCallbacks
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onActivityPaused(android.app.Activity r5) {
            /*
                r4 = this;
                boolean r0 = r4.mDestroyed
                if (r0 == 0) goto L3a
                boolean r0 = r4.mStopQueued
                if (r0 != 0) goto L3a
                boolean r0 = r4.mStarted
                if (r0 != 0) goto L3a
                java.lang.Object r0 = r4.currentlyRecreatingToken
                r1 = 1
                java.lang.reflect.Field r2 = androidx.core.app.ActivityRecreator.tokenField     // Catch: java.lang.Throwable -> L32
                java.lang.Object r2 = r2.get(r5)     // Catch: java.lang.Throwable -> L32
                if (r2 != r0) goto L32
                int r0 = r5.hashCode()     // Catch: java.lang.Throwable -> L32
                int r3 = r4.mRecreatingHashCode
                if (r0 == r3) goto L20
                goto L32
            L20:
                java.lang.reflect.Field r0 = androidx.core.app.ActivityRecreator.mainThreadField     // Catch: java.lang.Throwable -> L32
                java.lang.Object r5 = r0.get(r5)     // Catch: java.lang.Throwable -> L32
                android.os.Handler r0 = androidx.core.app.ActivityRecreator.mainHandler     // Catch: java.lang.Throwable -> L32
                androidx.core.app.ActivityRecreator$3 r3 = new androidx.core.app.ActivityRecreator$3     // Catch: java.lang.Throwable -> L32
                r3.<init>()     // Catch: java.lang.Throwable -> L32
                r0.postAtFrontOfQueue(r3)     // Catch: java.lang.Throwable -> L32
                r5 = 1
                goto L33
            L32:
                r5 = 0
            L33:
                if (r5 == 0) goto L3a
                r4.mStopQueued = r1
                r5 = 0
                r4.currentlyRecreatingToken = r5
            L3a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.ActivityRecreator.LifecycleCheckCallbacks.onActivityPaused(android.app.Activity):void");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            if (this.mActivity == activity) {
                this.mStarted = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007e A[ADDED_TO_REGION] */
    static {
        /*
            java.lang.Class<android.app.Activity> r0 = android.app.Activity.class
            android.os.Handler r1 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r1.<init>(r2)
            androidx.core.app.ActivityRecreator.mainHandler = r1
            r1 = 0
            java.lang.String r2 = "android.app.ActivityThread"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Throwable -> L15
            goto L16
        L15:
            r2 = r1
        L16:
            r3 = 1
            java.lang.String r4 = "mMainThread"
            java.lang.reflect.Field r4 = r0.getDeclaredField(r4)     // Catch: java.lang.Throwable -> L21
            r4.setAccessible(r3)     // Catch: java.lang.Throwable -> L21
            goto L22
        L21:
            r4 = r1
        L22:
            androidx.core.app.ActivityRecreator.mainThreadField = r4
            java.lang.String r4 = "mToken"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r4)     // Catch: java.lang.Throwable -> L2e
            r0.setAccessible(r3)     // Catch: java.lang.Throwable -> L2e
            goto L30
        L2e:
            r0 = r1
        L30:
            androidx.core.app.ActivityRecreator.tokenField = r0
            r0 = 0
            r4 = 3
            java.lang.String r5 = "performStopActivity"
            r6 = 2
            java.lang.Class<android.os.IBinder> r7 = android.os.IBinder.class
            if (r2 != 0) goto L3c
            goto L51
        L3c:
            java.lang.Class[] r8 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L50
            r8[r0] = r7     // Catch: java.lang.Throwable -> L50
            java.lang.Class r9 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L50
            r8[r3] = r9     // Catch: java.lang.Throwable -> L50
            java.lang.Class<java.lang.String> r9 = java.lang.String.class
            r8[r6] = r9     // Catch: java.lang.Throwable -> L50
            java.lang.reflect.Method r8 = r2.getDeclaredMethod(r5, r8)     // Catch: java.lang.Throwable -> L50
            r8.setAccessible(r3)     // Catch: java.lang.Throwable -> L50
            goto L52
        L50:
        L51:
            r8 = r1
        L52:
            androidx.core.app.ActivityRecreator.performStopActivity3ParamsMethod = r8
            if (r2 != 0) goto L57
            goto L67
        L57:
            java.lang.Class[] r8 = new java.lang.Class[r6]     // Catch: java.lang.Throwable -> L67
            r8[r0] = r7     // Catch: java.lang.Throwable -> L67
            java.lang.Class r9 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L67
            r8[r3] = r9     // Catch: java.lang.Throwable -> L67
            java.lang.reflect.Method r5 = r2.getDeclaredMethod(r5, r8)     // Catch: java.lang.Throwable -> L67
            r5.setAccessible(r3)     // Catch: java.lang.Throwable -> L67
            goto L68
        L67:
            r5 = r1
        L68:
            androidx.core.app.ActivityRecreator.performStopActivity2ParamsMethod = r5
            java.lang.Class<android.content.res.Configuration> r5 = android.content.res.Configuration.class
            java.lang.Class<java.util.List> r8 = java.util.List.class
            int r9 = android.os.Build.VERSION.SDK_INT
            r10 = 26
            if (r9 == r10) goto L7b
            r10 = 27
            if (r9 != r10) goto L79
            goto L7b
        L79:
            r9 = 0
            goto L7c
        L7b:
            r9 = 1
        L7c:
            if (r9 == 0) goto Lab
            if (r2 != 0) goto L81
            goto Lab
        L81:
            java.lang.String r9 = "requestRelaunchActivity"
            r10 = 9
            java.lang.Class[] r10 = new java.lang.Class[r10]     // Catch: java.lang.Throwable -> Lab
            r10[r0] = r7     // Catch: java.lang.Throwable -> Lab
            r10[r3] = r8     // Catch: java.lang.Throwable -> Lab
            r10[r6] = r8     // Catch: java.lang.Throwable -> Lab
            java.lang.Class r0 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> Lab
            r10[r4] = r0     // Catch: java.lang.Throwable -> Lab
            java.lang.Class r0 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> Lab
            r4 = 4
            r10[r4] = r0     // Catch: java.lang.Throwable -> Lab
            r4 = 5
            r10[r4] = r5     // Catch: java.lang.Throwable -> Lab
            r4 = 6
            r10[r4] = r5     // Catch: java.lang.Throwable -> Lab
            r4 = 7
            r10[r4] = r0     // Catch: java.lang.Throwable -> Lab
            r4 = 8
            r10[r4] = r0     // Catch: java.lang.Throwable -> Lab
            java.lang.reflect.Method r0 = r2.getDeclaredMethod(r9, r10)     // Catch: java.lang.Throwable -> Lab
            r0.setAccessible(r3)     // Catch: java.lang.Throwable -> Lab
            r1 = r0
        Lab:
            androidx.core.app.ActivityRecreator.requestRelaunchActivityMethod = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.ActivityRecreator.<clinit>():void");
    }

    private ActivityRecreator() {
    }

    public static boolean recreate(Activity activity) {
        Object obj;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            activity.recreate();
            return true;
        }
        boolean z = i == 26 || i == 27;
        Method method = requestRelaunchActivityMethod;
        if (z && method == null) {
            return false;
        }
        if (performStopActivity2ParamsMethod == null && performStopActivity3ParamsMethod == null) {
            return false;
        }
        try {
            final Object obj2 = tokenField.get(activity);
            if (obj2 == null || (obj = mainThreadField.get(activity)) == null) {
                return false;
            }
            final Application application = activity.getApplication();
            final LifecycleCheckCallbacks lifecycleCheckCallbacks = new LifecycleCheckCallbacks(activity);
            application.registerActivityLifecycleCallbacks(lifecycleCheckCallbacks);
            Handler handler = mainHandler;
            handler.post(new Runnable() { // from class: androidx.core.app.ActivityRecreator.1
                @Override // java.lang.Runnable
                public final void run() {
                    LifecycleCheckCallbacks.this.currentlyRecreatingToken = obj2;
                }
            });
            try {
                if (i == 26 || i == 27) {
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                return true;
            } finally {
                handler.post(new Runnable() { // from class: androidx.core.app.ActivityRecreator.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        application.unregisterActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                    }
                });
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}
